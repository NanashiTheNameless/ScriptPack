-- manify script

--here u go pix :D
Player = game.Players.LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"]
for i,v in pairs(game.Players:GetPlayers()) do
------------------------------------
m=Instance.new('SpecialMesh',v.Character.Torso)
m.MeshId="http://www.roblox.com/asset/?id=32328670"
------------------------------------
m=Instance.new('SpecialMesh',v.Character['Left Arm'])
m.MeshId="http://www.roblox.com/asset/?id=32328397"
------------------------------------
m=Instance.new('SpecialMesh',v.Character['Right Arm'])
m.MeshId="http://www.roblox.com/asset/?id=32328563"
------------------------------------
m=Instance.new('SpecialMesh',v.Character['Left Leg'])
m.MeshId="http://www.roblox.com/asset/?id=32328520"
------------------------------------
m=Instance.new('SpecialMesh',v.Character['Right Leg'])
m.MeshId="http://www.roblox.com/asset/?id=32328627"
------------------------------------
v.Character.Head.face.Texture="http://www.roblox.com/asset/?id=129990293"
------------------------------------
end