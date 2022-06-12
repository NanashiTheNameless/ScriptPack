Killer = game.Players.LocalPlayer
Victim = game.Players["Player2"]



game:GetObjects("rbxassetid://503217496")[1].Parent=game.Workspace
wait(0.5)
game.Workspace.Guillo:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + game.Players.LocalPlayer.Character.Torso.CFrame.lookVector* 30)

wait(2)

function onTouched(hit)
p = hit.Parent:findFirstChild("Humanoid")
ra = hit.Parent:findFirstChild("Right Arm")
rl = hit.Parent:findFirstChild("Right Leg")
la = hit.Parent:findFirstChild("Left Arm")
lr = hit.Parent:findFirstChild("Left Leg")
t = hit.Parent:findFirstChild("Torso")
if p ~= nil then
p.Health = 0
ra.CanCollide = false
ra.Anchored = true
rl.CanCollide = false
rl.Anchored = true
la.CanCollide = false
la.Anchored = true
lr.CanCollide = false
lr.Anchored = true
t.CanCollide = false
t.Anchored = true
local bp = Instance.new("BodyPosition")
bp.Parent = hit.Parent.Head
bp.position = game.Workspace.Guillo.sModel.pos.Position
wait(.2)
hit.Parent.Head.Size = Vector3.new(1,1,1)
bp:Remove()
end
end

game.Workspace.Guillo.sModel.Blade.Touched:connect(onTouched)


function onClicked()
if game.Workspace.Guillo.sModel.Rdy.Value == true then
game.Workspace.Guillo.Safety:Destroy()
game.Workspace.Guillo.sModel.Blade.bv.velocity = Vector3.new(0,-50,0)
game.Workspace.Guillo.sModel.lvr2.Transparency = 1
game.Workspace.Guillo.sModel.lvr1.Transparency = 0
game.Workspace.Guillo.sModel.lvr2.CanCollide = false
game.Workspace.Guillo.sModel.lvr1.CanCollide = true
wait(0.3)
game.Workspace.Guillo.sModel.Blade.bv.velocity = Vector3.new(0,0,0)
game.Workspace.Guillo.sModel.Rdy.Value = false
wait(5)
game.Workspace.Guillo:Destroy()
elseif game.Workspace.Guillo.sModel.Rdy.Value == false then
game.Workspace.Guillo.sModel.Blade.bv.velocity = Vector3.new(0,1,0)
game.Workspace.Guillo.sModel.lvr2.Transparency = 0
game.Workspace.Guillo.sModel.lvr1.Transparency = 1
game.Workspace.Guillo.sModel.lvr2.CanCollide = true
game.Workspace.Guillo.sModel.lvr1.CanCollide = false
game.Workspace.Guillo.sModel.Rdy.Value = true
end
end

game.Workspace.Guillo.sModel.lvr1.ClickDetector.MouseClick:connect(onClicked)
game.Workspace.Guillo.sModel.lvr2.ClickDetector.MouseClick:connect(onClicked)

Killer.Character.HumanoidRootPart.CFrame = game.Workspace.Guillo.PartTPer.CFrame
game.Workspace.Guillo.PartTPer:Destroy()
wait(1)
Victim.Character.HumanoidRootPart.CFrame = game.Workspace.Guillo.Seat.CFrame
game.Workspace.Guillo.PartTP2:Destroy()