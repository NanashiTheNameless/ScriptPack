local bin = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
bin.Name = "Mining"

local Selection = Instance.new("SurfaceSelection", game:GetService("CoreGui"))

bin.Selected:connect(function(m)
    Selection.Parent = game:GetService("CoreGui")
        m.Button1Down:connect(function()
                local targ = m.Target
                if targ ~= nil then
                    if targ.Parent.Name == "Mine" then
                        local Val = Instance.new("StringValue")
                        Val.Name = "MinedFrom"
                        Val.Value = m.TargetSurface.Name
                        Val.Parent = targ
                    end
                end
        end)
        m.Move:connect(function()
                local targ = m.Target
                if targ ~= nil then
                    if targ.Parent.Name == "Mine" then
                        Selection.Adornee = targ
                        Selection.TargetSurface = m.TargetSurface
                    end
                else
                    Selection.Adornee = nil
                end
        end)
end)

bin.Deselected:connect(function()
    Selection.Parent = nil
    Selection.Adornee = nil
end)




local Settings = {
    Start = Vector3.new(-10, 10, -10);
    UsedCFrames = {}; -- For computation.
    Block = {
        SizeX = 20;
        SizeY = 20;
        SizeZ = 20;
        Cube = true;
    };
    Grid = {
        SizeX = 1;
        SizeY = 1;
        MaxDepth = 50; -- How many blocks deep we can go
    };
}                               

local Blocks = {} -- Stores "handlers" not actual blocks

local BlockModel = Instance.new("Model",Workspace)
BlockModel.Name = "Mine"

local BaseBlock = Instance.new("Part")
BaseBlock.Name = "MiningBlock"
if Settings.Block.Cube then
    local Size = Settings.Block.SizeX
    BaseBlock.Size = Vector3.new(Size, Size, Size)
else
    local Size = Settings.Block
    BaseBlock.Size = Vector3.new(Size.SizeX, Size.SizeY, Size.SizeZ)
end
BaseBlock.TopSurface = "Smooth"
BaseBlock.BottomSurface = "Smooth"
BaseBlock.BrickColor = BrickColor.new("Reddish brown")
BaseBlock.Material = "Slate"
BaseBlock.Anchored = true

for x=1, Settings.Grid.SizeX do
    for y=1, Settings.Grid.SizeY do
        local Block = BaseBlock:Clone()
        Block.CFrame = CFrame.new(Settings.Start + Vector3.new(x*Settings.Block.SizeX, 0, y*Settings.Block.SizeZ))
        Block.Parent = BlockModel
        local Handler = {Block}
        table.insert(Blocks, Handler)
        table.insert(Settings.UsedCFrames, Block.CFrame)
    end
end

function GetUnusedSides(Part, From)
    local Unused = {}
    local UsedSide = From or Enum.NormalId[Part.MinedFrom.Value]
    for i=1, #Enum.NormalId:GetEnumItems() do
        local SideEnum = Enum.NormalId:GetEnumItems()[i]
        if SideEnum ~= UsedSide then
            table.insert(Unused, SideEnum)
        end
    end
    return Unused
end

function isFree(location, part)
    local Region = Region3.new(location-(Vector3.new(Settings.SizeX, Settings.SizeY, Settings.SizeZ)/2), location+(Vector3.new(Settings.SizeX, Settings.SizeY, Settings.SizeZ)/2))
    if #Workspace:FindPartsInRegion3(Region, part) > 0 then
        return false
    end
    for _, CFr in pairs(Settings.UsedCFrames) do
        if part.CFrame == CFr then
            return false
        end
    end
    return true
end

function ConnectBlock(Block)
    local con;
    con = Block.ChildAdded:connect(function(obj)
        if obj.Name == "MinedFrom" and obj.Value ~= "" then
            pcall(function() con:disconnect() end)
            Block:Remove()
            local UnusedSides = GetUnusedSides(Block, Enum.NormalId[obj.Value])
            for _, UnusedSide in pairs(UnusedSides) do
                local Vec = Vector3.FromNormalId(UnusedSide)
                local NBlock = BaseBlock:Clone()
                NBlock.CFrame = Block.CFrame * CFrame.new(Vec*Block.Size)
                if isFree(NBlock.Position, NBlock) then
                    NBlock.Parent = BlockModel
                    ConnectBlock(NBlock)
                    table.insert(Settings.UsedCFrames, NBlock.CFrame)
                end
            end
        end
    end)
end

for _, BlockTable in pairs(Blocks) do
    local Block = BlockTable[1]
    ConnectBlock(Block)
end
