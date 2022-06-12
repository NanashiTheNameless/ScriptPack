f = Instance.new("ForceField") f.Parent = Workspace.FIuffz 

God Script:



game.Workspace.FIuffz.Humanoid.MaxHealth = math.huge 



Head Spin:



for X = 1, math.huge, 0.1 do

wait()

game.Workspace.FIuffz.Torso.Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromAxisAngle(Vector3.new(0,1,0), X)

game.Workspace.FIuffz.Torso.Neck.C1 = CFrame.new(0,0,0)

end



Neck Suffle:



script/for X = 1, math.huge, 0.2 do

wait()

game.Workspace.FIuffz.Torso.Neck.C0 = CFrame.new(math.sin(X) / 2,1.5,0)

game.Workspace.FIuffz.Torso.Neck.C1 = CFrame.new(0,0,0)

end



Chicken Wing Airplane:



script/Chicken = "FIuffz"

game.Workspace[Chicken].Torso["Left Shoulder"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)

game.Workspace[Chicken].Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, 0)

game.Workspace[Chicken].Torso["Right Shoulder"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)

game.Workspace[Chicken].Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, 0)



Bigger Base:



script/for X = -2500, 2500, 512 do

for Z = -2500, 2500, 512 do

local P = Instance.new("Part")

P.Anchored = true

P.Locked = true

P.Size = Vector3.new(512,3,512) 

P.CFrame = CFrame.new(X,0,Z)

P.BrickColor = BrickColor.Green()

P.Parent = game.Workspace

end

end



Kick Script: 



game.Players.victimsnamehere:Remove() 



Speed Script: 



game.Workspace. FIuffz.Humanoid.WalkSpeed = 30 



Head Size Script: 



workspace. FIuffz.Head.Mesh.Scale = Vector3.new(19,19,19) 