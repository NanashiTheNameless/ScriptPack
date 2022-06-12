script.Name="Jim"
 
pcall(function()
        for i,v in pairs(game.Players.LocalPlayer.StarterGear:children()) do
                v:Remove()
        end 
end) 
 
BigTorso=Instance.new("SpecialMesh",game.Players.LocalPlayer.Character.Torso)
BigTorso.Offset=Vector3.new(3,2,0)
BigTorso.MeshType="Brick"
BigTorso.Scale=Vector3.new(1,2,1)
 
a=game.Players.LocalPlayer.Character["Right Arm"]
aa=game.Players.LocalPlayer.Character.Torso["Right Shoulder"]
a.Size=Vector3.new(1,4,1)
aa.C0 = CFrame.new(1.5,(a.Size.y/2)-0.5,0) * CFrame.Angles(0,math.pi/2,0) 
aa.C1 = CFrame.new(0,(a.Size.y/2)-0.5,0) * CFrame.Angles(0,math.pi/2,0) 
aa.Parent=game.Players.LocalPlayer.Character.Torso
 
b=game.Players.LocalPlayer.Character["Right Leg"]
bb=game.Players.LocalPlayer.Character.Torso["Right Hip"]
b.Size=Vector3.new(1,7,1)
bb.C0 = CFrame.new(0.5,-b.Size.y/2+(BigTorso.Scale.y)-0.5,0) * CFrame.Angles(0,math.pi/2,0) 
bb.C1 = CFrame.new(0,b.Size.y/2,0) * CFrame.Angles(0,math.pi/2,0) 
bb.Parent=game.Players.LocalPlayer.Character.Torso
 
c=game.Players.LocalPlayer.Character["Left Arm"]
cc=game.Players.LocalPlayer.Character.Torso["Left Shoulder"]
c.Size=Vector3.new(1,4,1)
cc.C0 = CFrame.new(-1.5,(c.Size.y/2)-0.5,0) * CFrame.Angles(0,-math.pi/2,0) 
cc.C1 = CFrame.new(0,(c.Size.y/2)-0.5,0) * CFrame.Angles(0,-math.pi/2,0) 
cc.Parent=game.Players.LocalPlayer.Character.Torso
 
d=game.Players.LocalPlayer.Character["Left Leg"]
dd=game.Players.LocalPlayer.Character.Torso["Left Hip"]
d.Size=Vector3.new(1,7,1)
dd.C0 = CFrame.new(-0.5,-(d.Size.y/2)+(BigTorso.Scale.y)-0.5,0) * CFrame.Angles(0,-math.pi/2,0) 
dd.C1 = CFrame.new(0,d.Size.y/2,0) * CFrame.Angles(0,-math.pi/2,0) 
dd.Parent=game.Players.LocalPlayer.Character.Torso
 
e=game.Players.LocalPlayer.Character["Head"]
ee=game.Players.LocalPlayer.Character.Torso["Neck"]
ee.C0=CFrame.new(0,2,0,-1,-0,-0,0,0,1,0,1,0)
ee.Parent=game.Players.LocalPlayer.Character.Torso
 
script.Parent=game.Players.LocalPlayer.Backpack --Change Backpack to StarterGear for it to work throughout the rest of the server
 
for i,v in pairs(game.Players.LocalPlayer.StarterGear:children()) do
print(v.Name)
        if i<=#game.Players.LocalPlayer.StarterGear:children()-1 then
                v:Remove()
        end 
end 
while wait() do 
        pcall(function() game.Players.LocalPlayer.Character.Shirt:Remove() end) 
        pcall(function() game.Players.LocalPlayer.Character.Pants:Remove() end) 
        pcall(function() game.Players.LocalPlayer.Character["Shirt Graphic"]:Remove() end) 
        for i,v in pairs(game.Players.LocalPlayer.Character:children()) do
                if v:IsA("CharacterMesh") then 
                        v:Remove()
                end 
        end
end 
 
 
 
--[[
c/print("RS")
print(game.Players.LocalPlayer.Character.Torso['Right Shoulder'].c0)
print("RH")
print(game.Players.LocalPlayer.Character.Torso['Right Hip'].c0)
print("LS")
print(game.Players.LocalPlayer.Character.Torso['Left Shoulder'].c0)
print("LH")
print(game.Players.LocalPlayer.Character.Torso['Left Hip'].c0)
]]
 
--mediafire 