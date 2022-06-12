--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 
script.Parent = workspace.acb227

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 125)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Transform" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 

local Player = script.Parent
local transparencyFader = 0.1
local playerStuff = Player:GetChildren()

local meshArray = {}
local face = nil
local decals = {}

for i = 1,10 do
	meshArray[i] = {0,0}
end

-- various meshes to transform into
meshArray[1] = {"http://www.roblox.com/asset/?id=24102128","http://www.roblox.com/asset/?id=24102113"}
meshArray[2] = {"http://www.roblox.com/asset/?id=15089001","http://www.roblox.com/asset/?id=15088976"}
meshArray[3] = {"http://www.roblox.com/asset/?id=11641931","http://www.roblox.com/asset/?id=11641912"}
meshArray[4] = {"http://www.roblox.com/asset/?id=1290033","http://www.roblox.com/asset/?id=1290030"}
meshArray[5] = {"http://www.roblox.com/asset/?id=14846869","http://www.roblox.com/asset/?id=14846834"}
meshArray[6] = {"http://www.roblox.com/asset/?id=16190555","http://www.roblox.com/asset/?id=16285875"}
meshArray[7] = {"http://www.roblox.com/asset/?id=1082816","http://www.roblox.com/asset/?id=28775189"}
meshArray[8] = {"http://www.roblox.com/asset/?id=1029586","http://www.roblox.com/asset/?id=1029588"}
meshArray[9] = {"http://www.roblox.com/asset/?id=19380188","http://www.roblox.com/asset/?id=19380153"}
meshArray[10] = {"http://www.roblox.com/asset/?id=25646277","http://www.roblox.com/asset/?id=26415302"}

for j = 1,10 do
	for i = 1, #playerStuff do
		
		local thing = playerStuff[i]
		if playerStuff[i].className == "Part" then
			playerStuff[i].Transparency = playerStuff[i].Transparency + transparencyFader
			if thing.Name == "Head" and thing:FindFirstChild("face") ~= nil then
				face = thing.face
				thing.face.Parent = nil
			end
		elseif playerStuff[i].className == "Hat" then
			playerStuff[i].Handle.Transparency = playerStuff[i].Handle.Transparency + transparencyFader
		elseif playerStuff[i].className == "Tool" then
			playerStuff[i].Handle.Transparency = playerStuff[i].Handle.Transparency + transparencyFader
		end

	end
	wait()
end

local torso = Player:FindFirstChild("Torso")
local rightLeg = Player:FindFirstChild("Right Leg")

local part = Instance.new("Part")
part.Position = rightLeg.Position

local meshToUse = math.random(1,10)
specialMesh = Instance.new("SpecialMesh")
specialMesh.MeshId = meshArray[meshToUse][1]
specialMesh.TextureId = meshArray[meshToUse][2]
specialMesh.Parent = part

part.Parent = Player
part.Name = "Transmorph"

local weld = nil

if rightLeg ~= nil then
	weld = Instance.new("Weld")
	weld.Parent = part
	weld.Part0 = part
	weld.Part1 = torso
	if meshToUse == 2 then
		weld.C0 = CFrame.new(0,0,1.8) * CFrame.Angles(math.pi/2,math.pi/2,0)
	elseif meshToUse == 3 then
		weld.C0 = CFrame.new(0,2,0)
	elseif meshToUse == 7 then
		weld.C0 = CFrame.new(0,0,2.5) * CFrame.Angles(math.pi/2,0,0)
	elseif meshToUse == 10 then
		weld.C0 = CFrame.new(0,1,0) * CFrame.Angles(0,math.pi/2,0)
	else
		weld.C0 = CFrame.new(0,2.5,0)
	end
end

wait(15)

part.Parent = nil
part:remove()

-- below is not efficient :( can you make it better?  If you do pm jeditkacheff with the subject "I made the transmorph better!" I'll respond I promise!
for j = 1,10 do
	for i = 1, #playerStuff do

		local thing = playerStuff[i]
		if playerStuff[i].className == "Part" then
			if j ~= 10 then
				playerStuff[i].Transparency = playerStuff[i].Transparency - transparencyFader
			else
				playerStuff[i].Transparency = 0
			end
			if thing.Name == "Head" then
				if face ~= nil then
					face.Parent = thing
				end
			end
		elseif playerStuff[i].className == "Hat" then
			if j ~= 10 then
				playerStuff[i].Handle.Transparency = playerStuff[i].Handle.Transparency - transparencyFader
			else
				playerStuff[i].Transparency = 0
			end
		elseif playerStuff[i].className == "Tool" then
			if j ~= 10 then
				playerStuff[i].Handle.Transparency = playerStuff[i].Handle.Transparency - transparencyFader
			else
				playerStuff[i].Transparency = 0
			end
		end

	end
	wait()
end

end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "remove" then 
sc:Remove() 
end 
end) 