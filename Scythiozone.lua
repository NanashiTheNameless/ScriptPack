local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local debris=game:service"Debris"

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model")

local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())
for i,v in pairs (game.Workspace:GetChildren()) do
        if v:IsA("Sound") then
                v:Destroy()
        end
end
----------------------------------------------------
z = Instance.new("Sound", torso)
z.SoundId = "rbxassetid://381955589"-- Cartton Imortallity :381955589 -- My Heart: 154299074 -- Sao Crossing: 246056418 -- SAN HOLO DOnkeykong: 246056418 -- "Innocence" - Sword Art Online OP 2: 142357253 -- OnePunch Hero: 339250412 (Fav) -- Sethbling: 170902050
z.Looped = true
z.Volume = 1
wait(.1)
z:Play()
----------------------------------------------------
function Tween(a,b,c)
return a+(b-a)*c
end
----------------------------------------------------
function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end
                    end
                end
            end
        end
    return List
end
----------------------------------------------------
local HBill = Instance.new("BillboardGui", hed)
local HMain = Instance.new("Frame", HBill)
local HBar = Instance.new("Frame")
local HBarBack = Instance.new("Frame") 
local HHealth = Instance.new("TextLabel", HBarBack)
local HName = Instance.new("TextLabel", HBarBack)

HBill.Size = UDim2.new(15,0,2.2,0)
HBill.Name = "Health Display"
HBill.StudsOffset = Vector3.new(0,4,0)
HBill.AlwaysOnTop = true
HBill.Enabled = true

HMain.BackgroundColor3 = Color3.new(0, 0, 0)
HMain.BackgroundTransparency = 1
HMain.Size = UDim2.new(1,0,1,0)

HBarBack.Parent = HMain
HBarBack.BackgroundColor3 = Color3.new(0,0,0)
HBarBack.BorderColor3 = Color3.new(0,0,0)
HBarBack.BorderSizePixel = 2
HBarBack.Position = UDim2.new(.025, 0, .55, 0)
HBarBack.Size = UDim2.new(.95, 0, .3, 0)

HBar.Parent = HBarBack
HBar.BackgroundColor3 = Color3.new(0, 1, 0)
HBar.BorderColor3 = Color3.new(0,0,0)
HBar.Size = UDim2.new(.5,0,1,0)

HHealth.BackgroundTransparency = 1
HHealth.Size = UDim2.new(1,0,1,0)
HHealth.Font = "SourceSansItalic"
HHealth.Text = "[10/10]"
HHealth.TextScaled = true
HHealth.TextColor3 = Color3.new(1,1,1)
HHealth.TextStrokeColor3 = Color3.new(85/255, 0, 127/255)
HHealth.TextStrokeTransparency = 0

HName.Parent = HMain
HName.BackgroundTransparency = 1
HName.Size = UDim2.new(1,0,.5,0)
HName.Font = "SourceSansItalic"
HName.Text = "Royal Scythizone"
HName.TextScaled = true
HName.TextColor3 = Color3.new(85/255, 0,127/255)
HName.TextStrokeColor3 = Color3.new(0,0,0)
HName.TextStrokeTransparency = 0
HName.TextYAlignment = "Top"

local runServ = game:GetService("RunService").RenderStepped
runServ:connect(function()
	HHealth.Text = "["..hum.Health.."]"
	HBar:TweenSize(UDim2.new((hum.Health/hum.MaxHealth),0,1,0), _, "Linear", .4)
end)
----------------------------------------------------
cn,ca,bc,v3,r = CFrame.new,CFrame.Angles,BrickColor.new,Vector3.new,function(a)return (math.random()-.5)*2*(a or 1) end
deg,nf,c3,ins,ma,pi,mr = math.deg,math.floor,Color3.new,Instance.new,math.abs,math.pi,math.rad
local pert = function(prnt,cfr,siz,col,anc,canc,tra,mat,typ)
                local p = ins(typ or "Part")
                p.FormFactor = "Custom"
                p.Material = mat
                p.Transparency = tra
                p.CanCollide = canc
                p.Anchored = anc
                p.BrickColor = bc(col)
                p.Size = siz
                p.CFrame = cfr
                p.Parent = prnt
                p.Locked = true
                p.TopSurface,p.BottomSurface = 0,0
                p:BreakJoints()
                return p
end
local mesh = function(typ,prnt,scal,mtyp,mid,mtx)
                local m = ins(typ or "SpecialMesh")
                if mtyp then m.MeshType = mtyp end
                if mid then m.MeshId = mid end
                if mtx then m.TextureId = mtx end
                if scal then m.Scale = scal end
                m.Parent = prnt
                return m
end
function cylinderOpen(cf,col,col2)
        local p = pert(char,cf,v3(0,1000,0),col,true,false,.1,"SmoothPlastic")
        local pm = mesh("CylinderMesh",p)
        local p2 = pert(char,cf,v3(0,1000,0),col2,true,false,.1,"SmoothPlastic")
        local p2m = mesh("CylinderMesh",p2)
        Spawn(function()
                        for i=.1,1.1,.0125 do
                                        p.Transparency = i
                                        p2.Transparency = i
                                        pm.Scale = pm.Scale + v3(.8,0,.8)
                                        p2m.Scale = p2m.Scale + v3(.5,0,.5)
                                        wait()
                        end
                        p:Destroy()
                        p2:Destroy()
        end)
end

function expandDong()
        local nTarg = Torso
        local Orbi = Instance.new('Part')
        Orbi.Size = Vector3.new(3,3,3)
        Orbi.CanCollide = false
        Orbi.Locked = true
        Orbi.Shape = 'Ball'
        Orbi.Anchored = true
        Orbi.Transparency = .6
        Orbi.TopSurface,Orbi.BottomSurface = 0,0
        Orbi.Name = 'Expand Dong'
        Orbi.BrickColor = BrickColor.new('Royal purple')
        
        local OrbiMesh = Instance.new('SpecialMesh',Orbi)
        OrbiMesh.Name = 'Dxpand Eong'
        OrbiMesh.Scale = Vector3.new(2, 2, 2)
        OrbiMesh.MeshType = 'Sphere'
        Orbi.Parent = char
        ypcall(function()
                for i = 3,.35,-1 do 
                        OrbiMesh.Scale = OrbiMesh.Scale + Vector3.new(.7, .7, .7)
                        Orbi.CFrame = nTarg.CFrame
                end
                for i = .6,1,.05 do
                wait(0.04)
                        Orbi.Transparency = i
                end
                Orbi:Destroy()
        end)
end


function expandDong2()
        local nTarg = Torso
        local Orbi = Instance.new('Part')
        Orbi.Size = Vector3.new(3,3,3)
        Orbi.CanCollide = false
        Orbi.Locked = true
        Orbi.Shape = 'Ball'
        Orbi.Anchored = true
        Orbi.Transparency = .6
        Orbi.TopSurface,Orbi.BottomSurface = 0,0
        Orbi.Name = 'Expand Dong'
        Orbi.BrickColor = BrickColor.new('Really black')
        
        local OrbiMesh = Instance.new('SpecialMesh',Orbi)
        OrbiMesh.Name = 'Dxpand Eong'
        OrbiMesh.Scale = Vector3.new(2.5, 2.5, 2.5)
        OrbiMesh.MeshType = 'Sphere'
        Orbi.Parent = char
        ypcall(function()
                for i = 3,0,-1 do 
                        OrbiMesh.Scale = OrbiMesh.Scale + Vector3.new(.7, .7, .7)
                        Orbi.CFrame = nTarg.CFrame
                end
                for i = .6,1,.05 do
                wait(0.04)
                        Orbi.Transparency = i
                end
                Orbi:Destroy()
        end)
end
cylinderOpen(char.Torso.CFrame,"Royal purple","Really black")
-----------------------------------------------------
function pert(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
	local fp = Create("Part"){
		formFactor = formfactor,
		Parent = parent,
		Reflectance = reflectance,
		Transparency = transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(brickcolor)),
		Name = name,
		Size = size,
		Position = Character.Torso.Position,
		Material = material,
	}
	nooutline(fp)
	return fp
end
----------------------------------------------------
function ShowDamage(part,partCFrame,Text)
	local Rate = (1 / 30)
	local Time = (Time or 2)
    local Frames = (Time / Rate)

bill2 = Instance.new("BillboardGui", part)
bill2.Size = UDim2.new(4, 4, 4, 4)
bill2.AlwaysOnTop = false

label = Instance.new("TextLabel", bill2)
label.Size = UDim2.new(1,2,1,2)
label.Position = UDim2.new(0, 0, -.65, 0)
label.TextColor3 = Color3.new(0, 0, 0)
label.TextStrokeTransparency = 0
label.TextStrokeColor3 = Color3.new(255, 255, 255)
label.BackgroundTransparency = 1
label.Visible = true
label.Font = 'SourceSansLight'
label.FontSize = 'Size24'
label.Text = Text

for Frame = 1, Frames do
	wait(Rate)
	  local Percent = (Frame / Frames)
	    part.CFrame = CFrame.new(partCFrame) + Vector3.new(0, Percent, 0)
	    label.TextTransparency = Percent
end


end

function Damage(hit,mm)
        if hit ~= nil and damen == true and hit.Parent ~= Char and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent:FindFirstChild("Humanoid").Health > 0 then
                hit.Parent.Humanoid:TakeDamage(mm)
                    coroutine.resume(coroutine.create(function()
                         ShowDamage(hit,(hit.CFrame * CFrame.new(0, 0, (hit.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), mm)
                    end))
                   damen = false
           end
end
-----------------------------------------------------
Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, 0, 0)
torso.Weld.C1 = CFrame.new(0, 0, 0)
----------------------------------------------------
--~Gaunlet~--
Run = game:GetService("RunService")

local scythe = Instance.new("Model", char)
scythe.Name = "Scythe"

local handle = Instance.new("Part", scythe)
handle.CanCollide = false
handle.Anchored = false
handle.Material = Enum.Material.Wood
handle.Size = Vector3.new(2, 7, 2)
handle.Name = "Handle"
handle.CFrame = CFrame.new(2, 3.573, 22)
handle.Friction = 0.3

local mesh = Instance.new("CylinderMesh", handle)
mesh.Scale = Vector3.new(0.4, 1.2, 0.13)

local part = Instance.new("Part", scythe)
part.FormFactor = Enum.FormFactor.Custom
part.CanCollide = false
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part.Anchored = false
part.Material = Enum.Material.Neon
part.Size = Vector3.new(0.203, 2.849, 0.2)
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.CFrame = CFrame.new(-1.054, 6.358, 22.004) * CFrame.Angles(-0, 0, 1.8616886138916)
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.BrickColor = BrickColor.new("Royal purple")
part.Friction = 0.3
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local part_2 = Instance.new("Part", scythe)
part_2.FormFactor = Enum.FormFactor.Custom
part_2.CanCollide = false
part_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.Anchored = false
part_2.Material = Enum.Material.Neon
part_2.Size = Vector3.new(0.203, 0.776, 0.2)
part_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.CFrame = CFrame.new(1.531, 7.679, 22.004) * CFrame.Angles(-0, 0, 1.5126248598099)
part_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BrickColor = BrickColor.new("Royal purple")
part_2.Friction = 0.3
part_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local part_3 = Instance.new("Part", scythe)
part_3.FormFactor = Enum.FormFactor.Custom
part_3.CanCollide = false
part_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.Anchored = false
part_3.Material = Enum.Material.Neon
part_3.Size = Vector3.new(0.203, 1.16, 0.2)
part_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.CFrame = CFrame.new(1.184, 6.677, 22.004) * CFrame.Angles(-0, 0, 1.5824373960495)
part_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BrickColor = BrickColor.new("Royal purple")
part_3.Friction = 0.3
part_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local part_4 = Instance.new("Part", scythe)
part_4.FormFactor = Enum.FormFactor.Custom
part_4.CanCollide = false
part_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.Anchored = false
part_4.Material = Enum.Material.Neon
part_4.Size = Vector3.new(0.203, 1.16, 0.2)
part_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.CFrame = CFrame.new(0.585, 7.624, 22.004) * CFrame.Angles(-0, 0, 1.7046097517014)
part_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BrickColor = BrickColor.new("Royal purple")
part_4.Friction = 0.3
part_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local hitbox = Instance.new("Part", scythe)
hitbox.FormFactor = Enum.FormFactor.Custom
hitbox.CanCollide = false
hitbox.Transparency = 1
hitbox.Anchored = false
hitbox.Size = Vector3.new(5.444, 2.483, 1.907)
hitbox.Name = "HitBox"
hitbox.CFrame = CFrame.new(-0.722, 6.691, 21.458)
hitbox.Friction = 0.3

local part_5 = Instance.new("Part", scythe)
part_5.FormFactor = Enum.FormFactor.Custom
part_5.CanCollide = false
part_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.Anchored = false
part_5.Material = Enum.Material.Neon
part_5.Size = Vector3.new(0.401, 2.658, 0.2)
part_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.CFrame = CFrame.new(-0.903, 6.65, 22.004) * CFrame.Angles(-0, 0, 1.9664081335068)
part_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BrickColor = BrickColor.new("Royal purple")
part_5.Friction = 0.3
part_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local part_6 = Instance.new("Part", scythe)
part_6.FormFactor = Enum.FormFactor.Custom
part_6.CanCollide = false
part_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.Anchored = false
part_6.Material = Enum.Material.Neon
part_6.Size = Vector3.new(0.657, 1.16, 0.2)
part_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.CFrame = CFrame.new(-1.296, 6.696, 22.004) * CFrame.Angles(-0, 0, 2.1758482456207)
part_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BrickColor = BrickColor.new("Royal purple")
part_6.Friction = 0.3
part_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local part_7 = Instance.new("Part", scythe)
part_7.FormFactor = Enum.FormFactor.Custom
part_7.CanCollide = false
part_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.Anchored = false
part_7.Material = Enum.Material.Neon
part_7.Size = Vector3.new(0.2, 1.086, 0.2)
part_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.CFrame = CFrame.new(-2.231, 6.191, 22.004) * CFrame.Angles(-0, 0, 2.4027414321899)
part_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BrickColor = BrickColor.new("Royal purple")
part_7.Friction = 0.3
part_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local part_8 = Instance.new("Part", scythe)
part_8.FormFactor = Enum.FormFactor.Custom
part_8.CanCollide = false
part_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.Anchored = false
part_8.Material = Enum.Material.Neon
part_8.Size = Vector3.new(0.929, 1.078, 0.2)
part_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.CFrame = CFrame.new(-0.344, 7.035, 22.004) * CFrame.Angles(-0, 0, 1.9140462875366)
part_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BrickColor = BrickColor.new("Royal purple")
part_8.Friction = 0.3
part_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local part_9 = Instance.new("Part", scythe)
part_9.FormFactor = Enum.FormFactor.Custom
part_9.CanCollide = false
part_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.Anchored = false
part_9.Material = Enum.Material.Neon
part_9.Size = Vector3.new(0.2, 2.741, 0.2)
part_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.CFrame = CFrame.new(-1.359, 6.293, 22.004) * CFrame.Angles(-0, 0, 1.9664095640182)
part_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BrickColor = BrickColor.new("Royal purple")
part_9.Friction = 0.3
part_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local part_10 = Instance.new("Part", scythe)
part_10.FormFactor = Enum.FormFactor.Custom
part_10.CanCollide = false
part_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.Anchored = false
part_10.Material = Enum.Material.Neon
part_10.Size = Vector3.new(1.166, 1.367, 0.2)
part_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.CFrame = CFrame.new(1.253, 7.147, 22.004) * CFrame.Angles(-0, 0, 1.5824372768402)
part_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BrickColor = BrickColor.new("Royal purple")
part_10.Friction = 0.3
part_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local part_11 = Instance.new("Part", scythe)
part_11.FormFactor = Enum.FormFactor.Custom
part_11.CanCollide = false
part_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.Anchored = false
part_11.Material = Enum.Material.Neon
part_11.Size = Vector3.new(0.986, 1.56, 0.2)
part_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.CFrame = CFrame.new(0.129, 6.999, 22.004) * CFrame.Angles(-0, 0, 1.7046104669571)
part_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BrickColor = BrickColor.new("Royal purple")
part_11.Friction = 0.3
part_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld = Instance.new("Weld", scythe)
weld.Part1 = part_11
weld.Part0 = part_10
weld.C1 = CFrame.new(-27.632, 3.85, -22.004) * CFrame.Angles(-0, 0, -1.7046104669571)
weld.C0 = CFrame.new(-28.031, 1.579, -22.004) * CFrame.Angles(-0, 0, -1.5824372768402)

local weld_2 = Instance.new("Weld", scythe)
weld_2.Part1 = part
weld_2.Part0 = handle
weld_2.C1 = CFrame.new(-26.415, 6.808, -22.004) * CFrame.Angles(-0, 0, -1.8616886138916)
weld_2.C0 = CFrame.new(-2, -24.473, -22)

local weld_3 = Instance.new("Weld", scythe)
weld_3.Part1 = part_2
weld_3.Part0 = part
weld_3.C1 = CFrame.new(-28.619, -0.133, -22.004) * CFrame.Angles(-0, 0, -1.5126248598099)
weld_3.C0 = CFrame.new(-26.415, 6.808, -22.004) * CFrame.Angles(-0, 0, -1.8616886138916)

local weld_4 = Instance.new("Weld", scythe)
weld_4.Part1 = part_3
weld_4.Part0 = part_2
weld_4.C1 = CFrame.new(-27.562, 1.504, -22.004) * CFrame.Angles(-0, 0, -1.5824373960495)
weld_4.C0 = CFrame.new(-28.619, -0.133, -22.004) * CFrame.Angles(-0, 0, -1.5126248598099)

local weld_5 = Instance.new("Weld", scythe)
weld_5.Part1 = part_4
weld_5.Part0 = part_3
weld_5.C1 = CFrame.new(-28.191, 4.385, -22.004) * CFrame.Angles(-0, 0, -1.7046097517014)
weld_5.C0 = CFrame.new(-27.562, 1.504, -22.004) * CFrame.Angles(-0, 0, -1.5824373960495)

local weld_6 = Instance.new("Weld", scythe)
weld_6.Part1 = hitbox
weld_6.Part0 = part_4
weld_6.C1 = CFrame.new(0.722, -27.591, -21.458)
weld_6.C0 = CFrame.new(-28.191, 4.385, -22.004) * CFrame.Angles(-0, 0, -1.7046097517014)

local weld_7 = Instance.new("Weld", scythe)
weld_7.Part1 = part_5
weld_7.Part0 = hitbox
weld_7.C1 = CFrame.new(-25.77, 9.784, -22.004) * CFrame.Angles(-0, 0, -1.9664082527161)
weld_7.C0 = CFrame.new(0.722, -27.591, -21.458)

local weld_8 = Instance.new("Weld", scythe)
weld_8.Part1 = part_6
weld_8.Part0 = part_5
weld_8.C1 = CFrame.new(-23.434, 14.631, -22.004) * CFrame.Angles(-0, 0, -2.175847530365)
weld_8.C0 = CFrame.new(-25.77, 9.784, -22.004) * CFrame.Angles(-0, 0, -1.9664082527161)

local weld_9 = Instance.new("Weld", scythe)
weld_9.Part1 = part_7
weld_9.Part0 = part_6
weld_9.C1 = CFrame.new(-19.894, 18.525, -22.004) * CFrame.Angles(-0, 0, -2.4027411937714)
weld_9.C0 = CFrame.new(-23.434, 14.631, -22.004) * CFrame.Angles(-0, 0, -2.175847530365)

local weld_10 = Instance.new("Weld", scythe)
weld_10.Part1 = part_8
weld_10.Part0 = part_7
weld_10.C1 = CFrame.new(-26.421, 9.077, -22.004) * CFrame.Angles(-0, 0, -1.9140462875366)
weld_10.C0 = CFrame.new(-19.894, 18.525, -22.004) * CFrame.Angles(-0, 0, -2.4027411937714)

local weld_11 = Instance.new("Weld", scythe)
weld_11.Part1 = part_9
weld_11.Part0 = part_8
weld_11.C1 = CFrame.new(-25.616, 9.226, -22.004) * CFrame.Angles(-0, 0, -1.966409444809)
weld_11.C0 = CFrame.new(-26.421, 9.077, -22.004) * CFrame.Angles(-0, 0, -1.9140462875366)

local weld_12 = Instance.new("Weld", scythe)
weld_12.Part1 = part_10
weld_12.Part0 = part_9
weld_12.C1 = CFrame.new(-28.031, 1.579, -22.004) * CFrame.Angles(-0, 0, -1.5824372768402)
weld_12.C0 = CFrame.new(-25.616, 9.226, -22.004) * CFrame.Angles(-0, 0, -1.966409444809)



local partweld = Instance.new("Weld", handle)
partweld.Part0 = handle
partweld.Part1 = rarm
partweld.C0 = CFrame.new(0,-2.8,1)*CFrame.Angles(-30,0,0)


for _,v in pairs(scythe:GetChildren()) do
        if v:IsA("Part") then
                v.CanCollide = false
        end
end



function slash()
        dem = hitbox.Touched:connect(function(hit) Damage(hit, 30) end)
        for i = 1,10 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.9,0) * CFrame.Angles(math.rad(21), math.rad(75), math.rad(50)), 1)
--larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.53,0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-18)), 1)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),math.rad(-60),0), 0.5)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(70), 0), 0.5)
--[[lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.5)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.5)]]
    wait()
    end
    damen = true
        dem = hitbox.Touched:connect(function(hit) Damage(hit, 30) end)
        for i = 1,25 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.53,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), 1)
--larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.53,0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(20)), 0.5)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),math.rad(30),0), 0.5)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.5)
--[[lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.5)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.5)]]
        if Debounces.on == false then break end
                      
    wait()
    end
    damen = false
        dem:disconnect()
    enabled = true
end

----------------------------------------------------
function nwSnd(prnt,pch,vol,id)
        local s=Instance.new("Sound",prnt)
        s.Pitch=pch
        s.Volume=vol
        s.SoundId="rbxassetid://"..id
        s.PlayOnRemove=true
        return s
end
----------------------------------------------------
function newRay(start,face,range,wat)
        local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
        hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
        return rey,hit,pos
end
----------------------------------------------------
function lerp(a, b, t) -- Linear interpolation
        return a + (b - a)*t
end

function slerp(a, b, t) --Spherical interpolation
        dot = a:Dot(b)
        if dot > 0.99999 or dot < -0.99999 then
                return t <= 0.5 and a or b
        else
                r = math.acos(dot)
                return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
        end
end
function matrixInterpolate(a, b, t)
        local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
        local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
        local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
        local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
        local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
        local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
        local t = v1:Dot(v2)
        if not (t < 0 or t == 0 or t > 0) then         -- Failsafe
                return CFrame.new()
        end
        return CFrame.new(
        v0.x, v0.y, v0.z,
        v1.x, v1.y, v1.z,
        v2.x, v2.y, v2.z,
        v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end
                    end
                end
            end
        end
    return List
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
----------------------------------------------------
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "e" then
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true

for i = 1, 20 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(100),math.rad(-4),math.rad(-20)), 1)
		if Debounces.on == false then break end
	rs:wait()
end

local Ball = Instance.new("Part",rarm)
Ball.Size = Vector3.new(.1,.1,.1) ---- For the hitbox.
Ball.BrickColor = BrickColor.new("Royal purple")
Ball.TopSurface = 0
Ball.Material = "Neon"
Ball.BottomSurface = 0 ---- To make the top and bottom look smooth
Ball.CanCollide = true 

local Ball2 = Instance.new("Weld",Ball)
Ball2.Part0 = rarm
Ball2.Part1 = Ball
Ball2.C0 = CFrame.new(0,-1.1,0)

local Ball3 = Instance.new("SpecialMesh",Ball)
Ball3.MeshType = "Sphere" --- SInce its a ball and if you wanna do a random mesh then its MeshId = ""
Ball3.Scale = Vector3.new(0.5,0.5,0.5) -- To start it off tiny as it grows.

local c = game.Players.LocalPlayer.Character
local radius = 10
local pos = Ball.CFrame
local clrz = {'Really black','Royal purple'};
for HAAA = 1, 20 do
for i = 1,1 do
local clr = clrz[math.random(1,#clrz)]
pos = Ball.CFrame
local p = Instance.new('Part',c)
local mafc,mafa = math.random(-10,10), math.random(-360,360)
p.CanCollide = false
p.FormFactor = 3
p.Size = Vector3.new(1,1,1)
local m = Instance.new('SpecialMesh',p)
m.MeshType = 'Brick'
spawn(function()
  for i = 0,50 do
    local int,int2 = .02,.02
    m.Scale = m.Scale - Vector3.new(int,int,int)
	p.Transparency = p.Transparency + int2
	Ball3.Scale = Ball3.Scale + Vector3.new(0.02,0.02,0.02)
	game:service'RunService'.RenderStepped:wait()
  end
  pcall(function()
  	p:Destroy()
  end)
end)
p.BrickColor = BrickColor.new(clr)
p.Material = 'Neon'
p.CFrame = pos * CFrame.new(math.random(-radius,radius),math.random(-radius,radius),math.random(-radius,radius)) * CFrame.Angles(mafa,mafa,mafa)
local bp = Instance.new('BodyPosition',p)
bp.MaxForce = Vector3.new(1/0,1/0,1/0)
bp.D = 100
bp.P = 100
	bp.Position = pos.p
game.Debris:AddItem(p,10)
end
end

wait(1)
Ball2:remove()
Ball.CFrame = rarm.CFrame*CFrame.new(0,0,-4)

local Fly = Instance.new("BodyVelocity",Ball)
Fly.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Ball.CFrame = CFrame.new(mouse.Hit.p)
Fly.velocity = Ball.CFrame.lookVector*65



Ball.Touched:connect(function(hit)--LINE 170
    if hit.Parent:FindFirstChild("Humanoid") and hit.Parent~=nil and hit.Parent~="XIxSandStormxIX" and hit.Name~="XIxSandStormxIX" and hit~="XIxSandStormxIX"  or hit.Parent~="XIxSandStormxIX" or hit.Name~="XIxSandStormxIX" or hit~="XIxSandStormxIX"then
              
		for i,v in pairs(FindNearestTorso(Ball.CFrame.p,5))do
			if v:FindFirstChild('Humanoid') and hit.Parent~="XIxSandStormxIX" and hit.Name~="XIxSandStormxIX" and hit~="XIxSandStormxIX"  or hit.Parent~="XIxSandStormxIX" or hit.Name~="XIxSandStormxIX" or hit~="XIxSandStormxIX" then
				v.Humanoid:TakeDamage(math.random(3,6))
			end
		end
                        Fly:Destroy()
                        Ball.Anchored = true
                        Ball.CanCollide = false
                for i = 1,50 do
                    wait()
                    Ball3.Scale = Ball3.Scale + Vector3.new(1,1,1)
                    Ball.Transparency = Ball.Transparency + .1
                end
        end
end)
            if Debounces.CanAttack == false then
                Debounces.CanAttack = true
                Debounces.NoIdl = false
                Debounces.on = false
            end
        end
    end
end)
----------------------------------------------------------
--[[attacktype = 1
attack = false

function attackone()
	attack = true
for i = 1, 20 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1, 0.3, .3) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(30)), 0.3)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(120), math.rad(0)) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0)) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
	rs:wait()
end
for i = 1, 20 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), .5)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.5, -.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-30)), 0.5)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(0)) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-120), math.rad(0)) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
	rs:wait()
end
	attack = false
end


function attacktwo()
	attack = true
for i = 1, 20 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4, 0.5, -.5) * CFrame.Angles(math.rad(150), math.rad(0), math.rad(0)), 0.3)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3, 0.3, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, -.3) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, .2) * CFrame.Angles(math.rad(0), math.rad(-85), math.rad(0)) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
	rs:wait()
end
for i = 1, 20 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .5)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.3, -.5) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-30)), 0.5)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, -.3) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, .2) * CFrame.Angles(math.rad(0), math.rad(-85), math.rad(0)) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
	rs:wait()
end
	attack = false
end

function attackthree()
	attack = true
	
for i = 1, 20 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), .3)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4, 0.8, -.5) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-30)), 0.3)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3, 0.3, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, -.3) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(0)) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, .2) * CFrame.Angles(math.rad(0), math.rad(-140), math.rad(0)) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
	rs:wait()
end
for i = 1, 20 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-50)), .5)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(30)), 0.5)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3, 0.3, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, -.3) * CFrame.Angles(math.rad(0), math.rad(140), math.rad(0)) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, .2) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
	rs:wait()
end
	attack = false
end

mouse.Button1Down:connect(function()
if Debounces.CanAttack == true then
   Debounces.CanAttack = false
   Debounces.NoIdl = true
   Debounces.on = true
            
            if Debounces.CanAttack == false then
                Debounces.CanAttack = true
                Debounces.NoIdl = false
                Debounces.on = false
	if attack == false and attacktype == 1 then
		attacktype = 2
		attackone()
	elseif attack == false and attacktype == 2 then
		attacktype = 3
		attacktwo()
	elseif attack == false and attacktype == 3 then
		attacktype = 1
		attackthree()
	end
end)]]

----------------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "q" then
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true

for i = 1, 20 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(100),math.rad(-4),math.rad(-20)), 1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-0), 0, math.rad(-18)),--[[Speed]] 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-0), 0, math.rad(18)), --[[Speed]]0.4)
		if Debounces.on == false then break end
	rs:wait()
end
for i = 1, 20 do
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(100),math.rad(-4),math.rad(20)), 1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-0), 0, math.rad(-18)),--[[Speed]] 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-0), 0, math.rad(18)), --[[Speed]]0.4)
		if Debounces.on == false then break end
	rs:wait()
end

                hum.WalkSpeed = 0
                local m0del = Instance.new('Model',char)
                local wave = Instance.new('Part',m0del)
                wave.CFrame = char.Torso.CFrame * CFrame.new(3.5, 0, 0)
                wave.TopSurface = 'Smooth'
                wave.BottomSurface = 'Smooth'
                wave.BrickColor = BrickColor.new('Royal purple')
                wave.Anchored = true
                wave.FormFactor = 'Custom'
                wave.Shape = 'Ball'
                wave.CanCollide = false
                wave.Material = 'Neon'
                wave.Size = Vector3.new(.4, .4, .4)
                local lite = Instance.new('SelectionSphere',wave)
                lite.Transparency = .7
                lite.Color = BrickColor.new('Royal purple')
                lite.Adornee = wave
                for awe = 1, 32 do
                        wave.Size = Vector3.new(wave.Size.X+.6, wave.Size.Y+.6, wave.Size.Z+.6)
                        wait()
                        wave.CFrame = wave.CFrame * CFrame.new(.5, 0, 0)
                end
                for zfvadi = 1, 20 do
                        wave.CFrame = wave.CFrame * CFrame.new(-1, 0, -1)
                        wait()
                end
                local beam = Instance.new('Part',m0del)
                beam.TopSurface = 'Smooth'
                beam.BottomSurface = 'Smooth'
                beam.Material = 'Neon'
                beam.Transparency = .6
                beam.Anchored = true
                beam.BrickColor = BrickColor.new('Royal purple')
                beam.CanCollide = false
                local mesh = Instance.new('CylinderMesh',beam)
                local realbeam = beam:Clone()
                realbeam.Parent = m0del
                realbeam.BrickColor = BrickColor.new('Royal purple')
                realbeam.Transparency = .1
                realbeam.CFrame = wave.CFrame * CFrame.Angles(math.rad(90), 0, 0)
                beam.CFrame = wave.CFrame * CFrame.Angles(math.rad(90), 0, 0)
                beam.Size = Vector3.new(23, 10/2, 23)
                realbeam.Size = Vector3.new(24, 10/2, 24)
                for HAAA = 1, 100 do
                        local starthere = char.Torso.CFrame * CFrame.new(0, 0, -17.5)
                        local idek = Ray.new(starthere.p,(starthere.p -(starthere * CFrame.new(0, 0, 1)).p).unit * 1000)
                        local thx = {char, m0del}
                        local p = wave:Clone()
                        table.insert(thx, p)
                        local Bonk, ovhere = workspace:FindPartOnRayWithIgnoreList(idek, thx)
                        local meg
                        
                        if Bonk then
                                if Bonk.CanCollide == false then
                                        table.insert(thx,Bonk)
                                end
                                p.Parent =        m0del
                                p.Size = Vector3.new(28, 28, 28)
                                p.Position = ovhere
                        end
                        if Bonk and Bonk.Parent:findFirstChild'Humanoid' then
                                local dionamuh = Bonk.Parent:findFirstChild'Humanoid'
                                dionamuh.Health = dionamuh.Health - 11
                        end
                        meg = (starthere.p - ovhere).magnitude
                        wait(.01)
                        p:Destroy()
                        wait(.01)
                        realbeam.Size = Vector3.new(25/2, meg, 25/2)
                        beam.Size = Vector3.new(26/2, meg, 26/2)
                        realbeam.CFrame = starthere * CFrame.new(0, 0, -meg/2) * CFrame.Angles(math.rad(90), 0, 0)
                        beam.CFrame = starthere * CFrame.new(0, 0, -meg/2) * CFrame.Angles(math.rad(90), 0, 0)
                        wave.CFrame = starthere
                end
                hum.WalkSpeed = 16 
                game:GetService('Debris'):AddItem(m0del, 4)
                wait(3)
		
            if Debounces.CanAttack == false then
                Debounces.CanAttack = true
                Debounces.NoIdl = false
                Debounces.on = false
            end
        end
    end
end)
----------------------------------------------------------
--[[mouse.KeyDown:connect(function(key)
    if key == "f" then
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true

for i = 1, 20 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(.75, .4, -.4)*CFrame.Angles(math.rad(20),math.rad(-10),math.rad(0)), 1)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-.75, .4, -.4)*CFrame.Angles(math.rad(20),math.rad(10),math.rad(0)), 1)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.0) * CFrame.Angles(math.rad(-0),0,0), 1)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.65, -1, 0) * CFrame.Angles(math.rad(90),      math.rad(0),      math.rad(11)), 1)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.65, -1, 0) * CFrame.Angles(math.rad(90),      math.rad(-0),      math.rad(-11)), 1)
		if Debounces.on == false then break end
	rs:wait()
end

local c = game.Players.LocalPlayer.Character
local radius = 10
local pos = torso.CFrame
local clrz = {'Really black','Royal purple'};
for HAAA = 1, 20 do
for i = 1,1 do
local clr = clrz[math.random(1,#clrz)]
pos = torso.CFrame
local p = Instance.new('Part',c)
local mafc,mafa = math.random(-10,10), math.random(-360,360)
p.CanCollide = false
p.FormFactor = 3
p.Size = Vector3.new(1,1,1)
local m = Instance.new('SpecialMesh',p)
m.MeshType = 'Brick'
spawn(function()
  for i = 0,50 do
    local int,int2 = .02,.02
    m.Scale = m.Scale - Vector3.new(int,int,int)
	p.Transparency = p.Transparency + int2
	game:service'RunService'.RenderStepped:wait()
  end
  pcall(function()
  	p:Destroy()
  end)
end)
p.BrickColor = BrickColor.new(clr)
p.Material = 'Neon'
p.CFrame = pos * CFrame.new(math.random(-radius,radius),math.random(-radius,radius),math.random(-radius,radius)) * CFrame.Angles(mafa,mafa,mafa)
local bp = Instance.new('BodyPosition',p)
bp.MaxForce = Vector3.new(1/0,1/0,1/0)
bp.D = 1000000
bp.P = 10000
	bp.Position = pos.p
game.Debris:AddItem(p,10)
end
end
            if Debounces.CanAttack == false then
                Debounces.CanAttack = true
                Debounces.NoIdl = false
                Debounces.on = false
            end
        end
    end
end)]]
----------------------------------------------------------
--Basic laser--
--- MODMODE ACTIVATE <(^__^)> ---


local p = game.Players.LocalPlayer
local char = p.Character
local rarm = char["Right Arm"]
local torso = char.Torso
local shl=torso['Right Shoulder']
local mouse = p:GetMouse()
hold=false

rw=nil
n_cf=CFrame.new(1,.5,0)

--mouse.Button1Down:connect(function()
mouse.KeyDown:connect(function(key)
    if key == "x" then
local laz = Instance.new("Part",char)
laz.Anchored=true
laz.BrickColor=BrickColor.new"New Yeller"
laz.CanCollide=false
for _,v in pairs(Enum.NormalId:GetEnumItems())do
laz[v.Name..'Surface']=0 end
laz.Size=Vector3.new(0,0,0)
Instance.new("CylinderMesh",laz).Name='m'
pos = (rarm.CFrame*CFrame.new(0,-1.2,0)).p
hold=true

local ptick=tick()

while hold do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(100),math.rad(-4),math.rad(-20)), 1)
if (tick()-ptick)>.1 then
    Spawn(function()
        local cl=laz:Clone()
        cl.Parent=char
        local msh=cl.m
        local r=5
        for i=0,1,.1 do
            msh.Scale=Vector3.new(1+i*r,1,1+i*r)
            cl.Transparency=i
            wait()
        end
        cl:Destroy()
    end)
    ptick=tick()
end

local mag = (pos-mouse.hit.p).magnitude
laz.Size = Vector3.new(1,mag,1)

laz.CFrame = (CFrame.new(pos,mouse.hit.p)*CFrame.new(0,0,-mag/2))*CFrame.Angles(math.pi/2,0,0)

pos = (rarm.CFrame*CFrame.new(0,-1.2,0)).p
wait()
end
laz:Destroy()
   end
end)
--end)

--mouse.Button1Up:connect(function()
mouse.KeyUp:connect(function(key)
    if key == "x" then
hold=false
end
end)
--end)
mouse.KeyDown:connect(function(key)
    if key == "z" then
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
hostile = true
for i = 1, 15 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(100),math.rad(-4),math.rad(-20)), 1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-0), 0, math.rad(-18)),--[[Speed]] 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-0), 0, math.rad(18)), --[[Speed]]0.4)
		if Debounces.on == false then break end
	rs:wait()
end
for i = 1, 15 do
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(100),math.rad(-4),math.rad(20)), 1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-0), 0, math.rad(-18)),--[[Speed]] 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-0), 0, math.rad(18)), --[[Speed]]0.4)
		if Debounces.on == false then break end
	rs:wait()
end

 if armloop then
  ch['Right Arm'].Anchored = true
  local p0 = ch.Torso.CFrame
  p0 = p0 + ((p0 * ca(pi/-2,0,0)).lookVector * -0.5) + (p0 * ca(0,pi/-2,0)).lookVector
  local p1 = p0 + ((p0.p-lp:GetMouse().Hit.p).unit * -2)
  ch['Right Arm'].CFrame = cf((p0.p + p1.p)/2,p0.p) * ca(-math.pi/2,0,0)
 end

                local m0del = Instance.new('Model',char)
                local wave = Instance.new('Part',m0del)
                wave.CFrame = char.Torso.CFrame * CFrame.new(0, 30, 0)
                wave.TopSurface = 'Smooth'
                wave.BottomSurface = 'Smooth'
                wave.BrickColor = BrickColor.new('Royal purple')
                wave.Anchored = true
                wave.FormFactor = 'Custom'
                wave.Shape = 'Ball'
                wave.CanCollide = false
                wave.Material = 'Neon'
                wave.Size = Vector3.new(3, 3, 3)
                local lite = Instance.new('SelectionSphere',wave)
                lite.Transparency = .7
                lite.Color = BrickColor.new('Royal purple')
                lite.Adornee = wave
                for awe = 1, 32 do
                        wave.Size = Vector3.new(wave.Size.X+1, wave.Size.Y+1, wave.Size.Z+1)
                        wait()
                        wave.CFrame = wave.CFrame * CFrame.new(0, .5, 0)
                end
wave.Touched:connect(function(hit)--LINE 170
    if hit.Parent:FindFirstChild("Humanoid") and hit.Parent~="XIxSandStormxIX" and hit.Name~="XIxSandStormxIX" then
              
		for i,v in pairs(FindNearestTorso(wave.CFrame.p,20))do
			if v:FindFirstChild('Humanoid') and hit.Parent~="XIxSandStormxIX" and hit.Name~="XIxSandStormxIX" then
				v.Humanoid:TakeDamage(math.random(300,600))
			end
		end
		
        end
end)
                for zfvadi = 1, 25 do
                        wave.CFrame = wave.CFrame * CFrame.new(0, -2, -2)
                        wait()
                end
                
wave.Touched:connect(function(hit)--LINE 170
    if hit.Parent:FindFirstChild("Humanoid") and hit.Parent~="XIxSandStormxIX" and hit.Name~="XIxSandStormxIX" then
              
		for i,v in pairs(FindNearestTorso(wave.CFrame.p,20))do
			if v:FindFirstChild('Humanoid') and hit.Parent~="XIxSandStormxIX" and hit.Name~="XIxSandStormxIX" then
				v.Humanoid:TakeDamage(math.random(300,600))
			end
		end
		
        end
end)
wait(1)
                for zfvadi = 1, 25 do
                        wave.Size = Vector3.new(wave.Size.X-1.5, wave.Size.Y-1.5, wave.Size.Z-1.5)
                        wave.Transparency = wave.Transparency + .5
                        wait()
                end
                game:GetService('Debris'):AddItem(m0del, 4)
                hum.WalkSpeed = 16 
            if Debounces.CanAttack == false then
                Debounces.CanAttack = true
                Debounces.NoIdl = false
                Debounces.on = false
            end
        end
hostile = false
    end
end)
----------------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "g" then
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            if Debounces.CanAttack == false then
                Debounces.CanAttack = true
                Debounces.NoIdl = false
                Debounces.on = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "m" then
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        hum.WalkSpeed = 50
          
        BV = Instance.new("BodyVelocity", torso)
        BV.maxForce = Vector3.new(math.huge,math.huge,math.huge)
        BV.P = 300000
        BV.Velocity = Vector3.new(0,200,0)
        game:GetService("Debris"):AddItem(BV,.07)   
        
    for i = 1, 20 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.0)*CFrame.Angles(math.rad(20),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-16),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.53,0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.53,0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
        if Debounces.on == false then break end
        wait()
    end
BV:Destroy()
if (torso.Velocity*Vector3.new(1, 1, 1)).magnitude > 1 then
    for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.0)*CFrame.Angles(math.rad(-14),math.rad(0), math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.53,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.53,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
end




hum.WalkSpeed = 16
Debounces.on = false
Debounces.NoIdl = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    --if key:byte() == 32 then
    if key == "c" then
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
local vu = Instance.new("BodyVelocity",torso)
vu.P = 500
vu.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
vu.velocity = Vector3.new(torso.CFrame.lookVector.X,torso.CFrame.lookVector.Y,torso.CFrame.lookVector.Z)
game:GetService("Debris"):AddItem(vu,0.267)
            if Debounces.CanAttack == false then
                Debounces.CanAttack = true
                Debounces.NoIdl = false
                Debounces.on = false
            end
        end
    end
end)
----------------------------------------------------------
mouse.KeyDown:connect(function(key)
   if key == "v" then
       if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true

slash()
                if Debounces.CanAttack == false then
                Debounces.CanAttack = true
                Debounces.NoIdl = false
                Debounces.on = false
            end
        end
        
   end
end)
----------------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "r" then
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true


for i = 1,20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.53,0) * CFrame.Angles(math.rad(115), math.rad(0), math.rad(-55)), 0.01)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.53,0) * CFrame.Angles(math.rad(115), math.rad(0), math.rad(55)), 0.01)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)),0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(30), math.rad(0), 0), 0.01)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-60), 0, math.rad(0)), 0.01)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-60), 0, math.rad(0)), 0.01)
        if Debounces.on == false then break end
    wait()
end

to = hitbox.Touched:connect(function(hit)
        hit = hit.Parent
        if hit and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                      hit:FindFirstChild("Humanoid"):TakeDamage(10)
                end
            end
        end    
    end)
    
    for i = 1,26 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.53,0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-55)), 0.1)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.53,0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(55)), 0.1)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)),0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-40), math.rad(0), 0), 0.1)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(50), 0, math.rad(0)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.1)
        if Debounces.on == false then break end
    wait()
end
wait(.5)
to:disconnect()
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)

----------------------------------------------------------
function unhols()
        asd = handle:findFirstChild("HolstWeld")
        asd:Destroy()
        partweld.Parent = handle
        on=false
end

function hols()
        local asd = Instance.new("Weld", handle)
        asd.Name = "HolstWeld"
        asd.Part0 = handle
        asd.Part1 = char.Torso
        asd.C0 = CFrame.new(0,0,-.6)*CFrame.Angles(0,0,260)
        partweld.Parent=nil
        on = true
end

function particle()
local c = game.Players.LocalPlayer.Character
local radius = 10
local pos = torso.CFrame
local clrz = {'Really black','Royal purple'};
for HAAA = 1, 20 do
for i = 1,1 do
local clr = clrz[math.random(1,#clrz)]
pos = torso.CFrame
local p = Instance.new('Part',c)
local mafc,mafa = math.random(-10,10), math.random(-360,360)
p.CanCollide = false
p.FormFactor = 3
p.Size = Vector3.new(1,1,1)
local m = Instance.new('SpecialMesh',p)
m.MeshType = 'Brick'
spawn(function()
  for i = 0,50 do
    local int,int2 = .02,.02
    m.Scale = m.Scale - Vector3.new(int,int,int)
	p.Transparency = p.Transparency + int2
	game:service'RunService'.RenderStepped:wait()
  end
  pcall(function()
  	p:Destroy()
  end)
end)
p.BrickColor = BrickColor.new(clr)
p.Material = 'Neon'
p.CFrame = pos * CFrame.new(math.random(-radius,radius),math.random(-radius,radius),math.random(-radius,radius)) * CFrame.Angles(mafa,mafa,mafa)
local bp = Instance.new('BodyPosition',p)
bp.MaxForce = Vector3.new(1/0,1/0,1/0)
bp.D = 1000000
bp.P = 10000
	bp.Position = pos.p
game.Debris:AddItem(p,10)
end
end
end
----------------------------------------------------------
Holstered = "off"

mouse.KeyDown:connect(function(key)

    if key == "f" then
    
        if Holstered == "off" then

            hols()

            particle()

            Holstered = "on"

        elseif Holstered == "on" then

            unhols()

            particle()

            Holstered = "off"

        end

    end
    
end)
----------------------------------------------------------
game:GetService("RunService").RenderStepped:connect(function()
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jumpn == true then
animpose = "Jumping"
elseif ffing == true then
animpose = "Freefalling"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
if animpose == "Idle" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.53,0)*CFrame.Angles(math.rad(-0),math.rad(-6),math.rad(8)), 1)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.53,0)*CFrame.Angles(math.rad(-0),math.rad(6),math.rad(-8)), 1)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.0) * CFrame.Angles(math.rad(-0),0,0), 1)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/5), 0) * CFrame.Angles(math.rad(-2),0, math.rad(0)), 1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-16)), 1)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(16)), 1)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.53,0)*CFrame.Angles(math.rad(-0),math.rad(-12),math.rad(14+24*math.cos(sine/8))),--[[Speed]] 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.53,0)*CFrame.Angles(math.rad(-0),math.rad(12),math.rad(-14-24*math.cos(sine/8))),--[[Speed]] 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-0),0,0),--[[Speed]] 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-0),0, math.rad(0)),--[[Speed]] 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-0), 0, math.rad(-18)),--[[Speed]] 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-0), 0, math.rad(18)), --[[Speed]]0.4)
end
elseif animpose == "Freefalling" then
for i = 1, 2 do
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.0)*CFrame.Angles(math.rad(20),math.rad(0),     math.rad(0)),0.7)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-16),     math.rad(0), math.rad(0)), 0.7)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.53,0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.53,0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.53,0)*CFrame.Angles(math.rad(-14),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 1)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.53,0)*CFrame.Angles(math.rad(-14),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 1)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-12),0,0), 1)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-18),0, math.rad(0)), 1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-14), 0, math.rad(-16)), 1)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-14), 0, math.rad(16)), 1)
wait()
end
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.53,0)*CFrame.Angles(math.rad(-0),math.rad(-6),math.rad(8)), 1)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.53,0)*CFrame.Angles(math.rad(-0),math.rad(6),math.rad(-8)), 1)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.0) * CFrame.Angles(math.rad(-0),0,0), 1)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/5), 0) * CFrame.Angles(math.rad(-2),0, math.rad(0)), 1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-16)), 1)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(16)), 1)
elseif animpose == "Walking" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.53,0)*CFrame.Angles(math.rad(-0),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 1)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.53,0)*CFrame.Angles(math.rad(-0),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 1)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.0) * CFrame.Angles(math.rad(-0),0,0), 1)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/5), 0) * CFrame.Angles(math.rad(-4),0, math.rad(0)), 1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5,-1-0*math.cos(sine/14)/2,-.05 + math.sin(sine/14)/6) * CFrame.Angles(math.rad(-8) + -math.sin(sine/10)/2,      0,      0), 1)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5,-1+0*math.cos(sine/14)/2,-.05 + -math.sin(sine/14)/6) * CFrame.Angles(math.rad(-8) + math.sin(sine/10)/2,      0,      0), 1)
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.53,0)*CFrame.Angles(math.rad(-14),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 1)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.53,0)*CFrame.Angles(math.rad(-14),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 1)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-12),0,0), 1)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/5), 0) * CFrame.Angles(math.rad(-4),0, math.rad(0)), 1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-14), 0, math.rad(-16)), 1)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-14), 0, math.rad(16)), 1)
end
end
end)