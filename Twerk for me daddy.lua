--credit: KrystalTeam
local twerksrc = [[
function clerp(a,b,t)
	local qa = {QuaternionFromCFrame(a)}
	
	local qb = {QuaternionFromCFrame(b)}
	
	local ax, ay, az = a.x, a.y, a.z
	
	local bx, by, bz = b.x, b.y, b.z
	
	local _t = 1-t
	
	return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
end
 
function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		
		local recip = 0.5/s
		
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5
	else
		local i = 0
		
		if m11 > m00 then
			
			i = 1
			
		end
		if m22 > (i == 0 and m00 or m11) then
			
			i = 2
			
		end
		if i == 0 then
			local s = math.sqrt(m00-m11-m22+1)
			
			local recip = 0.5/s
			
			return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip
		elseif i == 1 then
			local s = math.sqrt(m11-m22-m00+1)
			
			local recip = 0.5/s
			
			return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip
		elseif i == 2 then
			local s = math.sqrt(m22-m00-m11+1)
			
			local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip
		end
	end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	
	local wx, wy, wz = w*xs, w*ys, w*zs
	
	local xx = x*xs
	
	local xy = x*ys
	
	local xz = x*zs
	
	local yy = y*ys
	
	local yz = y*zs

	local zz = z*zs
	
	return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy))
end
	 
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = math.acos(cosTheta)
			
			local invSinTheta = 1/math.sin(theta)
			
			startInterp = math.sin((1-t)*theta)*invSinTheta
			
			finishInterp = math.sin(t*theta)*invSinTheta  
		else
			startInterp = 1-t
			
			finishInterp = t
		end
	else
		if (1+cosTheta) > 0.0001 then
			local theta = math.acos(-cosTheta)
			local invSinTheta = 1/math.sin(theta)
			startInterp = math.sin((t-1)*theta)*invSinTheta
			finishInterp = math.sin(t*theta)*invSinTheta
		else
			startInterp = t-1
			
			finishInterp = t
		end
	end
	return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp
end

cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ

Player=game:GetService("Players").LocalPlayer
Character=Player.Character
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack
Torso=Character.Torso
Head=Character.Head
Hum1=Character.Hum1
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
Neck=Torso["Neck"]
LS=Torso["Left Shoulder"]
LH=Torso["Left Hip"]
RS=Torso["Right Shoulder"]
RH=Torso["Right Hip"]
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
RW, LW=Instance.new("Weld"), Instance.new("Weld")
RHW, LHW=Instance.new("Weld"), Instance.new("Weld")
RW.Name="Right Shoulder" 
LW.Name="Left Shoulder"
RHW.Name="Right Hip" 
LHW.Name="Left Hip"

function swait(num)
    if num==0 or num==nil then
        game:service'RunService'.RenderStepped:wait()
    else
        for i=0,num do
            game:service'RunService'.RenderStepped:wait()
        end
    end
end

local Animator 
if Hum1:FindFirstChild("Animator") ~= nil then
	Animator = Hum1:FindFirstChild("Animator"):clone()
end

local Animate1
if Character:FindFirstChild("Animate1") ~= nil then
	Animate1 = Character:FindFirstChild("Animate1"):clone()
	Animate1.Disabled = true
end

local Mouse = Player:GetMouse()
local Toggle = false
		
Mouse.KeyDown:connect(function(key) 
	if key == "q" then
		if Toggle == false then
			Toggle = true
		else
			Toggle = false
		end
	end
end)
	
RSH=Torso["Right Shoulder"]
LSH=Torso["Left Shoulder"]


local C = nil --cloner
local SFX = nil
local Anim,LAnim
local Init = false
while true do

	swait()

	if Toggle == true then
		
		if Init == false then
		
			if SFX == nil and Head:FindFirstChild("SFX") == nil then
				SFX = Instance.new("Sound",Head)
				SFX.Name = "SFX"
				SFX.Looped = true
				SFX.SoundId = "rbxassetid://170184872"
				SFX.Volume = 1
				swait()
			end
			
			if SFX ~= nil then
				SFX:Play()
			end
			
			RSH.Parent=nil
			LSH.Parent=nil
			RH.Parent=nil
			LH.Parent=nil
			--
			RW.Name="Right Shoulder"
			RW.Part0=Torso
			RW.C0=CFrame.new(1.5, 0.5, 0) 
			RW.C1=CFrame.new(0, 0.5, 0)
			RW.Part1=Character["Right Arm"]
			RW.Parent=Torso
			--
			LW.Name="Left Shoulder"
			LW.Part0=Torso
			LW.C0=CFrame.new(-1.5, 0.5, 0) 
			LW.C1=CFrame.new(0, 0.5, 0)
			LW.Part1=Character["Left Arm"]
			LW.Parent=Torso
			--
			
			RHW.Name="Right Hip"
			RHW.Part0=Torso
			RHW.C0=CFrame.new(1, -1, 0) 
			RHW.C1=CFrame.new(0.5, 1, 0)
			RHW.Part1=Character["Right Leg"]
			RHW.Parent=Torso
			--
			LHW.Name="Left Hip"
			LHW.Part0=Torso
			LHW.C0=CFrame.new(-1, -1, 0) 
			LHW.C1=CFrame.new(-0.5, 1, 0)
			LHW.Part1=Character["Left Leg"]
			LHW.Parent=Torso
			Init = true
		end
		
		-- animations
		
		
		
		for i=0,.6,0.085 do
			if Toggle == false then
				break
			end
			swait()
			Neck.C0=clerp(Neck.C0,necko * euler(0,0,0),0.6)
			RootJoint.C0=clerp(RootJoint.C0,cf(0,0,0) * euler(-1.9,0,3.14),0.6)
			LHW.C0 = clerp(LHW.C0,cf(-1,-1,.25) * euler(0.5,0,-.25),0.6)
			RHW.C0 = clerp(RHW.C0,cf(1,-1,.25) * euler(0.5,0,.25),0.6)
			RW.C0 = clerp(RW.C0,cf(1.25, 0.25, -0.25) * euler(0.5,0,-.15),0.6)
			LW.C0 = clerp(LW.C0,cf(-1.25, 0.25, -0.25) * euler(0.5,0,.15),0.6)
		end

	swait()

		for i=0,.6,0.085 do
			if Toggle == false then
				break
			end
			swait()
			Neck.C0=clerp(Neck.C0,necko * euler(-0.25,0,0),0.6)
			RootJoint.C0=clerp(RootJoint.C0,cf(0,-0.1,0) * euler(-2,0,3.14),0.6)
			LHW.C0 = clerp(LHW.C0,cf(-1,-1,.25) * euler(0.65,0,-.3),0.6)
			RHW.C0 = clerp(RHW.C0,cf(1,-1,.25) * euler(0.65,0,.3),0.6)
			RW.C0 = clerp(RW.C0,cf(1.25, 0.25, -0.25) * euler(0.5,0,-.15),0.6)
			LW.C0 = clerp(LW.C0,cf(-1.25, 0.25, -0.25) * euler(0.5,0,.15),0.6)
		end
		
		-- animations end
		
	else
		if Init == true then
			for i=0,.5,0.1 do
			--anim reset		
				Neck.C0=clerp(Neck.C0,necko,0.5)
				RootJoint.C0=clerp(RootJoint.C0,RootCF,0.5)
				RW.C0 = clerp(RW.C0,cf(1.5, 0.25, 0), 0.5)
				LW.C0 = clerp(RW.C0,cf(-1.5, 0.25, 0),0.5)
				RHW.C0 = clerp(RHW.C0,cf(1, -1, 0),0.5)
				LHW.C0 = clerp(RHW.C0,cf(-1, -1, 0),0.5)
			
				if SFX ~= nil then
					SFX:Stop()
					SFX:Destroy()
					SFX = nil
				end
			
				RW.Parent=nil
				LW.Parent=nil
				RHW.Parent=nil
				LHW.Parent=nil
				
				RSH.Parent=Character.Torso
				LSH.Parent=Character.Torso
				RH.Parent=Character.Torso
				LH.Parent=Character.Torso
				
				
				if Character:FindFirstChild("Animate1") ~= nil then
					Character:FindFirstChild("Animate1").Disabled = false
				end
				Init = false
				if Toggle == true then
					break
				end
			end
		end
		
	end
end

Hum1.Died:connect(function() Toggle = false; script:Remove(); end)]]

local a = Instance.new("LocalScript")
a.Source = twerksrc
a.Disabled = true
a.Parent = game.Players.LocalPlayer.PlayerGui
a.Disabled = false