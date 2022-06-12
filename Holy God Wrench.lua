script.Parent = workspace.CurrentCamera
local plr = game:GetService("Players").LocalPlayer

local tool = Instance.new("Tool",plr:WaitForChild("Backpack"))
tool.Grip = CFrame.new(0,-0.8,-0.2) * CFrame.Angles(math.rad(0),math.rad(180),math.rad(0))
tool.Name = "bluE"

local part = Instance.new("Part",tool)
part.Name = "Handle"
part.Size = Vector3.new(4,6,4)
part.TopSurface = "Smooth"
part.BottomSurface = "Smooth"
part.CanCollide = false
part:BreakJoints()

local mesh = Instance.new("SpecialMesh",part)
mesh.MeshId = "rbxassetid://431003868" --mesh.MeshId = "rbxassetid://132920499"
mesh.TextureId = "rbxassetid://430627740" --"http://www.roblox.com/asset/?id=134479421"
mesh.Scale = Vector3.new(2,2,2)

local sound = Instance.new("Sound",part)
sound.SoundId = "rbxassetid://511340819"
sound.Volume = 3

local sound2 = Instance.new("Sound",part)
sound2.SoundId = "rbxassetid://280667448"
sound2.Volume = 5

local sound3 = Instance.new("Sound",part)
sound3.SoundId = "rbxassetid://139100774"
sound3.Volume = 10

local sound4 = Instance.new("Sound",part)
sound4.SoundId = "rbxassetid://258057783"
sound4.Volume = 10

local sound5 = Instance.new("Sound",part)
sound5.SoundId = "rbxassetid://130932305"
sound5.Volume = 10

local sound6 = Instance.new("Sound",part)
sound6.SoundId = "rbxassetid://906084456"
sound6.Volume = 10
sound6.TimePosition = 2

function firstHum(target)
	for i,v in pairs(target:GetChildren()) do
		if v:IsA("Humanoid") then
			return v
		end
	end
	return nil
end

local slap = false
local cd = false

plr:GetMouse().Button1Down:connect(function()
	if tool.Parent == plr.Character then
		if slap == false then
			slap = true
			sound2:Play()
			local str = Instance.new("StringValue")
			str.Name = "toolanim"
			str.Value = "Slash"
			str.Parent = tool
			wait(1)
			slap = false
		end
	end
end)

part.Touched:connect(function(hit)
	if slap == true then
		if cd == false then
			if not hit:IsDescendantOf(plr.Character) then
				if hit.Parent:IsA("Model") then
					local fhum = firstHum(hit.Parent)
					if fhum then
						cd = true
						fhum.PlatformStand = true
						sound:Play()
						local con1
						con1 = game:GetService("RunService").Heartbeat:connect(function()
							fhum.PlatformStand = true
						end)
						wait(0.1)
						local vel = Instance.new("BodyVelocity",hit)
						vel.Velocity = ((hit.Position - plr.Character:WaitForChild("HumanoidRootPart").Position).unit + Vector3.new(0,0.5,0))*50
						vel.MaxForce = Vector3.new(10000000,10000000,10000000)
						wait(1)
						cd = false
						vel:Destroy()
						local vel2 = Instance.new("BodyVelocity",hit)
						vel2.Velocity = Vector3.new(0,12.5,0)
						vel2.MaxForce = Vector3.new(10000000,10000000,10000000)
						local p2 = Instance.new("Part",hit)
						p2.Anchored = true
						p2.Transparency = 0.6
						p2.CanCollide = false
						p2.Size = Vector3.new(0.2,0.2,0.2)
						p2.CFrame = CFrame.new(hit.CFrame.p) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
						p2.BrickColor = BrickColor.new("New Yeller")
						p2.Material = "Neon"
						local m2 = Instance.new("CylinderMesh",p2)
						m2.Scale = Vector3.new(60,10000,60)
						local scln = sound3:Clone()
						scln.Parent = hit
						scln:Play()
						local con2
						con2 = game:GetService("RunService").Heartbeat:connect(function()
							p2.CFrame = CFrame.new(hit.CFrame.p) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
						end)
						wait(7)
						vel2.Velocity = Vector3.new(0,0,0)
						wait(0.5)
						scln:Stop()
						local scln3 = sound5:Clone()
						scln3.Parent = hit
						scln3:Play()
						wait(1)
						local bav = Instance.new("BodyAngularVelocity",hit)
						bav.AngularVelocity = Vector3.new(math.random(0,360),math.random(0,360),math.random(0,360))
						vel2.Velocity = Vector3.new(0,-250,0)
						p2.BrickColor = BrickColor.new("Really red")
						local scln6 = sound6:Clone()
						scln6.Parent = hit
						scln6:Play()
						local continue = false
						local htc
						htc = hit.Touched:connect(function(hitp)
							if not hitp:IsDescendantOf(hit.Parent) then
								continue = true
								scln6:Stop()
								vel2:Destroy()
								con2:Disconnect()
								con1:Disconnect()
								htc:Disconnect()
								p2:Destroy()
							end
						end)
						repeat wait() until continue == true
						local ctab = {}
						for i=1,4 do
							local p = Instance.new("Part",hit)
							p.Size = Vector3.new(30,30,30)
							p.Anchored = true
							p.CanCollide = false
							p.TopSurface = "Smooth"
							p.BottomSurface = "Smooth"
							p.Color = Color3.fromRGB(255,math.random(0,255),0)
							p.CFrame = hit.CFrame
							local con
							con = game:GetService("RunService").Heartbeat:connect(function()
								p.CFrame = p.CFrame * CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
								p.Transparency = p.Transparency + 0.01
								if p.Transparency >= 1 then
									con:Disconnect()
								end
							end)
							table.insert(ctab,con)
						end	
						Instance.new("Explosion",workspace).Position = hit.Position
						local scln2 = sound4:Clone()
						scln2.Parent = hit
						scln2:Play()
						vel2:Destroy()
						hit.Parent:BreakJoints()
						repeat wait() until not hit:IsDescendantOf(workspace)
						con2:Disconnect()
					end
				end
			end
		end
	end
end)