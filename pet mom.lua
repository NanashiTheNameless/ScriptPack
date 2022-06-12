---//Cool12309's Pet Version 3\\-------------------------------------------------------------------------------------------------------------------------------------|] 
local MainOwner = "acb227" 
---//Options\\-------------------------------------------------------------------------------------------------------------------------------------------------------|] 
local FireOn = false 
local FireColor1, FireColor2, FireColor3 = 0, 0.3, 0.5 --Will only display if FireOn is true. 
local FireSecColor1, FireSecColor2, FireSecColor3 = 0, 0.3, 0.5 --Will only display if FireOn is true. 
local PetColor = "Really black" 
---//Optional Options\\----------------------------------------------------------------------------------------------------------------------------------------------|] 
local IsFollowing = true --If true then it will follow, else it will stall. 
local Follower = MainOwner --This is the person it will follow. 
local Shape = "Ball" --The 3 shapes are: Ball, Block, and Cylinder. 
local SharpEdges = false --Will only display if Shape is Block. This makes the edges sharp. 
---//Commands\\------------------------------------------------------------------------------------------------------------------------------------------------------|] 
local commands = { 

"color \[Color Name\]*", 
"shape \[Shape\]", 

} 
-----------------------------------------------------------------------//Do Not Edit Below!\\------------------------------------------------------------------------|] 

---//Varibles\\------------------------------------------------------------------------------------------------------------------------------------------------------|] 
local Players = game:GetService("Players") 
local Workspace = Workspace 


local MainAdmin = Players:findFirstChild(MainOwner, true) 

local MainCharacter = MainAdmin.Character 
local MainLimbs = { 

MainHead = MainCharacter:findFirstChild("Head", true), 
MainTorso = MainCharacter:findFirstChild("Torso", true), 

MainLeftArm = MainCharacter:findFirstChild("Left Arm", true), 
MainLeftLeg = MainCharacter:findFirstChild("Left Leg", true), 
MainRightArm = MainCharacter:findFirstChild("Right Arm", true), 
MainRightLeg = MainCharacter:findFirstChild("Right Leg", true) 

} 


local FireColor = Color3.new(FireColor1, FireColor2, FireColor3) 
local FireSecColor = Color3.new(FireSecColor1, FireSecColor2, FireSecColor3) 

---//Pet Making\\----------------------------------------------------------------------------------------------------------------------------------------------------|] 
local BodyPosition = Instance.new("BodyPosition") 
local Fire = Instance.new("Fire") 
local Model = Instance.new("Model") 
local Pet = Instance.new("Part") 

BodyPosition.maxForce = Vector3.new(1e+10, 1e+10, 1e+10) 
BodyPosition.Parent = Pet 
Fire.Color = FireColor 
Fire.SecondaryColor = FireSecColor 
Model.Name = tostring(MainOwner .. "'s Pet(Made By cool12309)") 
Model.Parent = MainCharacter 
Pet.BottomSurface = "Smooth" 
Pet.BrickColor = BrickColor.new(PetColor) 
Pet.CFrame = MainLimbs.MainHead.CFrame 
Pet.Name = "Pet" 
Pet.Parent = Model 
Pet.Shape = Shape 
Pet.Size = Vector3.new(2, 2, 2) 
Pet.TopSurface = "Smooth" 

script.Name = "Pet Script" 
script.Parent = Model 
---//Pet Following\\-------------------------------------------------------------------------------------------------------------------------------------------------|] 
coroutine.resume(coroutine.create(function() 
while true do 
if Pet then 
if MainLimbs.MainHead then 
BodyPosition.position = MainLimbs.MainHead.Position + Vector3.new(0, 2, 0) 
else script:Remove() break end 
else script:Remove() break end 
wait(0.1) 
end 
end)) 