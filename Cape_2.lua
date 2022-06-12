p = game:service'Players'.LocalPlayer
c = p.Character
t = c.Torso
 
it = Instance.new v3 = Vector3.new cf = CFrame.new
local a = it("Part",c) a.formFactor = "Custom" a.Size = v3(0,0,0) -- invisible brick
local x = it("Part",c) x.formFactor = "Custom" x.Size = v3(3,0.2,4)  x.CanCollide = false x.TopSurface = 0 x.Anchored = true 
 
local ap = it("BodyPosition",a)
 
a.CFrame = t.CFrame*cf(0,-2,3) a:breakJoints()
 
while true do 
ap.position = (t.CFrame*cf(0,-2,3)).p -- Makes the small brick positioned at the back and lower of torso
x.CFrame = cf((t.CFrame*cf(0,1,0.5)).p,a.Position)*cf(0,0,-x.Size.z/2) -- Makes the cape/scarf from the Torso adjustment upto the small brick.
wait()
end