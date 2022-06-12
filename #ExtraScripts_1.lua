--Neck shuffle--
for X = 1, math.huge, 0.2 do 
wait() 
game.Workspace.SergeantSmokey.Torso.Neck.C0 = CFrame.new(math.sin(X) / 2,1.5,0) 
game.Workspace.SergeantSmokey.Torso.Neck.C1 = CFrame.new(0,0,0) 
end 
 


--Tools--
game:GetObjects("rbxassetid://127411439")[1].Parent=game.Players.LocalPlayer.Backpack

game:GetObjects("rbxassetid://100205720")[1].Parent=game.Players.LocalPlayer.Backpack

game:GetObjects("rbxassetid://100205720")[1].Parent=game.Players.LocalPlayer.Backpack

game:GetObjects("rbxassetid://14835706")[1].Parent=game.Players.LocalPlayer.Backpack

game:GetObjects("rbxassetid://26334024")[1].Parent=game.Players.LocalPlayer.Backpack

game:GetObjects("rbxassetid://100205720")[1].Parent=game.Players.LocalPlayer.Backpack

game:GetObjects("rbxassetid://119121943")[1].Parent=game.Players.LocalPlayer.Backpack

end)


--Walkspeed--
game.Workspace.SergeantSmokey.Humanoid.WalkSpeed = 80

--Health--
game.Workspace.SergeantSmokey.Humanoid.MaxHealth = math.huge

--RemoveHats--
game.Workspace.ChildAdded:connect(function(obj)		-- Track new items added to the workspace
	if (obj:IsA("Hat")) then								-- Check to see if the object is a hat
		wait(4)												-- Give the player a chance to put the hat back on
		if (obj.Parent == game.Workspace) then			-- If hat is still just lying around, remove it
			obj:Destroy()
		end
	end
end)

--AntiSit--
local msg = Instance.new("Hint", Workspace)
msg.Text = ""

for i = 1, 1000 do
	game.Workspace.NAMEGOESHERE.Humanoid.Sit = false
	wait(0.1)
end

--Insert--
M = Game:GetService("InsertService"):LoadAss­et(23456449) 
M.Parent = Game.Workspace 
M:MakeJoints() 
M:MoveTo(Game.Workspace.BRICKER24alt.Tor­so.Position + Vector3.new(0, 0, 0))

--Dissapear--
local msg = Instance.new("Hint", Workspace)
msg.Text = ""

local target = game.Workspace.TARGETNAMEHERE

local LeftArm = target:findFirstChild("Left Arm")
local RightArm = target:findFirstChild("Right Arm")
local RightLeg = target:findFirstChild("Right Leg")
local LeftLeg = target:findFirstChild("Left Leg")

LeftArm:destroy()
RightArm:destroy()
RightLeg:destroy()
LeftLeg:destroy()
target.Head:destroy()
target.Torso:destroy()

----

--(Includes)--Version 1.0--
--Btools(Move brick,Copy,Delete)
--Add a brick
--Add a Shiny Brick
--Add a Ghost Brick
--Transparency Rate
--Reflectance Rate
--Brick's Color Change
--WalkSpeed Change
--MaxHealth Change

--(Notes)--
--If your gonna Added these to your own Basic script Builder script Give me credit--
--I suggest you copy these down and put it on a computer Notepad or WordPad--
--Be sure not to Abuse the Btools--
--Remeber to have fun Building what ever you want--
--To change the size of the brick go to the (P.Size = Vector3.new(Length,Highth,Width)--
--These can also Be added to normal Scripts too--
																			--~Bowserking64~--


--Btools--
======
wait(1)
if game.Players.Name~= nil then
player = game.Players.Name.Backpack
local a = Instance.new("HopperBin")
a.BinType = "GameTool"
a.Parent = player
local a = Instance.new("HopperBin")
a.BinType = "Clone"
a.Parent = player
local a = Instance.new("HopperBin")
a.BinType = "Hammer"
a.Parent = player
end

--Add a brick--
===========
p = Instance.new("Part")
p.Anchored = true
p.Position = Vector3.new(0,5,0)
p.Size = Vector3.new(2,1,2)
p.Parent = game.workspace
p.BrickColor = BrickColor.new(29)

--Add a Shiny brick--
=================
p = Instance.new("Part")
p.Anchored = true
p.Position = Vector3.new(0,5,0)
p.Reflectance = 0.4
p.Size = Vector3.new(2,1,2)
p.Parent = game.workspace
p.BrickColor = BrickColor.new(29)

--Add a Ghost brick--
=================
p = Instance.new("Part")
p.Anchored = true
p.Position = Vector3.new(0,5,0)
p.Transparency = 0.3
p.Size = Vector3.new(2,1,2)
p.Parent = game.workspace
p.BrickColor = BrickColor.new(29)

--Tranparency Rate--
================
game.workspace.Brick.Transparency = 0.5

--0(Full visible) 0.5(Half Invisble) 1(Fully invsible)--

--Reflectance Rate--
================
game.workspace.Brick.Reflectance = 0.5

--0(non-shiny) 0.5(Shiny color of brick) 1(Fully Non brick color shiny)--

--Brick's Color change--
===================
game.workspace.Base.BrickColor = BrickColor.new(1) --This is the Script, Below is just Info--


[1]	--White
[2]	--Grey
[3]	--Light yellow
[5]	--Brick yellow
[6]	--Light green (Mint)
[9]	--Light reddish violet
[11]	--Pastel Blue
[12]	--Light orange brown
[18]	--Nougat
[21]	--Bright red
[22]	--Med. reddish violet
[23]	--Bright blue
[24]	--Bright yellow
[25]	--Earth orange
[26]	--Black
[27]	--Dark grey
[28]	--Dark green
[29]	--Medium green
[36]	--Lig. Yellowich orange
[37]	--Bright green
[38]	--Dark orange
[39]	--Light bluish violet
[40]	--Transparent
[41]	--Tr. Red
[42]	--Tr. Lg blue
[43]	--Tr. Blue
[44]	--Tr. Yellow
[45]	--Light blue
[47]	--Tr. Flu. Reddish orange
[48]	--Tr. Green
[49]	--Tr. Flu. Green
[50]	--Phosph. White
[100]	--Light red
[101]	--Medium red
[102]	--Medium blue
[103]	--Light grey
[104]	--Bright violet
[105]	--Br. yellowish orange
[106]	--Bright orange
[107]	--Bright bluish green
[108]	--Earth yellow
[110]	--Bright bluish violet
[111]	--Tr. Brown
[112]	--Medium bluish violet
[113]	--Tr. Medi. reddish violet
[115]	--Med. yellowish green
[116]	--Med. bluish green
[118]	--Light bluish green
[119]	--Br. yellowish green
[120]	--Lig. yellowish green
[121]	--Med. yellowish orange
[123]	--Br. reddish orange
[124]	--Bright reddish violet
[125]	--Light orange
[126]	--Tr. Bright bluish violet
[127]	--Gold
[128]	--Dark nougat
[131]	--Silver
[133]	--Neon orange
[134]	--Neon green
[135]	--Sand blue
[136]	--Sand violet
[137]	--Medium orange
[138]	--Sand yellow
[140]	--Earth blue
[141]	--Earth green
[143]	--Tr. Flu. Blue
[145]	--Sand blue metallic
[146]	--Sand violet metallic
[147]	--Sand yellow metallic
[148]	--Dark grey metallic
[149]	--Black metallic
[150]	--Light grey metallic
[151]	--Sand green
[153]	--Sand red
[154]	--Dark red
[157]	--Tr. Flu. Yellow
[158]	--Tr. Flu. Red
[168]	--Gun metallic
[176]	--Red flip/flop
[178]	--Yellow flip/flop
[179]	--Silver flip/flop
[180]	--Curry
[190]	--Fire Yellow
[191]	--Flame yellowish orange
[192]	--Reddish brown
[193]	--Flame reddish orange
[194]	--Medium stone grey
[195]	--Royal blue
[196]	--Dark Royal blue
[198]	--Bright reddish lilac
[199]	--Dark stone grey
[200]	--Lemon metalic
[208]	--Light stone grey
[209]	--Dark Curry
[210]	--Faded green
[211]	--Turquoise
[212]	--Light Royal blue
[213]	--Medium Royal blue
[216]	--Rust
[217]	--Brown
[218]	--Reddish lilac
[219]	--Lilac
[220]	--Light lilac
[221]	--Bright purple
[222]	--Light purple
[223]	--Light pink
[224]	--Light brick yellow
[225]	--Warm yellowish orange
[226]	--Cool yellow
[232]	--Dove blue
[268]	--Medium lilac
[1001]	--Institutional white
[1002]	--Mid gray
[1003]	--Really black
[1004]	--Really red
[1005]	--Neon orange
[1006]	--Alder
[1007]	--Dusty Rose
[1008]	--Olive
[1009]	--New Yeller
[1010]	--Really blue
[1011]	--Navy blue
[1012]	--Deep blue
[1013]	--Cyan
[1014]	--CGA brown
[1015]	--Magenta
[1016]	--Pink
[1017]	--Deep orange
[1018]	--Teal
[1019]	--Toothpaste
[1020]	--Lime green
[1021]	--Camo
[1022]	--Grime
[1023]	--Lavender
[1024]	--Pastel light blue
[1025]	--Pastel orange
[1026]	--Pastel violet
[1027]	--Pastel blue-green
[1028]	--Pastel green
[1029]	--Pastel yellow
[1030]	--Pastel brown
[1031]	--Royal purple
[1032]	--Hot pink 