local function lerp(weld,beglerp,endlerp,speed)
	weld.C0 = beglerp:lerp(endlerp,speed)
	return weld.C0
end

local speed = 0.2
local angle = 0
local anglespeed = 2
local armspeed = 0.2
local armangle = 0
local armanglespeed = 2
local legspeed = 0.2
local legangle = 0
local leganglespeed = 2
local on = true
local damen = false
local enabled = true
local blocking = false
local zenabled = 0
local xenabled = 0
local cenabled = 0
local venabled = 0
local eenabled = 0
local Debounce = {}
local TakeDamage = false
local combo = 1
local Player = game.Players.LocalPlayer
local mouse = Player:GetMouse()
local Char = Player.Character
local Character = Char
local Human = Char.Humanoid
local Sounds = {"rbxassetid://234365549","rbxassetid://200632211","rbxassetid://136007472","rbxassetid://136523485","rbxassetid://163619849","rbxassetid://240517975","rbxassetid://233856154","rbxassetid://401057781","rbxassetid://401057825","rbxassetid://401057895","rbxassetid://199149186","rbxassetid://199149269"}
local Head = Char.Head
local LA = Char:findFirstChild("Left Arm")
local RA = Char:findFirstChild("Right Arm")
local LL = Char:findFirstChild("Left Leg")
local RL = Char:findFirstChild("Right Leg")
local T = Char:findFirstChild("Torso")
local LS = T:findFirstChild("Left Shoulder")
local RS = T:findFirstChild("Right Shoulder")
local LH = T:findFirstChild("Left Hip")
local RH = T:findFirstChild("Right Hip")
local Neck = T:findFirstChild("Neck")
local HM = Char:findFirstChild("HumanoidRootPart")
local RJ = Char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
local WLS = Instance.new("Motor", T)
WLS.C0 = CFrame.new(-1.5, 0.5, 0)
WLS.C1 = CFrame.new(0, 0.5, 0)
WLS.Part0 = T
WLS.Part1 = LA
local WRS = Instance.new("Motor", T)
WRS.Part0 = T
WRS.Part1 = RA
WRS.C0 = CFrame.new(1.5, 0.5, 0)
WRS.C1 = CFrame.new(0, 0.5, 0)
local WLH = LH
local WRH = RH
local LSC0 = WLS.C0
local RSC0 = WRS.C0
local LHC0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local LHC1 = CFrame.new(-0.5, 1 ,0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local WRJ = RJ
local RJC0 = WRJ.C0
local RJC1 = WRJ.C1
local NC0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local Run = game:GetService("RunService")
local noweightprop = PhysicalProperties.new(0,0.3,0.5,0,0)
Anim = Char:FindFirstChild("Animate")
if Anim ~= nil then
	Anim.Parent = nil
end
Animate = Human:FindFirstChild("Animator")
if Animate ~= nil then
	Animate.Parent = nil
end

local gui = Instance.new("ScreenGui",Player.PlayerGui)
local skill1 = Instance.new("TextLabel",gui)
skill1.Size = UDim2.new(0,150,0,50)
skill1.Position = UDim2.new(0.75,0,0.75,0)
skill1.Text = ""
skill1.TextWrapped = true
skill1.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill1text = Instance.new("TextLabel",gui)
skill1text.Size = UDim2.new(0,150,0,50)
skill1text.Position = UDim2.new(0.75,0,0.75,0)
skill1text.TextColor3 = Color3.new(1,1,1)
skill1text.BackgroundTransparency = 1
skill1text.TextWrapped = true
skill1text.TextScaled = true
skill1text.Font = "Antique"
skill1text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill1img = Instance.new("ImageLabel",skill1)
skill1img.Size = UDim2.new(0,0,1,0)
skill1img.Image = "rbxassetid://48965808"
skill1img.BackgroundColor3 = BrickColor.new("Navy blue").Color
local skill2 = Instance.new("TextLabel",gui)
skill2.Size = UDim2.new(0,150,0,50)
skill2.Position = UDim2.new(0.875,0,0.75,0)
skill2.Text = ""
skill2.TextWrapped = true
skill2.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill2text = Instance.new("TextLabel",gui)
skill2text.Size = UDim2.new(0,150,0,50)
skill2text.Position = UDim2.new(0.875,0,0.75,0)
skill2text.TextColor3 = Color3.new(1,1,1)
skill2text.BackgroundTransparency = 1
skill2text.TextWrapped = true
skill2text.TextScaled = true
skill2text.Font = "Antique"
skill2text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill2img = Instance.new("ImageLabel",skill2)
skill2img.Size = UDim2.new(0,0,1,0)
skill2img.Image = "rbxassetid://48965808"
skill2img.BackgroundColor3 = BrickColor.new("Navy blue").Color
local skill3 = Instance.new("TextLabel",gui)
skill3.Size = UDim2.new(0,150,0,50)
skill3.Position = UDim2.new(0.75,0,0.85,0)
skill3.Text = ""
skill3.TextWrapped = true
skill3.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill3text = Instance.new("TextLabel",gui)
skill3text.Size = UDim2.new(0,150,0,50)
skill3text.Position = UDim2.new(0.75,0,0.85,0)
skill3text.TextColor3 = Color3.new(1,1,1)
skill3text.BackgroundTransparency = 1
skill3text.TextWrapped = true
skill3text.TextScaled = true
skill3text.Font = "Antique"
skill3text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill3img = Instance.new("ImageLabel",skill3)
skill3img.Size = UDim2.new(0,0,1,0)
skill3img.Image = "rbxassetid://48965808"
skill3img.BackgroundColor3 = BrickColor.new("Navy blue").Color
local skill4 = Instance.new("TextLabel",gui)
skill4.Size = UDim2.new(0,150,0,50)
skill4.Position = UDim2.new(0.875,0,0.85,0)
skill4.Text = ""
skill4.TextWrapped = true
skill4.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill4text = Instance.new("TextLabel",gui)
skill4text.Size = UDim2.new(0,150,0,50)
skill4text.Position = UDim2.new(0.875,0,0.85,0)
skill4text.TextColor3 = Color3.new(1,1,1)
skill4text.BackgroundTransparency = 1
skill4text.TextWrapped = true
skill4text.TextScaled = true
skill4text.Font = "Antique"
skill4text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill4img = Instance.new("ImageLabel",skill4)
skill4img.Size = UDim2.new(0,0,1,0)
skill4img.Image = "rbxassetid://48965808"
skill4img.BackgroundColor3 = BrickColor.new("Navy blue").Color
local skill5 = Instance.new("TextLabel",gui)
skill5.Size = UDim2.new(0,150,0,50)
skill5.Position = UDim2.new(0.8125,0,0.65,0)
skill5.Text = ""
skill5.TextWrapped = true
skill5.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill5text = Instance.new("TextLabel",gui)
skill5text.Size = UDim2.new(0,150,0,50)
skill5text.Position = UDim2.new(0.8125,0,0.65,0)
skill5text.TextColor3 = Color3.new(1,1,1)
skill5text.BackgroundTransparency = 1
skill5text.TextWrapped = true
skill5text.TextScaled = true
skill5text.Font = "Antique"
skill5text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill5img = Instance.new("ImageLabel",skill5)
skill5img.Size = UDim2.new(0,0,1,0)
skill5img.Image = "rbxassetid://48965808"
skill5img.BackgroundColor3 = BrickColor.new("Navy blue").Color

Character=Char
m=Instance.new('Model',Character)
it=Instance.new
function nooutline(part)
    part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end
function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
    local fp=it("Part")
    fp.formFactor=formfactor
    fp.Parent=parent
    fp.Reflectance=reflectance
    fp.Transparency=transparency
    fp.CanCollide=false fp.Locked=true
    fp.BrickColor=BrickColor.new(tostring(brickcolor))
    fp.Name=name
    fp.Size=size
    fp.Position=Character.Torso.Position
    nooutline(fp)
    fp.Material=material
    fp:BreakJoints()
    return fp
end
function mesh(Mesh,part,meshtype,meshid,offset,scale)
    local mesh=it(Mesh)
    mesh.Parent=part
    if Mesh=="SpecialMesh" then
        mesh.MeshType=meshtype
        mesh.MeshId=meshid
    end
    mesh.Offset=offset
    mesh.Scale=scale
    return mesh 
end
function weld(parent,part0,part1,c0,c1)
    local weld=it("Weld")
    weld.Parent=parent
    weld.Part0=part0
    weld.Part1=part1
    weld.C0=c0
    weld.C1=c1
    return weld
end 
Sword=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Medium stone grey","Handle",Vector3.new(1, 4, 2))
Swordweld=weld(m,Character["Right Arm"],Sword,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.0997057e-005, 1.90734863e-006, 2.81333923e-005, 0, 0, 1, 0, 0.999999881, 0, -1, 0, 0))
Swordmesh = mesh("SpecialMesh",Sword,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=139536155",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Swordmesh.TextureId = "http://www.roblox.com/asset/?id=139536467"
Shield=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Medium stone grey","Handle",Vector3.new(3, 3, 1))
Shieldweld=weld(m,Character["Left Arm"],Shield,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.81333923e-005, 1.90734863e-006, 1.0997057e-005, 1, 0, 0, 0, 0.999999881, 0, 4.37113883e-008, 0, 1))
Shieldmesh = mesh("SpecialMesh",Shield,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=139536383",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Shieldmesh.TextureId = "http://www.roblox.com/asset/?id=139536467"

HW = Swordweld
SHW = Shieldweld
hc0 = Swordweld.C0 *CFrame.new(0,-1,-1.5) *CFrame.Angles(-math.pi/2,math.pi/2,0)
shc0 = Shieldweld.C0 *CFrame.new(-0.65,-0.1,0) *CFrame.Angles(-math.pi/2,math.pi/2,0)
HW.C0 = hc0
SHW.C0 = shc0

for i,v in pairs(m:GetChildren()) do
	if v.ClassName == "Part" then
		v.CustomPhysicalProperties = noweightprop
		for i,x in pairs(v:GetChildren()) do
			v.CustomPhysicalProperties = noweightprop
		end
	end
end

local Meshes={
	Blast="20329976",
	Crown="1323306",
	Ring="3270017",
	Claw="10681506",
	Crystal="9756362",
	Coil="9753878",
	Cloud="1095708",
	Skull="4770583",
	SpinyShell="1080954",
}

local function nooutlines(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end

local function getmesh(mesh)
	return "rbxassetid://"..mesh
end


ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
        if allowframeloss then
            script.Heartbeat:Fire()
            lastframe = tick()
        else
            for i = 1, math.floor(tf / frame) do
                script.Heartbeat:Fire()
            end
            lastframe = tick()
        end
        if tossremainder then
            tf = 0
        else
            tf = tf - frame * math.floor(tf / frame)
        end
    end
end)

local function Rwait(num)
    if num == 0 or num == nil then
        ArtificialHB.Event:wait()
    else
        for i = 0, num do
            ArtificialHB.Event:wait()
        end
    end
end

local function effect(part,brickcolor,size,cframe,trans,transincrement,scaleby,loopwait,meshid,meshtype)
	local p = Instance.new("Part", part or workspace)
	p.Anchored = true
	p.CanCollide = false
	p.FormFactor = Enum.FormFactor.Custom
	p.Material = "SmoothPlastic"
	p.CFrame = cframe
	p.BrickColor = brickcolor
	p.Size = Vector3.new(1,1,1)
	p.Transparency = trans
	nooutlines(p)
	local m = Instance.new("SpecialMesh",p)
	if meshtype ~= nil and meshid == nil then
		m.MeshType = meshtype
	end
	if meshtype == nil and meshid ~= nil then
		m.MeshId = getmesh(meshid)
	end
	m.Scale = size
	coroutine.wrap(function()
		for i = 0,loopwait,0.1 do
			p.CFrame = p.CFrame
			p.Transparency = p.Transparency +transincrement
			m.Scale = m.Scale + scaleby
			Rwait()
		end
		p:Destroy()
	end)()
	return p
end

local PlaySound = function(part,volume,pitch,id,looped)
	local Sound = Instance.new("Sound", part)
	Sound.SoundId = id
	Sound.Pitch = pitch
	Sound.Volume = volume
	coroutine.wrap(function()
		wait()
		Sound:Play()
		if looped == nil then
			game.Debris:AddItem(Sound,10)
		end
	end)()
	if looped == true then
		Sound.Looped = true
		ThisSound = Sound
	end
end

local ShowDmg = function(totake)
	local modl = Instance.new("Model", workspace)
	modl.Name = tostring(totake)
	local prt = Instance.new("Part", modl)
	prt.CanCollide = false
	prt.BrickColor = BrickColor.Red()
	prt.Name = "Head"
	prt.CFrame = HM.CFrame *CFrame.new(0, 1.5, 0)
	prt.TopSurface = 0
	prt.BottomSurface = 0
	prt.FormFactor = 3
	prt.Size = Vector3.new(1, 0.2, 1)
	local bm = Instance.new("BlockMesh", prt)
	local hum = Instance.new("Humanoid", modl)
	hum.Health = 0
	hum.MaxHealth = 0
	hum.WalkSpeed = 0
	bodypos = Instance.new("BodyPosition", prt)
	bodypos.position = Head.Position +Vector3.new(0, 1, 0)
	bodypos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	game.Debris:AddItem(modl, 1)
	coroutine.resume(coroutine.create(function()
		for i = 1, 3 do
			bodypos.position = bodypos.position +Vector3.new(0, 0.5, 0)
			Rwait()
		end
	end))
end

local function ChargeAt(Strength)
	local BV = Instance.new("BodyVelocity",HM)
	BV.maxForce = Vector3.new(1e5,0,1e5)
	BV.velocity = HM.CFrame.lookVector *Strength
	game.Debris:AddItem(BV,0.1)
end

local function Damage(hit,mm,knockback,knockbackvelocity)
	if hit ~= nil and damen == true and hit.Parent ~= Char then
		local hum = GetHumanoid(hit.Parent)
		if hum ~= nil then
		    if TakeDamage == true then
                hum:TakeDamage(mm)
		        spawn(function()
		            ShowDmg(mm)
                end)
	        elseif TakeDamage == false then
	            hum.Health = hum.Health - mm
		        spawn(function()
		            ShowDmg(mm)
		        end)
        	end
        	PlaySound(hum.Torso,1,1,Sounds[math.random(8,12)])
			if knockback ~= nil and knockback ~= 0 then
				if knockbackvelocity == nil then
					local v = Instance.new("BodyVelocity",hum.Torso)
					v.maxForce = Vector3.new(1e5,1e5,1e5)
					v.P = 1e20
					v.velocity = HM.CFrame.lookVector *knockback
					game.Debris:AddItem(v,0.3)
				else
					local v = Instance.new("BodyVelocity",hum.Torso)
					v.maxForce = Vector3.new(1e5,1e5,1e5)
					v.P = 1e20
					v.velocity = KnockbackVelocity *knockback
					game.Debris:AddItem(v,0.3)
				end
			end
		end
		damen = false
	end
end

function GetDistance(Obj,Mag)
    local Bodies = {}
    for _,v in pairs(workspace:GetChildren()) do
        if v ~= Char then
			hum = findhum(v)
			if hum ~= nil and hum.Torso ~= nil then
				local Mag2 = (hum.Torso.Position - Obj.Position).magnitude
				if Mag2 < Mag then
					Bodies[#Bodies + 1] = v
				end
			end
		end
    end
    return Bodies,hum
end

--darkus stuff

function GetHumanoid(Character)
    
    assert(Character, 'bad argument #1 to Character (Model expected, got nil)')
    
    local hum
    
    if Character == Char then return end
    
    if Character.ClassName == "Hat" or Character.ClassName == "Accessory" then
    	for q,e in next, Character.Parent:children() do
	        if e:isA'Humanoid' then
	            hum = e
	        end
	        if e:isA'ForceField' then
	            return
	        end
    	end
    else
	    for q,e in next, Character:children() do
	        if e:isA'Humanoid' then
	            hum = e
	        end
	        if e:isA'ForceField' then
	            return
	        end
	    end
    end
return hum
end

function GetNear(Object, Distance)
    
    assert(Object, 'bad argument #1 to Object (Model expected, got nil)')
    
    local Distance = (Distance and Distance or 25)
    local rtn = {}
    
    for q,e in next, workspace:children() do
        local Hum = e:FindFirstChild'Humanoid'
        if Hum ~= nil then
        	Tor = Hum.Torso
    	end
        if Tor ~= nil then
            local dist = (Object.Position-Tor.Position).magnitude
            if dist <= Distance then
                rtn[#rtn+1] = e
            end
        end
    end
return rtn
end
    
function DamageNear(Distance, Part, Damage, Knockback, DebounceTime, KnockbackVelocity)
    if damen == false then return end
    assert(Part, 'bad argument #2 to Part (Part expected, got nil)')
    assert(Part:isA'BasePart', ('bad argument #2 to Part (Part expected, got %s)'):format(Part.ClassName))
        
    local Distance = (Distance and Distance or 25)
    local Noobs = GetNear(Part, Distance)
    
    for nild, Character in next, Noobs do
        
        local Human = GetHumanoid(Character)
        if Human and not Debounce[Character] then
            -- no clue why they were using spawn but ok...
            
            Debounce[Character] = true
            
            if TakeDamage then
                Human:TakeDamage(Damage)
		        spawn(function()
		            ShowDmg(Damage)
		        end)
            else
		    	Human.Health = Human.Health - Damage
			    spawn(function()
			        ShowDmg(Damage)
                end)
            end
            PlaySound(Human.Torso,1,1,Sounds[math.random(8,12)])
            if Knockback then
            	if KnockbackVelocity == nil then
	                local v = Instance.new("BodyVelocity", Human.Torso)
	                v.maxForce = Vector3.new(1e5,1e5,1e5)
	                v.P = 1e20
	                v.velocity = HM.CFrame.lookVector * Knockback
	                spawn(function()
	                    game:service'Debris':AddItem(v,0.3)
	                end)
	            else
	                local v = Instance.new("BodyVelocity", Human.Torso)
	                v.maxForce = Vector3.new(1e5,1e5,1e5)
	                v.P = 1e20
	                v.velocity = KnockbackVelocity * Knockback
	                spawn(function()
	                    game:service'Debris':AddItem(v,0.3)
	                end)
	            end
            end
            
            coroutine.wrap(function()--spawn(function()
                wait(DebounceTime)
                Debounce[Character] = nil
            end)()--end)
            
        end
    end
    
return
end
--

local function Slash1()
	for i = 1,12 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/7,0,-math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,-math.pi/1.2,-math.pi/2),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(SHW,SHW.C0,shc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.3,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.3,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Sword,1,0.6,Sounds[1])
	for i = 1,15 do
		DamageNear(4,Sword,math.random(5,10),5,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/6,0,-math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(0,0,-0.5) *CFrame.Angles(0,-math.pi/10,-math.pi/2),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(SHW,SHW.C0,shc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
		    lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function Slash2()
	for i = 1,12 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/8),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/1.3,0,math.pi/5),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(SHW,SHW.C0,shc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
		    lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Sword,1,0.8,Sounds[1])
	for i = 1,15 do
		DamageNear(4,Sword,math.random(5,10),5,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/7,0,-math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/38,0,-math.pi/5),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(SHW,SHW.C0,shc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
		    lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function Charge3()
	for i = 1,12 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/6,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.8,0.5,0),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.5,0) *CFrame.Angles(-math.pi/10,0,-math.pi/9),legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.5) *CFrame.Angles(0,0,-math.pi/6),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/6),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(SHW,SHW.C0,shc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
    		lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.8,0.5,0),legspeed)
    		lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.5,0) *CFrame.Angles(-math.pi/10,0,-math.pi/9),legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.8,0.5,0) *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Sword,1,1.2,Sounds[1])
	ChargeAt(50)
	for i = 1,18 do
		DamageNear(4,Sword,math.random(5,11),17,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/3,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,0),legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/3),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/3),speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(1,-2,0) *CFrame.Angles(0,0,-math.pi/1.5),1)
		lerp(SHW,SHW.C0,shc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
		    lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function Shield4()
	for i = 1,14 do
		DamageNear(4,Shield,math.random(7,14),15,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,0,0) *CFrame.Angles(math.pi/2,0,math.pi/8),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/8),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/2),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/2),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(SHW,SHW.C0,shc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
		    lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Shield,1,0.7,Sounds[2])
	ChargeAt(40)
	for i = 1,18 do
		DamageNear(4,Shield,math.random(6,10),15,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/8),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/2),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/2),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(SHW,SHW.C0,shc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
		    lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function SwordStrike()
	local sound = Instance.new("Sound",Sword)
	sound.SoundId = Sounds[5]
	sound.Volume = 1
	sound.Pitch = 0.1
	sound:Play()
	game.Debris:AddItem(sound,10)
	for i = 1,16 do
		sound.Pitch = sound.Pitch +0.05
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,math.pi/8),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/1.15,0,math.pi/7),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(SHW,SHW.C0,shc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
		    lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
		end
		Rwait()
	end
	PlaySound(Sword,1,0.85,Sounds[1])
	damen = true
	for i = 1,18 do
		DamageNear(4,Sword,math.random(14,18),20,0.5)
		if i % 4 == 0 then
		    SwordEff = Sword:Clone()
		    SwordEff.Anchored = true
		    SwordEff.Parent = Char
		    local sphereeff = effect(Sword,BrickColor.new("Toothpaste"),Vector3.new(0.8,3,0.8),SwordEff.CFrame *CFrame.new(0,0.2,0),0,0.2,Vector3.new(0.1,0,0.1),1,nil,"Sphere")
			sphereeff.Material = "Neon"
		    for _,Sounds in pairs(SwordEff:GetChildren()) do
		    	if Sounds.ClassName == "Sound" then
				    SwordEff.Sound:Stop()
				    SwordEff.Sound:Destroy()
				end
			end
			SwordEff.Transparency = 0.25
		end
		game.Debris:AddItem(SwordEff,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/5,0,-math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/5,0,-math.pi/12),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(1,-1,0) *CFrame.Angles(0,0,-math.pi/4),speed)
		lerp(SHW,SHW.C0,shc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
		    lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function SwordsOfChaos()
	for i = 1,16 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/8),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/1.15,0,0),armspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(-0.8,-3,0) *CFrame.Angles(math.pi,0,math.pi/7),1)
		lerp(SHW,SHW.C0,shc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
		    lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
		end
		Rwait()
	end
	damen = true
	Human.WalkSpeed = 0
	local distance = 0
	local Ignore = {}
	local hashit = false
	for i = 1,50 do
		if i == 10 then
			for I_shall,ignore_this in pairs(workspace:GetChildren()) do
				if ignore_this:IsA("Model") then
					if ignore_this:FindFirstChild("Humanoid") then
						for _,ignorepart in pairs(ignore_this:GetChildren()) do
							if ignorepart.ClassName == "Part" then
								table.insert(Ignore,ignorepart)
							end
						end
					end
				end
			end
			local RayC = Ray.new(Sword.Position +Vector3.new(0,1,0),Vector3.new(0,-4,0))
			local Hit,pos = workspace:FindPartOnRayWithIgnoreList(RayC,Ignore)
			if Hit ~= nil and hashit == false then
				hashit = true
				effect(Sword,BrickColor.new("Toothpaste"),Vector3.new(0.4,3,0.4),Sword.CFrame *CFrame.new(0,0.2,0),0,0.1,Vector3.new(0.5,0,0.5),1,nil,"Sphere")
				for i = 1,8 do
					local center = Instance.new("Part",Sword)
					center.Anchored = true
					center.CanCollide = false
					center.Transparency = 1
					center.Size = Vector3.new(1,1,1)
					center.TopSurface = 0
					center.BottomSurface = 0
					center.FrontSurface = "Hinge"
					center.CFrame = CFrame.new(pos) *(HM.CFrame-HM.Position) *CFrame.new(0, 0.5, distance)
					center:BreakJoints()
					game.Debris:AddItem(center,2)
					PlaySound(center,0.4,0.7,Sounds[4])
					local Ignore = {}
					for I_shall,ignore_this in pairs(workspace:GetChildren()) do
						if ignore_this:IsA("Model") then
							if ignore_this:FindFirstChild("Humanoid") then
								for _,ignorepart in pairs(ignore_this:GetChildren()) do
									if ignorepart.ClassName == "Part" then
										table.insert(Ignore,ignorepart)
									end
								end
							end
						end
					end
					local RayC = Ray.new(center.Position,Vector3.new(0,-999,0))
					local Hit,pos = workspace:FindPartOnRayWithIgnoreList(RayC,Ignore)
					if Hit ~= nil and hashit == true then
						for i = 1,5 do
							local groundeff = effect(Sword,Hit.BrickColor,Vector3.new(1.5,1.5,1.5),CFrame.new(pos) *CFrame.new(math.random(-2,2),0,math.random(-2,2)) *CFrame.Angles(math.random(-3600,3600)/10,math.random(-3600,3600)/10,math.random(-3600,3600)/10),0,0,Vector3.new(),1,nil,"Brick")
							groundeff.Material = Hit.Material
						end
						local SwordEff = effect(Sword,BrickColor.new("Medium stone grey"),Vector3.new(0.8,0.8,0.8),CFrame.new(pos),0,0,Vector3.new(),8,"139536155",nil)
						SwordEff.Mesh.TextureId = "rbxassetid://139536467"
						SwordEff.Mesh.Scale = Vector3.new(1,1.25,1)
						PlaySound(SwordEff,0.2,1.5,Sounds[6])
						spawn(function()
							effect(Sword,BrickColor.new("Toothpaste"),Vector3.new(2,6,2),SwordEff.CFrame,0,0.1,Vector3.new(0.1,-0.7,0.1),1,nil,"Sphere")
							damen = true
							for i = 1,80 do
								if i % 5 == 0 then
									effect(Sword,BrickColor.new("Toothpaste"),Vector3.new(2,2,2),SwordEff.CFrame *CFrame.Angles(math.random(-3600,3600)/10,math.random(-3600,3600)/10,math.random(-3600,3600)/10),0,0.25,Vector3.new(-0.2,-0.2,-0.2),0.25,nil,"Brick")
								end
								DamageNear(4,SwordEff,math.random(10,15),30,0.2,Vector3.new(0,1.2,0))
								SwordEff.CFrame = SwordEff.CFrame *CFrame.Angles(0,math.rad(50),0) *CFrame.new(0,0.25,0)
								Rwait()
							end
							SwordEff.Transparency = 1
							PlaySound(SwordEff,0.2,1.7,Sounds[3])
							PlaySound(SwordEff,0.4,1.9,Sounds[4])
							local sphereeff = effect(Sword,BrickColor.new("Toothpaste"),Vector3.new(2/2,6/2,2/2),SwordEff.CFrame,0,0.2,Vector3.new(0.85,0.85,0.85),6,nil,"Sphere")
							sphereeff.Material = "Neon"
							spawn(function()
								for i = 1,30 do
									DamageNear(4,sphereeff,math.random(4,8),30,0.2,center.CFrame.lookVector *0.8)
									Rwait()
								end
							end)
							for i = 1,5 do
								local sphereeff2 = effect(Sword,BrickColor.new("Toothpaste"),Vector3.new(0.2,1,0.2),sphereeff.CFrame *CFrame.Angles(math.random(-3600,3600)/10,math.random(-3600,3600)/10,math.random(-3600,3600)/10),0,0.2,Vector3.new(0,0.8,0),2,nil,"Sphere")
								spawn(function()
									for i = 1,80 do
										sphereeff2.CFrame = sphereeff2.CFrame *CFrame.new(0,2,0)
										Rwait()
									end
								end)
								sphereeff2.Material = "Neon"
								Rwait()
							end
						end)
						distance = distance -4
					end
					Rwait()
				end
			end
		end
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/5,0,-math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/9,0,0),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-1),speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.pi/2),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.new(1,0.5,0),legspeed)
		lerp(HW,HW.C0,hc0 *CFrame.new(1,-1.5,0) *CFrame.Angles(math.pi,0,-math.pi/2.5),1)
		lerp(SHW,SHW.C0,shc0,speed)
		Rwait()
	end
	Human.WalkSpeed = 16
	damen = false
end

local function ThrowingOrbs()
	for i = 1,3 do
		for i = 1,12 do
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/8),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/30,math.pi/2),armspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
			lerp(HW,HW.C0,hc0,1)
			lerp(SHW,SHW.C0,shc0,speed)
			if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
				lerp(WLH,WLH.C0,LHC0,legspeed)
				lerp(WRH,WRH.C0,RHC0,legspeed)
			elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			    lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
				lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			end
			Rwait()
		end
		damen = true
		PlaySound(Sword,1,0.8,Sounds[1])
		for i = 1,16 do
			if i == 14 then
				local balleff = effect(Sword,BrickColor.new("Toothpaste"),Vector3.new(2,2,2),HM.CFrame *CFrame.new(0,0,-5),0,0,Vector3.new(),7,nil,"Sphere")
				local sound = Instance.new("Sound",balleff)
				sound.SoundId = Sounds[6]
				sound.Pitch = 1.73
				sound.Volume = 1
				sound.TimePosition = 0.1
				sound:Play()
				game.Debris:AddItem(sound,10)
				balleff.Anchored = false
				balleff.Material = "Neon"
				local BV = Instance.new("BodyVelocity",balleff)
				BV.maxForce = Vector3.new(1/0,1/0,1/0)
				BV.velocity = HM.CFrame.lookVector *100
				spawn(function()
					if balleff.Parent == nil then
						print("ok")
						for i = 1,3 do
							effect(Sword,BrickColor.new("Toothpaste"),Vector3.new(2,2,2),balleff.CFrame *CFrame.Angles(math.random(-3600,3600)/10,math.random(-3600,3600)/10,math.random(-3600,3600)/10),0,0,Vector3.new(1,1,1),0.25,nil,"Brick")
						end
						for i = 1,5 do
							local explosioneff = effect(Sword,BrickColor.new("Toothpaste"),Vector3.new(0.2,1,0.2),balleff.CFrame *CFrame.Angles(math.random(-3600,3600)/10,math.random(-3600,3600)/10,math.random(-3600,3600)/10),0,0.25,Vector3.new(0,0.8,0),0.25,nil,"Sphere")
							spawn(function()
								for i = 1,10 do
									explosioneff.CFrame = explosioneff.CFrame *CFrame.new(0,1,0)
									Rwait()
								end
							end)
						end
					end
					local dmgbx = balleff.Touched:connect(function(hit)
						if damen == false then return end
						if hit.Parent == Char or hit.Parent == Shield or hit.Parent == Sword then return end
						Damage(hit,math.random(8,15),15)
						damen = false
						for i = 1,3 do
							effect(Sword,BrickColor.new("Toothpaste"),Vector3.new(2,2,2),balleff.CFrame *CFrame.Angles(math.random(-3600,3600)/10,math.random(-3600,3600)/10,math.random(-3600,3600)/10),0,0,Vector3.new(1,1,1),0.25,nil,"Brick")
						end
						for i = 1,5 do
							local explosioneff = effect(Sword,BrickColor.new("Toothpaste"),Vector3.new(0.2,1,0.2),balleff.CFrame *CFrame.Angles(math.random(-3600,3600)/10,math.random(-3600,3600)/10,math.random(-3600,3600)/10),0,0.25,Vector3.new(0,0.8,0),0.25,nil,"Sphere")
							spawn(function()
								for i = 1,10 do
									explosioneff.CFrame = explosioneff.CFrame *CFrame.new(0,1,0)
									Rwait()
								end
							end)
						end
						balleff.Parent = nil
					end)
					while balleff.Parent ~= nil do
						effect(balleff,BrickColor.new("Toothpaste"),Vector3.new(1.3,1.3,1.3),balleff.CFrame *CFrame.new(0,0,2) *CFrame.Angles(math.random(-3600,3600)/10,math.random(-3600,3600)/10,math.random(-3600,3600)/10),0,0.05,Vector3.new(-0.1,-0.1,-0.1),0.55,nil,"Brick")
						Rwait()
					end
					Rwait()
				end)
			end
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(0,0,-0.5) *CFrame.Angles(0,0,-math.pi/8),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/1.3,math.pi/2),armspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/2),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2),speed)
			lerp(HW,HW.C0,hc0 *CFrame.new(-0.8,-3,0) *CFrame.Angles(math.pi,0,math.pi/4),1)
			lerp(SHW,SHW.C0,shc0,speed)
			if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
				lerp(WLH,WLH.C0,LHC0,legspeed)
				lerp(WRH,WRH.C0,RHC0,legspeed)
			elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			    lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
				lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			end
			Rwait()
		end
	end
end

local function Block()
	health = Human.Health
	while blocking == true do
		if Human.Health < health then
			if blocking == true then
				if Human.Health < health then
					damen = true
					print((health-Human.Health)*0.005)
					eenabled = eenabled -(health-Human.Health)*0.005
					Human.Health = health -(health-Human.Health)*0.2
					PlaySound(Shield,1,0.8,Sounds[7])
					local ShieldEff = effect(Shield,BrickColor.new("Medium stone grey"),Shield.Size,Shield.CFrame,0,0.1,Vector3.new(0.1,0.1,0.1),1,"139536383",nil)
					ShieldEff.Mesh.TextureId = "rbxassetid://139536467"
					DamageNear(10,Shield,math.random(10,15),50,1)
					ChargeAt(-25)
					damen = false
					health = Human.Health
					Rwait()
				end
				Rwait()
			end
			Rwait()
		end
		if blocking == false then return end
		if enabled == true then return end
		if eenabled <= 0 then eenabled = 0 return end
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0,0,-0.5) *CFrame.Angles(math.pi/2,0,math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/7,0,math.pi/7),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/4),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/4),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(SHW,SHW.C0,shc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
		    lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
		end
		Rwait()
	end
end

local function ShieldSlam()
	local BV = Instance.new("BodyVelocity",HM)
	BV.maxForce = Vector3.new(0,1/0,0)
	BV.velocity = Vector3.new(0,120,0)
	game.Debris:AddItem(BV,0.3)
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,math.pi/8),armspeed*1.5)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/8,0,math.pi/7),armspeed*1.5)
		lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/10),legspeed*1.5)
		lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.5,0.5,0) *CFrame.Angles(0,0,-math.pi/8),legspeed*1.5)
		lerp(WRJ,WRJ.C0,RJC0,speed*1.5)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/8,0,0),speed*1.5)
		lerp(HW,HW.C0,hc0,speed*1.5)
		lerp(SHW,SHW.C0,shc0,speed*1.5)
		Rwait()
	end
	for i = 0,1,0.1 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/7,0,math.pi/7),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(math.pi*i*2,0,0) *CFrame.Angles(0,0,-math.pi/4),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/4),speed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.new(-1,0.5,0) *CFrame.Angles(0,0,math.pi/4),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.new(1,0.5,0) *CFrame.Angles(0,0,-math.pi/4),legspeed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(SHW,SHW.C0,shc0,speed)
		Rwait()
	end
	local Ignore = {}
	local hashit = false
	local distance = 0
	Human.WalkSpeed = 0
	for i = 1,100 do
		if i >= 10 then
			for I_shall,ignore_this in pairs(workspace:GetChildren()) do
				if ignore_this:IsA("Model") then
					if ignore_this:FindFirstChild("Humanoid") then
						for _,ignorepart in pairs(ignore_this:GetChildren()) do
							if ignorepart.ClassName == "Part" then
								table.insert(Ignore,ignorepart)
							end
						end
					end
				end
			end
			local RayC = Ray.new(Shield.Position,Vector3.new(0,-2,0))
			local Hit,pos = workspace:FindPartOnRayWithIgnoreList(RayC,Ignore)
			if Hit ~= nil and hashit == false then
				hashit = true
				for i = 1,8 do
					local center = Instance.new("Part",Sword)
					center.Anchored = true
					center.CanCollide = false
					center.Transparency = 1
					center.Size = Vector3.new(1,1,1)
					center.TopSurface = 0
					center.BottomSurface = 0
					center.FrontSurface = "Hinge"
					center.CFrame = CFrame.new(pos) *(HM.CFrame-HM.Position) *CFrame.new(0, 0.5, distance)
					center:BreakJoints()
					game.Debris:AddItem(center,2)
					PlaySound(center,0.4,0.7,Sounds[4])
					local Ignore = {}
					for I_shall,ignore_this in pairs(workspace:GetChildren()) do
						if ignore_this:IsA("Model") then
							if ignore_this:FindFirstChild("Humanoid") then
								for _,ignorepart in pairs(ignore_this:GetChildren()) do
									if ignorepart.ClassName == "Part" then
										table.insert(Ignore,ignorepart)
									end
								end
							end
						end
					end
					damen = true
					local RayC = Ray.new(center.Position,Vector3.new(0,-999,0))
					local Hit,pos = workspace:FindPartOnRayWithIgnoreList(RayC,Ignore)
					if Hit ~= nil and hashit == true then
						for i = 1,5 do
							local groundeff = effect(Shield,Hit.BrickColor,Vector3.new(2,2,2),CFrame.new(pos) *CFrame.new(math.random(-10,10),0,math.random(-10,10)) *CFrame.Angles(math.random(-3600,3600)/10,math.random(-3600,3600)/10,math.random(-3600,3600)/10),0,0,Vector3.new(),1,nil,"Brick")
							groundeff.Material = Hit.Material
						end
						effect(Shield,Hit.BrickColor,Vector3.new(1,1,1),CFrame.new(pos) +Vector3.new(0,0.75,0),0,0.1,Vector3.new(0.5*2,0.75*2,0.5*2),1,Meshes.Crown,nil)
						spawn(function()
							for i = 1,30 do
								DamageNear(20,center,math.random(5,11),10,0.5)
								Rwait()
							end
						end)
						distance = distance -4
					end
					Rwait(5)
				end
			end
		end
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0,-1.5,0) *CFrame.Angles(math.pi/2,0,math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/7,0,math.pi/7),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-1) *CFrame.Angles(0,0,-math.pi/4),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/4),speed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.new(0.2,0.5,0) *CFrame.Angles(0,math.pi/4,math.pi/4),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.7,0.5,0) *CFrame.Angles(0,math.pi/4,-math.pi/4),legspeed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(SHW,SHW.C0,shc0,speed)
		Rwait()
	end
	Human.WalkSpeed = 16
	damen = false
end

local click = mouse.Button1Down:connect(function()
	if on == false then return end
	if enabled == false then return end
	if combo == 1 and enabled == true then
		enabled = false
		Slash1()
		enabled = true
		combo = 2
		coroutine.wrap(function()
			Rwait(400)
			if combo ~= 1 and enabled == true then
				combo = 1
			end
		end)()
	elseif combo == 2 and enabled == true then
		enabled = false
		Slash2()
		enabled = true
		combo = 3
		coroutine.wrap(function()
			Rwait(400)
			if combo ~= 1 and enabled == true then
				combo = 1
			end
		end)()
	elseif combo == 3 and enabled == true then
		enabled = false
		Charge3()
		enabled = true
		combo = 4
		coroutine.wrap(function()
			Rwait(400)
			if combo ~= 1 and enabled == true then
				combo = 1
			end
		end)()
	elseif combo == 4 and enabled == true then
		enabled = false
		Shield4()
		enabled = true
		combo = 1
	end
end)
local keys = mouse.KeyDown:connect(function(key)
	key = key:lower()
	if enabled == false then return end
	if key == "z" and on == true and enabled == true and zenabled == 1 then
		zenabled = 0
		enabled = false
		SwordStrike()
		enabled = true
	elseif key == "x" and on == true and enabled == true and xenabled == 1 then
		xenabled = 0
		enabled = false
		SwordsOfChaos()
		enabled = true
	elseif key == "c" and on == true and enabled == true and cenabled == 1 then
		cenabled = 0
		enabled = false
		ThrowingOrbs()
		enabled = true
	elseif key == "v" and on == true and enabled == true and venabled == 1 then
    	venabled = 0
		enabled = false
		ShieldSlam()
		enabled = true
	elseif key == "e" and on == true and enabled == true and eenabled == 1 then
		if blocking == false then
			if eenabled <= 0.5 then return end
			enabled = false
			blocking = true
			Block()
			Rwait(0.2)
			enabled = true
		end
	end
end)

local keysup = mouse.KeyUp:connect(function(key2)
	if key2 == "e" then
		blocking = false
	end
end)

local function Cast(Pos,Dir,Amp,IgnoreList)
	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit*Amp), IgnoreList) 
end

while true do
	local surface = Cast(HM.Position,(CFrame.new(HM.Position,HM.Position - Vector3.new(0,1,0))).lookVector,4,Char)
	if zenabled < 1 then
		zenabled = zenabled +0.01 *0.25
	else
		zenabled = 1
	end
	if xenabled < 1 then
		xenabled = xenabled +0.01 *0.175
	else
		xenabled = 1
	end
	if cenabled < 1 then
		cenabled = cenabled +0.01 *0.15
	else
		cenabled = 1
	end
	if eenabled < 1 then
		if blocking == false then
			eenabled = eenabled +0.01 *0.27
		end
	else
		eenabled = 1
	end
	if venabled < 1 then
		venabled = venabled +0.01 *0.1
	else
		venabled = 1
	end
	skill1text.Text = "[Z] \n Sword Strike"
	skill2text.Text = "[X] \n Swords of Chaos"
	skill3text.Text = "[C] \n Throwing Orbs"
	skill4text.Text = "[V] \n Shield Slam"
	skill5text.Text = "[E] \n Block"
	skill1img:TweenSize(UDim2.new(zenabled,0,1,0))
	skill2img:TweenSize(UDim2.new(xenabled,0,1,0))
	skill3img:TweenSize(UDim2.new(cenabled,0,1,0))
	skill4img:TweenSize(UDim2.new(venabled,0,1,0))
	skill5img:TweenSize(UDim2.new(eenabled,0,1,0))
	if on == true then
		angle = (angle % 100) +anglespeed/10
		armangle = (armangle % 100) +armanglespeed/10
		legangle = (legangle % 100) +leganglespeed/10
		if action == "Idle" and enabled == true and surface ~= nil then
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(0,-math.cos(angle*0.25)*0.05,0) *CFrame.Angles(math.pi/2+math.cos(angle*0.25)*0.05,0,math.pi/8+math.cos(angle*0.25)*0.05),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(0,-math.cos(angle*0.25)*0.05,0) *CFrame.Angles(math.cos(angle*0.25)*0.15,0,math.pi/7-math.cos(angle*0.25)*0.05),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0.4,0.2+math.cos(legangle*0.25)*0.1,0) *CFrame.Angles(0,math.pi/4,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(-0.4,0.2+math.cos(legangle*0.25)*0.1,0) *CFrame.Angles(0,-math.pi/8,0),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.2-math.cos(angle*0.25)*0.1) *CFrame.Angles(0,0,-math.pi/8),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.sin(angle*0.25)*0.05,0,math.pi/8),speed)
			lerp(HW,HW.C0,hc0,speed)
			lerp(SHW,SHW.C0,shc0,speed)
		end
		if action == "Walk" and enabled == true and surface ~= nil then
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(0,-math.cos(armangle*0.25)*0.05,0) *CFrame.Angles(math.pi/2-math.cos(angle*0.25)*0.05,0,math.pi/7-math.cos(angle*0.25)*0.15),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(0,-math.cos(armangle*0.25)*0.05,0) *CFrame.Angles(math.pi/3.5+math.cos(angle*0.25)*0.05,0,math.pi/4-math.cos(angle*0.25)*0.15),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,-math.cos(legangle*0.25)*0.05,0) *CFrame.new(0.5,0.25+math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,math.pi/4,0) *CFrame.Angles(0,0,math.pi/10+math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,-math.cos(legangle*0.25)*0.05,0) *CFrame.new(0.5,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.15,0) *CFrame.Angles(0,math.pi/4,0) *CFrame.Angles(0,0,-math.pi/10+math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.25+math.cos(angle*0.25)*0.05) *CFrame.Angles(math.pi/10,HM.RotVelocity.Y/40,-math.pi/4),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/4) *CFrame.Angles(-math.pi/10+math.sin(angle*Human.WalkSpeed/16*0.25)*0.1,0,0),speed)
			lerp(HW,HW.C0,hc0,speed)
			lerp(SHW,SHW.C0,shc0,speed)
		end
		if HM.Velocity.Y >= 5 and enabled == true and surface == nil then
			action = "Jump"
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.7,0,math.pi/8),armspeed*1.5)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/7,0,math.pi/7),armspeed*1.5)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/10),legspeed*1.5)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.5,0.5,0) *CFrame.Angles(0,0,-math.pi/8),legspeed*1.5)
			lerp(WRJ,WRJ.C0,RJC0,speed*1.5)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/8,0,0),speed*1.5)
			lerp(HW,HW.C0,hc0,speed*1.5)
			lerp(SHW,SHW.C0,shc0,speed*1.5)
			Rwait()
		elseif HM.Velocity.Y <= -5 and enabled == true and surface == nil then
			action = "Fall"
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/3,0,math.pi/8),armspeed*1.5)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/9,0,math.pi/7),armspeed*1.5)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/7),legspeed*1.5)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.5,0,0) *CFrame.Angles(0,0,math.pi/8),legspeed*1.5)
			lerp(WRJ,WRJ.C0,RJC0,speed*1.5)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/5,0,0),speed*1.5)
			lerp(HW,HW.C0,hc0,speed*1.5)
			lerp(SHW,SHW.C0,shc0,speed*1.5)
			Rwait()
		end
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude <= 2 then
			action = "Idle"
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			action = "Walk"
		end
	end
	Rwait()
end