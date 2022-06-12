--Pyro by madiik
 
 
p = game.Players.LocalPlayer
c = p.Character
torso = c.Torso
local firee = false
local damage = 1
local debounce = false
local debounced = false
local debounceair = false
local firedebounce = false
local removehatchet = false
local hatchetequipped = false
RunService = game:service'RunService'
Debris = game:service'Debris'
local mouse = p:GetMouse()
damagelist = {}
time_until_extinguish = 50
for _,v in pairs(c:children()) do 
pcall(function() 
if v.className == "Hat" then 
v:remove() 
end 
end) 
end 
                ra = c["Right Arm"]
                la = c["Left Arm"]
                rs = c.Torso["Right Shoulder"]
                ls = c.Torso["Left Shoulder"]
                
                
                mask = Instance.new("Part")
                mask.Size = Vector3.new(2, 1, 1)
                mask.BrickColor = BrickColor.new("Bright blue")
                mask:BreakJoints()
                                                               mask.Name = "Mask"
                mask.Parent = c
                ms4 = Instance.new("SpecialMesh", mask)
                ms4.Scale = Vector3.new(1.3, 1.15, 1.3)
                w9 = Instance.new("Weld", mask)
                w9.Part0 = mask
                w9.Part1 = c.Head
                w9.C0 = CFrame.new(0, 0, 0)
                
                                                                mask2 = Instance.new("Part")
                                                                mask2.FormFactor = "Custom"
                mask2.Size = Vector3.new(0.4, 0.5, 0.4)
                mask2.BrickColor = BrickColor.new("Bright blue")
                mask2:BreakJoints()
                mask2.Parent = c
                ms5 = Instance.new("CylinderMesh", mask2)
                ms5.Scale = Vector3.new(1, 1, 1)
                w8 = Instance.new("Weld", mask2)
                w8.Part0 = mask2
                w8.Part1 = c.Head
                w8.C0 = CFrame.new(0.25, -0.4, -0.1) * CFrame.Angles(math.pi/2, 0, 0)
                
                mask3 = Instance.new("Part")
                                                                mask3.FormFactor = "Custom"
                mask3.Size = Vector3.new(0.4, 0.5, 0.4)
                mask3.BrickColor = BrickColor.new("Bright blue")
                mask3:BreakJoints()
                mask3.Parent = c
                ms6 = Instance.new("CylinderMesh", mask3)
                ms6.Scale = Vector3.new(1, 1, 1)
                w10 = Instance.new("Weld", mask3)
                w10.Part0 = mask3
                w10.Part1 = c.Head
                w10.C0 = CFrame.new(-0.25, -0.4, -0.1) * CFrame.Angles(math.pi/2, 0, 0)
                
                                                                                mask4 = Instance.new("Part")
                                                                mask4.FormFactor = "Custom"
                mask4.Size = Vector3.new(0.35, 0.51, 0.35)
                mask4.BrickColor = BrickColor.new("Black")
                mask4:BreakJoints()
                mask4.Reflectance = 0.4
                mask4.Parent = c
                ms7 = Instance.new("CylinderMesh", mask4)
                ms7.Scale = Vector3.new(1, 1, 1)
                w11 = Instance.new("Weld", mask4)
                w11.Part0 = mask4
                w11.Part1 = c.Head
                w11.C0 = CFrame.new(0.25, -0.4, -0.1) * CFrame.Angles(math.pi/2, 0, 0)
                
                mask5 = Instance.new("Part")
                mask5.FormFactor = "Custom"
                mask5.Size = Vector3.new(0.35, 0.51, 0.35)
                mask5.BrickColor = BrickColor.new("Black")
                mask5.Reflectance = 0.4
                mask5:BreakJoints()
                mask5.Parent = c
                ms8 = Instance.new("CylinderMesh", mask5)
                ms8.Scale = Vector3.new(1, 1, 1)
                w12 = Instance.new("Weld", mask5)
                w12.Part0 = mask5
                w12.Part1 = c.Head
                w12.C0 = CFrame.new(-0.25, -0.4, -0.1) * CFrame.Angles(math.pi/2, 0, 0)
                                                               
                                                                               mask7 = Instance.new("Part")
                mask7.FormFactor = "Custom"
                mask7.Size = Vector3.new(0.2, 1.1, 0.2)
                mask7.BrickColor = BrickColor.new("Bright blue")
                mask7:BreakJoints()
                mask7.Parent = c
                ms8 = Instance.new("CylinderMesh", mask7)
                ms8.Scale = Vector3.new(1, 1, 1)
                w12 = Instance.new("Weld", mask7)
                w12.Part0 = mask7
                w12.Part1 = c.Head
                w12.C0 = CFrame.new(-0.6, -0.3, -0.1) * CFrame.Angles(math.pi/2, 0, 0)
                                                               spot = Instance.new("SpotLight", mask)
                                                               spot.Range = 60
                                                               spot.Angle = 70
                                                               spot.Color = Color3.new(1, 1, 0)
                
                mask6 = Instance.new("Part")
                mask6.FormFactor = "Custom"
                mask6.Size = Vector3.new(0.35, 0.65, 0.35)
                mask6.BrickColor = BrickColor.new("Bright blue")
                mask6:BreakJoints()
                mask6.Parent = c
                ms9 = Instance.new("CylinderMesh", mask6)
                ms9.Scale = Vector3.new(1, 1, 1)
                w13 = Instance.new("Weld", mask6)
                w13.Part0 = mask6
                w13.Part1 = c.Head
                w13.C0 = CFrame.new(0.2, -0.4, 0) * CFrame.Angles(math.rad(115), math.rad(22.5), 0)
                
                
tool = Instance.new("HopperBin", p.Backpack)
tool.Name = "Pyro"
tool.Selected:connect(function(mouse)
                bg2 = Instance.new("BodyGyro",c.Torso)
                bg2.P = 20e+003
                bg2.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
                
                
                game:service("RunService").Stepped:connect(function()
                bg2.cframe = CFrame.new(c.Torso.Position,Vector3.new(mouse.hit.p.x,c.Torso.Position.y,mouse.hit.p.z)) * CFrame.Angles(0, math.rad(-60), 0)
                end)
                
                
                
                rs.Part0 = nil
                rs.Part1 = nil
                ls.Part0 = nil
                ls.Part1 = nil
                rweld = Instance.new("Weld", c)
                rweld.C0 = CFrame.new(-1.48,0,0.2) * CFrame.Angles(math.rad(-18), math.rad(0), math.rad(0)) 
                rweld.Part0 = ra
                rweld.Part1 = torso
                lweld = Instance.new("Weld", c)
                lweld.C0 = CFrame.new(1.5,0.2,0.2) * CFrame.Angles(math.rad(-50), math.rad(22.5), math.rad(0)) 
                lweld.Part0 = la
                lweld.Part1 = torso
                neck = c.Torso.Neck
                neck.C0 = neck.C0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(60)) wait(0.01)
                
                ballon1 = Instance.new("Part")
                ballon1.Size = Vector3.new(1, 2, 1)
                ballon1.BrickColor = BrickColor.new("White")
                ballon1:BreakJoints()
                ballon1.Parent = c
                Instance.new("SpecialMesh", ballon1)
                w = Instance.new("Weld", ballon1)
                w.Part0 = ballon1
                w.Part1 = torso
                w.C0 = CFrame.new(0.45, 0, -0.8)
                
                                ballon2 = Instance.new("Part")
                ballon2.Size = Vector3.new(1, 2, 1)
                ballon2.BrickColor = BrickColor.new("White")
                ballon2:BreakJoints()
                ballon2.Parent = c
                Instance.new("SpecialMesh", ballon2)
                w1 = Instance.new("Weld", ballon2)
                w1.Part0 = ballon2
                w1.Part1 = torso
                w1.C0 = CFrame.new(-0.45, 0, -0.8)
                
                base = Instance.new("Part")
                base.FormFactor = "Custom"
                base.Size = Vector3.new(0.4, 5, 0.4)
                base:breakJoints()
                base.BrickColor = BrickColor.Black()
                base.Parent = c
                Instance.new("CylinderMesh", base)
                w2 = Instance.new("Weld", base)
                w2.Part0 = base
                w2.Part1 = torso
                w2.C0 = CFrame.new(1.1, 0.5, 0.5) * CFrame.Angles(math.pi/2,math.rad(120), 0)
                
                sound = Instance.new("Sound", base)
                sound.SoundId = "http://roblox.com/asset/?id=10209616"
                sound.Volume = 1
                sound.Looped = true
                                        
                fire = Instance.new("Part")
                fire.Parent = nil
                fire.FormFactor = "Custom"
                fire.Size = Vector3.new(8, 55, 4)
                fire.Transparency = 1
                fire.CanCollide = false
                fire.Anchored = true
                                                pl = Instance.new("PointLight", fire)
                pl.Range = 24
                pl.Color = Color3.new(255/255, 170/255, 0/255)
                
                                coroutine.wrap(function()        
                                while true do
                                        fire.CFrame = base.CFrame * CFrame.new(0, -30, 0)
                                        RunService.Stepped:wait()
                                end
                                end)()
                                
                
                sm = Instance.new("Part", c)
                sm.FormFactor = "Custom"
                sm.BottomSurface = 0
                sm.TopSurface = 0
                sm.BrickColor = BrickColor.Black()
                sm.Size = Vector3.new(0.5, 0.5, 0.5)
                sm.Transparency = 0
                sm:BreakJoints()
                
                                pl7 = Instance.new("PointLight", sm)
                pl7.Range = 12
                pl7.Color = Color3.new(255/255, 170/255, 0/255)
                
                smoke = Instance.new("Smoke", sm)
                smoke.Enabled = false
                smoke.Color = Color3.new(255/255, 170/255, 0/255)
                smoke.RiseVelocity = 15
                smoke.Size = 1
                w3 = Instance.new("Weld", sm)
                w3.Part0 = sm
                w3.Part1 = base
                w3.C0 = CFrame.new(0, -2.5, 0) * CFrame.Angles(math.pi, 0, 0)
                
                p1 = Instance.new("Part", c)
                p1.FormFactor = "Custom"
                p1.BrickColor = BrickColor.Gray()
                p1.Size = Vector3.new(0.8, 1.7, 0.8)
                p1:BreakJoints()
                Instance.new("CylinderMesh", p1)
                w4 = Instance.new("Weld", p1)
                w4.Part0 = p1
                w4.Part1 = base
                w4.C0 = CFrame.new(0, 0.5, 0.3)
                
                p2 = Instance.new("Part", c)
                p2.FormFactor = "Custom"
                p2.BrickColor = BrickColor.Black()
                p2.Size = Vector3.new(0.4, 1, 0.4)
                p2:BreakJoints()
                p2.BottomSurface = 0
                p2.TopSurface = 0
                w5 = Instance.new("Weld", p2)
                w5.Part0 = p2
                w5.Part1 = base
                w5.C0 = CFrame.new(0, 0, -2.5) * CFrame.Angles(math.pi/2, 0, 0)
                
                
                p3 = Instance.new("Part", c)
                p3.FormFactor = "Custom"
                p3.BrickColor = BrickColor.Black()
                p3.Size = Vector3.new(0.3, 1, 0.2)
                p3:BreakJoints()
                p3.BottomSurface = 0
                p3.TopSurface = 0
                w6 = Instance.new("Weld", p3)
                w6.Part0 = p3
                w6.Part1 = base
                w6.C0 = CFrame.new(0, -1, -0.3) * CFrame.Angles(math.pi/6, 0, 0)
                
                
                                p4 = Instance.new("Part", c)
                p4.FormFactor = "Custom"
                p4.BrickColor = BrickColor.Black()
                p4.Size = Vector3.new(0.3, 1, 0.2)
                p4:BreakJoints()
                p4.BottomSurface = 0
                p4.TopSurface = 0
                w7 = Instance.new("Weld", p4)
                w7.Part0 = p4
                w7.Part1 = base
                w7.C0 = CFrame.new(0, -0.1, -1.5) * CFrame.Angles(math.pi/2, 0, 0)
                
                
                
                
                
                
                
                
                fiaar = Instance.new("Fire", sm)
                fiaar.Size = 1
                                                               fiaar.Heat = 200
                fiaar.Enabled = false
 
 
 
 
 
                
                
                mouse.KeyDown:connect(function(key)
                        if key == "e" then
                                if debounceair then return end
                                if firee then return end
                                debounceair = true
                                airblast()
                                end
                                                                                              if string.byte(key) == 48 then
                                                                                                              c.Humanoid.WalkSpeed = 28
                                                                                              end
                                                                                              
                                                                                              
                end)
                                                               mouse.KeyUp:connect(function(key)
                                                                              if string.byte(key) == 48 then
                                                                              c.Humanoid.WalkSpeed = 16
                                                                              end
                                                                              end)
                
                
                mouse.Button1Down:connect(function()
                        if firee == false then
                        firee = true
                        end
                end)
                
                mouse.Button1Up:connect(function()
                        if firee == true then
                        firee = false
                        end
                end)
                
end)
tool.Deselected:connect(function(mouse)
                ballon1:Destroy()
                ballon2:Destroy()
                base:Destroy()
                sm:Destroy()
                fire:Destroy()
                neck.C0 = neck.C0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-60)) wait(0.01)
                bg2:Destroy()
                p1:Destroy()
                p2:Destroy()
                p3:Destroy()
                p4:Destroy()
                                                                                       rs.Part0 = c.Torso
                rs.Part1 = ra
                ls.Part0 = c.Torso
                ls.Part1 = la
                                                                               rweld:Destroy()
                lweld:Destroy()
                                                               
end)
function ahh(hit)
     if hit.Parent.Name == game.Players.LocalPlayer.Name then  return  end
     if hit ~= nil and hit.Parent ~= nil then
                
     if hit.Parent:findFirstChild("Humanoid") ~= nil then
                                               coroutine.wrap(function()
               if not damagelist[hit.Parent.Name] then
                                                                              if hit.Parent.Humanoid.Health ~= 0 then
                    damagelist[hit.Parent.Name] = {humanoid = hit.Parent.Humanoid, time = time_until_extinguish}
                    for i,v in pairs(hit.Parent:children()) do
                        if v:IsA("Part") then
                             Instance.new("Fire", v)
                         end
                     end
                                                                              end
                 else
                      damagelist[hit.Parent.Name].time = time_until_extinguish
                 end
                                               end)()
         end
                end
end
                                        
coroutine.wrap(function()
    while wait() do
        for i,damageobject in pairs(damagelist) do
            damageobject.humanoid.Health = damageobject.humanoid.Health - damage
            damageobject.time = damageobject.time - 1
            
            if damageobject.time < 1 then
                if damageobject.humanoid then
                 for _,n in pairs(damageobject.humanoid.Parent:children()) do
                       if n:IsA("Part") and n.Parent:IsA("Model") ~= nil and n:findFirstChild("Fire") ~= nil then
                               n.Fire:Destroy()
                       end
                  end
                  end
                  damagelist[i] = nil
            end
        end
      if not debounceair then
             if firee then
                    --coroutine.wrap(function()
                                                                                              if base ~= nil then
                            smoke.Enabled = true
                             pl7.Enabled = true
                             fiaar.Enabled = true
                             fire.Parent = Workspace
                            sound:play()
                             
                             fire.Touched:connect(ahh)
                                                                                              end
                             
                        --end)()
                else
                        if base ~= nil then
                        smoke.Enabled = false
                        fire.Parent = nil
                        pl7.Enabled = false
                        fiaar.Enabled = false
                        sound:stop()
                        end
                end
                                                               end
                                               end
                                                                               
                                        end)()
                                        
                                        
                                        function airblast()
                                                                                                                                                                                            if hatchetequipped then return end
                                                                                                                                                                                            if air ~= nil then return end
                                                air = Instance.new("Part")
                                                air.FormFactor = "Custom"
                                                air.Size = Vector3.new(8, 3, 8)
                                                air.Transparency = 0.8
                                                air:BreakJoints()
                                                air.BottomSurface = 0
                                                air.TopSurface = 0
                                                                                                                                                                                            air.CanCollide = false
                                                air.Anchored = true
                                                air.Parent = Workspace
                                                                                                                                                                                            coroutine.wrap(function()
                                                                                                                                                                                            wait(0.15)
                                                                                                                                                                                            air.CanCollide = true
                                                                                                                                                                                            end)()
                                                
                                                                                coroutine.wrap(function()        
                                for i = 0, 40, 1.2 do
                                        air.CFrame = base.CFrame * CFrame.new(0, -i, 0)
                                        RunService.Stepped:wait(0.0000001)
                                end
                                end)()
                                                                                                                             coroutine.wrap(function()
                                   while air ~= nil do
                                                                                                                                             for _, model in pairs(workspace:children()) do     
                                                                              if model:IsA("Model") and model:findFirstChild("Humanoid") ~= nil and model.Name ~= p.Name then
                                                                                                                                                             if (model.Torso.CFrame.Position - air.CFrame.Position).magnitude < 3 then
                                                                                                                                                             model.Torso.CFrame = base.CFrame * CFrame.new(0, 0, 30)
                                                                                                                                                             end
                                                                                                                                                             end
                                                                                                                                             end
                                                                                                                                             wait()
                                                                                                                             end
                                                                                                                             end)()
                                                                                                                             wait(2)
                                                                                                                             air:Destroy()
                                                                                                                             
end
                                         
