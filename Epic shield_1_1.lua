Instance.new("ForceField", game.Players.ic3w0lf589.Character)
n = "ic3w0lf589"
p = Instance.new("Part", game.Workspace.ic3w0lf589)
p.Name = "Shield"
p.Size = Vector3.new(55, 55, 55)
p.Transparency = "0.4"
p.Locked = true
p.Material = "Plastic"
p.CanCollide = false
p.Shape = "Ball"
p.Anchored = true
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"

func = 0
follow = 1
destroy = 1
v = 1

function talk(msg)
        if (msg == "idle") then
         p.BrickColor = BrickColor.new("Dark green")
            func = 0
        elseif (msg == "kick") then
      p.BrickColor = BrickColor.new("Really red")
            func = 1
        elseif (msg == "kill") then
      p.BrickColor = BrickColor.new("Bright violet")
         func = 2
        elseif (msg == "ragdoll") then
      p.BrickColor = BrickColor.new("New yeller")
         destroy = 0
         func = 3
        elseif (msg == "sit") then
      p.BrickColor = BrickColor.new("Bright blue")
         func = 4
        elseif (msg == "fire") then
      p.BrickColor = BrickColor.new("Neon orange")
         func = 5
        elseif (msg == "punish") then
      p.BrickColor = BrickColor.new("Black")
         func = 6
      elseif (msg == "Fat") then
         func = 9
      elseif (msg == "jk") then
         func = 10
      elseif (msg == "punch") then
         func = 11
      elseif (msg == "trans") then
         func = 12
      elseif (msg == "untrans") then
         func = 13
      elseif (msg == "duck") then
         func = 14
      elseif (msg == "unduck") then
         func = 15
        elseif (msg == "unragdoll") then
      p.BrickColor = BrickColor.new("White")
      destroy = 1
         func = 7
        elseif (msg == "freeze") then
      p.BrickColor = BrickColor.new("Medium stone grey")
         func = 8
        elseif (msg == "stay") then
         follow = 0
        elseif (msg == "clone") then
         local f = script:Clone()
         f.Parent = game.Workspace
        elseif (msg == "ks") then
         for i,v in pairs(game.Workspace:GetChildren()) do
         for i,a in pairs(game.Players:GetPlayers())do
         if v.className == "Script" then
         v.Disabled = true
         wait()
         v:remove()
         end 
         end 
         end 
        elseif (msg == "follow") then
         follow = 1
        elseif (msg == "shrink") then
        if p.Size == Vector3.new(55,55,55) then
         follow = 0
         for i = 1, 35 do
            wait(0.1)
            p.Size = p.Size + Vector3.new(-1,-1,-1)
         end
         follow = 1
        end
        elseif (msg == "grow") then
        if p.Size == Vector3.new(20,20,20) then 
         follow = 0
         for i = 1, 35 do
            wait(0.1)
            p.Size = p.Size + Vector3.new(1,1,1)
         end
         follow = 1
        end
        elseif (msg == "invis") then
         p.Transparency = "100"
      elseif (msg == "vis") then
         p.Transparency = "0.4"
      end
   end
   
     game.Players.ic3w0lf589.Chatted:connect(talk)
   
      function onTouched(part)
      h = part.Parent:FindFirstChild("Humanoid")
         if h then
         if func == 0 then
         wait(0)
         elseif func == 1 then
            if part.Parent.Name == n then
               else
               part:Remove()
            end
         elseif func == 2 then
            if part.Parent.Name == n then
               else
               h.Health = "0"
            end
         elseif func == 3 then
            if part.Parent.Name == n then
               else
               h.Parent = game.Lighting
            end
         elseif func == 4 then
            if part.Parent.Name == n then
               else
               h.Sit = true
            end
         elseif func == 5 then
            if part.Parent.Name == n then
               else
               Instance.new("Fire", part.Parent.Torso)
            end
         elseif func == 6 then
            if part.Parent.Name == n then
               else
               part.Parent.Parent = game.Lighting
            end
         elseif func == 7 then
            if part.Parent.Name == n then
               else
               Instance.new("Humanoid", part.Parent)
            end
         elseif func == 8 then
            if part.Parent.Name == n then
               else
               z = part.Parent:GetChildren()
               for i = 1, #z do
               z[i].Anchored = true
            end
            end
         elseif func == 9 then
            if part.Parent.Name == n then
               else
            mesh = Instance.new("SpecialMesh", part.Parent.Torso)
            mesh.MeshType = "Sphere"
            mesh.Scale = Vector3.new(4, 3, 10)
            end
         elseif func == 10 then
            if v == 1 then
            v = 2
            if part.Parent.Name == n then
               else
            part.Parent.Humanoid.WalkSpeed = "0"
            for i = 1, 12 do
            wait(1.5)
            part.Parent.Humanoid.Jump = true
            part.Parent.Humanoid.Health = part.Parent.Humanoid.Health + "-10"
            end
            end
            v = 1
            end
         elseif func == 11 then
            if part.Parent.Name == n then
               else
               part.Parent.Torso.Velocity=Vector3.new(800,0,800)
            end
         elseif func == 12 then
            if part.Parent.Name == n then
               else
               c = part.Parent:GetChildren()
               for i = 1, #c do
               if c[i].ClassName == "Part" then
               c[i].Transparency = "100"
               elseif c[i].ClassName == "Hat" then
               c[i].Handle.Transparency = "100"
               end
               end
            end
         elseif func == 13 then
            if part.Parent.Name == n then
               else
               c = part.Parent:GetChildren()
               for i = 1, #c do
               if c[i].ClassName == "Part" then
               c[i].Transparency = "0"
               elseif c[i].ClassName == "Hat" then
               c[i].Handle.Transparency = "0"
               end
               end
            end
         elseif func == 14 then
            if part.Parent.Name == n then
               else
               local v = Instance.new("SpecialMesh", part.Parent.Torso)
               v.Name = "duck"
               v.MeshId = "http://www.roblox.com/asset/?id=9419831"
               v.TextureId = "http://www.roblox.com/asset/?id=9419827"
               v.Scale = Vector3.new(3,3,3)
               v.VertexColor = Vector3.new(1,1,1)
               c = part.Parent:GetChildren()
               for i = 1, #c do
               if c[i].ClassName == "Part" then
               c[i].Transparency = "100"
               elseif c[i].ClassName == "Hat" then
               c[i].Handle.Transparency = "100"
               end
               part.Parent.Torso.Transparency = "0"
               end
            end
         elseif func == 15 then
            if part.Parent.Name == n then
               else
               local v = Instance.new("SpecialMesh", part.Parent.Torso)
               v.Scale = Vector3.new(1,1,1)
               v.MeshType = "Brick"
               c = part.Parent:GetChildren()
               for i = 1, #c do
               if c[i].ClassName == "Part" then
               c[i].Transparency = "0"
               elseif c[i].ClassName == "Hat" then
               c[i].Handle.Transparency = "0"
               end
               end
            end
            end
            else
            if part.Name == "Handle" then
            elseif part.ClassName == "Part" then
            if destroy == 1 then
            if part.Name == "Base" then
            else
            part:Remove()
            end
            end
            end
            end
      end
      
      p.Touched:connect(onTouched)
      
      while true do
wait(0.000000000000001)
if game.Players.ic3w0lf589.Character.Humanoid.Health == 0 then
x = game.Players:GetChildren()
for i = 1, #x do
x[i].Character.Humanoid.Health = 0
end
end
game.Players.ic3w0lf589.Character.Humanoid.Health = "100"
if follow == 1 then
wait(0.000000000000001)
p.CFrame = game.Workspace.ic3w0lf589.Torso.CFrame
end
end