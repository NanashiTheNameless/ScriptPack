plr = game.Players.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
up = false
 
armweld = Instance.new("Weld", char.Torso)
armweld.C0 = CFrame.new(1.5, .5, 0)
armweld.C1 = CFrame.new(0, .5, 0)
armweld.Part0 = char.Torso
armweld.Part1 = char["Right Arm"]
 
Handle = Instance.new("Part",char)
Handle.Size=Vector3.new(1,6,1)
Handle.Name = "Handle"
Handle.Anchored = false
Handle.CanCollide = false
Handle.BrickColor = BrickColor.new("Really black")
Handle:BreakJoints()
Mesh = Instance.new("SpecialMesh",Handle)
Mesh.MeshType=0
Mesh.Scale=Vector3.new(0.2,0.8,0.2)
Mesh.Offset=Vector3.new(0,-2,0)
Weld = Instance.new("Weld",Handle) 
Weld.Part0 = Weld.Parent 
Weld.Part1 = plr.Character["Right Arm"] 
Weld.C0 = CFrame.new(0,1,1)*CFrame.Angles(math.rad(90),0,0)
Ball = Instance.new("Part",plr.Character)
Ball.Size = Vector3.new(0.1,0.1,0.1)
Ball.Name = "Ball"
Ball:BreakJoints()
Ball.Anchored = false
Ball.Transparency = 0
Ball.CanCollide = false
Ball.Shape = "Ball"
Ball.TopSurface = "Unjoinable"
Ball.BottomSurface = "Unjoinable"
Ball.BrickColor = BrickColor.new(104)
Mesh = Instance.new("SpecialMesh",Ball)
Mesh.MeshId = "http://www.roblox.com/asset/?id=9756362"
Mesh.Scale = Vector3.new(0.7,0.7,1)
Weld = Instance.new("Weld",Ball) 
Weld.Part0 = Weld.Parent 
Weld.Part1 = Handle
Weld.C0 = CFrame.new(0,0,-2.5)*CFrame.Angles(math.rad(90),0,0)
 
 
function onKeyDown(key)
if key == "e" then
if up == false then
    for a = 0, 1, .05 do
        armweld.C0 = CFrame.new(1.5, .5, 0) * CFrame.Angles(math.sin(a*math.pi/2)*math.pi/2, 0, 0)
        wait()
    end
    up = true
else
up = false
for a = 1, 0, -.05 do
        armweld.C0 = CFrame.new(1.5, .5, 0) * CFrame.Angles(math.sin(a*math.pi/2)*math.pi/2, 0, 0)
        wait()
    end
end
end
end
    
    mouse.KeyDown:connect(onKeyDown)
    mouse.Button1Down:connect(function()
        if up then
         local startpos = Ball.Position;
        local endpos = mouse.Hit.p;
        local length = 999;
    
        local ray = Ray.new(startpos, (endpos - startpos).unit*length)
        local hit, hitpos = workspace:FindPartOnRay( ray, char )
    
        local size = (startpos-hitpos).magnitude
    
        if hit then
            if hit.Parent:findFirstChild("Humanoid") then
                hit.Parent.Humanoid:TakeDamage(100)
           end
        end
    
        local part = Instance.new("Part", char)
        part.Anchored = true
        part.formFactor = "Custom"
        part.CanCollide = false
        part.BrickColor = BrickColor.new(104)
        part.Size = Vector3.new(.1, size, .1)
        part.CFrame = CFrame.new(startpos, hitpos) * CFrame.Angles(-math.pi/2, 0, 0) *     CFrame.new(0, size/2, 0)
        local m = Instance.new("CylinderMesh", part)
        wait(0.1)
        part:remove()
        end
    end)
 
Ball.Touched:connect(function(hit)
if up == false then
if hit.Parent:findFirstChild("Humanoid") then
hit.Parent.Humanoid.Health = 0
end
end
end)