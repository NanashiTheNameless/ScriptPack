--[[
	basketball roll script made by mr steal yo bork
	idea by Kevin#2027 on discord.
	the script looks messy asf because im in a hurry to sleep
	
	press z to start rolling and x to stop rolling
	steer with wasd, the more u hold w the faster you go
	have fun my dudes!
	
	
	ps: i use _G because im a lazy fuck
--]]

plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
key = key:lower()
enabled = false
local number = 10
local number2 = 0
local times = 0
if key == "z" and enabled == false then
enabled = true
hax = true
char = game.Players.LocalPlayer.Character
hum = char.Humanoid
_G.p = Instance.new("Part", workspace)
hum.JumpPower = 0
_G.p.BrickColor = BrickColor.new("Medium stone grey")
_G.p.Color = Color3.new(163,162,165)
_G.p.Material = "Plastic"
_G.p.CanCollide = false
_G.p.Anchored = true
_G.pmesh = Instance.new("SpecialMesh", _G.p)
_G.pmesh.MeshId = "rbxassetid://52603336"
_G.pmesh.MeshType = "FileMesh"
_G.pmesh.Offset = Vector3.new(0,0,0)
_G.pmesh.Scale = Vector3.new(12,12,12)
_G.pmesh.TextureId = "http://www.roblox.com/asset/?id=164527662"
_G.pmesh.VertexColor = Vector3.new(4,4,4)
        local ro = 0
        _G.bv = Instance.new("BodyVelocity", char.HumanoidRootPart)
        _G.bv.maxForce = Vector3.new(math.huge, 0, math.huge)
        local num = 0 -- again fuck my life
        roll = true
        local orignum = num
        local tabl = {}
        local number = 10
        if hax == true then
          number = 15
        end
        game:GetService("RunService").RenderStepped:connect(function()
          ro = ro + num / 300
          if num < 300 then
            num = num + 0.5
            orignum = num
          end
          if roll == false then
            num = num - orignum * 0.016666666666666666
          end
          damage = num / 8
          _G.bv.velocity = char.HumanoidRootPart.CFrame.lookVector * num / 2
          _G.p.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, number2, 0) * CFrame.Angles(-ro, 0, 0)
        end)
        for i = 0, number do
          if i == 5 then
            for x, w in pairs(char:GetChildren()) do
              if w:IsA("Part") and w.Name ~= "HumanoidRootPart" then
                w.Transparency = 1
              end
              if w:IsA("Hat") or w:IsA("Accessory") then
                w.Handle.Transparency = 1
              end
            end
          end
          number2 = number2 + 0.5
          hum.CameraOffset = Vector3.new(0, number2, 0)
          _G.pmesh.Scale = Vector3.new(i / 2, i / 2, i / 2)
          wait()
        end
        local times = 0
        while roll == true and times < 1000 do
          times = times + 1
          wait()
        end
        roll = false
        for i = number, 0, -1 do
          _G.pmesh.Scale = Vector3.new(i / 2, i / 2, i / 2)
          if i == 5 then
            for x, w in pairs(char:GetChildren()) do
              if w:IsA("Part") and w.Name ~= "HumanoidRootPart" then
                w.Transparency = 0
              end
              if w:IsA("Hat") then
                w.Handle.Transparency = 0
              end
            end
          end
          number2 = number2 - 0.5
          hum.CameraOffset = Vector3.new(0, number2, 0)
          wait()
        end
        hum.JumpPower = 50
        _G.bv:Destroy()
        _G.p:Destroy()
        wait(times * 0.03)
        per = true
elseif key == "x" then
	for i = number, 0, -1 do
          _G.pmesh.Scale = Vector3.new(i / 2, i / 2, i / 2)
          if i == 5 then
            for x, w in pairs(char:GetChildren()) do
              if w:IsA("Part") and w.Name ~= "HumanoidRootPart" then
                w.Transparency = 0
              end
              if w:IsA("Hat") or w:IsA("Accessory") then
                w.Handle.Transparency = 0
              end
            end
          end
          hum.CameraOffset = Vector3.new(0, number2, 0)
          wait()
        end
        hum.JumpPower = 50
        _G.bv:Destroy()
        _G.p:Destroy()
        enabled = false
        wait(times * 0.03)
end
end)