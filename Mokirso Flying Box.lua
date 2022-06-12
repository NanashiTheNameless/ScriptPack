--[[
===============================================================
===============]   Box script by Mokiros   [===================
==============]   <Insert cool text here>   [==================
===============================================================
]]

--Check if Script is Local
if script.ClassName ~= "LocalScript" then
	error("Script must be Local in order to work!")
	script.Parent = nil
	script.Disabled = true
	script:remove()
	script:Destroy()
end

--------------------------------------
-------------|Variables|--------------
--------------------------------------
local Player = game.Players.LocalPlayer
local Version = "doge"
local Box_Data = {
["Material"] = "Neon";
["BrickColor"] = BrickColor.new("Cyan");
["Transparency"] = 0.7;
["Reflectance"] = 0;
["Height"] = 10;
}

--------------------------------------
----------|Creating a box|------------
--------------------------------------
local BoxModel = Instance.new("Model")
BoxModel.Name = [[A box v]]..Version..[[ by Mokiros]]

local CreatePart = function (Name,Size,CFramePosition)
	local Part = Instance.new("Part",BoxModel)
	Part.Anchored = true
	Part.Locked = true
	Part.FormFactor = "Custom"
	Part.Material = Box_Data["Material"]
	Part.BrickColor = Box_Data["BrickColor"]
	Part.Transparency = Box_Data["Transparency"]
	Part.Reflectance = Box_Data["Reflectance"]
	Part.Name = Name
	Part.Size = Size
	Part.CFrame = CFramePosition
	return(Part)
end


local OxChat = function (msg1,msg2,plr)
	local SV = Instance.new('StringValue')
	SV.Parent = plr
	SV.Name = 'SB_Chat'
	SV.Value = ""..tostring(msg1):gsub('','\5').."/"..tostring(msg2):gsub('','\5')..""
	game.Debris:AddItem(SV, .1)
end



--Creating parts
local Base = CreatePart("Bottom",Vector3.new(10,1,10),CFrame.new(0,0,0))
local Front = CreatePart("Front",Vector3.new(1,10,10),(Base.CFrame * CFrame.new(4.5,5,0)))
local Back = CreatePart("Back",Vector3.new(1,10,10),(Base.CFrame * CFrame.new(-4.5,5,0)))
local Left = CreatePart("Left",Vector3.new(10,10,1),(Base.CFrame * CFrame.new(0,5,-4.5)))
local Right = CreatePart("Right",Vector3.new(10,10,1),(Base.CFrame * CFrame.new(0,5,4.5)))
local Top = CreatePart("Top",Vector3.new(10,1,10),(Base.CFrame * CFrame.new(0,9.5,0)))
BoxModel.PrimaryPart = Base


--Creating BodyHolding stuff which makes The Box special
local BP = Instance.new("BodyPosition",Base)
BP.MaxForce = Vector3.new(0,math.huge,0)
BP.Position = Vector3.new(0,Box_Data["Height"],0)
local BG = Instance.new("BodyGyro",Base)
BG.MaxTorque = Vector3.new(math.huge,0,math.huge)
BG.CFrame = Base.CFrame


--Welding everything together
--local Welds_Folder = Instance.new("Folder",BoxModel)
--Welds_Folder.Name = "Welds"
for i,c in pairs(BoxModel:GetChildren()) do
	local Weld = Instance.new("Weld",Base)
	Weld.Part0 = Base
	Weld.Part1 = c
	Weld.C0 = Base.CFrame:inverse()
	Weld.C1 = c.CFrame:inverse()
end


for i,c in pairs(BoxModel:GetChildren()) do
	if c["Anchored"] then
		c.Anchored = false
	end
end


local Backup = BoxModel:Clone()

BoxModel.Parent = workspace
script.Parent = Player.PlayerScripts

print("The Box v"..Version.." by Mokiros has been loaded!")

Player.Character:SetPrimaryPartCFrame(Player.Character.PrimaryPart.CFrame * CFrame.new(0,5,0))
BoxModel:SetPrimaryPartCFrame(Player.Character.PrimaryPart.CFrame * CFrame.new(0,-5,0))

--Chat commands
Player.Chatted:connect(function(msg)
	if msg:lower() == "restorebox" then
		if BoxModel ~= nil then
			BoxModel:Destroy()
		end
		BoxModel = Backup:Clone()
		for i,c in pairs(BoxModel:GetChildren()) do
			for i,v in pairs(Box_Data) do
				if i ~= "Height" and c[i] then
					c[i] = v
				end
			end
		end
		BoxModel:FindFirstChild("Bottom"):FindFirstChild("BodyPosition").Position
		= Vector3.new(0,Box_Data["Height"],0)
		BoxModel.Parent = workspace
		Player.Character:SetPrimaryPartCFrame(Player.Character.PrimaryPart.CFrame * CFrame.new(0,5,0))
		BoxModel:SetPrimaryPartCFrame(Player.Character.PrimaryPart.CFrame * CFrame.new(0,-5,0))
	elseif msg:sub(1,7) == "change/" then
		local SlashNum = 0
		for i = 8,#msg do
			if msg:sub(i,i) == "/" then
				SlashNum = i
				break
			end
		end
		if SlashNum ~= 0 then
			if msg:sub(8,SlashNum-1) == "Height" then
				BoxModel:FindFirstChild("Bottom"):FindFirstChild("BodyPosition").Position
				= Vector3.new(0,tonumber(msg:sub(SlashNum+1)),0)
			else
				for i,c in pairs(BoxModel:GetChildren()) do
					if c[msg:sub(8,SlashNum-1)] then
						if msg:sub(8,SlashNum-1) == "BrickColor" then
							c[msg:sub(8,SlashNum-1)] = BrickColor.new(msg:sub(SlashNum+1))						
						else
							c[msg:sub(8,SlashNum-1)] = msg:sub(SlashNum+1)
						end
					end
				end
			end
			if msg:sub(8,SlashNum-1) == "BrickColor" then
				Box_Data[msg:sub(8,SlashNum-1)] = BrickColor.new(msg:sub(SlashNum+1))					
			else
				Box_Data[msg:sub(8,SlashNum-1)] = msg:sub(SlashNum+1)
			end
		end
	elseif msg:lower() == "checkbox" then
		print("Box model:",tostring(BoxModel))
		print("Script:",tostring(script))
		print("Owner:",tostring(Player))
	end
end)
