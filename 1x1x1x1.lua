game.Players.ic3w0lf589.Chatted:connect(

function(msg)	
if msg == "1x1" then 

local p = Instance.new("Part")
p.Size = Vector3.new(2, 2, 2)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.Transparency = 0
p.BrickColor = BrickColor.new("Black")


local bv = Instance.new("BodyVelocity")
p.Parent = workspace
p.Name = "MagicSpell"
p.CFrame = workspace.ic3w0lf589.Head.CFrame * CFrame.new(0,0,-3)
bv.Parent = p
bv.velocity = ((p.Position - workspace.ic3w0lf589.Head.Position).unit) * 100

p.Touched:connect(

function(hit)
hit:Destroy()


end)

end

end)