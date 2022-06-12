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
local buff = false
local zenabled = 0
local xenabled = 0
local cenabled = 0
local venabled = 0
local eenabled = 0
local Debounce = {}
local TakeDamage = false
local idle = 0
local combo = 1
local Player = game.Players.LocalPlayer
local mouse = Player:GetMouse()
local Char = Player.Character

local Character = Char
local Human = Char.Humanoid
local Sounds = {"rbxassetid://234365549","rbxassetid://200632211","rbxassetid://136007472","rbxassetid://136523485","rbxassetid://163619849","rbxassetid://240517975","rbxassetid://233856154","rbxassetid://401057781","rbxassetid://401057825","rbxassetid://401057895","rbxassetid://199149186","rbxasseid://199149269"}
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
skill1text.Text = "[Z] \n Deafen"
skill1text.TextWrapped = true
skill1text.TextScaled = true
skill1text.Font = "Antique"
skill1text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill1img = Instance.new("ImageLabel",skill1)
skill1img.Size = UDim2.new(0,0,1,0)
skill1img.Image = "rbxassetid://48965808"
skill1img.BackgroundColor3 = BrickColor.new("Bright red").Color
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
skill2text.Text = "[X] \n Sax Slam"
skill2text.TextWrapped = true
skill2text.TextScaled = true
skill2text.Font = "Antique"
skill2text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill2img = Instance.new("ImageLabel",skill2)
skill2img.Size = UDim2.new(0,0,1,0)
skill2img.Image = "rbxassetid://48965808"
skill2img.BackgroundColor3 = BrickColor.new("Bright red").Color
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
skill3text.Text = "[C] \n Summon Memes"
skill3text.TextWrapped = true
skill3text.TextScaled = true
skill3text.Font = "Antique"
skill3text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill3img = Instance.new("ImageLabel",skill3)
skill3img.Size = UDim2.new(0,0,1,0)
skill3img.Image = "rbxassetid://48965808"
skill3img.BackgroundColor3 = BrickColor.new("Bright red").Color
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
skill4text.Text = "[V] \n Multi Sax"
skill4text.TextWrapped = true
skill4text.TextScaled = true
skill4text.Font = "Antique"
skill4text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill4img = Instance.new("ImageLabel",skill4)
skill4img.Size = UDim2.new(0,0,1,0)
skill4img.Image = "rbxassetid://48965808"
skill4img.BackgroundColor3 = BrickColor.new("Bright red").Color
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
skill5text.Text = "[E] \n Endure"
skill5text.TextWrapped = true
skill5text.TextScaled = true
skill5text.Font = "Antique"
skill5text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill5img = Instance.new("ImageLabel",skill5)
skill5img.Size = UDim2.new(0,0,1,0)
skill5img.Image = "rbxassetid://48965808"
skill5img.BackgroundColor3 = BrickColor.new("Bright red").Color

local Sax = Instance.new("Part",Char)
Sax.Name = "Saxophone"
Sax.CanCollide = false
Sax.Locked = true
Sax.Size = Vector3.new(0.61,2.19,3.75)
Sax.CustomPhysicalProperties = noweightprop
local SaxMesh = Instance.new("SpecialMesh",Sax)
SaxMesh.MeshId = "rbxassetid://44410178"
SaxMesh.TextureId = "rbxassetid://44410320"
SaxMesh.Scale = Vector3.new(2,2,3)
SaxWeld = Instance.new("Weld",T)
SaxWeld.Part0 = RA
SaxWeld.Part1 = Sax

HW = SaxWeld
hc0 = SaxWeld.C0 *CFrame.new(-0.2,-1.15,0)
HW.C0 = hc0

if Char:FindFirstChild("Shirt") ~= nil then
    Char.Shirt:Destroy()
    Instance.new("Shirt",Char).ShirtTemplate = "rbxassetid://538879879"
else
    Instance.new("Shirt",Char).ShirtTemplate = "rbxassetid://538879879"
end

if Char:FindFirstChild("Pants") ~= nil then
    Char.Pants:Destroy()
    Instance.new("Pants",Char).PantsTemplate = "rbxassetid://538879936"
else
    Instance.new("Pants",Char).PantsTemplate = "rbxassetid://538879936"
end

for _,v in pairs(Char:GetChildren()) do
    if v.ClassName == "CharacterMesh" then
        v:Destroy()
    end
    if v.ClassName == "Accessory" then
    	v:Destroy()
    end
end

local hair = Instance.new("Part",Char)
hair.Name = "Hair"
hair.CanCollide = false
hair.Size = Vector3.new(1.2, 1, 1.6)
hair.BrickColor = BrickColor.new("Really black")
local hairmesh = Instance.new("SpecialMesh",hair)
hairmesh.MeshId = "rbxassetid://74878559"
hairmesh.TextureId = "rbxassetid://75976712"
hairmesh.Scale = Vector3.new(1.05,1,1.05)
hairmesh.VertexColor = Vector3.new(0.1,0.1,0.1)
local hairweld = Instance.new("Weld",hair)
hairweld.Part0 = Head
hairweld.Part1 = hair
hairweld.C0 = CFrame.new(0,0.5,0)

local la = Instance.new("CharacterMesh",Char)
la.MeshId = "279174949"
la.BodyPart = "LeftArm"
local ll = Instance.new("CharacterMesh",Char)
ll.MeshId = "319336109"
ll.BodyPart = "LeftLeg"
local ra = Instance.new("CharacterMesh",Char)
ra.MeshId = "279174886"
ra.BodyPart = "RightArm"
local rl = Instance.new("CharacterMesh",Char)
rl.MeshId = "319336155"
rl.BodyPart = "RightLeg"
local t = Instance.new("CharacterMesh",Char)
t.MeshId = "376169183"
t.BodyPart = "Torso"

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
	end
	return Sound
end

local song = PlaySound(Head,0.5,1,"rbxassetid://569707122",true)

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
		    	if buff == true then
	                hum:TakeDamage(mm*2)
			        spawn(function()
			            ShowDmg(mm*2)
            		end)
        		elseif buff == false then
	                hum:TakeDamage(mm)
			        spawn(function()
			            ShowDmg(mm)
            		end)
        		end
	        elseif TakeDamage == false then
		    	if buff == true then
	                hum.Health = hum.Health - mm*2
			        spawn(function()
			            ShowDmg(mm*2)
            		end)
        		elseif buff == false then
	                hum.Health = hum.Health - mm
			        spawn(function()
			            ShowDmg(mm)
            		end)
            	end
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
    
function DamageNear(Distance, Part, Damage, Knockback, DebounceTime, KnockbackVelocity, Destroy)
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
            	if buff == true then
            		Human:TakeDamage(Damage*2)
            		 spawn(function()
				        ShowDmg(Damage*2)
	                end)
            	elseif buff == false then
            		Human:TakeDamage(Damage)
            		 spawn(function()
				        ShowDmg(Damage)
	                end)
            	end
		        spawn(function()
		            ShowDmg(Damage)
		        end)
            else
            	if buff == true then
            		Human.Health = Human.Health - Damage*2
            		 spawn(function()
				        ShowDmg(Damage*2)
	                end)
            	elseif buff == false then
            		Human.Health = Human.Health - Damage
				    spawn(function()
				        ShowDmg(Damage)
	                end)
            	end
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
    		if Destroy == true then
        		Part:Destroy()
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
    for i = 1,13 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(1.5,0,-0.3) *CFrame.Angles(0,math.pi/9,math.pi/2),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-1.5,0,-0.4) *CFrame.Angles(0,-math.pi/1.4,-math.pi/2),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/3),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/3),speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(0,1,-2) *CFrame.Angles(math.pi/5,0,0),speed)
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
	PlaySound(Sax,1,0.6,Sounds[1])
	for i = 1,15 do
		DamageNear(3.25,Sax,math.random(5,10),5,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,0,0.45) *CFrame.Angles(0,-math.pi/2*-i/5,math.pi/2),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-2.5,0,0) *CFrame.Angles(0,math.pi/6*i/4,-math.pi/2),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/3),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/3),speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(0,0.25,-1) *CFrame.Angles(math.pi/10,0,0),speed)
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
    for i = 1,14 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(2.3,0.2,0.2) *CFrame.Angles(math.pi/1.1,0,math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(0.2,0,0) *CFrame.Angles(math.pi/1.1,0,math.pi/10),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/3),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/3),speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(0,1,-2) *CFrame.Angles(math.pi/5,0,0),speed)
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
	PlaySound(Sax,1,0.7,Sounds[1])
	for i = 1,15 do
		DamageNear(3.25,Sax,math.random(5,10),5,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(1,0.2,-0.5) *CFrame.Angles(math.pi/9,0,math.pi/10),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0,-0.7) *CFrame.Angles(math.pi/6,0,-math.pi/7),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/7),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/7),speed)
		lerp(HW,HW.C0,hc0 *CFrame.Angles(-math.pi/5,0,0) *CFrame.new(0,-0.2,-2),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.3,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1+math.sin(legangle*Human.WalkSpeed/16)*0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.3,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*Human.WalkSpeed/16)*0.75)),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function Spin3()
    for i = 1,13 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(1.5,0,-0.3) *CFrame.Angles(0,math.pi/6,math.pi/2),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-1.5,0,-0.5) *CFrame.Angles(0,-math.pi/1.4,-math.pi/2),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/3),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/3),speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(0,1,-2) *CFrame.Angles(math.pi/5,0,0),speed)
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
	for i = 1,3 do
	PlaySound(Sax,1,0.5,Sounds[1])
        for i = 0,1,0.1 do
            DamageNear(3.25,Sax,math.random(5,10),5,0.25)
    		lerp(WLS,WLS.C0,LSC0 *CFrame.new(1.9,-0.05,-0.4) *CFrame.Angles(0,math.pi/4,math.pi/2),armspeed)
    		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.2,0,0) *CFrame.Angles(0,-math.pi/1.4,-math.pi/2),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/4),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/4),legspeed)
    		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi*i*2) *CFrame.Angles(math.pi/9,0,0),speed)
    		lerp(Neck,Neck.C0,NC0,speed)
    		lerp(HW,HW.C0,hc0 *CFrame.new(0,-1.2,-1) *CFrame.Angles(-math.pi/5,0,0),speed)
    		Rwait()
    	end
    end
	damen = false
end


local function Deafen()
	Human.WalkSpeed = 0
    for i = 1,14 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.3,0,-0.65) *CFrame.Angles(math.pi/3,0,math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.2,0,-0.65) *CFrame.Angles(math.pi/3,0,-math.pi/4),armspeed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.pi/15,0,0),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(-math.pi/15,0,0),legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/5,0,0),speed)
		lerp(HW,HW.C0,hc0 *CFrame.Angles(math.pi,0,-math.pi/4) *CFrame.new(0,-0.2,-1.5),speed)
		Rwait()
	end
	damen = true
	local s = PlaySound(Sax,5,math.random(60,180)/100,"rbxassetid://146983123")
	s.TimePosition = 2
    for i = 1,30 do
    	if i == 10 then
			ringeff = effect(Sax,BrickColor.new("Institutional white"),Vector3.new(10,10,10),HM.CFrame *CFrame.new(0,0,-3),0,0.01,Vector3.new(),15,Meshes.Ring,nil)
			ringeff.Size = ringeff.Mesh.Scale
			ringeff.Anchored = false
			local BV = Instance.new("BodyVelocity",ringeff)
			BV.maxForce = Vector3.new(1/0,1/0,1/0)
			BV.velocity = HM.CFrame.lookVector *80
			game.Debris:AddItem(s,1)
			spawn(function()
				while ringeff.Parent ~= nil do
					DamageNear(11,ringeff,math.random(10,15),15,0.25)
					Rwait()
				end
			end)
    	end
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.3,0.1,-0.65) *CFrame.Angles(math.pi/2,0,math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.2,0.1,-0.65) *CFrame.Angles(math.pi/2,0,-math.pi/4),armspeed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.pi/15,0,0),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(-math.pi/15,0,0),legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(HW,HW.C0,hc0 *CFrame.Angles(math.pi,0,-math.pi/4) *CFrame.new(0,-0.2,-1.8),speed)
		Rwait()
	end
	Human.WalkSpeed = 16
	damen = false
end

local function SaxSlam()
	Human.WalkSpeed = 0
    for i = 1,14 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(2.3,0.5,0.2) *CFrame.Angles(math.pi/1.1,0,math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(0.2,0.25,0) *CFrame.Angles(math.pi/1.1,0,math.pi/10),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(HW,HW.C0,hc0 *CFrame.Angles(0,math.pi/10,0) *CFrame.new(0,-0.3,-2),speed)
		Rwait()
	end
	damen = true
	PlaySound(Sax,1,0.7,Sounds[1])
	local hashit = false
	local Ignore = {}
	for i = 1,30 do
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
			local RayC = Ray.new(Sax.Position +Vector3.new(0,2,0),Vector3.new(0,-5.1,0))
			local Hit,pos = workspace:FindPartOnRayWithIgnoreList(RayC,Ignore)
			if Hit ~= nil and hashit == false then
				hashit = true
				PlaySound(Sax,1,0.875,Sounds[4])
				local explosioneff = effect(Sax,Hit.BrickColor,Vector3.new(0.5,0.5,0.5),CFrame.new(pos),0,0.05,Vector3.new(0.3,0.5,0.3),2,Meshes.Blast,nil)
				DamageNear(8,explosioneff,math.random(15,20),10,0.25,Vector3.new(0,2.5,0))
			end
		end
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(1,0,-0.5) *CFrame.Angles(math.pi/9,0,math.pi/10),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0,-0.7) *CFrame.Angles(math.pi/9,0,-math.pi/7),armspeed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.pi/2),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.8,2,0),legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-2),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/7,0,0),speed)
		lerp(HW,HW.C0,hc0 *CFrame.Angles(-math.pi/9,0,math.pi/7) *CFrame.new(0,0,-2),speed)
		Rwait()
	end
	Human.WalkSpeed = 16
	damen = false
end

local function Endure()
	spawn(function()
		buff = true
		effect(HM,BrickColor.White(),Vector3.new(0.5,0.5,0.5),HM.CFrame,0,0.05,Vector3.new(0.3,0.5,0.3),2,Meshes.Blast,nil)
		local glasses = Instance.new("Part",Head)
		glasses.CanCollide = false
		glasses.TopSurface = 10
		glasses.BottomSurface = 10
		glasses.Size = Vector3.new(1.4, 0.6, 1.4)
		local glassesmesh = Instance.new("SpecialMesh",glasses)
		glassesmesh.MeshId = "rbxassetid://121910245"
		glassesmesh.TextureId = "rbxassetid://182196075"
		glassesmesh.Scale = Vector3.new(0.7,0.7,0.7)
		local glassesweld = Instance.new("Weld",glasses)
		glassesweld.Part0 = Head
		glassesweld.Part1 = glasses
		glassesweld.C0 = CFrame.new(0,0.1,-0.05)
		PlaySound(glasses,1,0.7,"rbxassetid://181004943")
		PlaySound(glasses,0.3,1,"rbxassetid://195737599")
		PlaySound(glasses,0.7,1,"rbxassetid://362846090")
		for i = 0,1,0.1 do
			song.Pitch = song.Pitch -0.1
			Rwait()
		end
		local song2 = PlaySound(Head,0.8,0,"rbxassetid://183826663",true)
		song2.TimePosition = 10
		spawn(function()
			for i = 0,1,0.1 do
				song2.Pitch = i
				Rwait()
			end
		end)
		for i = 0,240,1 do
			local saxeff = effect(Sax,BrickColor.new("Medium stone grey"),Sax.Size,Sax.CFrame,0,0.15,Vector3.new(-0.05,-0.05,-0.05),0.5,"44410178",nil)
			saxeff.Mesh.Scale = SaxMesh.Scale
			saxeff.Mesh.TextureId = SaxMesh.TextureId
			local glasseseff = effect(Sax,BrickColor.new("Medium stone grey"),glasses.Size,glasses.CFrame,0,0.15,Vector3.new(0.05,0.05,0.05),0.5,"121910245",nil)
			glasseseff.Mesh.Scale = glassesmesh.Scale
			glasseseff.Mesh.TextureId = glassesmesh.TextureId
			Rwait(2.5)
		end
		spawn(function()
			for i = 0,1,0.1 do
				song2.Pitch = song2.Pitch -0.1
				Rwait()
			end
		end)
		song2:Destroy()
		glasses:Destroy()
		spawn(function()
			for i = 0,1,0.1 do
				song.Pitch = i
				Rwait()
			end
		end)
		PlaySound(Head,1,0.7,"rbxassetid://231107923")
		buff = false
		effect(HM,BrickColor.White(),Vector3.new(3,5,3),HM.CFrame,0,0.05,Vector3.new(-0.1,-0.1,-0.1),2,Meshes.Blast,nil)
	end)
end

local function SummonMemes()
	PlaySound(Sax,1,10,"rbxassetid://128912290")
    for i = 1,14 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/9),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/4),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/4),speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(0,0.1,0),speed)
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
	local meme = effect(Char,BrickColor.White(),Vector3.new(3,3,3),HM.CFrame *CFrame.Angles(0,math.rad(45),0) *CFrame.new(0,0,-5),0,0,Vector3.new(),40,nil,"Brick")
	meme.Anchored = false
	local memep = Instance.new("ParticleEmitter",meme)
	memep.Rate = 5
	memep.Texture = "rbxassetid://48308661"
	local RP = Instance.new("RocketPropulsion",meme)
	spawn(function()
		while meme.Parent ~= nil do
			DamageNear(3,meme,math.random(6,10),0,0.5,nil,true)
			for i,v in pairs(workspace:GetChildren()) do
				if v.ClassName == "Model" and v ~= Char then
					local hum = GetHumanoid(v)
					if hum ~= nil and hum.Torso ~= nil then
						local Mag = (meme.CFrame.p - hum.Torso.CFrame.p).magnitude
						if Mag <= 30 then
							RP.Target = hum.Torso
							RP:Fire()
						end
					end
				end
			end
			Rwait()
		end
	end)
	local meme = effect(Char,BrickColor.White(),Vector3.new(3,3,3),HM.CFrame *CFrame.Angles(0,math.rad(45*2),0) *CFrame.new(0,0,-5),0,0,Vector3.new(),40,nil,"Brick")
	meme.Anchored = false
	local memep = Instance.new("ParticleEmitter",meme)
	memep.Rate = 5
	memep.Texture = "rbxassetid://487518317"
	local RP = Instance.new("RocketPropulsion",meme)
	spawn(function()
		while meme.Parent ~= nil do
			DamageNear(3,meme,math.random(6,10),0,10)
			for i,v in pairs(workspace:GetChildren()) do
				if v.ClassName == "Model" and v ~= Char then
					local hum = GetHumanoid(v)
					if hum ~= nil and hum.Torso ~= nil then
						local Mag = (meme.CFrame.p - hum.Torso.CFrame.p).magnitude
						if Mag <= 30 then
							RP.Target = hum.Torso
							RP:Fire()
						end
					end
				end
			end
			Rwait()
		end
	end)
	local meme = effect(Char,BrickColor.White(),Vector3.new(3,3,3),HM.CFrame *CFrame.Angles(0,math.rad(45*3),0) *CFrame.new(0,0,-5),0,0,Vector3.new(),40,nil,"Brick")
	meme.Anchored = false
	local memep = Instance.new("ParticleEmitter",meme)
	memep.Rate = 5
	memep.Texture = "rbxassetid://286279066"
	local RP = Instance.new("RocketPropulsion",meme)
	spawn(function()
		while meme.Parent ~= nil do
			DamageNear(3,meme,math.random(6,10),0,10)
			for i,v in pairs(workspace:GetChildren()) do
				if v.ClassName == "Model" and v ~= Char then
					local hum = GetHumanoid(v)
					if hum ~= nil and hum.Torso ~= nil then
						local Mag = (meme.CFrame.p - hum.Torso.CFrame.p).magnitude
						if Mag <= 30 then
							RP.Target = hum.Torso
							RP:Fire()
						end
					end
				end
			end
			Rwait()
		end
	end)
	local meme = effect(Char,BrickColor.White(),Vector3.new(3,3,3),HM.CFrame *CFrame.Angles(0,math.rad(45*4),0) *CFrame.new(0,0,-5),0,0,Vector3.new(),40,nil,"Brick")
	meme.Anchored = false
	local memep = Instance.new("ParticleEmitter",memep)
	memep.Rate = 5
	memep.Texture = "rbxassetid://148989069"
	local RP = Instance.new("RocketPropulsion",meme)
	spawn(function()
		while meme.Parent ~= nil do
			DamageNear(3,meme,math.random(6,10),0,10)
			for i,v in pairs(workspace:GetChildren()) do
				if v.ClassName == "Model" and v ~= Char then
					local hum = GetHumanoid(v)
					if hum ~= nil and hum.Torso ~= nil then
						local Mag = (meme.CFrame.p - hum.Torso.CFrame.p).magnitude
						if Mag <= 30 then
							RP.Target = hum.Torso
							RP:Fire()
						end
					end
				end
			end
			Rwait()
		end
	end)
	local meme = effect(Char,BrickColor.White(),Vector3.new(3,5,3),HM.CFrame *CFrame.Angles(0,math.rad(45*5),0) *CFrame.new(0,0,-5),0,0,Vector3.new(),40,nil,"Brick")
	meme.Anchored = false
	local memep = Instance.new("ParticleEmitter",memep)
	memep.Rate = 5
	memep.Texture = "rbxassetid://210744859"
	local RP = Instance.new("RocketPropulsion",meme)
	spawn(function()
		while meme.Parent ~= nil do
			DamageNear(3,meme,math.random(6,10),0,10)
			for i,v in pairs(workspace:GetChildren()) do
				if v.ClassName == "Model" and v ~= Char then
					local hum = GetHumanoid(v)
					if hum ~= nil and hum.Torso ~= nil then
						local Mag = (meme.CFrame.p - hum.Torso.CFrame.p).magnitude
						if Mag <= 30 then
							RP.Target = hum.Torso
							RP:Fire()
						end
					end
				end
			end
			Rwait()
		end
	end)
	local meme = effect(Char,BrickColor.White(),Vector3.new(3,3,3),HM.CFrame *CFrame.Angles(0,math.rad(45*6),0) *CFrame.new(0,0,-5),0,0,Vector3.new(),40,nil,"Brick")
	meme.Anchored = false
	local memep = Instance.new("ParticleEmitter",meme)
	memep.Rate = 5
	memep.Texture = "rbxassetid://569577148"
	local RP = Instance.new("RocketPropulsion",meme)
	spawn(function()
		while meme.Parent ~= nil do
			DamageNear(3,meme,math.random(6,10),0,10)
			for i,v in pairs(workspace:GetChildren()) do
				if v.ClassName == "Model" and v ~= Char then
					local hum = GetHumanoid(v)
					if hum ~= nil and hum.Torso ~= nil then
						local Mag = (meme.CFrame.p - hum.Torso.CFrame.p).magnitude
						if Mag <= 30 then
							RP.Target = hum.Torso
							RP:Fire()
						end
					end
				end
			end
			Rwait()
		end
	end)
	local meme = effect(Char,BrickColor.White(),Vector3.new(3,3,3),HM.CFrame *CFrame.Angles(0,math.rad(45*7),0) *CFrame.new(0,0,-5),0,0,Vector3.new(),40,nil,"Brick")
	meme.Anchored = false
	local memep = Instance.new("ParticleEmitter",memep)
	memep.Rate = 5
	memep.Texture = "rbxassetid://472697717"
	local RP = Instance.new("RocketPropulsion",meme)
	spawn(function()
		while meme.Parent ~= nil do
			DamageNear(3,meme,math.random(6,10),0,10)
			for i,v in pairs(workspace:GetChildren()) do
				if v.ClassName == "Model" and v ~= Char then
					local hum = GetHumanoid(v)
					if hum ~= nil and hum.Torso ~= nil then
						local Mag = (meme.CFrame.p - hum.Torso.CFrame.p).magnitude
						if Mag <= 30 then
							RP.Target = hum.Torso
							RP:Fire()
						end
					end
				end
			end
			Rwait()
		end
	end)
	local meme = effect(Char,BrickColor.White(),Vector3.new(3,3,3),HM.CFrame *CFrame.Angles(0,math.rad(45*8),0) *CFrame.new(0,0,-5),0,0,Vector3.new(),40,nil,"Brick")
	meme.Anchored = false
	local memep = Instance.new("ParticleEmitter",meme)
	memep.Rate = 5
	memep.Texture = "rbxassetid://68774965"
	local RP = Instance.new("RocketPropulsion",meme)
	spawn(function()
		while meme.Parent ~= nil do
			DamageNear(3,meme,math.random(6,10),0,10)
			for i,v in pairs(workspace:GetChildren()) do
				if v.ClassName == "Model" and v ~= Char then
					local hum = GetHumanoid(v)
					if hum ~= nil and hum.Torso ~= nil then
						local Mag = (meme.CFrame.p - hum.Torso.CFrame.p).magnitude
						if Mag <= 30 then
							RP.Target = hum.Torso
							RP:Fire()
						end
					end
				end
			end
			Rwait()
		end
	end)
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
		Spin3()
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
		Deafen()
		enabled = true
	elseif key == "x" and on == true and enabled == true and xenabled == 1 then
		xenabled = 0
		enabled = false
		SaxSlam()
		enabled = true
	elseif key == "c" and on == true and enabled == true and cenabled == 1 then
		cenabled = 0
		enabled = false
		SummonMemes()
		enabled = true
	elseif key == "v" and on == true and enabled == true and venabled == 1 then
		venabled = 0
		enabled = false
		--MultiSax()
		enabled = true
	elseif key == "e" and on == true and enabled == true and eenabled == 1 then
		eenabled = 0
		enabled = false
		Endure()
		enabled = true
	end
	if key == "q" and on == true and enabled == true then
		idle = 500
	end
end)

local function Cast(Pos,Dir,Amp,IgnoreList)
	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit*Amp), IgnoreList) 
end

--workspace.CharcterKaiser.Parent = workspace.CurrentCamera

local Health = Human.Health

Human.HealthChanged:connect(function(health)
	if health <= 0 then return end
	if health < Health then
		if buff == true then
			Human.Health = Health *0.95
		end
	end
	Health = health
end)

while true do
	local surface = Cast(HM.Position,(CFrame.new(HM.Position,HM.Position - Vector3.new(0,1,0))).lookVector,4,Char)
	if zenabled < 1 then
		zenabled = zenabled +0.01 *0.25
	else
		zenabled = 1
	end
	if xenabled < 1 then
		xenabled = xenabled +0.01 *0.2
	else
		xenabled = 1
	end
	if cenabled < 1 then
		cenabled = cenabled +0.01 *0.15
	else
		cenabled = 1
	end
	if eenabled < 1 then
		eenabled = eenabled +0.01 *0.08
	else
		eenabled = 1
	end
	if venabled < 1 then
		venabled = venabled +0.01 *0.15
	else
		venabled = 1
	end
	idle = idle +1
	if enabled == false then
		idle = 0
	end
	skill1img:TweenSize(UDim2.new(zenabled,0,1,0), "Out","Quad",0.1,false,nil)
	skill2img:TweenSize(UDim2.new(xenabled,0,1,0), "Out","Quad",0.1,false,nil)
	skill3img:TweenSize(UDim2.new(cenabled,0,1,0), "Out","Quad",0.1,false,nil)
	skill4img:TweenSize(UDim2.new(venabled,0,1,0), "Out","Quad",0.1,false,nil)
	skill5img:TweenSize(UDim2.new(eenabled,0,1,0), "Out","Quad",0.1,false,nil)
	if on == true then
		angle = (angle % 100) +anglespeed/10
		armangle = (armangle % 100) +armanglespeed/10
		legangle = (legangle % 100) +leganglespeed/10
		if action == "Idle" and enabled == true and surface ~= nil and idle < 500 then
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(1.45,-0.15-math.cos(armangle*0.25)*0.15,-0.4) *CFrame.Angles(math.pi/5,0,math.pi/4),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(0,0.3-math.cos(armangle*0.25)*0.15,-0.1) *CFrame.Angles(math.pi/5,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0.4,0.2+math.cos(legangle*0.25)*0.1,0) *CFrame.Angles(0,math.pi/4,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(-0.4,0.2+math.cos(legangle*0.25)*0.1,0) *CFrame.Angles(0,-math.pi/8,0),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.2-math.cos(angle*0.25)*0.1) *CFrame.Angles(0,0,-math.pi/3.5),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.sin(angle*0.25)*0.05,0,math.pi/3.5),speed)
			lerp(HW,HW.C0,hc0 *CFrame.new(0,2,-0.45) *CFrame.Angles(math.pi/1.95,0,0),speed)
		elseif action == "Idle" and enabled == true and surface ~= nil and idle >= 500 then
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.3,math.sin(armangle)*0.1,-0.65-math.sin(armangle)*0.1) *CFrame.Angles(math.pi/2+math.sin(armangle)*0.2,0,math.pi/4),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.2,math.sin(armangle)*0.1,-0.65-math.sin(armangle)*0.1) *CFrame.Angles(math.pi/2+math.sin(armangle)*0.2,0,-math.pi/4),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.pi/15,0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(-math.pi/15,0,0),legspeed)
			lerp(WRJ,WRJ.C0,RJC0,speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/8-math.sin(angle)*0.2,0,0),speed)
			lerp(HW,HW.C0,hc0 *CFrame.Angles(math.pi,0,-math.pi/4) *CFrame.new(0,-0.2,-1.5),speed)
		end
		if action == "Walk" and enabled == true and surface ~= nil then
			idle = 0
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(1.8,0.5-math.cos(armangle)*0.15,-0.6) *CFrame.Angles(math.pi/1.2,math.pi/5,math.pi/3.2),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.2,-math.cos(armangle)*0.15,0) *CFrame.Angles(math.pi/1.1,math.pi/5,math.pi/8),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,-math.cos(legangle)*0.25,0) *CFrame.new(0.5,0.25+math.sin(legangle)*0.15,0) *CFrame.Angles(0,math.pi/4,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,-math.cos(legangle)*0.25,0) *CFrame.new(0.5,0.1-math.sin(legangle)*0.15,0) *CFrame.Angles(0,math.pi/4,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle))),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.15+math.cos(angle)*0.35) *CFrame.Angles(math.pi/10,math.sin(angle*0.5)*0.1+HM.RotVelocity.Y/20,-math.pi/4),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/4) *CFrame.Angles(-math.pi/10+math.sin(angle*0.25)*0.1,0,0),speed)
			lerp(HW,HW.C0,hc0 *CFrame.new(0,-0.3,-2),speed)
		end
		if HM.Velocity.Y >= 5 and enabled == true and surface == nil then
			action = "Jump"
			idle = 0
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(1.45,-0.15,-0.4) *CFrame.Angles(math.pi/5,0,math.pi/4),armspeed*1.5)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(0,0.3,-0.1) *CFrame.Angles(math.pi/5,0,0),armspeed*1.5)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/10),legspeed*1.5)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.5,0.5,0) *CFrame.Angles(0,0,-math.pi/8),legspeed*1.5)
			lerp(WRJ,WRJ.C0,RJC0,speed*1.5)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/8,0,0),speed*1.5)
			lerp(HW,HW.C0,hc0 *CFrame.Angles(math.pi,0,-math.pi/4) *CFrame.new(0,-0.2,-1.5),1)
			Rwait()
		elseif HM.Velocity.Y <= -5 and enabled == true and surface == nil then
			action = "Fall"
			idle = 0
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(1.45,-0.15,-0.4) *CFrame.Angles(math.pi/5,0,math.pi/4),armspeed*1.5)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(0,0.3,-0.1) *CFrame.Angles(math.pi/5,0,0),armspeed*1.5)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.pi/3),legspeed*1.5)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.5,0,0) *CFrame.Angles(0,0,math.pi/8),legspeed*1.5)
			lerp(WRJ,WRJ.C0,RJC0,speed*1.5)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/5,0,0),speed*1.5)
			lerp(HW,HW.C0,hc0 *CFrame.Angles(math.pi,0,-math.pi/4) *CFrame.new(0,-0.2,-1.5),1)
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