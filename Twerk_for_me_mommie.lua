local Target = "the770zone" --Twitdoof does it the best, call me ;)  1- (888) 420 1738
local Id = 165333063 --Set your own custom sound id
local Mp = game:GetService("Players")[Target]
local Mpc = Mp.Character
local Torso = Mpc.HumanoidRootPart.RootJoint
local Ra = Mpc.Torso["Right Shoulder"]
local La = Mpc.Torso["Left Shoulder"]
local Rl = Mpc.Torso["Right Hip"]
local Ll = Mpc.Torso["Left Hip"]
local Down = false

Mpc.Animate.Disabled = true
for k,v in ipairs(Mpc.Humanoid:GetPlayingAnimationTracks()) do
	v:Stop()
end
local Music = Instance.new("Sound", Mpc.Torso)
Music.Looped = true
Music.SoundId = "rbxassetid://"..tostring(Id)
wait(1)
Mpc.Animate.Disabled = true
Music:Play()

local New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

while true do
	if Mpc == nil or Mpc.Parent ~= workspace then
		return
	end
	if Down == true then
		Mpc.Torso.Neck.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, -0.642787576, 0.766044378, 0, 0.766044378, 0.642787576)
		Torso.C0 = CFrame.new(0, -0.565685511, 0.565685451, -1, 0, 0, 0, 0.819151998, 0.57357645, 0, 0.57357645, -0.819151998)
		Ra.C0 = CFrame.new(1, 0.5, 0, -0.640856445, 0.298836261, 0.70710665, 0.422618181, 0.906307697, 0, -0.640856206, 0.298836142, -0.707106829)
		La.C0 = CFrame.new(-1, 0.5, 0, -0.640856266, -0.298836112, -0.707106829, -0.42261821, 0.906307638, 1.1920929e-007, 0.640856326, 0.298836291, -0.70710665)
		Rl.C0 = CFrame.new(1, -1.00000024, -7.15255737e-007, 0, -0.173648179, 0.98480773, 0.906307578, 0.416197598, 0.0733868778, -0.422618181, 0.892538607, 0.157378644)
		Ll.C0 =	CFrame.new(-1, -1.00000012, -4.76837158e-007, 0, 0.173648179, -0.98480773, -0.906307578, 0.416197598, 0.0733868778, 0.422618181, 0.892538607, 0.157378644)
		Down = false                                                                                                                                                                                                   
	else
		Torso.C0 = CFrame.new(0, -0.680400848, 0.729515791, -1, 0, 0, 0, 0.906307518, 0.422618628, 0, 0.422618628, -0.906307518)
		Rl.C0 = CFrame.new(0.906030774, -1.00885236, -0.0330374241, 1.72189232e-007, -0.342020363, 0.939692497, 0.965925455, 0.243210346, 0.0885212049, -0.258818984, 0.907672882, 0.330366194)
		Ll.C0 = CFrame.new(-0.906030774, -1.00885236, -0.0330374241, 0, 0.342020094, -0.939692497, -0.965925455, 0.243210256, 0.088521257, 0.258819014, 0.907672822, 0.330365896)
		Down = true
	end
	
	for g,p in pairs(game:GetService("Players"):GetPlayers()) do
		if p.Name ~= "Twitdoof" then
			ypcall(function()
				if (Mpc.Torso.Position - p.Character.Torso.Position).magnitude <= 41 then
					p.Character.Torso["Right Shoulder"].C0 = CFrame.new(0.717157364, 0.44142127, -0.341421127, -3.09086197e-008, 0.707106769, 0.707106769, 0.707106709, 0.49999994, -0.49999994, -0.707106769, 0.49999994, -0.5)
					p.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1, 0.5, 0, -3.09086197e-008, -0.707106888, -0.70710665, -0.707106709, 0.499999851, -0.5, 0.707106769, 0.499999881, -0.500000119)
					Robux = New("Part",p.Character,"Robux",{BrickColor = BrickColor.new("Dark green"),Elasticity = 0.0099999997764826,FormFactor = Enum.FormFactor.Plate,Size = Vector3.new(2, 0.400000006, 1),CFrame = CFrame.new(-12.000001, 0.200003624, -19.5000038, -0.999999881, -3.59952469e-006, 2.08616257e-007, -3.59952492e-006, 1, -7.27595761e-012, -2.08616257e-007, -5.45696821e-012, -0.999999881),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.156863, 0.498039, 0.278431),})
					New("Decal",Robux,"Decal",{Face = Enum.NormalId.Bottom,Texture = "http://www.roblox.com/asset/?id=16658163",})
					New("Decal",Robux,"Decal",{Face = Enum.NormalId.Top,Texture = "http://www.roblox.com/asset/?id=16658163",})
					local w = Instance.new("Weld", Robux)
					w.Part0 = p.Character["Right Arm"]
					w.Part1 = Robux
					w.C0 = CFrame.new(0,-1,0) * CFrame.Angles(math.rad(90),0,0)
				end
			end)
		end
	end
	wait(0.125)
	for g,p in pairs(game:GetService("Players"):GetPlayers()) do
		if p.Name ~= "Twitdoof" then
			ypcall(function()
				if (Mpc.Torso.Position - p.Character.Torso.Position).magnitude <= 41 then
					p.Character.Torso["Right Shoulder"].C0 = CFrame.new(0.717157364, 0.44142127, -0.341421127, -3.09086197e-008, 0.707106769, 0.707106769, 0.707106709, 0.49999994, -0.49999994, -0.707106769, 0.49999994, -0.5)
					p.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1, 0.5, 0, 0.50000006, -0.50000006, -0.70710665, -0.853553176, -0.146446675, -0.5, 0.146446675, 0.853553295, -0.500000119)
					Robux = New("Part",Workspace,"Robux",{BrickColor = BrickColor.new("Dark green"),Elasticity = 0.0099999997764826,FormFactor = Enum.FormFactor.Plate,Size = Vector3.new(2, 0.400000006, 1),CFrame = CFrame.new(-12.000001, 0.200003624, -19.5000038, -0.999999881, -3.59952469e-006, 2.08616257e-007, -3.59952492e-006, 1, -7.27595761e-012, -2.08616257e-007, -5.45696821e-012, -0.999999881),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.156863, 0.498039, 0.278431),})
					New("Decal",Robux,"Decal",{Face = Enum.NormalId.Bottom,Texture = "http://www.roblox.com/asset/?id=16658163",})
					New("Decal",Robux,"Decal",{Face = Enum.NormalId.Top,Texture = "http://www.roblox.com/asset/?id=16658163",})
					Robux.CFrame = p.Character.Torso.CFrame * CFrame.new(0,0,-5)
				end
			end)
		end
	end
	wait(0.125)
end