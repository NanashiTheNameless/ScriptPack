n = "ic3w0lf589"
p = Instance.new("Part", game.Workspace.ic3w0lf589)
p.Name = "Shield"
p.Size = Vector3.new(55, 55, 55)
p.Transparency = "0.4"
p.Material = "Plastic"
p.CanCollide = false
p.Shape = "Ball"
p.Anchored = true

func = 0

function talk(msg)
        if (msg == "idle") then
            func = 0
        elseif (msg == "kick") then
            func = 1
        elseif (msg == "kill") then
         func = 2
        elseif (msg == "ragdoll") then
         func = 3
        elseif (msg == "sit") then
         func = 4
        elseif (msg == "fire") then
         func = 5
        elseif (msg == "punish") then
         func = 6
        elseif (msg == "ff") then
         func = 7
      end
   end
   
     game.Players.ic3w0lf589.Chatted:connect(talk)
   
      function onTouched(part)
         if func == 0 then
         wait(0)
      end
         if func == 1 then
            local h = part.Parent:FindFirstChild("Humanoid")
            if h then
            if part.Parent.Name == n then
               else
               part:Remove()
            end
            end
      end
         if func == 2 then
            local h = part.Parent:FindFirstChild("Humanoid")
            if h then
            if part.Parent.Name == n then
               else
               h.Health = "0"
            end
            end
      end
         if func == 3 then
            local h = part.Parent:FindFirstChild("Humanoid")
            if h then
            if part.Parent.Name == n then
               else
               h.Parent = game.Lighting
            end
            end
      end
         if func == 4 then
            local h = part.Parent:FindFirstChild("Humanoid")
            if h then
            if part.Parent.Name == n then
               else
               h.Sit = true
            end
            end
      end
         if func == 5 then
            local h = part.Parent:FindFirstChild("Humanoid")
            if h then
            if part.Parent.Name == n then
               else
               Instance.new("Fire", part.Parent.Torso)
            end
            end
      end
         if func == 6 then
            local h = part.Parent:FindFirstChild("Humanoid")
            if h then
            if part.Parent.Name == n then
               else
               part.Parent.Parent = game.Lighting
            end
            end
      end
         if func == 7 then
            local h = part.Parent:FindFirstChild("Humanoid")
            if h then
            if part.Parent.Name == n then
               else
               local ff = Instance.new("ForceField")
               ff.Parent = game.Players:FindFirstChild(part.Parent.Name)
            end
            end
      end
      end
      
      p.Touched:connect(onTouched)
      
      while true do
wait(0.000000000000001)
p.CFrame = game.Workspace.ic3w0lf589.Torso.CFrame
end