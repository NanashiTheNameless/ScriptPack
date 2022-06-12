local player=game.Players.LocalPlayer
char = player.Character


local weld = Instance.new("Weld",char.Torso)
weld.Part0 = char.Torso

local err0r = Instance.new("Part",char.Torso)
err0r.Anchored = false
err0r.CanCollide = false
err0r.BrickColor=BrickColor.new("Really red")
err0r.Size = Vector3.new(3,2,6)
err0r.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld.Part1 = err0r
weld.C1 = CFrame.new(0,0.5,0) * CFrame.Angles(0,math.rad(270),0)

local mesh=Instance.new("SpecialMesh", err0r)
mesh.MeshId="rbxassetid://434871883"
char.Head.face.Transparency=1
char.Torso.Transparency = 1
char.Head.face:Destroy()
char.Head.Transparency = 1
char['Left Arm'].Transparency = 1
char['Right Arm'].Transparency = 1
char['Left Leg'].Transparency = 1
char['Right Leg'].Transparency = 1

for i,v in pairs(char:GetChildren()) do
   if v.ClassName == 'Accessory' then
       v:Destroy()
   end
end

while wait(0.001) do
err0r.Transparency = 0.1
wait(0.001)
err0r.Transparency = 0.2
wait(0.001)
err0r.Transparency = 0.3
wait(0.001)
err0r.Transparency = 0.4
wait(0.001)
err0r.Transparency = 0.5
wait(0.001)
err0r.Transparency = 0.6
wait(0.001)
err0r.Transparency = 0.7
wait(0.001)
err0r.Transparency = 0.8
wait(0.001)
err0r.Transparency = 0.9
wait(0.001)
err0r.Transparency = 0.8
wait(0.001)
err0r.Transparency = 0.7
wait(0.001)
err0r.Transparency = 0.6
wait(0.001)
err0r.Transparency = 0.5
wait(0.001)
err0r.Transparency = 0.4
wait(0.001)
err0r.Transparency = 0.3
wait(0.001)
err0r.Transparency = 0.2

end