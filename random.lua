x = game:GetService("InsetService"):LoadAsset(32355966) 
x.Parent = game.workspace 
x:makejoints() 
x:MoveTo(Game.Players.acb227.BackPack) 


workspace.acb227.Torso.Anchored = true 
workspace.acb227.Torso.Transparency = 0
workspace.acb227.Torso.Color = Color3.new("Bright blue")
workspace.acb227.Head.Transparency = 1
workspace.acb227["Right Arm"].Transparency = 1
workspace.acb227["Right Leg"].Transparency = 1
workspace.acb227["Left Arm"].Transparency = 1
workspace.acb227["Left Leg"].Transparency = 1
workspace.acb227.Head.CanCollide = false
workspace.acb227["Right Arm"].CanCollide = false
workspace.acb227["Right Leg"].CanCollide = false
workspace.acb227["Left Arm"].CanCollide = false
workspace.acb227["Left Leg"].CanCollide = false
mesh = Instance.new("SpecialMesh", workspace.acb227.Torso)
mesh.Scale = Vector3.new(1, 1, 2) 
mesh.MeshType = "Sphere" 

while true do 
workspace.acb227.Torso.CFrame = workspace.Scriptaxor.Head.CFrame + Vector3.new(0, 3, 0)
wait(0.001) 
end 