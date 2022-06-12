me = game.Players.LocalPlayer
 
t = Instance.new("Tool", me.Backpack) -- Creates the tool
t.Name = "Platform"
 
function Weld(a, b, c, d, e, f, g, h)
        local w = Instance.new("Weld", a)
        w.Part0 = a
        w.Part1 = b
        w.C1 = CFrame.new(c, d, e) * CFrame.Angles(f, g, h)
        return w
end
 
p = Instance.new("Part", t) -- Handle
p.Name = "Handle"
p.BrickColor = BrickColor.new("Really black")
p.FormFactor = 3
p.Size = Vector3.new(0.1, 0.1, 2)
p.TopSurface = 0
p.BottomSurface = 0
 
lnp = Instance.new("Part", t) -- Long Part
lnp.BrickColor = p.BrickColor
lnp.FormFactor = 3
lnp.Size = Vector3.new(0.1, 2.5, 0.1)
lnp.TopSurface = 0
lnp.BottomSurface = 0
 
lp1 = Instance.new("Part", t) -- Low Part 1
lp1.BrickColor = p.BrickColor
lp1.FormFactor = 3
lp1.Size = Vector3.new(3, 0.1, 0.1)
lp1.TopSurface = 0
lp1.BottomSurface = 0
 
lp2 = Instance.new("Part", t) -- Low Part 2
lp2.BrickColor = p.BrickColor
lp2.FormFactor = 3
lp2.Size = Vector3.new(0.1, 0.1, 5)
lp2.TopSurface = 0
lp2.BottomSurface = 0
 
lp3 = Instance.new("Part", t) -- Low Part 3
lp3.BrickColor = p.BrickColor
lp3.FormFactor = 3
lp3.Size = Vector3.new(0.1, 0.1, 5)
lp3.TopSurface = 0
lp3.BottomSurface = 0
 
lp4 = Instance.new("Part", t) -- Low Part 4
lp4.BrickColor = p.BrickColor
lp4.FormFactor = 3
lp4.Size = Vector3.new(3, 0.1, 0.1)
lp4.TopSurface = 0
lp4.BottomSurface = 0
 
l1 = Instance.new("Part", t) -- Leg 1
l1.BrickColor = p.BrickColor
l1.FormFactor = 3
l1.Size = Vector3.new(3, 1, 0.1)
l1.TopSurface = 0
l1.BottomSurface = 0
l1.Transparency = 1
l1.CanCollide = false
 
l2 = Instance.new("Part", t) -- Leg 2
l2.BrickColor = p.BrickColor
l2.FormFactor = 3
l2.Size = Vector3.new(0.1, 1, 5)
l2.TopSurface = 0
l2.BottomSurface = 0
l2.Transparency = 1
l2.CanCollide = false
 
l3 = Instance.new("Part", t) -- Leg 3
l3.BrickColor = p.BrickColor
l3.FormFactor = 3
l3.Size = Vector3.new(0.1, 1, 5)
l3.TopSurface = 0
l3.BottomSurface = 0
l3.Transparency = 1
l3.CanCollide = false
 
l4 = Instance.new("Part", t) -- Leg 4
l4.BrickColor = p.BrickColor
l4.FormFactor = 3
l4.Size = Vector3.new(3, 1, 0.1)
l4.TopSurface = 0
l4.BottomSurface = 0
l4.Transparency = 1
l4.CanCollide = false
 
np = Instance.new("Part", t) -- New Part
np.BrickColor = p.BrickColor
np.FormFactor = 3
np.Size = Vector3.new(3, 0.1, 5)
np.TopSurface = 0
np.BottomSurface = 0
np.Transparency = 1
np.CanCollide = false
 
Weld(p, lnp, 0, 1.2, 0.9, 0, 0, 0)
Weld(p, lp1, 1.4, 2.4, 0.9, 0, 0, 0)
Weld(p, lp2, 2.8, 2.4, -1.5, 0, 0, 0)
Weld(p, lp3, 0, 2.4, -1.5, 0, 0, 0)
Weld(p, lp4, 1.4, 2.4, -4, 0, 0, 0)
Weld(p, l1, 1.4, 3, 0.9, 0, 0, 0)
Weld(p, l2, 2.8, 3, -1.5, 0, 0, 0)
Weld(p, l3, 0, 3, -1.5, 0, 0, 0)
Weld(p, l4, 1.4, 3, -4, 0, 0, 0)
Weld(p, np, 1.4, 3.4, -1.5, 0, 0, 0)
 
more = false
 
function Equipped(mouse) -- Equip!!
        mouse.Button1Down:connect(
                function()
                        more = true
                        coroutine.resume(
                        coroutine.create(
                                function()
                                        repeat
                                                local newp = np:Clone()
                                                newp.Parent = Workspace
                                                newp.Anchored = true
                                                newp.Transparency = 0
                                                l1.Transparency = 0.5
                                                l2.Transparency = 0.5
                                                l3.Transparency = 0.5
                                                l4.Transparency = 0.5
                                                newp.CanCollide = true
                                                wait()
                                        until not (more)
                                        l1.Transparency = 1
                                        l2.Transparency = 1
                                        l3.Transparency = 1
                                        l4.Transparency = 1
                                end
                        )
                        )
                end
        )
        mouse.Button1Up:connect(
                function()
                        more = false
                end
        )
end
 
t.Equipped:connect(Equipped)
 