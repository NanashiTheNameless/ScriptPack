 ESP = true --Do you want ESP?
Aimbot = true --Do you want Aimbot?
IgnoreWalls = false --Do you want to shoot through walls?
_G.Legit = true --Do you always want to shoot headshots?

Sniper = {"INTERVENTION", "REMINGTON 700", "AWS", "L115A3", "MOSIN NAGANT", "OBREZ"}
SpecialSniper = {"BFG 50", "SFG 50"}
WeakSniper = {"MK11", "SKS", "SCAR SSR", "DRAGUNOV SVU", "HENRY 45-70"}
SMG = {"SCAR-H", "AG-3", "M4A1", "G36C", "M4", "L22", "SCAR PDW", "SR-3M", "P90", "AUG A3 PARA", "AK12", "AN-94", "AS VAL", "SCAR-L", "AUG A1", "M16A4", "G36", "M16A3", "AUG A2", "FAMAS", "AK44", "AUG A3", "L85A2", "HONEY BADGER", "AK74", "AKM", "M231"}
WeakSMG = {"MP5K", "UMP45", "MP7", "MAC10", "MP5", "COLT SMG 635", "MP5SD", "MP10", "MP5/10", "KRISS VECTOR"}
ShotGun = {"REMINGTON 870", "KSG 12", "KS-23M", "SERBU SHOTGUN"}
LMG = {"COLT LMG", "M60", "AUG HBAR", "MG36", "L86 LSW", "RPK", "SCAR HAMR", "RPK74"}
Other = {"M9", "GLOCK 17", "M1911", "DEAGLE 44", "GLOCK 18", "M93R", "TEC9", "MP412 REX"}
Melee = {"KNIFE", "MACHETE"}

warn("Version: 1.0.0, Welcome To Project Bear's ESP, Report bugs to the Project Bear Discord.")


local camera = workspace.CurrentCamera
local ScreenX, ScreenY = workspace.CurrentCamera.ViewportSize.X, workspace.CurrentCamera.ViewportSize.Y
local inversePi = 1 / math.pi
_G.FOV = 9
local magic = _G.FOV*inversePi
_G.ignoreFOV = false
local aim_through_list = {nil, nil, nil}
local distance
local ignore
local distance2
Pixels = ScreenX * ScreenY
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
Radius = math.sqrt(Pixels*magic)
local viable
local your_head = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head")
local ray_start
local vector
_G.ignoreWalls = true
_G.ShootingTeam = false
local enabled = false
local target


local function ReturnF(player, bone) 
if not bone and player.Character:FindFirstChild(bone) then
return {_, false}
end
return camera:WorldToScreenPoint(player.Character[bone].Position)
end 
local function checksight(player)
local screen_position, in_fov = ReturnF(player, "Head") -- end my life
if not (in_fov or _G.ignoreFOV) then 
return false
else -- bug here with fov checks
if (not _G.ignoreFOV) and (_G.FOV~=-1) then
local distance2 = (Vector2.new(screen_position.X, screen_position.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
if distance2<=Radius then
return player, screen_position
end 
return false
else
return player, screen_position
end
end
end 


local function ViableP()
aim_through_list[1] = game:GetService("Players").LocalPlayer.Character
local distance = 1000
local closest_distance = 1000
local most_viable_player = nil 
for i, player_being_checked in pairs(game:GetService("Players"):GetPlayers()) do 
local player_or_false, targets_coordinates = checksight(player_being_checked) 
if (player_or_false) then
local char = player_being_checked.Character
local target_torso = char and char:FindFirstChild "Torso" 
if (camera.Focus.p - camera.CoordinateFrame.p).magnitude <= 1 then
ray_start = your_head.Position + your_head.CFrame.lookVector * 16 + Vector3.new(0, 4, 0)
else
ray_start = your_head.Position + Vector3.new(0, 4, 0)
end
if not targets_coordinates then 
distance = (Vector2.new(targets_coordinates.X, targets_coordinates.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude 
else
distance = (Vector2.new(targets_coordinates.X, targets_coordinates.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
end
vector = (target_torso.Position - ray_start)
if char:FindFirstChild("Head") then
if (not targets_coordinates) or (distance <= closest_distance) then
local new_ray = Ray.new(ray_start, vector.unit * 1000) -- "fire" ray and make sure to ignore our own character
local hit, position = workspace:FindPartOnRayWithIgnoreList(new_ray, aim_through_list) -- check if the ray hit anything and if it's a descendant of the target's character 
if (hit and hit:isDescendantOf(char)) or _G.ignoreWalls then
if char.HumanoidRootPart:FindFirstChild("ESP") then
if char.HumanoidRootPart.ESP.Frame.BackgroundColor3 == Color3.new(1, 0.666667, 0) or char.HumanoidRootPart.ESP.Frame.BackgroundColor3 == Color3.new(0, 1, 0.498039) then
closest_distance = distance
most_viable_player = player_being_checked
target = player_being_checked
else
	if IgnoreWalls == false then
	most_viable_player = nil
target = nil
	elseif IgnoreWalls == true then
	closest_distance = distance
most_viable_player = player_being_checked
target = player_being_checked
	
end
end
else

if IgnoreWalls == false then
	most_viable_player = nil
target = nil
	elseif IgnoreWalls == true then
	closest_distance = distance
most_viable_player = player_being_checked
target = player_being_checked
	
end

end
else
most_viable_player = nil
target = nil
end -- hit or ignore walls
end -- meets distance or no priority
end
end
end
return most_viable_player
end 





game:GetService("RunService").Heartbeat:connect(function()





if Aimbot == true then
ViableP()
workspace.DeadBody:ClearAllChildren()
wep = nil
for i,v in pairs(workspace.Camera:GetChildren()) do
	if v:FindFirstChild("Flame") then
		wep = v
		break
	end
end
if wep and target ~= nil then
if target.TeamColor ~= game:GetService("Players").LocalPlayer.TeamColor then
wep.Flame.Size = Vector3.new(1,5,1)
wep.Flame.Anchored = true
if target.Character:FindFirstChild("Head") then
if _G.Legit == false then
wep.Flame.CFrame = target.Character.Head.CFrame*CFrame.new(0,0,1.9) -- this is where the magic is
elseif _G.Legit == true then
	wep = false
	Type = nil
	
	Current = nil
				for i,v in pairs(workspace.CurrentCamera:GetChildren()) do
					if v.Name ~= "Right Arm" and v.Name ~= "Left Arm" then
						if v:IsA("Model") then
							if v:FindFirstChild("Flame") then
								Current = v
								break
							end
						end
					end
				end			
	
			if wep == false then
				for i = 1,#LMG do
					if Current ~= nil then
						if LMG[i] == Current.Name then
							wep = true
							Type = "LMG"
							break
						end
					end
				end
			end	
			
			if wep == false then
				for i = 1,#SMG do
					if Current ~= nil then
						if SMG[i] == Current.Name then
							wep = true
							Type = "SMG"
							break
						end
					end
				end
			end	
			
			if wep == false then
				for i = 1,#WeakSMG do
					if Current ~= nil then
						if WeakSMG[i] == Current.Name then
							wep = true
							Type = "WeakSMG"
							break
						end
					end
				end
			end	
			
			if wep == false then
				for i = 1,#Other do
					if Current ~= nil then
						if Other[i] == Current.Name then
							wep = true
							Type = "Other"
							break
						end
					end
				end
			end	
			
			if wep == false then
				for i = 1,#ShotGun do
					if Current ~= nil then
						if ShotGun[i] == Current.Name then
							wep = true
							Type = "ShotGun"
							break
						end
					end
				end
			end	
	if Type == nil then
	random = math.random(1,3)
	if random == 1 then
		Current.Flame.CFrame = target.Character.Head.CFrame*CFrame.new(0,0,0.1) -- this is where the magic is
	end
	if random >= 2 and random <= 3 then
		Current.Flame.CFrame = target.Character.Torso.CFrame*CFrame.new(0,0,0.1) -- this is where the magic is
	end
	elseif Type == "LMG" then
	if ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - target.Character.HumanoidRootPart.Position).magnitude) <= 150 then
		random = math.random(1,6)
	if random == 1 then
		Current.Flame.CFrame = target.Character.Head.CFrame*CFrame.new(0,0,0.1) -- this is where the magic is
	end
	if random >= 2 and random <= 3 then
		Current.Flame.CFrame = target.Character.Torso.CFrame*CFrame.new(0,0,0.1) -- this is where the magic is
	end
	if random >= 4 and random <= 6 then
		Current.Flame.CFrame = CFrame.new(0,0,0)
	end
	else
		random = math.random(1,10)
	if random == 1 then
		Current.Flame.CFrame = target.Character.Head.CFrame*CFrame.new(0,0,0.1) -- this is where the magic is
	end
	if random >= 2 and random <= 3 then
		Current.Flame.CFrame = target.Character.Torso.CFrame*CFrame.new(0,0,0.1) -- this is where the magic is
	end
	if random >= 4 and random <= 10 then
		Current.Flame.CFrame = CFrame.new(0,0,0)
	end
	
	end
	elseif Type == "ShotGun" then
		random = math.random(1,5)
	if random == 1 then
		Current.Flame.CFrame = target.Character.Head.CFrame*CFrame.new(0,0,0.1) -- this is where the magic is
	end
	if random >= 2 and random <= 3 then
		Current.Flame.CFrame = target.Character.Torso.CFrame*CFrame.new(0,0,0.1) -- this is where the magic is
	end
	if random >= 4 and random <= 5 then
		Current.Flame.CFrame = CFrame.new(0,0,0)
	end
	elseif Type == "WeakSMG" or Type == "SMG" then
		if ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - target.Character.HumanoidRootPart.Position).magnitude) <= 125 then
		random = math.random(1,6)
	if random == 1 then
		Current.Flame.CFrame = target.Character.Head.CFrame*CFrame.new(0,0,0.1) -- this is where the magic is
	end
	if random >= 2 and random <= 3 then
		Current.Flame.CFrame = target.Character.Torso.CFrame*CFrame.new(0,0,0.1) -- this is where the magic is
	end
	if random >= 4 and random <= 6 then
		Current.Flame.CFrame = CFrame.new(0,0,0)
	end
		else
		random = math.random(1,8)
	if random == 1 then
		Current.Flame.CFrame = target.Character.Head.CFrame*CFrame.new(0,0,0.1) -- this is where the magic is
	end
	if random >= 2 and random <= 3 then
		Current.Flame.CFrame = target.Character.Torso.CFrame*CFrame.new(0,0,0.1) -- this is where the magic is
	end
	if random >= 4 and random <= 8 then
		Current.Flame.CFrame = CFrame.new(0,0,0)
	end
		
	end
	elseif Type == "Other" then
		random = math.random(1,6)
	if random == 1 then
		Current.Flame.CFrame = target.Character.Head.CFrame*CFrame.new(0,0,0.1) -- this is where the magic is
	end
	if random >= 2 and random <= 4 then
		Current.Flame.CFrame = target.Character.Torso.CFrame*CFrame.new(0,0,0.1) -- this is where the magic is
	end
	if random >= 5 and random <= 6 then
		Current.Flame.CFrame = CFrame.new(0,0,0)
	end
	end
end
end 
end
end
end





if ESP == true then
for i,v in pairs(game:GetService("Players"):GetChildren()) do
pass = false
if workspace:FindFirstChild(v.Name) then
if v.Team == game:GetService("Players").LocalPlayer.Team then
if v.Character:FindFirstChild("HumanoidRootPart") then
if v.Character.HumanoidRootPart:FindFirstChild("ESP") then
v.Character.HumanoidRootPart.ESP:Destroy()
end
end
end
if v.Team ~= game:GetService("Players").LocalPlayer.Team then
if v.Character:FindFirstChild("HumanoidRootPart") then
for i,v in pairs(v.Character:GetChildren()) do
if v:IsA("Model") then
pass = true
break
end
end

shirt = nil
passer = false
for i,v in pairs(v.Character:GetChildren()) do
	if v:IsA("Shirt") then
		shirt = v
		break
	end
end

for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
	if v:IsA("Shirt") then
		if shirt ~= nil then
		if v.Name ~= shirt.Name then
		passer = true
		break
		end
		end
	end
end

if passer == true then
if v.Character:FindFirstChild("HumanoidRootPart") then
if v.Character.HumanoidRootPart:FindFirstChild("ESP") then
		
		v.Character.HumanoidRootPart.ESP.TextLabel.Text = v.Name.." Distance: "..math.floor(((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude))

		hitting = false


		local ray = Ray.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.p, (v.Character.HumanoidRootPart.CFrame.p - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.p).unit * 2000)
		local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {game:GetService("Players").LocalPlayer.Character, workspace.CurrentCamera, workspace.Ignore}, false, true)
		if part then
			if part.Parent == v.Character then
				hitting = true
			end
		end					
					if hitting == false then
					elseif hitting == true then
						v.Character.HumanoidRootPart.ESP.Frame.BackgroundColor3 = Color3.new(0, 1, 0.498039)
					end
		
		if hitting == false then
		local ray = Ray.new(game:GetService("Players").LocalPlayer.Character.Head.CFrame.p, (v.Character.Head.CFrame.p - game:GetService("Players").LocalPlayer.Character.Head.CFrame.p).unit * 2000)
		local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {game:GetService("Players").LocalPlayer.Character, workspace.CurrentCamera, workspace.Ignore}, false, true)
		if part then
			if part.Parent == v.Character then
				hitting = true
			end
		end					
					if hitting == false then
						v.Character.HumanoidRootPart.ESP.Frame.BackgroundColor3 = Color3.new(1, 0, 0)
					elseif hitting == true then
						v.Character.HumanoidRootPart.ESP.Frame.BackgroundColor3 = Color3.new(0, 1, 0.498039)
					end
					
			if hitting == false then
					elseif hitting == true then
						v.Character.HumanoidRootPart.ESP.Frame.BackgroundColor3 = Color3.new(0, 1, 0.498039)
			end
			
			
	
	
	
	
	
	
	
	
	
			if hitting == false then
		local ray = Ray.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.p, (v.Character.HumanoidRootPart.CFrame.p - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.p).unit * 2000)
		local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {game:GetService("Players").LocalPlayer.Character, workspace.CurrentCamera, workspace.Ignore}, false, true)
		if part then
			if part:IsA("BasePart") then
				
				CurrentGun = nil
				for i,v in pairs(workspace.CurrentCamera:GetChildren()) do
					if v.Name ~= "Right Arm" and v.Name ~= "Left Arm" then
						if v:IsA("Model") then
							if v:FindFirstChild("Flame") then
								CurrentGun = v
								break
							end
						end
					end
				end				
				
				found = false				
				
				if found == false then
				for i = 1,#Sniper do
					if CurrentGun ~= nil then
						if Sniper[i] == CurrentGun.Name then
							found = true
							Min = 2.75
							Max = 3
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#SpecialSniper do
					if CurrentGun ~= nil then
						if SpecialSniper[i] == CurrentGun.Name then
							found = true
							Min = 3.25
							Max = 3.5
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#WeakSniper do
					if CurrentGun ~= nil then
						if WeakSniper[i] == CurrentGun.Name then
							found = true
							Min = 2.75
							Max = 3
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#WeakSMG do
					if CurrentGun ~= nil then
						if WeakSMG[i] == CurrentGun.Name then
							found = true
							Min = 2.25
							Max = 3
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#SMG do
					if CurrentGun ~= nil then
						if SMG[i] == CurrentGun.Name then
							found = true
							Min = 2.5
							Max = 3
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#ShotGun do
					if CurrentGun ~= nil then
						if ShotGun[i] == CurrentGun.Name then
							found = true
							Min = 2.75
							Max = 3
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#LMG do
					if CurrentGun ~= nil then
						if LMG[i] == CurrentGun.Name then
							found = true
							Min = 2.5
							Max = 3
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#Other do
					if CurrentGun ~= nil then
						if Other[i] == CurrentGun.Name then
							found = true
							Min = 0
							Max = 0
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#Melee do
					if CurrentGun ~= nil then
						if Melee[i] == CurrentGun.Name then
							found = true
							Min = 0
							Max = 0
							break
						end
					end
				end
				end
				
				if found == false then
					Min = 0
					Max = 0
				end
				
				if part.Parent.Name == "Map" then
				if part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y >= Max then
				hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z >= Max and part.Size.Y >= Max then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z >= Max and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z >= Min and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X >= Max and part.Size.Z <= Min and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X >= Max and part.Size.Z >= Max and part.Size.Y <= Min-1 then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y <= Max then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y >= Max then
					hitting = true
				parter = part
				elseif part.Size.X <= Min or part.Size.Z <= Min or part.Size.Z <= Min then
					hitting = true
				parter = part
				end
				end
			end
		end					
					if hitting == true then
								hitting = false
								part = parter
								list = {}
								pos1 = part.Position - (part.Size/2) - Vector3.new(0.01,0.01,0.01)
								pos2 = part.Position + (part.Size/2) + Vector3.new(0.01,0.01,0.01)
								Reg = Region3.new(pos1, pos2)
								TouchingParts = game.Workspace:FindPartsInRegion3(Reg)
								o = 1
								if TouchingParts ~= nil then
								for i,v in pairs(TouchingParts) do
								if v ~= parter then
									
									
									part = v
									if part.Parent.Name == "Map" then
				if part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y >= Max then
				hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z >= Max and part.Size.Y >= Max then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z >= Max and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z >= Min and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X >= Max and part.Size.Z <= Min and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X >= Max and part.Size.Z >= Max and part.Size.Y <= Min-1 then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y <= Max then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y >= Max then
					hitting = true
				parter = part
				elseif part.Size.X <= Min or part.Size.Z <= Min or part.Size.Z <= Min then
					hitting = true
				parter = part
				end		
				end							
									
									
									if hitting == true then
									table.insert(list, o, v)
									o = o + 1
									end
								end
								end	
								end
								
								hitting = false
								
								part = parter
								
								pos1 = part.Position + (part.Size/2) + Vector3.new(0.01,0.01,0.01)
								pos2 = part.Position - (part.Size/2) - Vector3.new(0.01,0.01,0.01)											
								
								local ray = Ray.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.p, (v.Character.HumanoidRootPart.CFrame.p - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.p).unit * 2000)
								local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {game:GetService("Players").LocalPlayer.Character, workspace.CurrentCamera, workspace.Ignore, parter, unpack(list)}, false, true)
								if part then
									if part.Parent == v.Character then
										hitting = true
									end
								end					
											if hitting == false then
												v.Character.HumanoidRootPart.ESP.Frame.BackgroundColor3 = Color3.new(1, 0, 0)
											elseif hitting == true then
												if ((parter.Position - v.Character.HumanoidRootPart.Position).magnitude) <= 40 then
													v.Character.HumanoidRootPart.ESP.Frame.BackgroundColor3 = Color3.new(1, 0.666667, 0)
													else
												v.Character.HumanoidRootPart.ESP.Frame.BackgroundColor3 = Color3.new(1, 0, 0)
												end
											end					
						
					elseif hitting == false then
						v.Character.HumanoidRootPart.ESP.Frame.BackgroundColor3 = Color3.new(1, 0, 0)
					end
					end					
	
	
	
	
	
	
	
				
			
		
		if hitting == false then
		local ray = Ray.new(game:GetService("Players").LocalPlayer.Character.Head.CFrame.p, (v.Character.Head.CFrame.p - game:GetService("Players").LocalPlayer.Character.Head.CFrame.p).unit * 2000)
		local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {game:GetService("Players").LocalPlayer.Character, workspace.CurrentCamera, workspace.Ignore}, false, true)
		if part then
			if part:IsA("BasePart") then

				CurrentGun = nil
				for i,v in pairs(workspace.CurrentCamera:GetChildren()) do
					if v.Name ~= "Right Arm" and v.Name ~= "Left Arm" then
						if v:IsA("Model") then
							if v:FindFirstChild("Flame") then
								CurrentGun = v
								break
							end
						end
					end
				end				
				
				found = false				
				
				if found == false then
				for i = 1,#Sniper do
					if CurrentGun ~= nil then
						if Sniper[i] == CurrentGun.Name then
							found = true
							Min = 2.75
							Max = 3
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#SpecialSniper do
					if CurrentGun ~= nil then
						if SpecialSniper[i] == CurrentGun.Name then
							found = true
							Min = 3.25
							Max = 3.5
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#WeakSniper do
					if CurrentGun ~= nil then
						if WeakSniper[i] == CurrentGun.Name then
							found = true
							Min = 2.75
							Max = 3
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#WeakSMG do
					if CurrentGun ~= nil then
						if WeakSMG[i] == CurrentGun.Name then
							found = true
							Min = 2.25
							Max = 3
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#SMG do
					if CurrentGun ~= nil then
						if SMG[i] == CurrentGun.Name then
							found = true
							Min = 2.5
							Max = 3
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#ShotGun do
					if CurrentGun ~= nil then
						if ShotGun[i] == CurrentGun.Name then
							found = true
							Min = 2.75
							Max = 3
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#LMG do
					if CurrentGun ~= nil then
						if LMG[i] == CurrentGun.Name then
							found = true
							Min = 2.5
							Max = 3
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#Other do
					if CurrentGun ~= nil then
						if Other[i] == CurrentGun.Name then
							found = true
							Min = 0
							Max = 0
							break
						end
					end
				end
				end
				
				if found == false then
				for i = 1,#Melee do
					if CurrentGun ~= nil then
						if Melee[i] == CurrentGun.Name then
							found = true
							Min = 0
							Max = 0
							break
						end
					end
				end
				end
				
				if found == false then
					Min = 0
					Max = 0
				end
				
				if part.Parent.Name == "Map" then
				if part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y >= Max then
				hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z >= Max and part.Size.Y >= Max then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z >= Max and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z >= Min and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X >= Max and part.Size.Z <= Min and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X >= Max and part.Size.Z >= Max and part.Size.Y <= Min-1 then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y <= Max then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y >= Max then
					hitting = true
				parter = part
				elseif part.Size.X <= Min or part.Size.Z <= Min or part.Size.Z <= Min then
					hitting = true
				parter = part
				end
				end
			end
		end					
					if hitting == true then
								hitting = false
								part = parter
								list = {}
								pos1 = part.Position - (part.Size/2) - Vector3.new(0.01,0.01,0.01)
								pos2 = part.Position + (part.Size/2) + Vector3.new(0.01,0.01,0.01)
								Reg = Region3.new(pos1, pos2)
								TouchingParts = game.Workspace:FindPartsInRegion3(Reg)
								o = 1
								if TouchingParts ~= nil then
								for i,v in pairs(TouchingParts) do
								if v ~= parter then
									
									
									part = v
									if part.Parent.Name == "Map" then
				if part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y >= Max then
				hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z >= Max and part.Size.Y >= Max then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z >= Max and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z >= Min and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X >= Max and part.Size.Z <= Min and part.Size.Y <= Min then
					hitting = true
				parter = part
				elseif part.Size.X >= Max and part.Size.Z >= Max and part.Size.Y <= Min-1 then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y <= Max then
					hitting = true
				parter = part
				elseif part.Size.X <= Min and part.Size.Z <= Min and part.Size.Y >= Max then
					hitting = true
				parter = part
				elseif part.Size.X <= Min or part.Size.Z <= Min or part.Size.Z <= Min then
					hitting = true
				parter = part
				end	
				end								
									
									
									if hitting == true then
									table.insert(list, o, v)
									o = o + 1
									end
								end
								end	
								end
								
								hitting = false
								
								part = parter
								
								pos1 = part.Position + (part.Size/2) + Vector3.new(0.01,0.01,0.01)
								pos2 = part.Position - (part.Size/2) - Vector3.new(0.01,0.01,0.01)						
								
								local ray = Ray.new(game:GetService("Players").LocalPlayer.Character.Head.CFrame.p, (v.Character.Head.CFrame.p - game:GetService("Players").LocalPlayer.Character.Head.CFrame.p).unit * 2000)
								local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {game:GetService("Players").LocalPlayer.Character, workspace.CurrentCamera, workspace.Ignore, parter, unpack(list)}, false, true)
								if part then
									if part.Parent == v.Character then
										hitting = true
									end
								end					
											if hitting == false then
												v.Character.HumanoidRootPart.ESP.Frame.BackgroundColor3 = Color3.new(1, 0, 0)
											elseif hitting == true then
												if ((parter.Position - v.Character.HumanoidRootPart.Position).magnitude) <= 40 then
													v.Character.HumanoidRootPart.ESP.Frame.BackgroundColor3 = Color3.new(1, 0.666667, 0)
													else
												v.Character.HumanoidRootPart.ESP.Frame.BackgroundColor3 = Color3.new(1, 0, 0)
												end
											end						
						
					elseif hitting == false then
						v.Character.HumanoidRootPart.ESP.Frame.BackgroundColor3 = Color3.new(1, 0, 0)
					end
					end				
					end
		
	

elseif pass == true then
local ESP = Instance.new("BillboardGui",v.Character.HumanoidRootPart)
ESP.Name = "ESP"
ESP.Size = UDim2.new(6, 0, 8, 0)
ESP.StudsOffset = Vector3.new(0, 0.75, 0)
ESP.AlwaysOnTop = true
local Frame = Instance.new("Frame",ESP)
Frame.ZIndex = 1000
Frame.Size = UDim2.new(0.6, 0, 0.8, 0)
Frame.Position = UDim2.new(0.2, 0, 0.3, 0)
Frame.BorderSizePixel = 3
Frame.BackgroundTransparency = 0.3
Frame.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Label = Instance.new("TextLabel", ESP)
Label.Position = UDim2.new(0, 0, -0.1, 0)
Label.Size = UDim2.new(1, 0, 0.3, 0)
Label.Font = "SourceSansLight"
Label.TextColor3 = Color3.new(1,1,1)
Label.TextStrokeColor3 = Color3.new(0,0,0)
Label.TextStrokeTransparency = 0
Label.BackgroundColor3 = Color3.new(1, 1, 1)
Label.TextScaled = true
Label.Text = v.Name.." Distance: "..math.floor(((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude))
Label.BackgroundTransparency = 1
end
end
end
end
end
end
end
end
end)
