--------------------------This is an Official script from Duelist--------------------------  
                           ---{--------------------                        -------------------}---
                           ---{--------------------         / \           -------------------}---
                            ---{--------------------         II            -------------------}---
                             ---{--------------------        II            -------------------}---
                             ---{--------------------        II            -------------------}---
                        ---{--------------------  A========A   -------------------}---      
                               ---{--------------------      II             -------------------}---
                               ---{--------------------      II             -------------------}---
                                ---{--------------------     W           -------------------}---
-------------------------------------------------------------------------------------------------------------
local plr = game.Players.LocalPlayer
local char = game.Workspace:WaitForChild(plr.Name)
local m = plr:GetMouse()
local trans = false
local realdeb = false
local PGui = plr:WaitForChild("PlayerGui")
local chat = game:GetService"Chat"
local Head = char:WaitForChild"Head"
local Torso = char:WaitForChild"Torso"
local HRP = char:WaitForChild"HumanoidRootPart"
local RArm = char:WaitForChild"Right Arm"
local LArm = char:WaitForChild"Left Arm"
local RLeg = char:WaitForChild"Right Leg"
local LLeg = char:WaitForChild"Left Leg"
local Hum = char:WaitForChild'Humanoid'
local lastspeed = Hum.WalkSpeed
msgz = Instance.new("Message", PGui)
msgz.Text = ""
game.Debris:AddItem(msgz, 6.5)
local part = Instance.new"Part"
part.Name = "TransformationPart"
part.FormFactor = "Custom"
part.Size = Vector3.new(1,1,1)
part.Material = "SmoothPlastic"
part.TopSurface = "Smooth"
part.BottomSurface = "Smooth"
part.Anchored = true
part.CanCollide = false

local Joints = {Head = Torso.Neck, Torso = HRP.RootJoint, RArm = Torso["Right Shoulder"], LArm = Torso["Left Shoulder"], RLeg = Torso["Right Hip"], LLeg = Torso["Left Hip"]}
local Refresh = function()
  Joints.Head.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  Joints.Torso.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  Joints.RArm.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  Joints.LArm.C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  Joints.RLeg.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  Joints.LLeg.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  Joints.Head.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  Joints.Torso.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  Joints.RArm.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  Joints.LArm.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  Joints.RLeg.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  Joints.LLeg.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end

local Anims = {Scrunch = function(active)
  if active then
    for i = 0, 10, 0.5 do
      wait(0.016666666666667)
      Joints.RArm.C0 = Joints.RArm.C0 * CFrame.Angles(math.rad(-30) / 10, 0, 0)
      Joints.LArm.C0 = Joints.LArm.C0 * CFrame.Angles(math.rad(-30) / 10, 0, 0)
      Joints.RLeg.C0 = Joints.RLeg.C0 * CFrame.Angles(-0.01, -0.02, 0.01)
      Joints.LLeg.C0 = Joints.LLeg.C0 * CFrame.Angles(-0.01, 0.02, 0.01)
    end
  else
    do
      for i = 0, 10, 0.5 do
        wait(0.016666666666667)
        Joints.RArm.C0 = Joints.RArm.C0 * CFrame.Angles(math.rad(-30) / 10, 0, 0):inverse()
        Joints.LArm.C0 = Joints.LArm.C0 * CFrame.Angles(math.rad(-30) / 10, 0, 0):inverse()
        Joints.RLeg.C0 = Joints.RLeg.C0 * CFrame.Angles(-0.01, -0.02, 0.01):inverse()
        Joints.LLeg.C0 = Joints.LLeg.C0 * CFrame.Angles(-0.01, 0.02, 0.01):inverse()
      end
      Refresh()
    end
  end
end
, Implode = function(active)
  if active then
    for i = 0, 10, 0.75 do
      wait(0.016666666666667)
      Joints.RArm.C0 = Joints.RArm.C0 * CFrame.Angles(-0.025, -0.055, 0.155)
      Joints.LArm.C0 = Joints.LArm.C0 * CFrame.Angles(-0.025, 0.055, -0.155)
      Joints.RLeg.C0 = Joints.RLeg.C0 * CFrame.Angles(-0.015, -0.025, -0.015)
      Joints.LLeg.C0 = Joints.LLeg.C0 * CFrame.Angles(-0.015, 0.025, -0.015)
    end
  else
    do
      for i = 0, 10, 0.75 do
        wait(0.016666666666667)
        Joints.RArm.C0 = Joints.RArm.C0 * CFrame.Angles(-0.025, -0.055, 0.155):inverse()
        Joints.LArm.C0 = Joints.LArm.C0 * CFrame.Angles(-0.025, 0.055, -0.155):inverse()
        Joints.RLeg.C0 = Joints.RLeg.C0 * CFrame.Angles(-0.015, -0.025, -0.015):inverse()
        Joints.LLeg.C0 = Joints.LLeg.C0 * CFrame.Angles(-0.015, 0.025, -0.015):inverse()
      end
    end
  end
end
}

local transform = function()
	if (trans == false and realdeb == false) then
		trans = true
		Hum.WalkSpeed = 0
		local area = part:Clone()
		area.CFrame = Torso.CFrame
		area.Parent = workspace
		Torso.Anchored = true
			for i=1,10 do
				area.CFrame = area.CFrame * CFrame.new(0,1,0)
				Torso.CFrame = area.CFrame
				wait()
			end
		local weld2 = Instance.new("Weld", area)
		weld2.Part0 = area
		weld2.Part1 = Torso
		weld2.C0 = CFrame.new()
		Torso.Anchored = false
		delay(0,function()
		end)
		delay(0,function() 
			chat:Chat(char["Head"],"You... Mortals.. Dare to defie a GOD","Red")
			wait(1.4)
			chat:Chat(char["Head"],"...., You're a pathetic weakling who needs to face an immortal being....","Red")
			wait(1.4)
			chat:Chat(char["Head"],"This is the ancient arcs true form... OSU ACTIVATE","Red")
		end)
delay(0,function()
	for i=1,5 do
		wait()
		delay(0,function()
			local dzI = 100
			while dzI > 10 do
				dzI = dzI - 1 
				local p = Instance.new("Part", char.Head)
				p.Anchored = false
				p.CanCollide = false
				p.Size = Vector3.new(math.random(1,4),math.random(1,4),math.random(1,4))
				p.Material = "Neon"
				local kekz2 = math.random(1,2)
				if kekz2 == 2 then
				p.BrickColor = BrickColor.new("Royal purple")
				else
				p.BrickColor = BrickColor.new("Royal purple")
				end
				p.CFrame = char.Torso.CFrame*CFrame.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
				local t = Instance.new("BodyPosition", p)
				t.P = 20000
				t.Position = char.Torso.Position
				game:service("Debris"):AddItem(p, 0.4)
				wait()
				delay(0,function()
					for i=1,10 do
						p.Transparency = i/10
						p.CFrame = p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-20,20),0,math.random(-20,20))
						wait()
					end
					p:Remove()
				end)
			end
		end)
	end
end)
delay(0,function()
	for q=1,120 do
			local xz = Instance.new("Part",plr.Character)
			xz.CFrame = plr.Character.Torso.CFrame*CFrame.new(math.random(-450,450),math.random(-450,450),math.random(-450,450))
			xz.Anchored = true
			xz.Transparency = 1
			xz.CanCollide = false
			wait(0.04)
			local pos2 = xz.Position
			local pos = plr.Character.Torso.Position
 	 	    local radius = math.random(1,1.5)
	  		local numParts = math.random(5,15)
 			local model = plr.Character.Torso
       		local lv = CFrame.new(pos,pos2).lookVector
        	local dist = (pos-pos2).magnitude
        	local dbp = dist/numParts
        	local last = pos
        for i = 1,numParts do
                local p = Instance.new("Part",model)
                p.FormFactor = "Symmetric"
                p.Size = Vector3.new(1,1,1)
                p.CanCollide = false
                p.Anchored = true
				p.Material = "Neon"
				local kekz2 = math.random(1,2)
				if kekz2 == 2 then
				p.BrickColor = BrickColor.new("Royal purple")
				else
				p.BrickColor = BrickColor.new("Royal purple")
				end
				p.Transparency = 0.5
                local x = math.random(-2,2)/2*dbp/4
                local y = math.random(-2,2)/2*dbp/4
                local p2 = CFrame.new(pos+lv*(i*dbp),pos2+lv)*CFrame.new(x,y,0)
                local dist2 = (p2.p-last).magnitude
                local mid = (p2.p+last)/2
                local m = Instance.new("BlockMesh",p)
                m.Scale = Vector3.new(radius,radius,dist2)
                p.CFrame = CFrame.new(mid,p2.p)
                last = p2.p
                game:GetService("Debris"):AddItem(p,0.2)
			end
		wait()
	xz:remove()
end

kekd = false
end)
		 Anims.Scrunch(true)
 for i = 1, 8 do
        wait(0.9)
        for i = 1, math.random(4, 6) do
          local p = part:Clone()
          p.Parent = Torso
          p.Anchored = false
          p.CFrame = Torso.CFrame
			p.CanCollide = false
		--	game:service("Debris"):AddItem(p, 0.2)
         	local kekz2 = math.random(1,2)
			if kekz2 == 2 then
				p.BrickColor = BrickColor.new("Royal purple")
			else
				p.BrickColor = BrickColor.new("Royal purple")
			end
          local w = Instance.new("Weld", p)
          w.Part0 = p
          w.Part1 = Torso
          w.C0 = w.C0 * CFrame.Angles(math.random() * 6.28, math.random() * 6.28, math.random() * 6.28)
          local m = Instance.new("CylinderMesh", p)
          m.Scale = Vector3.new(math.random() * 3, 320, math.random() * 3)
          coroutine.resume(coroutine.create(function()
    for i = 1, 25 do
      wait(0.071428571428571)
      w.C0 = w.C0 * CFrame.Angles(0.05, 0.05, 0.05)
      p.Transparency = i / 25
    end
    pcall(game.Destroy, p)
  end
))
end
end
		     coroutine.resume(coroutine.create(function()
    for i = 1, 6 do
      wait(0.9)
	--Player.Character.Torso.Anchored = true
      coroutine.resume(coroutine.create(function()
      local p = part:Clone()
      p.Parent = Torso
      p.Anchored = false
	p.CanCollide = false
      p.CFrame = Torso.CFrame
				local kekz2 = math.random(1,2)
				if kekz2 == 2 then
				p.BrickColor = BrickColor.new("Royal purple")
				else
				p.BrickColor = BrickColor.new("Royal purple")
				end
--game:service("Debris"):AddItem(p, 0.2)
      local w = Instance.new("Weld", p)
      w.Part0 = p
      w.Part1 = Torso
      w.C0 = w.C0 * CFrame.Angles(0, math.rad(90), 0)
      local m = Instance.new("SpecialMesh", p)
      m.MeshId = "rbxassetid://3270017"
      m.Scale = Vector3.new(10, 10, 5)
      coroutine.resume(coroutine.create(function()
        for i = 1, 25 do
          wait(0.071428571428571)
          w.C0 = w.C0 * CFrame.Angles(-0.05, 0.05 * math.random(), 0.05 * math.random())
          m.Scale = m.Scale + Vector3.new(3, 3, 1.5)
          p.Transparency = i / 25
        end
        pcall(game.Destroy, p)
      end
))
    end
))
      local p = part:Clone()
      do
        p.Parent = Torso
        p.Anchored = false
        p.CFrame = Torso.CFrame
		p.CanCollide = false
	--	game:service("Debris"):AddItem(p, 0.2)
				local kekz2 = math.random(1,2)
				if kekz2 == 2 then
				p.BrickColor = BrickColor.new("Royal purple")
				else
				p.BrickColor = BrickColor.new("Royal purple")
				end
        local w = Instance.new("Weld", p)
        w.Part0 = p
        w.Part1 = Torso
        local m = Instance.new("SpecialMesh", p)
        m.MeshId = "rbxassetid://3270017"
        m.Scale = Vector3.new(10, 10, 5)
        coroutine.resume(coroutine.create(function()
      for i = 1, 25 do
        wait(0.071428571428571)
        w.C0 = w.C0 * CFrame.Angles(0.05 * math.random(), -0.05 * math.random(), -0.05 * math.random())
        m.Scale = m.Scale + Vector3.new(3, 3, 1.5)
        p.Transparency = i / 25
      end
      pcall(game.Destroy, p)
    end
))
      end
    end
  end
		))
		for i=1, 6 do
			wait(0.9)
				for i = 1, math.random(4, 6) do
				local p = part:Clone()
				p.Parent = Torso
         		p.Anchored = false
        		p.CFrame = Torso.CFrame
				local kekz2 = math.random(1,2)
				if kekz2 == 2 then
				p.BrickColor = BrickColor.new("Royal purple")
				else
				p.BrickColor = BrickColor.new("Royal purple")
				end
				local me = Instance.new("SpecialMesh",p)
				me.MeshId = "rbxassetid://9982590"
				me.Scale = Vector3.new(4,4,4)
				delay(0,function()
					for i=1,10 do
						p.Transparency = i/10
						p.CFrame = p.CFrame * CFrame.Angles(math.rad(math.random(-20,20)/50),math.rad(math.random(-20,20)/50),0)
						me.Scale = me.Scale + Vector3.new(4,4,4)
						wait()
					end
					p:Destroy()
				end)
				wait()
			end
		end
		Torso.Anchored = true
		for i=1,10 do
			Torso.CFrame = Torso.CFrame * CFrame.new(0,-1,0)
			area.CFrame = Torso.CFrame
			wait()
		end
		realdeb = true
		Hum.WalkSpeed = 16
		Anims.Scrunch(false)
		Torso.Anchored = false
		area:Destroy()
	end
end

local off = function()
	if (realdeb == true and trans == true) then
		trans = false
		Hum.WalkSpeed = 0
delay(0,function()
	for q=1,120 do
			local xz = Instance.new("Part",plr.Character)
			xz.CFrame = plr.Character.Torso.CFrame*CFrame.new(math.random(-450,450),math.random(-450,450),math.random(-450,450))
			xz.Anchored = true
			xz.Transparency = 1
			xz.CanCollide = false
			wait(0.04)
			local pos2 = xz.Position
			local pos = plr.Character.Torso.Position
 	 	    local radius = math.random(1,1.5)
	  		local numParts = math.random(5,15)
 			local model = plr.Character.Torso
       		local lv = CFrame.new(pos,pos2).lookVector
        	local dist = (pos-pos2).magnitude
        	local dbp = dist/numParts
        	local last = pos
        for i = 1,numParts do
                local p = Instance.new("Part",model)
                p.FormFactor = "Symmetric"
                p.Size = Vector3.new(1,1,1)
                p.CanCollide = false
                p.Anchored = true
				p.Material = "Neon"
				local kekz2 = math.random(1,2)
				if kekz2 == 2 then
				p.BrickColor = BrickColor.new("Royal purple")
				else
				p.BrickColor = BrickColor.new("Royal purple")
				end
				p.Transparency = 0.5
                local x = math.random(-2,2)/2*dbp/4
                local y = math.random(-2,2)/2*dbp/4
                local p2 = CFrame.new(pos+lv*(i*dbp),pos2+lv)*CFrame.new(x,y,0)
                local dist2 = (p2.p-last).magnitude
                local mid = (p2.p+last)/2
                local m = Instance.new("BlockMesh",p)
                m.Scale = Vector3.new(radius,radius,dist2)
                p.CFrame = CFrame.new(mid,p2.p)
                last = p2.p
                game:GetService("Debris"):AddItem(p,0.2)
			end
		wait()
	xz:remove()
	end
end)
				 Anims.Scrunch(true)
 for i = 1, 8 do
        wait(0.9)
        for i = 1, math.random(4, 6) do
          local p = part:Clone()
          p.Parent = Torso
          p.Anchored = false
          p.CFrame = Torso.CFrame
			p.CanCollide = false
		--	game:service("Debris"):AddItem(p, 0.2)
         	local kekz2 = math.random(1,2)
			if kekz2 == 2 then
				p.BrickColor = BrickColor.new("Royal purple")
			else
				p.BrickColor = BrickColor.new("Royal purple")
			end
          local w = Instance.new("Weld", p)
          w.Part0 = p
          w.Part1 = Torso
          w.C0 = w.C0 * CFrame.Angles(math.random() * 6.28, math.random() * 6.28, math.random() * 6.28)
          local m = Instance.new("CylinderMesh", p)
          m.Scale = Vector3.new(math.random() * 3, 320, math.random() * 3)
          coroutine.resume(coroutine.create(function()
    for i = 1, 25 do
      wait(0.071428571428571)
      w.C0 = w.C0 * CFrame.Angles(0.05, 0.05, 0.05)
      p.Transparency = i / 25
    end
    pcall(game.Destroy, p)
  end
))
end
end
Anims.Scrunch(false)
Hum.WalkSpeed = 16
realdeb = false	
	end
end


m.KeyDown:connect(function(key)
	local k = key:lower()
	if key == "m" then
		if (trans == false and realdeb == false) then
			transform()
		elseif (trans == true and realdeb == true) then
			off()
		end
	end
end)


local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local torso = char.Torso
local head = char.Head

local face = Instance.new("Decal",head)
face.Texture = "rbxassetid://640433971"

p = game.Players.LocalPlayer

char = p.Character

pchar = char

hat=Instance.new("Part",char)

hat.Size = Vector3.new(2, 2, 2)

hatm = Instance.new("SpecialMesh",hat)

hatm.MeshType = "FileMesh"

hatm.MeshId = "http://www.roblox.com/asset/?id="

hatm.TextureId = "http://www.roblox.com/asset/?id="

hatw = Instance.new("Weld",hat)

hatw.Part0 = hat

hatw.Part1 = char.Head

if head:FindFirstChild("face") then
	head.face:Destroy()
end

local ArtificiaLeftHipB = Instance.new("BindableEvent", script)
ArtificiaLeftHipB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local Neck = torso:WaitForChild("Neck")
local shot = 0
local debris=game:service"Debris"
local CanAttack = true
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local animpose = "Idle"
local lastanimpose = "Idle"
local stanceToggle = "Normal"
local Hood = false
local holy = true --[[ change to true if u want him flying ]]
local Trails = true --[[ change to true for glow trails comming from eyes ]]--
local Shield = false
local eColors = {"Royal purple", "Really black"}
local cf = CFrame.new
local euler = CFrame.fromEulerAnglesXYZ
local vt = Vector3.new
local angles = CFrame.Angles
local attacktype=1
local Melee = true
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())

RA,LA,RL,LL,H,T = char["Right Arm"],char["Left Arm"],char["Right Leg"],char["Left Leg"],char.Head,char.Torso
RS,LS,RH,LH,N = T["Right Shoulder"],T["Left Shoulder"],T["Right Hip"],T["Left Hip"],T.Neck
Settings,Pr0mMode,ArielMode,InternalMode,Heart = {Colors = {BrickColor.new("Really black"),BrickColor.new("New Yeller")};ExplosionColors = {BrickColor.new("Really black"),BrickColor.new("New Yeller"),BrickColor.new("Really red"),BrickColor.new("Institutional white")}},p.Name == "Fir3bl4ze",p.Name == "Paul072" or p.Name == "KillBecca62",p.Name == "InternalRecursion" or p.Name == "RecursionAltInternal",p.Name == "heartstar1"
Debounces = {
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
Slapping = false;
Slapped = false;
ks = false;
}

local Touche = {char.Name, }
local Character = p.Character


mouse.KeyDown:connect(function(key)
    if key == "l" then
            if Debounces.CanJoke == true then
                Debounces.CanJoke = false
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://670991496"
                z.Pitch = 1
                z.Volume = 9
                wait()
                z:Play()
                wait(6)
                z:Destroy()
            if Debounces.CanJoke == false then
                Debounces.CanJoke = true
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "j" then
            if Debounces.CanJoke == true then
                Debounces.CanJoke = false
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://291699665"
                z.Pitch = .44
                z.Volume = 9
                wait()
                z:Play()
                wait(6)
                z:Destroy()
            if Debounces.CanJoke == false then
                Debounces.CanJoke = true
            end
        end
    end
end)
----------------------------------------------------
pcall(function()char.Shirt:Destroy()
char.Pants:Destroy()
end)
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "rbxassetid://653303239"
char.Pants.PantsTemplate = "rbxassetid://208263510"
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "k" then
            if Debounces.CanJoke == true then
                Debounces.CanJoke = false
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://230707106"
                z.Pitch = .76
                z.Volume = 9
                wait()
                z:Play()
                wait(25)
                z:Destroy()
            if Debounces.CanJoke == false then
                Debounces.CanJoke = true
            end
        end
    end
end)

wait()
local Player = game:service("Players").LocalPlayer
local ch = Player.Character
	local occ = Instance.new("BoolValue", ch)
	occ.Name = "Occupied"
	local swi = Instance.new("StringValue", ch)
	swi.Name = "switch"
	local trans = Instance.new("BoolValue", ch)
	trans.Name = "trans"
	repeat wait() until ch.Humanoid ~= nil
	ch.Humanoid.Died:connect(function()
		Player.CharacterAdded:connect(function(chz)
				local occ = Instance.new("BoolValue", chz)
				occ.Name = "Occupied"
				local swi = Instance.new("StringValue", chz)
				swi.Name = "switch"
				local trans = Instance.new("BoolValue", chz)
				trans.Name = "trans"
		end
		)
		end)
local PGui = Player:WaitForChild("PlayerGui")
local Character = Player.Character
local Humanoid = Character:WaitForChild("Humanoid")
local WS = Humanoid.WalkSpeed
local Head = Character:WaitForChild("Head")
local Torso = Character:WaitForChild("Torso")
local HRP = Character:WaitForChild("HumanoidRootPart")
local RArm = Character:WaitForChild("Right Arm")
local LArm = Character:WaitForChild("Left Arm")
local RLeg = Character:WaitForChild("Right Leg")
local LLeg = Character:WaitForChild("Left Leg")
msgz = Instance.new("Message", PGui)
msgz.Text = "Please say in the chat osu!"
game.Debris:AddItem(msgz, 6.5)
local Joints = {Head = Torso.Neck, Torso = HRP.RootJoint, RArm = Torso["Right Shoulder"], LArm = Torso["Left Shoulder"], RLeg = Torso["Right Hip"], LLeg = Torso["Left Hip"]}
local Refresh = function()
  Joints.Head.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  Joints.Torso.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  Joints.RArm.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  Joints.LArm.C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  Joints.RLeg.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  Joints.LLeg.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  Joints.Head.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  Joints.Torso.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  Joints.RArm.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  Joints.LArm.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  Joints.RLeg.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  Joints.LLeg.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end

local Transformed, Occupied = false, false
local Create = assert(LoadLibrary("RbxUtility")).Create
local Part = Create("Part")({TopSurface = 0, BottomSurface = 0, formFactor = "Custom", Size = Vector3.new(1, 1, 1), Anchored = true, CanCollide = false})
local Anims = {Scrunch = function(active)
  if active then
    for i = 0, 10, 0.5 do
      wait()
      Joints.Torso.C0 = Joints.Torso.C0 * CFrame.Angles(0.01, 0, 0)
      Joints.RArm.C0 = Joints.RArm.C0 * CFrame.new(0.05, -0.05, -0.02) * CFrame.Angles(math.rad(40) / 10, math.rad(20) / 10, math.rad(80) / 10)
      Joints.LArm.C0 = Joints.LArm.C0 * CFrame.new(-0.05, -0.05, -0.02) * CFrame.Angles(math.rad(40) / 10, -math.rad(20) / 10, -math.rad(80) / 10)
      Joints.RLeg.C0 = Joints.RLeg.C0 * CFrame.Angles(-0.01, -0.02, 0.01)
      Joints.LLeg.C0 = Joints.LLeg.C0 * CFrame.Angles(-0.01, 0.02, 0.01)
    end
  else
    do
      for i = 0, 10, 0.5 do
        wait()
        Joints.Torso.C0 = Joints.Torso.C0 * CFrame.Angles(0.01, 0, 0):inverse()
        Joints.RArm.C0 = Joints.RArm.C0 * CFrame.Angles(math.rad(40) / 10, math.rad(20) / 10, math.rad(80) / 10):inverse() * CFrame.new(-0.05, 0.05, 0.02)
        Joints.LArm.C0 = Joints.LArm.C0 * CFrame.Angles(math.rad(40) / 10, -math.rad(20) / 10, -math.rad(80) / 10):inverse() * CFrame.new(0.05, 0.05, 0.02)
        Joints.RLeg.C0 = Joints.RLeg.C0 * CFrame.Angles(-0.01, -0.02, 0.01):inverse()
        Joints.LLeg.C0 = Joints.LLeg.C0 * CFrame.Angles(-0.01, 0.02, 0.01):inverse()
      end
      Refresh()
    end
  end
end
, Implode = function(active)
  if active then
    for i = 0, 10, 0.75 do
      wait()
      Joints.Head.C0 = Joints.Head.C0 * CFrame.Angles(-0.025, 0, 0)
      Joints.Torso.C0 = Joints.Torso.C0 * CFrame.Angles(-0.005, 0, 0)
      Joints.RArm.C0 = Joints.RArm.C0 * CFrame.Angles(-0.025, -0.055, 0.055)
      Joints.LArm.C0 = Joints.LArm.C0 * CFrame.Angles(-0.025, 0.055, -0.055)
      Joints.RLeg.C0 = Joints.RLeg.C0 * CFrame.Angles(-0.015, -0.025, -0.015)
      Joints.LLeg.C0 = Joints.LLeg.C0 * CFrame.Angles(-0.015, 0.025, -0.015)
    end
  else
    do
      for i = 0, 10, 0.75 do
        wait()
        Joints.Head.C0 = Joints.Head.C0 * CFrame.Angles(-0.025, 0, 0):inverse()
        Joints.Torso.C0 = Joints.Torso.C0 * CFrame.Angles(-0.005, 0, 0):inverse()
        Joints.RArm.C0 = Joints.RArm.C0 * CFrame.Angles(-0.025, -0.055, 0.055):inverse()
        Joints.LArm.C0 = Joints.LArm.C0 * CFrame.Angles(-0.025, 0.055, -0.055):inverse()
        Joints.RLeg.C0 = Joints.RLeg.C0 * CFrame.Angles(-0.015, -0.025, -0.015):inverse()
        Joints.LLeg.C0 = Joints.LLeg.C0 * CFrame.Angles(-0.015, 0.025, -0.015):inverse()
      end
    end
  end
end
}
Flash = function(Par, Col, Duration, Delay, Async)
  pcall(function()
    Par = Par or PGui
    if not Col then
      Col = BrickColor:White().Color
      Duration = Duration or 10
      if not Delay then
        Delay = 1 / Duration
        local G = Create("ScreenGui")({Parent = Par})
        if not Col then
          local F = Create("Frame")({Parent = G, BorderSizePixel = 0, Size = UDim2.new(1.2, 0, 1.2, 0), Position = UDim2.new(), ZIndex = 10, BackgroundColor3 = Color3.new(0, 0, 0), Transparency = 0})
          local f = function()
      for i = 0, Duration, Delay do
        wait()
        F.Transparency = i / Duration
      end
      pcall(game.Destroy, G)
    end

          if Async then
            f = coroutine.wrap(f)
          end
          return f()
        end
      end
    end
  end
)
end

Shake = function(Duration, Delay, Async, Distance)
  pcall(function()
    local Cam = workspace.CurrentCamera
    Duration = Duration or 10
    if not Delay then
      Delay = 1 / Duration
      Distance = Distance or 15
      local f = function()
      for i = 0, Duration, Delay do
        wait()
        local R = Cam.CoordinateFrame - Cam.CoordinateFrame.p
        local Scroll = Cam.CoordinateFrame.p - Cam.Focus.p.magnitude
        local NewF = CFrame.new(Cam.Focus.p) * R * CFrame.new(math.random(-Distance, Distance) / (Distance / 0.25), math.random(-Distance, Distance) / (Distance / 0.25), math.random(-Distance, Distance) / (Distance / 0.25))
        Cam.CoordinateFrame = NewF * CFrame.new(0, 0, Scroll)
      end
    end

      if Async then
        f = coroutine.wrap(f)
      end
      return f()
    end
  end
)
end

Sound = function(Prnt, Id, Pit, Vol)
  pcall(function()
    local cp = game:service("ContentProvider")
    if type(Id) == "number" then
      cp:Preload("rbxassetid://" .. Id)
      Id = "rbxassetid://" .. Id
    else
      if type(Id) == "string" then
        cp:Preload(Id)
        Id = Id
      end
    end
    local S = Create("Sound")({Parent = Prnt or workspace, SoundId = Id, Volume = Vol or 1, Pitch = Pit or 1})
    S:Play()
    S:Stop()
    S:Play()
    game:service("Debris"):AddItem(S, 0.9)
  end
)
end

local Chat = function(Source, Txt, Col)
  if not Source then
    Source = Head
  end
  local c = game:service("Chat")
  if not Col then
    c:Chat(Source, Txt, math.random(0, 2))
  end
end

Transform = function(active)
  if active and not Occupied and not Transformed then
    Occupied = true
    Humanoid.WalkSpeed = 0
    local cp = game:service("ContentProvider")
    Hair = {}
    mp = Part:clone()
    mp.Parent = Head
    mp.CFrame = Head.CFrame
    mp.Name = "Main"
    mp.Transparency = 1
    mp.Anchored = false
    local w = Create("Weld")({Parent = mp, Part0 = mp, Part1 = Head, C0 = CFrame.new()})
    cp:Preload("rbxassetid://9982590", "rbxassetid://3270017", "rbxassetid://13425802", "rbxassetid://98444143", "rbxassetid://98444243")
    for i = 1, 10 do
      local h = Part:clone()
      do
        h.CFrame = Head.CFrame
        h.Parent = mp
        h.Transparency = 1
        h.Size = Vector3.new(0.2, 0.2, 0.2)
        h.Anchored = false
        h:BreakJoints()
        local w = Create("Weld")({Parent = h, Part0 = h, Part1 = Head, C0 = CFrame.new()})
        local m = Create("SpecialMesh")({Parent = h, MeshType = "FileMesh", MeshId = "rbxassetid://13425802", TextureId = "rbxassetid://174185967", Scale = Vector3.new(0.15, 0.05, 0.15)})
        if i > 1 then
          m.Scale = Vector3.new(1, 1.15, 1)
          m.MeshId = "rbxassetid://98444143"
        end
        table.insert(Hair, h)
      end
    end
    Hair[1].Weld.C0 = CFrame.new(0.7, -0.3, -0.35) * CFrame.Angles(0, math.rad(90), 0.6)
    Hair[2].Weld.C0 = CFrame.new(0, -0.7, -0.2) * CFrame.Angles(0.2, 0, 0)
    Hair[3].Weld.C0 = CFrame.new(0, -0.6, -0.2) * CFrame.Angles(1.25, math.rad(180), 0)
    Hair[4].Weld.C0 = CFrame.new(0.1, -0.6, -0.4) * CFrame.Angles(0.35, -0.2, -0.5)
    Hair[5].Weld.C0 = CFrame.new(-0.1, -0.6, -0.4) * CFrame.Angles(0.35, 0.2, 0.5)
    Hair[4].Mesh.Scale = Vector3.new(0.7, 0.95, 1)
    Hair[6].Weld.C0 = CFrame.new(0, -1, -0.4)
    Hair[5].Mesh.Scale = Hair[4].Mesh.Scale
    Hair[6].Mesh.Scale = Hair[4].Mesh.Scale
    Hair[7].Weld.C0 = CFrame.new(0, -1.1, -0.025) * CFrame.Angles(-1, 0, 0)
    Hair[8].Weld.C0 = Hair[7].Weld.C0 * CFrame.new(0, 0.1, -0.035) * CFrame.Angles(-0.55, 0, 0)
    Hair[9].Weld.C0 = Hair[8].Weld.C0 * CFrame.new(0, 0.1, -0.35) * CFrame.Angles(-0.55, 0, 0)
    Hair[10].Weld.C0 = Hair[9].Weld.C0 * CFrame.new(0, 0.1, -0.25) * CFrame.Angles(-0.55, 0, 0)
    Sound(Head, 98333808, 1, 0.85)
    Sound(Head, 2248511, 0.25, 0.55)
    for i = 1, 6 do
      Hair[i].Transparency = 0
    end
    for _,v in pairs(Character:GetChildren()) do
      if v.Name == "Hair" then
        v.Transparency = 1
      end
    end
    wait()
    Chat(nil, ".....", "Blue")
    SSF = Create("Fire")({Parent = HRP, Color = Color3.new(0.5,0.05,1), Heat = 10, SecondaryColor = Color3.new(0.5,0.05,1), Size = 7})
    Anims.Scrunch(true)
    Chat(nil, "....", "Red")
    for i = 1, 3 do
      Shake(25, 0.5, 5)
      Flash(nil, BrickColor.new("Royal purple").Color, 10, 0.25, true)
      Sound(Head, 2101137, 0.5, 0.8)
      Sound(Head, 3264793, 0.55, 0.9)
      local h = Part:clone()
      h.CFrame = Torso.CFrame
      h.Parent = Torso
      h.Transparency = 1
      h.Size = Vector3.new(1, 1, 1)
      h.Anchored = false
      h.BrickColor = BrickColor.new("Royal purple")
      h.Material = "Neon"
      h:BreakJoints()
      local w = Create("Weld")({Parent = h, Part0 = h, Part1 = HRP, C0 = CFrame.new()})
      local m = Create("SpecialMesh")({Parent = h, MeshType = "FileMesh", MeshId = "rbxassetid://9982590", Scale = Vector3.new()})
      for _i = 60, 0, -1 do
        w.C0 = w.C0 * CFrame.Angles(0.2, 0.2, 0.2)
        m.Scale = Vector3.new(_i, _i, _i) / 5
        h.Transparency = -(_i / 60) + 1
        wait()
      end
      h:Destroy()
    end
    coroutine.resume(coroutine.create(function()
    Shake(65, 0.5, 10)
    for i = 1, 5 do
      cols = {"New Yeller", "Royal purple", "Really black"}
      Flash(nil, BrickColor.new(cols[math.random(1, #cols)]).Color, 10, 0.75, true)
      Sound(Head, 2974249, 0.65, 0.9)
      Sound(Head, 2974000, 0.65, 0.9)
      Sound(Head, 2101137, 0.45, 0.6)
      local h = Part:clone()
      do
        h.CFrame = Torso.CFrame
        h.Parent = Torso
        h.Transparency = 1
        h.Size = Vector3.new(1, 1, 1)
        h.Anchored = false
        h.BrickColor = BrickColor.new("Royal purple")
        h.Material = "Neon"
        h:BreakJoints()
        local w = Create("Weld")({Parent = h, Part0 = h, Part1 = HRP, C0 = CFrame.new() * CFrame.Angles(math.rad(90), 0, 0)})
        local m = Create("SpecialMesh")({Parent = h, MeshType = "Sphere", Scale = Vector3.new(1, 1, 1)})
        coroutine.resume(coroutine.create(function()
      local org = w.C0
      for _i = 1, 50 do
        wait(0.05)
        w.C0 = org * CFrame.new(math.random() - 0.5, 0, math.random() - 0.5)
        m.Scale = Vector3.new(_i, _i, _i)
        h.Transparency = _i / 50
      end
      h:Destroy()
    end
))
        wait()
      end
    end
  end
))
    coroutine.resume(coroutine.create(function()
    for i = 1, 5 do
      local h = Part:clone()
      do
        h.CFrame = Torso.CFrame
        h.Parent = Torso
        h.Transparency = 1
        h.Size = Vector3.new(1, 1, 1)
        h.Anchored = false
        h.BrickColor = BrickColor.new("Royal purple")
        h.Material = "Neon"
        h:BreakJoints()
        local w = Create("Weld")({Parent = h, Part0 = h, Part1 = HRP, C0 = CFrame.new() * CFrame.Angles(math.rad(90), 0, 0)})
        local m = Create("SpecialMesh")({Parent = h, MeshType = "FileMesh", MeshId = "rbxassetid://3270017", Scale = Vector3.new(1, 1, 1)})
        coroutine.resume(coroutine.create(function()
      local org = w.C0
      for _i = 1, 50 do
        wait(0.05)
        w.C0 = org * CFrame.new(math.random() - 0.5, 0, math.random() - 0.5)
        m.Scale = Vector3.new(_i * 2, _i * 2, _i / 2.5)
        h.Transparency = _i / 50
      end
      h:Destroy()
    end
))
        wait()
      end
    end
  end
))
    coroutine.resume(coroutine.create(function()
    Chat(nil, "HAAA!", "Red")
    for _ = 7, 10 do
      for i = 1, 0, -0.05 do
        wait(0.03030303030303)
        Hair[_].Transparency = i
        Hair[_].Mesh.Scale = Hair[_].Mesh.Scale + Vector3.new(0, 0.015, 0)
        Hair[_].Weld.C0 = Hair[_].Weld.C0 * CFrame.new(0, 0, -0.0025)
      end
    end
    for _,v in pairs(Hair) do
      v.Transparency = 0
    end
    Chat(nil, "....", "Red")
  end
))
    Anims.Scrunch(false)
    Anims.Implode(true)
    SSF.Heat = 20
    SSF.Size = 12
    for i = 1, 5 do
      local h = Part:clone()
      h.CFrame = Torso.CFrame
      h.Parent = Torso
      h.Transparency = 1
      h.Size = Vector3.new(1, 1, 1)
      h.Anchored = false
      h.BrickColor = BrickColor.new("Royal purple")
      h.Material = "Neon"
      h:BreakJoints()
      local w = Create("Weld")({Parent = h, Part0 = h, Part1 = HRP, C0 = CFrame.new() * CFrame.Angles(math.rad(90), 0, 0)})
      local m = Create("SpecialMesh")({Parent = h, MeshType = "FileMesh", MeshId = "rbxassetid://3270017", Scale = Vector3.new(1, 1, 1)})
      coroutine.resume(coroutine.create(function()
    local org = w.C0
    for _i = 1, 50 do
      wait(0.05)
      w.C0 = org * CFrame.new(math.random() - 0.5, 0, math.random() - 0.5)
      m.Scale = Vector3.new(_i / 5, _i / 5, _i * 30)
      h.Transparency = _i / 50
    end
    h:Destroy()
  end
))
      wait(0.7)
    end
    Sound(Head, 98333808, 1, 0.85)
    Sound(Head, 2248511, 0.65, 0.65)
    Chat(nil, "And now..")
    Anims.Implode(false)
    Humanoid.WalkSpeed = 16
    Transformed = true
    Occupied = false
  else
    do
      if not active and not Occupied and Transformed then
        Occupied = true
        Anims.Scrunch(true)
        Humanoid.WalkSpeed = 0
        Sound(Head, 2248511, 0.75, 0.6)
        Sound(Head, 2691586, 0.7, 0.4)
        Sound(Head, 2785493, 0.55, 0.9)
        Sound(Head, 2785493, 0.7, 0.7)
        Shake(15, 0.5, 20)
        Flash(nil, Color3.new(0.5,0.05,1), 7, 0.1, true)
        coroutine.resume(coroutine.create(function()
    wait(2)
    for i = 1, 0, -0.05 do
      wait()
      for _,v in next do
        if v.Name == "Hair" then
          v.Transparency = i
        end
      end
    end
    for _,v in pairs(Character:GetChildren()) do
      if v.Name == "Hair" then
        v.Transparency = 0
      end
    end
  end
))
        for i = 0, 1, 0.01 do
          wait()
          for _,v in pairs(Hair) do
            v.Transparency = i
          end
        end
        Sound(Head, 2800815, 0.85, 1)
        Sound(Head, 2800815, 0.55, 0.8)
        Sound(Head, 2691586, 0.45, 0.3)
        pcall(game.Destroy, SSF)
        pcall(game.Destroy, mp)
        Hair = {}
        Chat(nil, "Good luck..", "Blue")
        Anims.Scrunch(false)
        Humanoid.WalkSpeed = 16
        Transformed = false
        Occupied = false
      end
    end
  end
end

Player.Chatted:connect(function(Msg)
  if Character.trans.Value == false and Character.Occupied.Value == false then
    Msg = Msg:lower()
    if Msg == "osu" and Character.switch.Value == "" then
      Character.switch.Value = "osu"
      Character.trans.Value = true
      Transform(true)
pie2 = Instance.new("ParticleEmitter")
pie2.Name = "Ha2"
pie2.Parent = Character.Torso
pie2.LightEmission = 1
pie2.Texture = "http://www.roblox.com/asset/?id=262606182"
pie2.Color = ColorSequence.new(Color3.new(0.5,0.05,1),Color3.new(0.5,0.05,1))
pie2.Size = NumberSequence.new(2.5)
pie2.Lifetime = NumberRange.new(.2,.2)
pie2.Speed = NumberRange.new(7)
pie2.Rotation = NumberRange.new(-80,80)
pie2.VelocitySpread = 30
      Humanoid.MaxHealth = Humanoid.MaxHealth + tonumber("26")
      wait(1)
      Humanoid.Health = Humanoid.Health + tonumber("26")
      Character.trans.Value = false
    else
      if Msg == "off" and Character.switch.Value == "osu" then
        Character.trans.Value = true
        Transform(false)
        Player.Character.Torso:findFirstChild("Ha2"):Destroy()
        Humanoid.Health = Humanoid.Health - tonumber("26")
        wait(1)
        Humanoid.MaxHealth = Humanoid.MaxHealth - tonumber("26")
        Character.trans.Value = false
        Character.switch.Value = ""
      end
    end
  end
end
)
wait(5)

local s = Instance.new("Sound",char)
s.SoundId = "http://www.roblox.com/asset/?id=233774928"
s.Pitch = 0.98
s.Volume = 2
s.Looped = false
wait(0.1)
s:play()

local s = Instance.new("Sound",char)
s.SoundId = "http://www.roblox.com/asset/?id=503327967"
s.Pitch = 0.98
s.Volume = 1
s.Looped = true
wait(0.1)
s:play()

wait(25)

local base = game.Workspace.Base
base.BrickColor = BrickColor.new("Royal purple")
base.Material = "Granite"

local plr = game.Players.LocalPlayer
local chr = plr.Character
local maus = plr:GetMouse()
local PGui=plr.PlayerGui
local lleg = chr["Left Leg"]
local rleg = chr["Right Leg"]
local larm = chr["Left Arm"]
local rarm = chr["Right Arm"]
local hed = chr.Head
local rutprt = chr.HumanoidRootPart
local torso = chr.Torso
local otheranims=false
local swimming=false
chr.Animate.Disabled=true
local fldb={['w']=false,['a']=false,['s']=false,['d']=false}
local RunSpeed=30
local WlkSpeed=16
local SwimSpeed=20
local SwimDashSpeed=28
local anim = "Idling"
local lastanim = "Idling"
local val = 0
local syne = 0
local num = 0
local runtime = 0
local pseudohead=hed:Clone()
for i,x in pairs(pseudohead:GetChildren()) do if not x.ClassName:find('Mesh') then x:Destroy() end end
pseudohead.Name='PseudoHead'
pseudohead.Parent=chr.Head
local pseudoweld=Instance.new('Weld',torso)
pseudoweld.Part0=hed
pseudoweld.Name='PseudoHedWld'
pseudoweld.Part1=pseudohead
hed.Transparency=1

coroutine.wrap(function()
for i,x in pairs(hed:GetChildren()) do if x:IsA('Sound') then x:Destroy() end end end)()
function Lerp(a, b, i)
local com1 = {a.X, a.Y, a.Z, a:toEulerAnglesXYZ()}
local com2 = {b.X, b.Y, b.Z, b:toEulerAnglesXYZ()}
local calx = com1[1] + (com2[1] - com1[1]) * i
local caly = com1[2] + (com2[2] - com1[2]) * i
local calz = com1[3] + (com2[3] - com1[3]) * i
local cala = com1[4] + (com2[4] - com1[4]) * i
local calb = com1[5] + (com2[5] - com1[5]) * i
local calc = com1[6] + (com2[6] - com1[6]) * i
return CFrame.new(calx, caly, calz) * CFrame.Angles(cala, calb, calc)
end
function TwnSingleNumber(s,f,m)
local wot=s+(f-s)*m
return wot
end
function TwnVector3(q,w,e)
local begin={q.x,q.y,q.z}
local ending={w.x,w.y,w.z}
local bgx=begin[1]+(ending[1]-begin[1])*e
local bgy=begin[2]+(ending[2]-begin[2])*e
local bgz=begin[3]+(ending[3]-begin[3])*e
return Vector3.new(bgx,bgy,bgz)
end
newWeld = function(wld, wp0, wp1, wc0x, wc0y, wc0z)
wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end

local angles = CFrame.Angles
function clerp(a, b, t)
	return a:lerp(b, t)
end



	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
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
		fp.CanCollide=false
		fp.Locked=true
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

LY_handle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,1,1,"Dark stone grey","Handle",Vector3.new(1.45335066, 0.264246017, 0.211396158))
LY_handleweld=weld(m,Character["Right Arm"],LY_handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00367164612, 0.987921953, 0.0167617798, 0.00026500001, -0.000169999985, 1, 4.4999997e-005, 0.999999881, 0.000169988081, -1, 4.49549443e-005, 0.000265007664))
Color=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Color",Vector3.new(0.200000003, 0.264246017, 0.218002304))
Colorweld=weld(m,LY_handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.673862457, -0.000193119049, 0.0277631283, 0.999998569, -3.10177857e-005, -1.15665025e-005, -1.24345243e-005, -2.42797159e-006, -1.00000012, 3.1031057e-005, 0.999998271, -1.57067143e-006))
mesh("SpecialMesh",Color,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.198184475, 1, 1))
Color=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Color",Vector3.new(0.200000003, 0.270852149, 0.270851493))
Colorweld=weld(m,LY_handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.971046448, -0.633370876, -8.34465027e-006, 0.999998569, -1.67783583e-008, 4.34461981e-007, 3.24653229e-008, 0.999998212, 4.28357794e-007, 4.34491085e-007, 4.28346709e-007, 1.00000012))
mesh("SpecialMesh",Color,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.264245272, 0.924859583, 0.264245361))
Color=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Color",Vector3.new(0.200000003, 0.270852149, 0.270851493))
Colorweld=weld(m,LY_handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.705991745, -0.13863945, -0.00022649765, 0.707114518, 0.707097352, 4.14534588e-006, -0.70709759, 0.707114279, -1.62664946e-005, -1.43024954e-005, 9.73419992e-006, 1.00000012))
mesh("SpecialMesh",Color,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.264245272, 0.660614312, 0.264245361))
Color=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Color",Vector3.new(0.200000003, 0.270852149, 0.270851493))
Colorweld=weld(m,LY_handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.667310715, 0.177476883, 0.000133514404, 0.70709914, -0.707113802, -1.69977284e-005, 0.707114041, 0.707098901, 3.84061423e-006, 9.00149462e-006, -1.40022084e-005, 1.00000012))
mesh("SpecialMesh",Color,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.264245272, 0.660614312, 0.264245361))
Color=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Color",Vector3.new(0.200000003, 0.270852149, 0.270851493))
Colorweld=weld(m,LY_handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.971019745, 0.687847018, 0, 1.00000012, 1.00408215e-009, 9.60426405e-010, 9.89530236e-010, 0.999999762, -9.68395142e-010, 9.60426405e-010, -9.72125491e-010, 1.00000012))
mesh("SpecialMesh",Color,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.264245272, 0.924859583, 0.264245361))
Color=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Color",Vector3.new(0.200000003, 0.264246017, 0.218002304))
Colorweld=weld(m,LY_handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.706794739, 0.0272381306, -7.15255737e-006, 0.999998569, -1.58179319e-008, 4.35422407e-007, 3.34257493e-008, 0.999998212, 4.27397623e-007, 4.35451511e-007, 4.27386425e-007, 1.00000012))
mesh("SpecialMesh",Color,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.264245272, 1, 1))
Blade=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Blade",Vector3.new(7.00250864, 0.528491318, 0.200000003))
Bladeweld=weld(m,LY_handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.74311829, 0.0272333622, 0, 1.00000012, 4.36557457e-011, 0, 2.91038305e-011, 0.999999762, -8.22453217e-012, 0, -1.1862511e-011, 1.00000012))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.330306888))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.45335066, 0.264246017, 0.211396158))
Partweld=weld(m,LY_handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.91278076e-005, 0.0272394419, 2.86102295e-006, 1.00000012, 4.36557457e-011, 0, 2.91038305e-011, 0.999999762, -8.22453217e-012, 0, -1.1862511e-011, 1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Color=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Color",Vector3.new(0.200000003, 1.39389634, 0.200000003))
Colorweld=weld(m,LY_handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00207185745, -2.27507019, 0.367805481, 0.000122999991, 3.09971547e-005, -1, -1.00000012, 3.10047035e-005, -0.00012300002, 3.09981406e-005, 0.999999821, 3.09999959e-005))
mesh("SpecialMesh",Color,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.330306768, 1, 0.891827047))
Color=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Color",Vector3.new(0.200000003, 1.40050244, 0.200000003))
Colorweld=weld(m,LY_handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000971078873, 7.54442596, 0.344686627, 6.1000057e-005, -3.1002859e-005, 1.00000012, 1.00000012, -3.09989991e-005, -6.09999697e-005, 3.09981406e-005, 0.999999821, 3.09999959e-005))
mesh("SpecialMesh",Color,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.330306768, 1, 0.66061312))
Color=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Color",Vector3.new(0.200000003, 1.40050244, 0.200000003))
Colorweld=weld(m,LY_handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00106692314, 7.54369164, 0.301707268, 6.19999773e-005, 3.09990464e-005, -1, 1.00000012, -9.2002796e-005, 6.19981438e-005, -9.19981394e-005, -0.999999821, -3.10018913e-005))
mesh("SpecialMesh",Color,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.330306768, 1, 0.66061312))
Color=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Color",Vector3.new(0.200000003, 0.200000003, 0.303882271))
Colorweld=weld(m,LY_handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000967741013, 1.14307976, -0.111138582, 6.1000057e-005, -3.10047508e-005, 1.00000012, 1.00000012, -3.09989991e-005, -6.09999697e-005, 3.09981406e-005, 0.999999821, 3.09981042e-005))
mesh("SpecialMesh",Color,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.330306768, 0.990922511, 1))
Color=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Color",Vector3.new(0.200000003, 0.200000003, 0.303882271))
Colorweld=weld(m,LY_handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00106334686, 1.14234924, -0.167325854, 6.19999773e-005, 3.10009382e-005, -1, 1.00000012, -9.2002796e-005, 6.19981438e-005, -9.19981394e-005, -0.999999821, -3.09999996e-005))
mesh("SpecialMesh",Color,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.330306768, 0.990922511, 1))
Color=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Color",Vector3.new(0.200000003, 0.389762193, 0.726674616))
Colorweld=weld(m,LY_handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.50882721e-005, -0.215640545, 8.60770226, 1.99873466e-006, -7.40025207e-005, 1.00000012, -3.09968163e-005, -0.999999821, -7.39984971e-005, 1.00000012, -3.10008181e-005, -1.99998613e-006))
mesh("SpecialMesh",Color,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.330306768, 1, 1))
Color=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Color",Vector3.new(0.200000003, 1.39389634, 0.200000003))
Colorweld=weld(m,LY_handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000124931335, -2.27571106, 0.326155424, -1.86264515e-009, -9.20009552e-005, 1.00000012, -1.00000012, 3.09989991e-005, -2.91038305e-011, -3.09981406e-005, -0.999999821, -9.19999948e-005))
mesh("SpecialMesh",Color,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.330306768, 1, 0.891827047))
Color=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.19999998807907,"Royal purple","Color",Vector3.new(0.200000003, 0.389762193, 0.726674616))
Colorweld=weld(m,LY_handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000325202942, -0.173182964, 8.60774612, -2.20000511e-005, 3.10054347e-005, -1.00000012, 7.39981479e-005, 0.999999821, 3.09975512e-005, 1.00000012, -7.40001851e-005, -2.20013317e-005))
mesh("SpecialMesh",Color,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.330306768, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,LY_handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.677164078, -0.000199794769, 0.0277613401, 1.00000012, -3.09994066e-005, -1.20013719e-005, -1.20013137e-005, 2.95292011e-006, -1.00000012, 3.09995376e-005, 0.999999821, 2.9525288e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.825765371, 0.660614371, 0.858796299))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.270852149, 0.270851493))
Partweld=weld(m,LY_handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.97104454, 0.0272381306, -1.1920929e-006, 1.00000012, 4.36557457e-011, 0, 2.91038305e-011, 0.999999762, -8.22453217e-012, 0, -1.1862511e-011, 1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.528491259, 0.528491318, 1.32122672))
Color_R=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Color_R",Vector3.new(0.200000003, 0.270852149, 0.270851493))
Color_Rweld=weld(m,LY_handle,Color_R,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.97104454, 0.0272381306, -1.1920929e-006, 1.00000012, 4.36557457e-011, 0, 2.91038305e-011, 0.999999762, -8.22453217e-012, 0, -1.1862511e-011, 1.00000012))
mesh("SpecialMesh",Color_R,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.515278935, 0.515278995, 1.18910372))
LY_hitbox=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,1,1,"Royal purple","LY_hitbox",Vector3.new(7.75250864, 0.758491337, 0.200000003))
LY_hitboxweld=weld(m,LY_handle,LY_hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.11811638, 0.0322332382, -2.38418579e-007, 1.00000012, 4.36557457e-011, 0, 2.91038305e-011, 0.999999762, -8.22453217e-012, 0, -1.1862511e-011, 1.00000012))


p = game.Players.LocalPlayer
char = p.Character
torso = char.Torso
neck = char.Torso.Neck
hum = char.Humanoid
hum.MaxHealth = 2500
wait()
hum.Health =hum.MaxHealth

local s = Instance.new("Sound",char)
s.SoundId = "http://www.roblox.com/asset/?id="
s.Pitch = 0.98
s.Volume = 8
s.Looped = false
wait(0.1)
s:play()

local s = Instance.new("Sound",char)
s.SoundId = "http://www.roblox.com/asset/?id="
s.Pitch = 0.98
s.Volume = 7
s.Looped = true
wait(0.1)
s:play()

CV="Maroon"
        
local txt = Instance.new("BillboardGui", char)
txt.Adornee = char .Head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "SourceSansBold"
text.TextStrokeColor3 = Color3.new(0.5,0.05,1)

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=p.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=char.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = Color3.new(0,0,0)
v.Shape="Block"
text.Text = "Osu"

local plr = game.Players.LocalPlayer
local chr = plr.Character
local maus = plr:GetMouse()
local PGui=plr.PlayerGui
local lleg = chr["Left Leg"]
local rleg = chr["Right Leg"]
local larm = chr["Left Arm"]
local rarm = chr["Right Arm"]
local hed = chr.Head
local rutprt = chr.HumanoidRootPart
local torso = chr.Torso
local otheranims=false
local swimming=false
chr.Animate.Disabled=true
local fldb={['w']=false,['a']=false,['s']=false,['d']=false}
local RunSpeed=30
local WlkSpeed=16
local SwimSpeed=14
local SwimDashSpeed=28
local anim = "Idling"
local lastanim = "Idling"
local val = 0
local syne = 0
local num = 0
local runtime = 0
local pseudohead=hed:Clone()
for i,x in pairs(pseudohead:GetChildren()) do if not x.ClassName:find('Mesh') then x:Destroy() end end
pseudohead.Name='PseudoHead'
pseudohead.Parent=chr.Head
local pseudoweld=Instance.new('Weld',torso)
pseudoweld.Part0=hed
pseudoweld.Name='PseudoHedWld'
pseudoweld.Part1=pseudohead
hed.Transparency=1

coroutine.wrap(function()
for i,x in pairs(hed:GetChildren()) do if x:IsA('Sound') then x:Destroy() end end end)()
function Lerp(a, b, i)
local com1 = {a.X, a.Y, a.Z, a:toEulerAnglesXYZ()}
local com2 = {b.X, b.Y, b.Z, b:toEulerAnglesXYZ()}
local calx = com1[1] + (com2[1] - com1[1]) * i
local caly = com1[2] + (com2[2] - com1[2]) * i
local calz = com1[3] + (com2[3] - com1[3]) * i
local cala = com1[4] + (com2[4] - com1[4]) * i
local calb = com1[5] + (com2[5] - com1[5]) * i
local calc = com1[6] + (com2[6] - com1[6]) * i
return CFrame.new(calx, caly, calz) * CFrame.Angles(cala, calb, calc)
end
function TwnSingleNumber(s,f,m)
local wot=s+(f-s)*m
return wot
end
function TwnVector3(q,w,e)
local begin={q.x,q.y,q.z}
local ending={w.x,w.y,w.z}
local bgx=begin[1]+(ending[1]-begin[1])*e
local bgy=begin[2]+(ending[2]-begin[2])*e
local bgz=begin[3]+(ending[3]-begin[3])*e
return Vector3.new(bgx,bgy,bgz)
end
newWeld = function(wld, wp0, wp1, wc0x, wc0y, wc0z)
wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end

local angles = CFrame.Angles
function clerp(a, b, t)
    return a:lerp(b, t)
end

    Player=game:GetService('Players').LocalPlayer
    Character=Player.Character
    Mouse=Player:GetMouse()
    m=Instance.new('Model',Character)


    local function weldBetween(a, b)
        local weldd = Instance.new("ManualWeld")
        weldd.Part0 = a
        weldd.Part1 = b
        weldd.C0 = CFrame.new()
        weldd.C1 = b.CFrame:inverse() * a.CFrame
        weldd.Parent = a
        return weldd
    end
    
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
        fp.CanCollide=false
        fp.Locked=true
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

SP_handle1=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,1,1,"Institutional white","Handle",Vector3.new(1, 1, 1))
SP_handle1weld=weld(m,Character["Torso"],SP_handle1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.74999547, -6.11444473, 0.620022058, -0.000193387386, 0, 1, 0, 1, 0, -1, 0, -0.000193387386))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00576984882, 0.965789318, -0.72409153, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00574964285, 0.730008602, -0.387457848, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00554084778, 0.729041576, -0.0964574814, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00550329685, 0.730109692, -0.692814827, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00558531284, 0.964900494, -0.433077812, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0054795742, 0.965779781, -1.02948284, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00554281473, 1.18382788, -0.745810509, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00557804108, 1.18479204, -1.34222698, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0054641366, -1.21333265, 0.713562965, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00540626049, -0.978675365, 0.986020088, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00549829006, -0.978634357, 0.378368378, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00564825535, -0.978639126, 0.683753967, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00567877293, -1.21342134, 1.01890945, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.858084321, 0.47052592, -1.0912571, -0.144456998, 0.0335990004, 0.988941014, 0.989461005, -0.00517100003, 0.144707993, 0.00997500028, 0.999422014, -0.0324979983))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00700455904, 0.70325923, -0.959688187, -0.945631981, 0.0199919995, 0.324624002, 0.325085014, 0.0274400003, 0.945285976, 0.00999100041, 0.999423981, -0.0324469991))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00036495924, 0.00157260895, -0.378948212, -0.945645988, 0.0199570004, 0.324584991, 0.275761992, 0.578235984, 0.767853022, -0.172362998, 0.815625012, -0.55230999))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.20026112, 1.01999664, -3.27275467, -0.374094009, -0.278982997, 0.884428978, 0.916733027, -0.255385995, 0.307200998, 0.140169993, 0.925710976, 0.351296008))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00693452358, 1.27705622, -1.48209381, -0.945638001, 0.020025, 0.324604988, 0.293458015, -0.377687991, 0.878199995, 0.140184999, 0.925716996, 0.351278991))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.423121452, 0.356069326, 0.948818207, -0.833371997, -0.0178510007, -0.552423, 0.552671015, -0.0388740003, -0.832490981, -0.00661400007, -0.999083996, 0.0422630012))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00706642866, 0.257434845, 0.851150513, -0.945622981, 0.0199619997, 0.324651003, -0.325197011, -0.0378200002, -0.944890022, -0.00658300007, -0.999085009, 0.0422549993))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.413686395, 0.36696744, -3.49423027, 0.849054992, 0.0166859999, 0.528041005, 0.528262019, -0.0394139998, -0.848165989, 0.00665900018, 0.999083996, -0.0422790013))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00710320473, 0.373924255, -0.312577248, -0.945645988, 0.0199570004, 0.324584991, 0.275761992, 0.578235984, 0.767853022, -0.172362998, 0.815625012, -0.55230999))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.455818892, 0.314008892, 0.94887352, -0.211660996, 0.0426589996, 0.976411998, -0.977321029, -0.00255999994, -0.211746007, -0.00653300015, -0.999086022, 0.0422330014))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.20034814, 1.01970267, 1.54720879, 0.373977005, 0.279033989, -0.884467006, 0.916787982, -0.255335987, 0.307090014, -0.140147999, -0.925713003, -0.351303995))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.455871105, 0.31404376, -3.49416161, 0.211688995, -0.0426600017, -0.976399004, -0.977307975, -0.00250599999, -0.211768001, 0.00657900004, 0.999077976, -0.0422159992))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000241100788, 1.09573841, -1.56163406, -0.945638001, 0.020025, 0.324604988, 0.293458015, -0.377687991, 0.878199995, 0.140184999, 0.925716996, 0.351278991))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000422239304, 0.217604637, 0.963777542, -0.945622981, 0.0199619997, 0.324651003, -0.325197011, -0.0378200002, -0.944890022, -0.00658300007, -0.999085009, 0.0422549993))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30294371, 0.885420918, -1.54726028, -0.761346996, 0.327600986, -0.559490025, -0.633014977, -0.189055994, 0.750699997, 0.140155002, 0.925707996, 0.351312995))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.480779171, 0.400110126, 1.13209152, -0.317234993, 0.0421199985, 0.947411001, 0.948324025, 0.00710000005, 0.317225009, 0.006635, 0.999086976, -0.0421960019))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.893934608, 0.399245977, -1.09111977, -0.657805979, -0.0179099999, -0.752973974, -0.753121972, 0.0287950002, 0.657249987, 0.0099109998, 0.999424994, -0.0324300006))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000351011753, 0.309106588, -1.13529968, -0.945631981, 0.0199919995, 0.324624002, 0.325085014, 0.0274400003, 0.945285976, 0.00999100041, 0.999423981, -0.0324469991))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30302477, 0.8854357, -3.27290344, -0.761346996, 0.327600986, -0.559490025, -0.633014977, -0.189055994, 0.750699997, 0.140155002, 0.925707996, 0.351312995))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.562225342, 0.16945672, -0.451105118, 0.0328590013, 0.565239012, 0.824271977, 0.984493017, 0.123885997, -0.124200001, -0.172317997, 0.815572023, -0.552402973))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.568774223, 0.147862434, -0.451151848, -0.457556993, -0.562851012, -0.688351989, -0.872305989, 0.134075001, 0.470212013, -0.172371, 0.815608025, -0.552322984))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.82825613, 0.372303963, -1.27521324, -0.0556700006, 0.0330399983, 0.997901976, -0.998399973, 0.0080500003, -0.0559640005, -0.00988299958, -0.999422014, 0.0325389989))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.517909527, 0.351624012, 1.13204384, -0.767960012, -0.0219550002, -0.640121996, -0.640464008, 0.0366149992, 0.767114997, 0.00659599993, 0.999087989, -0.0421800017))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000411272049, 0.238113165, -1.31920052, -0.945613027, 0.0199580006, 0.324681997, -0.325143993, -0.0275829993, -0.945262015, -0.00990999956, -0.999419987, 0.0325720012))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00705617666, 0.632328987, -1.14365005, -0.945613027, 0.0199580006, 0.324681997, -0.325143993, -0.0275829993, -0.945262015, -0.00990999956, -0.999419987, 0.0325720012))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.795104861, 0.438062787, -1.27512932, -0.722307026, -0.0153240003, -0.691402972, 0.691501021, -0.0303460006, -0.721737981, -0.00992199965, -0.999422014, 0.0325159989))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00716173649, 0.329976797, 1.03442764, -0.945643008, 0.0199950002, 0.324593008, 0.325139999, 0.0376689993, 0.94491601, 0.00666699978, 0.999090016, -0.0421230011))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0071092844, 0.212880135, -0.426103592, -0.94562602, 0.0199389998, 0.324645013, -0.275781006, -0.57833302, -0.767773986, 0.172444001, -0.815557003, 0.552384973))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000362753868, -0.159537315, -0.492559433, -0.94562602, 0.0199389998, 0.324645013, -0.275781006, -0.57833302, -0.767773986, 0.172444001, -0.815557003, 0.552384973))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.406238556, 0.129421473, -0.564650536, -0.501447976, -0.555344999, -0.663432002, 0.847832024, -0.162593007, -0.504721999, 0.172425002, -0.81557101, 0.552371025))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000493407249, 0.290256977, 1.1468792, -0.945643008, 0.0199950002, 0.324593008, 0.325139999, 0.0376689993, 0.94491601, 0.00666699978, 0.999090016, -0.0421230011))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410848618, 0.115944624, -0.564556122, 0.0831089988, 0.570766985, 0.816895008, -0.981518984, -0.0949100032, 0.166171998, 0.172377005, -0.815608025, 0.552330971))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.314009428, 0.455778599, -2.11530304, 0.977316022, 0.00248600007, 0.211774006, 0.211685002, -0.0426490009, -0.976402998, 0.00660499977, 0.999083996, -0.042208001))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.282500327, 0.403693914, 0.159036636, 0.977316022, 0.00248600007, 0.211774006, 0.211685002, -0.0426490009, -0.976402998, 0.00660499977, 0.999083996, -0.042208001))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318927288, 0.374809146, 0.158981323, 0.552743018, -0.0388160013, -0.832446992, -0.833325028, -0.0178350005, -0.552495003, 0.00659900019, 0.999086976, -0.0422049984))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0068616271, 1.2768507, 3.44471741, 0.945634007, -0.0200219993, -0.324615002, 0.293476999, -0.377631009, 0.878216982, -0.140168995, -0.925740004, -0.351224989))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.355938911, -2.11542511, 0.422988176, -0.552738011, 0.0388039984, 0.832450986, 0.00663299998, 0.999089003, -0.0421670005, -0.833329022, -0.0177859999, -0.552491009))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02002048, 1.20017529, 4.82290268, 0.916755974, -0.255362988, 0.307161003, -0.374051005, -0.278997988, 0.884446979, -0.140156999, -0.925715983, -0.351292014))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.31391871, -2.11533928, 0.455697536, -0.977320015, -0.00244700001, -0.211753994, 0.00663299998, 0.999089003, -0.0421580002, 0.211665004, -0.0426069982, -0.976413012))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.885381103, 1.89470673, -1.30288219, 0.633083999, 0.189065993, -0.750639021, -0.140072003, -0.925724983, -0.351301014, -0.761304975, 0.327546, -0.559579015))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.320115089, 0.465985179, -0.0240287781, 0.64051199, -0.0366679989, -0.767072022, 0.767920017, 0.0220030006, 0.640168011, -0.00659599993, -0.999085009, 0.0422509983))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399042845, 0.408298492, -0.893941879, 0.75315702, -0.0288260002, -0.657208979, -0.00985800009, -0.999422014, 0.0325380005, -0.657766998, -0.0180270001, -0.753005981))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.162774801, 0.106959343, -0.536662102, 0.984475017, 0.123953, -0.124277003, 0.172416002, -0.815576971, 0.552365005, -0.0328899994, -0.565217018, -0.824286997))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.885370851, 1.30287886, 4.82299805, 0.633045971, 0.189039007, -0.750678003, 0.761327028, -0.327564001, 0.559538007, -0.140120998, -0.925724983, -0.351283997))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.313928962, 0.455754519, 5.04358101, -0.977333009, -0.00248500006, -0.211693004, 0.211604998, -0.0426400006, -0.976424992, -0.0066010002, -0.999087989, 0.0421999991))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.366624355, 2.11535454, -0.413787365, -0.528245986, 0.0393350013, 0.848179996, -0.0065919999, -0.999086022, 0.0422279984, 0.849066019, 0.0167149995, 0.528023005))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000212371349, 1.24276257, 3.27298737, 0.945634007, -0.0200219993, -0.324615002, 0.293476999, -0.377631009, 0.878216982, -0.140168995, -0.925740004, -0.351224989))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.885434031, 1.14896584, -1.30289316, 0.633083999, 0.189065993, -0.750639021, -0.140072003, -0.925724983, -0.351301014, -0.761304975, 0.327546, -0.559579015))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.142555475, 0.106908798, -0.542834282, 0.872340024, -0.134011999, -0.470174998, 0.172424003, -0.815572977, 0.552367985, -0.457486004, -0.562922001, -0.688350022))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00706321001, 0.257633686, 3.66470337, -0.945622981, 0.0199619997, 0.324651003, -0.325197011, -0.0378200002, -0.944890022, -0.00658300007, -0.999085009, 0.0422549993))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.01984692, -1.89467812, 1.20011854, 0.916751981, -0.255346, 0.307173997, 0.140147001, 0.925728977, 0.351251006, -0.374054015, -0.278957009, 0.884452999))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000419080257, 0.217858791, 3.49420166, -0.945622981, 0.0199619997, 0.324651003, -0.325197011, -0.0378200002, -0.944890022, -0.00658300007, -0.999085009, 0.0422549993))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.01980567, 1.20036578, -1.89455795, -0.916770995, 0.255338013, -0.307137012, -0.374027997, -0.279065013, 0.884434998, 0.140119001, 0.925702989, 0.351341993))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.01977706, 1.20036197, -1.14895821, -0.916770995, 0.255338013, -0.307137012, -0.374027997, -0.279065013, 0.884434998, 0.140119001, 0.925702989, 0.351341993))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399013162, -0.893921375, 1.68682671, -0.753157437, 0.0288682282, 0.657206535, -0.657765388, -0.0179808177, -0.753008246, -0.00992090069, -0.999421477, 0.0325309113))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.885283709, -1.30308914, 1.89460564, -0.633100986, -0.189026996, 0.750635028, -0.76127398, 0.327639997, -0.559566975, -0.140165001, -0.925700009, -0.351330012))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.363104761, 0.432480574, -0.0241565704, 0.948337972, 0.00707300007, 0.317184001, -0.317193002, 0.0421329997, 0.947425008, -0.00666199997, -0.999086976, 0.0421999991))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.366727352, 0.413936615, 5.04359627, -0.528192997, 0.0393359996, 0.848213017, -0.84909898, -0.0167270005, -0.527969003, -0.00657999981, -0.999086022, 0.0422349982))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.169239163, -0.562208176, 0.883575439, -0.984475017, -0.123879999, 0.124349996, -0.0329869986, -0.565241992, -0.824265003, 0.172397003, -0.815569997, 0.552380025))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.147807121, -0.568751335, 0.883630753, -0.87233001, 0.134035006, 0.470187008, -0.457500994, -0.562951028, -0.688314974, 0.172434002, -0.815549016, 0.552401006))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.470418364, -0.858020067, 1.68680191, -0.989470005, 0.00512700016, -0.144648001, 0.144398004, -0.0336580016, -0.988946974, -0.00993900001, -0.999419987, 0.0325630009))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.470497221, 0.408330917, -0.858125329, 0.989459991, -0.00511199981, 0.144718006, -0.00992199965, -0.999421, 0.0325319991, 0.144467995, -0.0336249992, -0.988937974))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.43802309, 0.592123032, -0.795161724, 0.69153899, -0.0303969998, -0.721691012, 0.00995799992, 0.999419987, -0.0325520001, 0.722262025, 0.0153240003, 0.691441))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.122873068, 0.220414162, -0.380642891, 0.847881019, -0.162618995, -0.504630029, -0.172360003, 0.815554976, -0.552411973, 0.501385987, 0.555357993, 0.66346401))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.129430294, -0.406334877, 0.997015953, -0.847860992, 0.162591994, 0.504673004, 0.501428008, 0.555253983, 0.663523018, -0.172337994, 0.815632999, -0.55230701))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.110649943, 0.220441818, -0.38506794, 0.981526017, 0.0949139968, -0.166123003, -0.172361001, 0.81555903, -0.552398026, 0.0830499977, 0.570827007, 0.816851974))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.372350752, 0.59210968, -0.828428984, 0.998400986, -0.0081430003, 0.0559349991, 0.00997400004, 0.999421, -0.032536, -0.0556380004, 0.0330419987, 0.997904003))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.116006494, -0.410948753, 0.997055054, -0.981525004, -0.0948799998, 0.166150004, 0.0831070021, 0.570774972, 0.816890001, -0.172341004, 0.815605998, -0.552344978))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0054448843, -1.44256687, 1.64849663, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00547164679, -1.44252539, 1.0409193, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00553238392, -1.44267464, 1.34630871, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00545209646, -1.21333075, 1.3211689, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00713741779, 1.28637004, -1.67882538, -0.945648015, 0.0199839994, 0.324577004, -0.293444008, 0.377701998, -0.878198028, -0.140143007, -0.925710976, -0.351309001))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.20748258, 1.02564549, 1.74416447, 0.827349007, -0.304351985, 0.472084999, 0.543931007, 0.224465996, -0.80855, 0.140117005, 0.925734997, 0.35125801))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000469923019, 1.10512543, -1.75833511, -0.945648015, 0.0199839994, 0.324577004, -0.293444008, 0.377701998, -0.878198028, -0.140143007, -0.925710976, -0.351309001))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.31086206, 0.890516758, -1.74405384, -0.269176006, -0.305855006, 0.913233995, -0.95284301, 0.222534001, -0.206321001, -0.140120998, -0.925706029, -0.351332992))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.437917233, -0.795230865, 1.87061691, -0.691537023, 0.0304000005, 0.721701026, 0.722271979, 0.0152589995, 0.691441, 0.0100079998, 0.999421, -0.0325089991))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.400029212, -2.29852009, 0.480926991, -0.948341012, -0.00708199991, -0.317173004, -0.00665999996, -0.999086022, 0.0422220007, -0.317182004, 0.0421539992, 0.947427988))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.351667285, 0.518031359, -2.29840469, 0.64051199, -0.0366679989, -0.767072022, 0.767920017, 0.0220030006, 0.640168011, -0.00659599993, -0.999085009, 0.0422509983))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.372390151, -0.828444481, 1.87061787, -0.998401999, 0.00814399961, -0.0559209995, -0.0556249991, 0.0329709984, 0.997906983, 0.00997100025, 0.999423027, -0.0324660018))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02568507, 1.20759964, -1.34572411, -0.543946981, -0.224528998, 0.808520019, -0.82733202, 0.304426998, -0.472063988, -0.140141994, -0.925693989, -0.351350009))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.351634264, -2.29843426, 0.517921209, -0.640506029, 0.0366519988, 0.767077982, -0.00662200013, -0.999086976, 0.0422089994, 0.767925024, 0.0219560005, 0.640164018))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.890498161, 1.34580135, -1.31065249, 0.952844977, -0.222532004, 0.206304997, 0.140138, 0.925723016, 0.351269007, -0.269152999, -0.305790991, 0.913257003))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.89057374, -1.31088495, 2.09141731, -0.952857018, 0.222532004, -0.206260994, -0.269122005, -0.305880994, 0.913241982, 0.140134007, 0.925697982, 0.351348996))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02571321, 1.20763278, -2.09141445, -0.543946981, -0.224528998, 0.808520019, -0.82733202, 0.304426998, -0.472063988, -0.140141994, -0.925693989, -0.351350009))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.412488163, 2.29849815, -0.470071316, -0.938690007, -0.00834599975, -0.344660997, 0.00660499977, 0.999087989, -0.0421810001, 0.344698012, -0.0418719985, -0.937779009))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.890600204, 2.09153271, -1.31066012, 0.952844977, -0.222532004, 0.206304997, 0.140138, 0.925723016, 0.351269007, -0.269152999, -0.305790991, 0.913257003))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.0256536, -2.09157181, 1.2074182, 0.543942988, 0.224501997, -0.808533013, -0.140074998, -0.92573297, -0.351280004, -0.827347994, 0.304331988, -0.472099006))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle1,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00582766533, 1.18466902, -1.03677464, -0.945638001, 0.0199909993, 0.324604988, 0.259066999, -0.55707401, 0.789020002, 0.196602002, 0.830222011, 0.521611989))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.470303774, 0.412559569, -3.67730331, 0.344686002, -0.0419309996, -0.937780976, 0.938695014, 0.008378, 0.34464699, -0.00659500016, -0.999085009, 0.0422479995))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.20749569, 1.02572477, -3.4697094, -0.827344, 0.304374009, -0.472072989, 0.543937981, 0.224530995, -0.80852598, -0.140100002, -0.925710022, -0.351323009))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.517942309, 0.351877093, -3.67735004, 0.767942011, 0.0219560005, 0.640142024, -0.640483975, 0.0366970003, 0.767094016, -0.0066490001, -0.999085009, 0.0422439985))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle1,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.31085253, 0.89054966, -3.46965885, -0.269176006, -0.305855006, 0.913233995, -0.95284301, 0.222534001, -0.206321001, -0.140120998, -0.925706029, -0.351332992))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00725138187, 1.28625536, 3.64153767, 0.945649981, -0.0199970007, -0.32457, -0.293442994, 0.377638996, -0.878225982, 0.140132993, 0.925737023, 0.351245999))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000559151173, 1.25207567, 3.46981907, 0.945649981, -0.0199970007, -0.32457, -0.293442994, 0.377638996, -0.878225982, 0.140132993, 0.925737023, 0.351245999))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000555336475, 0.290035486, 3.67739296, -0.945643008, 0.0199950002, 0.324593008, 0.325139999, 0.0376689993, 0.94491601, 0.00666699978, 0.999090016, -0.0421230011))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00724804401, 0.329701662, 3.847929, -0.945643008, 0.0199950002, 0.324593008, 0.325139999, 0.0376689993, 0.94491601, 0.00666699978, 0.999090016, -0.0421230011))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02548349, 1.2075541, 5.01976109, 0.543964982, 0.224472001, -0.80852598, -0.827323973, 0.304390997, -0.472104013, 0.140134007, 0.92572099, 0.351289988))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.351823926, 0.517732143, 5.22677994, -0.640528977, 0.0366659984, 0.767058015, 0.767904997, 0.0219240002, 0.640187979, 0.00665599992, 0.999086976, -0.0421990007))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.89052701, 1.31031871, 5.0198555, 0.952841997, -0.222521007, 0.206339002, 0.269172996, 0.305752993, -0.913268983, 0.140131995, 0.925742984, 0.351231009))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle1,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.41234839, 0.469959497, 5.22678566, -0.938706994, -0.00832900032, -0.344615996, -0.34465301, 0.0418540016, 0.93779701, 0.00661200006, 0.999089003, -0.0421589985))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
    
    
    
    


SP_handle2=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,1,1,"Institutional white","Handle",Vector3.new(1, 1, 1))
SP_handle2weld=weld(m,Character["Torso"],SP_handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.74999541, -6.18967915, 0.709959507, -0.000193385655, 2.01714895e-010, 1, -0.499999583, 0.866025627, -9.66929219e-005, -0.866025627, -0.499999583, -0.000167476843))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.318912029, 0.490184307, -2.36223698, 0.640478015, -0.0365765989, -0.767105162, 0.767947972, 0.0219302475, 0.640136838, -0.00659199897, -0.999090135, 0.042134583))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.135716319, 0.295978546, -0.376322269, 0.847860992, -0.162620157, -0.504662871, -0.172362998, 0.815574527, -0.552385449, 0.501419008, 0.555330813, 0.66346401))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.40239501, 0.436573505, 4.97986221, -0.528228998, 0.0392614305, 0.848193526, -0.849075973, -0.016678825, -0.528006971, -0.00658299914, -0.999089003, 0.0421466529))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.14229691, -0.401976585, 1.07262611, -0.847859025, 0.162589222, 0.504677296, 0.501420975, 0.555301428, 0.663489103, -0.172371998, 0.815601289, -0.55234313))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.097230196, 0.296030045, -0.386773109, 0.981526971, 0.0948853716, -0.166129798, -0.172340006, 0.815561473, -0.552410185, 0.0830729976, 0.570837855, 0.816849172))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.386069775, -2.36230278, 0.440475941, -0.948354006, -0.0070810318, -0.317160964, -0.00665199896, -0.999094784, 0.042198509, -0.317169994, 0.0421240926, 0.947433829))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128933191, 1.17979527, 3.23150253, 0.945630014, -0.0199176371, -0.324632645, 0.293520004, -0.377699137, 0.878174305, -0.140103996, -0.925714731, -0.351317614))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0061763525, 0.289402723, 3.91166019, -0.945648015, 0.020007804, 0.324574828, 0.325123012, 0.0377299786, 0.94491899, 0.00665999902, 0.999087572, -0.0421850681))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.182556152, -0.559828281, 0.808006287, -0.984471023, -0.123908147, 0.124350846, -0.0329790004, -0.565206647, -0.82428962, 0.172419995, -0.81559056, 0.552343845))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.291921794, 0.44536829, 0.222829819, 0.977321029, 0.00250957161, 0.211746871, 0.211658999, -0.0426444709, -0.97641319, 0.00657999888, 0.999086618, -0.0422087908))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0188682079, -1.04897594, 1.0137558, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14274788, 0.990169048, -3.23143864, -0.374114007, -0.278952479, 0.8844347, 0.916732013, -0.255359173, 0.307235122, 0.140145004, 0.925730407, 0.351258874))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.019012928, 0.895496368, -1.00175476, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.436714649, 0.402758837, -3.43048096, 0.849053025, 0.0167142153, 0.528044343, 0.528267026, -0.0393388569, -0.848169565, 0.00659399899, 0.999088407, -0.0422317386))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0063662529, 1.34953403, 3.68287468, 0.945648015, -0.0199591964, -0.324578643, -0.293462008, 0.37765485, -0.878211141, 0.140105993, 0.925729394, 0.351271063))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0131651163, 0.26795435, -1.07196426, -0.945643008, 0.0199587643, 0.324593902, 0.32505399, 0.0274415016, 0.945296824, 0.00995999947, 0.999424458, -0.0324376225))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.402704477, 2.05158806, -0.43671155, -0.528244972, 0.0393484533, 0.848180294, -0.00659899926, -0.999085724, 0.0422382951, 0.849066019, 0.0167151242, 0.528021872))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.839877605, 1.25725365, 4.78155994, 0.63301897, 0.189091861, -0.750687778, 0.761353016, -0.327568531, 0.559500933, -0.140104994, -0.92571187, -0.35132274))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.463573098, 0.345012665, -0.815327644, 0.989462018, -0.00507778302, 0.144701138, -0.0098899994, -0.999420762, 0.0325579047, 0.144452006, -0.0336461067, -0.988939524))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0131175518, -0.160538673, -0.56811142, -0.945614994, 0.0199980885, 0.32467398, -0.275833011, -0.578350663, -0.767741621, 0.172422007, -0.815543771, 0.552412689))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00641655922, 0.211847782, -0.501665115, -0.945614994, 0.0199980885, 0.32467398, -0.275833011, -0.578350663, -0.767741621, 0.172422007, -0.815543771, 0.552412689))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.07628775, 1.24782372, -2.1328516, -0.543915987, -0.2245197, 0.808545113, -0.827355981, 0.304396063, -0.472044826, -0.140135005, -0.925707936, -0.351323843))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.913594007, -1.37116909, 2.13288498, -0.952867985, 0.222489193, -0.206255466, -0.269095004, -0.305843353, 0.913262367, 0.140109003, 0.925721169, 0.351298928))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128772259, 0.249707699, 3.74114132, -0.945648015, 0.020007804, 0.324574828, 0.325123012, 0.0377299786, 0.94491899, 0.00665999902, 0.999087572, -0.0421850681))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.323507488, 0.497468472, -2.05152893, 0.977321029, 0.00250957161, 0.211746871, 0.211658999, -0.0426444709, -0.97641319, 0.00657999888, 0.999086618, -0.0422087908))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0189540386, -1.51295471, 1.37406731, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.319176912, -2.36218357, 0.49025774, -0.640497983, 0.0366939306, 0.767082453, -0.00664599892, -0.999084949, 0.0422435999, 0.767930984, 0.0219587386, 0.64015615))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.990128517, 1.14284229, -1.10763168, -0.916751027, 0.255376339, -0.307165354, -0.374060005, -0.278998554, 0.884442866, 0.140166998, 0.925712645, 0.351298064))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0064343214, 0.67361021, -1.20691872, -0.945648015, 0.0198989213, 0.324582279, -0.325040996, -0.0274623632, -0.945300996, -0.00989699923, -0.999424994, 0.0324367285))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102555513, -0.41268301, 1.07259083, -0.98152101, -0.0948881656, 0.166172966, 0.0831290036, 0.570734382, 0.81691587, -0.172356993, 0.815633535, -0.55229938))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00630950928, 0.289529085, 1.09816551, -0.945648015, 0.020007804, 0.324574828, 0.325123012, 0.0377299786, 0.94491899, 0.00665999902, 0.999087572, -0.0421850681))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.371003389, -0.86103797, 1.62337875, -0.753188014, 0.0288263261, 0.657173216, -0.657729983, -0.0178900957, -0.753041148, -0.00995099917, -0.999424577, 0.0324353874))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.25725031, 0.839634418, -1.50592518, -0.761341989, 0.327583909, -0.559506357, -0.633023977, -0.189053029, 0.750693083, 0.140138, 0.925715148, 0.351302415))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.176143408, 0.0314159393, -0.534275055, 0.984476984, 0.123937994, -0.124279171, 0.172405005, -0.81557405, 0.552372396, -0.0328989998, -0.565223634, -0.824281037))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.24769402, 1.07627964, 1.78553772, 0.827367008, -0.304336429, 0.472060055, 0.543902993, 0.224479616, -0.808562398, 0.140110001, 0.925734401, 0.351257771))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00625407696, 1.21386814, 3.40324974, 0.945630014, -0.0199176371, -0.324632645, 0.293520004, -0.377699137, 0.878174305, -0.140103996, -0.925714731, -0.351317614))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0192779303, 0.895517349, -0.696343422, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.490240812, 0.319052935, 1.19580841, -0.767931998, -0.0219501853, -0.640155375, -0.640497029, 0.0366167128, 0.767086625, 0.00660299929, 0.999088466, -0.0421775281))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0191556215, -1.2837286, 1.04663658, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.12953496, 0.0313777924, -0.546439171, 0.872326016, -0.13404274, -0.4701913, 0.172423005, -0.815558672, 0.552388966, -0.457511991, -0.562935114, -0.688321114))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.370954514, 0.344926834, -0.860914946, 0.753189981, -0.0288462937, -0.657169819, -0.00988799892, -0.999421716, 0.0325364769, -0.657728016, -0.0180082917, -0.753039956))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.323361397, -2.05159378, 0.497298241, -0.977322996, -0.00244020671, -0.211740732, 0.00662899902, 0.999090672, -0.0421117842, 0.211650997, -0.042560488, -0.97641772))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.871561527, 0.37545836, -1.33848763, -0.0557060018, 0.0329880714, 0.99790585, -0.998401999, 0.00811542943, -0.0559957027, -0.00994899869, -0.999429107, 0.0324795842))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.440415144, 0.386130929, 1.19585419, -0.317292988, 0.0421622097, 0.947389901, 0.948303998, 0.0070477128, 0.31728524, 0.00669999886, 0.999085605, -0.0422185659))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.0762825, -2.13287544, 1.24777937, 0.543935001, 0.224522203, -0.808532715, -0.140104994, -0.925714254, -0.35131678, -0.827349007, 0.304372489, -0.472071618))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.913836002, 2.13287067, -1.37103081, 0.95283699, -0.22256957, 0.206312254, 0.140173003, 0.925716281, 0.351284355, -0.269172013, -0.305798113, 0.913254619))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.990162849, 1.14279938, -1.8532362, -0.916751027, 0.255376339, -0.307165354, -0.374060005, -0.278998554, 0.884442866, 0.140166998, 0.925712645, 0.351298064))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0132068396, 1.03254509, -1.52022934, -0.945643008, 0.0199998021, 0.324590981, 0.293449998, -0.37771067, 0.878192425, 0.140165001, 0.925707936, 0.351309985))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0131059885, 1.16834641, -1.79972172, -0.945653021, 0.0199458748, 0.32456553, -0.293446004, 0.377704144, -0.878195643, -0.140105993, -0.925711513, -0.351324081))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00639820099, 0.297686577, 3.60097122, -0.945653021, 0.0199476033, 0.324564546, -0.325109005, -0.0376881659, -0.944924653, -0.00661699893, -0.999090672, 0.0421256721))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.412526131, 0.102494955, -0.640183449, 0.0830539986, 0.57081908, 0.816864669, -0.98150599, -0.0950148553, 0.166189536, 0.172479004, -0.815559745, 0.552371085))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0130589008, 1.31537342, 3.5111599, 0.945648015, -0.0199591964, -0.324578643, -0.293462008, 0.37765485, -0.878211141, 0.140105993, 0.925729394, 0.351271063))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.397277951, 2.36230183, -0.43005991, -0.938692987, -0.00830970705, -0.344655126, 0.00663099904, 0.99908936, -0.042147994, 0.344691992, -0.0418485701, -0.937782645))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.375437707, 0.655433655, -0.87165308, 0.998399019, -0.00815558061, 0.0559761599, 0.00998699944, 0.999417782, -0.0325191915, -0.0556790009, 0.0330266356, 0.997898579))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.287615538, 0.438280344, -0.0878658295, 0.640478015, -0.0365765989, -0.767105162, 0.767947972, 0.0219302475, 0.640136838, -0.00659199897, -0.999090135, 0.042134583))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.019110322, 0.894618034, -0.405339241, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.825607061, 0.468871593, -1.33843613, -0.722279012, -0.0152840614, -0.69143337, 0.691529989, -0.030354172, -0.721709549, -0.00995699875, -0.999421954, 0.0324939191))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.989991665, 1.14282322, 4.78156853, 0.916768014, -0.255304575, 0.30717358, -0.374042988, -0.279007703, 0.884446979, -0.140100002, -0.925729036, -0.351280481))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00646400452, 0.662065506, -0.896339417, -0.945643008, 0.0199587643, 0.324593902, 0.32505399, 0.0274415016, 0.945296824, 0.00995999947, 0.999424458, -0.0324376225))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.468886137, 0.655513763, -0.825591087, 0.691583991, -0.0303613842, -0.721658051, 0.00990799908, 0.999420702, -0.0325520933, 0.722229004, 0.0153627992, 0.691483736))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0191069841, -1.04892159, 0.71149826, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.07629538, 1.2478013, -1.38714314, -0.543915987, -0.2245197, 0.808545113, -0.827355981, 0.304396063, -0.472044826, -0.140135005, -0.925707936, -0.351323843))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0129871368, 0.257900238, 3.43045425, -0.945653021, 0.0199476033, 0.324564546, -0.325109005, -0.0376881659, -0.944924653, -0.00661699893, -0.999090672, 0.0421256721))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.375479639, -0.871661663, 1.93397617, -0.998400986, 0.00815895759, -0.0559423119, -0.0556450002, 0.0329711139, 0.997906446, 0.00998699944, 0.999423325, -0.0324635208))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0129833221, 0.249793291, 1.21062469, -0.945648015, 0.020007804, 0.324574828, 0.325123012, 0.0377299786, 0.94491899, 0.00665999902, 0.999087572, -0.0421850681))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.839609623, 1.85331154, -1.25724363, 0.633065999, 0.189052045, -0.750656724, -0.140101999, -0.92572248, -0.351297021, -0.761313975, 0.327562451, -0.559557438))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0193712711, 1.11441612, -1.00902653, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.468774557, -0.825696707, 1.93396282, -0.691567004, 0.03040573, 0.721672893, 0.722243011, 0.0152594149, 0.691470683, 0.0100129992, 0.999421239, -0.0325131118))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00640046597, 0.297836781, 0.787420273, -0.945653021, 0.0199476033, 0.324564546, -0.325109005, -0.0376881659, -0.944924653, -0.00661699893, -0.999090672, 0.0421256721))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0192292929, 0.659740448, -0.359695435, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.349162579, 0.392101765, -0.0879173279, 0.948329985, 0.00707650185, 0.317205101, -0.317214012, 0.0421441197, 0.947416484, -0.00666399905, -0.999086499, 0.042211026))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0189576149, -1.04891491, 0.406126022, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.839641571, -1.25734711, 1.85322762, -0.633090019, -0.189075977, 0.750631273, -0.761291981, 0.32760796, -0.559560657, -0.140112996, -0.925701618, -0.351347148))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.463681519, -0.815413475, 1.62330818, -0.989457011, 0.00514969602, -0.144734561, 0.144484997, -0.0335232913, -0.988938808, -0.00994499866, -0.999424219, 0.03242594))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0190281868, 0.659790039, -0.665107727, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.839658737, 1.10765457, -1.25719261, 0.633054972, 0.1890423, -0.750669599, -0.140071005, -0.925742805, -0.3512564, -0.761328995, 0.327510834, -0.559566915))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.37121773, 0.913583517, -1.78544044, -0.26918301, -0.305863202, 0.913229942, -0.952845991, 0.222506687, -0.206337154, -0.140089005, -0.925709963, -0.351335377))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.134806752, -0.572377205, 0.808067322, -0.872304976, 0.134085014, 0.470238507, -0.457576007, -0.5629251, -0.688295662, 0.172416002, -0.815570235, 0.552382946))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0189436674, -1.51281834, 1.0686264, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.24764013, 1.07634354, -3.51111412, -0.827381015, 0.304346621, -0.472032428, 0.543888986, 0.224538565, -0.808558285, -0.140092999, -0.925719142, -0.351309329))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0190786123, 0.658753395, -0.0687332153, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.25731325, 0.839627743, -3.23154926, -0.761341989, 0.327583909, -0.559506357, -0.633023977, -0.189053029, 0.750693083, 0.140138, 0.925715148, 0.351302415))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0130431652, 0.258029938, 0.900024414, -0.945653021, 0.0199476033, 0.324564546, -0.325109005, -0.0376881659, -0.944924653, -0.00661699893, -0.999090672, 0.0421256721))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.815293312, 0.463591516, -1.02794075, -0.144452006, 0.0336143672, 0.988940597, 0.989462018, -0.00512565672, 0.144702226, 0.0099329995, 0.999421716, -0.032520324))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.1429081, 0.989974976, 1.50585365, 0.374042988, 0.279025972, -0.884441376, 0.916769981, -0.255302519, 0.307171226, -0.140092, -0.925724149, -0.351296037))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.430084705, 0.397243619, -3.74112988, 0.34465301, -0.0418610275, -0.937796175, 0.938706994, 0.00832527876, 0.344616115, -0.00661799917, -0.999089301, 0.0421641171))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.018905282, -1.28363323, 1.34890747, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.860911608, 0.371115208, -1.02778053, -0.657773018, -0.0179186761, -0.753002763, -0.753149986, 0.0288508236, 0.657215655, 0.00994799938, 0.999422848, -0.0324724615))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0188840628, -1.51284981, 1.67623711, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0063829422, 0.374873638, -0.237018585, -0.945639014, 0.0200032145, 0.324602872, 0.275797009, 0.578256667, 0.767824769, -0.172344998, 0.815609634, -0.552338719))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.391340256, -2.0516243, 0.446946859, -0.552748978, 0.0388362408, 0.832450986, 0.00664999895, 0.999088049, -0.0421922803, -0.833329976, -0.017789349, -0.552502513))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.559854031, 0.182745934, -0.375543594, 0.0328989998, 0.565225124, 0.8242836, 0.984489977, 0.123884425, -0.124245942, -0.172343999, 0.815582752, -0.552383244))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.913577557, 1.38717556, -1.37104702, 0.952852011, -0.222509444, 0.206306398, 0.14012, 0.925728619, 0.351273805, -0.269145995, -0.305804014, 0.91326046))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0189427137, -1.28362751, 0.741285324, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.572406769, 0.13484776, -0.375572205, -0.457569987, -0.562843263, -0.688357949, -0.872300982, 0.134046793, 0.470236272, -0.172397003, 0.815621078, -0.552304864))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.323440015, 0.497101307, 4.97980309, -0.977313995, -0.00250028074, -0.211748779, 0.211661994, -0.0425799787, -0.976413488, -0.00657599885, -0.999084949, 0.0421477258))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00641798973, 1.34959126, -1.72021675, -0.945653021, 0.0199458748, 0.32456553, -0.293446004, 0.377704144, -0.878195643, -0.140105993, -0.925711513, -0.351324081))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.497495174, 0.323418498, -3.4304409, 0.211675003, -0.042647779, -0.976408899, -0.977317989, -0.00248321891, -0.211763248, 0.00660699885, 0.999087214, -0.0422056615))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0131610632, 0.279503822, -1.38253021, -0.945648015, 0.0198989213, 0.324582279, -0.325040996, -0.0274623632, -0.945300996, -0.00989699923, -0.999424994, 0.0324367285))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.401984692, 0.142261267, -0.640175819, -0.501402974, -0.55528295, -0.663517118, 0.847862005, -0.162526518, -0.504692733, 0.172408998, -0.815625727, 0.55229485))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0190532207, 1.11355877, -0.718055725, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354311943, 0.398738384, 0.22278595, 0.552742004, -0.0388320982, -0.832441866, -0.833320975, -0.0178779513, -0.552486002, 0.006564999, 0.99908042, -0.04223755))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.447050333, 0.391303301, 0.885082245, -0.833337009, -0.0178147852, -0.552478552, 0.552725971, -0.0387951136, -0.832459807, -0.00660299929, -0.999088645, 0.0421752632))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00652968884, 1.21386719, -1.44067574, -0.945643008, 0.0199998021, 0.324590981, 0.293449998, -0.37771067, 0.878192425, 0.140165001, 0.925707936, 0.351309985))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.990123749, -1.85331917, 1.14269733, 0.916742027, -0.255344957, 0.307217687, 0.140137002, 0.925732851, 0.351255149, -0.374092996, -0.278957397, 0.884442151))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.013122201, 0.00251865387, -0.303384781, -0.945639014, 0.0200032145, 0.324602872, 0.275797009, 0.578256667, 0.767824769, -0.172344998, 0.815609634, -0.552338719))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.497448921, 0.323316693, 0.885189056, -0.211603999, 0.0425955355, 0.976426423, -0.977333009, -0.00242896378, -0.211695269, -0.00664599892, -0.999089658, 0.0421435535))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.490568161, 0.318952799, -3.74114418, 0.76791501, 0.0220291615, 0.640172124, -0.64051801, 0.0365938246, 0.767071009, -0.00652799895, -0.999087811, 0.0422106385))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle2,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0190984011, 1.11452389, -1.31448936, -0.945640981, 0.0200113654, 0.324597001, 0.259048998, -0.557073951, 0.789026022, 0.196613997, 0.830221951, 0.521607459))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.319185734, 0.489960909, 5.290555, -0.640547991, 0.0366495252, 0.767043471, 0.767889023, 0.0219053924, 0.640207767, 0.00666099926, 0.999088228, -0.0421739221))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.07612705, 1.24763536, 5.06115532, 0.543911994, 0.224485815, -0.808557868, -0.827360988, 0.30435431, -0.472061098, 0.140118003, 0.925729036, 0.351272404))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.397109628, 0.42994976, 5.29056644, -0.938701987, -0.00830946863, -0.344628692, -0.344664991, 0.0418459773, 0.937792182, 0.00662899902, 0.999089956, -0.0421448946))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle2,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.91337204, 1.37078285, 5.0612793, 0.952861011, -0.222463116, 0.206316605, 0.269134998, 0.305779099, -0.913273692, 0.140080005, 0.925750136, 0.351237059))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle2,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.3712616, 0.91362071, -3.5110445, -0.26918301, -0.305863202, 0.913229942, -0.952845991, 0.222506687, -0.206337154, -0.140089005, -0.925709963, -0.351335377))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
    
    
    
    


SP_handle3=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,1,1,"Institutional white","Handle",Vector3.new(1, 1, 1))
SP_handle3weld=weld(m,Character["Torso"],SP_handle3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.749995351, -6.1984148, 0.169951916, -0.000193387372, 7.24698079e-012, 1, -0.819151759, 0.573574185, -0.000158413633, -0.573575079, -0.819152236, -0.000110922199))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00561976433, 1.35017681, 3.68936634, 0.945649981, 0.00841107965, -0.325067937, -0.293449014, 0.452777177, -0.841945529, 0.140099004, 0.891581953, 0.430637598))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.07608891, -2.13951921, 1.24846411, 0.543871999, 0.294137239, -0.785929322, -0.140056998, -0.891604841, -0.430608392, -0.827398002, 0.344270706, -0.443723232))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0181486607, -1.28548527, 0.747611523, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.407278538, 0.102237701, -0.644156456, 0.0830859989, 0.497457147, 0.863499403, -0.98150599, -0.109106869, 0.15729636, 0.172463, -0.860597849, 0.479192734))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.463849068, 0.338787079, -0.817559242, 0.989461005, -0.0176936015, 0.143712208, -0.0099109998, -0.998452306, -0.0546864569, 0.144457996, 0.0526854694, -0.98810637))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0181255341, -1.51464462, 1.07496595, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0182955265, 0.656879425, -0.0624504089, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.400754452, 2.04538918, -0.435508251, -0.528214991, -0.0347111225, 0.848400712, -0.00660600001, -0.998964548, -0.0449847877, 0.849084973, -0.0293656886, 0.527438998))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00559854507, 0.295730114, 0.781200409, -0.945650995, -0.00844369829, 0.325086653, -0.325130999, 0.0447389781, -0.944610119, -0.00656899996, -0.998964906, -0.0450558364))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0184893608, 0.893602371, -0.69007349, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.989099979, -1.84677315, 1.1427803, 0.916746974, -0.281132966, 0.283793867, 0.140122995, 0.891598642, 0.430597991, -0.374085993, -0.354982048, 0.856764436))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0180957317, -1.51465225, 1.68256521, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0760355, 1.24873543, -1.39366722, -0.543944001, -0.294154286, 0.785873413, -0.827342987, 0.344371378, -0.443746746, -0.140101999, -0.891560376, -0.430685878))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.4458251, 0.38931942, 0.878892899, -0.833343983, 0.0303759724, -0.551919758, 0.552716017, 0.0339496136, -0.832676947, -0.00655600009, -0.998960197, -0.0450818241))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.495184422, 0.322865129, 0.878969193, -0.211636007, -0.0426437259, 0.976417065, -0.977325976, 0.0160336867, -0.211131901, -0.00665300013, -0.998960435, -0.0450710058))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.565099716, 0.183267355, -0.37154007, 0.0328769982, 0.491212547, 0.870417833, 0.98448801, 0.134258598, -0.112953708, -0.172345996, 0.860628247, -0.479178727))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.491647243, 0.320889473, 1.20200539, -0.767949998, 0.0339439511, -0.639609635, -0.640475988, -0.0303719938, 0.767376661, 0.00662200013, 0.998960853, 0.0450651944))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0182957649, -1.05076599, 0.717803955, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.989174366, 1.14289856, -1.10107899, -0.916751981, 0.281183898, -0.283728927, -0.374054015, -0.355018944, 0.856763005, 0.140178993, 0.891567945, 0.430643618))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14296722, 0.988948345, 1.49935436, 0.374033988, 0.355045825, -0.856761336, 0.916777015, -0.281074375, 0.283755541, -0.140067995, -0.891592145, -0.430630028))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0124075413, 0.270011902, -1.06574631, -0.945635021, -0.00835710764, 0.325121641, 0.325076014, -0.0549991131, 0.944086432, 0.00999100041, 0.998450041, 0.0547263324))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0180716515, -1.05080795, 1.02005291, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0181500912, -1.05077839, 0.412428379, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.81751442, 0.463935852, -1.02171612, -0.144490004, -0.0526815057, 0.988104224, 0.989458978, -0.0177489035, 0.143740624, 0.00996499974, 0.998452306, 0.054690063))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.989190102, 1.14287376, -1.84666729, -0.916751981, 0.281183898, -0.283728927, -0.374054015, -0.355018944, 0.856763005, 0.140178993, 0.891567945, 0.430643618))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00570750237, 0.664123535, -0.890149117, -0.945635021, -0.00835710764, 0.325121641, 0.325076014, -0.0549991131, 0.944086432, 0.00999100041, 0.998450041, 0.0547263324))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.862560749, 0.372615337, -1.02160263, -0.657774985, 0.0477690697, -0.7516976, -0.753148973, -0.0285298526, 0.657230735, 0.00994999986, 0.998448789, 0.0547437966))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.491879463, 0.320812225, -3.74731636, 0.767944992, -0.0338740349, 0.639619589, -0.640483022, -0.030389607, 0.767370403, -0.00655600009, -0.998962402, -0.0450333059))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.322924256, 0.495000839, 4.97362804, -0.977316976, 0.0159795433, -0.211178362, 0.211678997, 0.0426424444, -0.976408243, -0.00659700017, -0.998961031, -0.0450579822))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0122528076, 0.255928993, 0.893838882, -0.945650995, -0.00844369829, 0.325086653, -0.325130999, 0.0447389781, -0.944610119, -0.00656899996, -0.998964906, -0.0450558364))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0181632042, -1.51479912, 1.38037634, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.397151947, 0.14020896, -0.644178391, -0.501421988, -0.495361805, -0.709360003, 0.847846985, -0.117929026, -0.5169608, 0.172428995, -0.860643148, 0.479123175))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0123345852, -0.165696144, -0.572116852, -0.945644975, -0.0084451735, 0.325090468, -0.275736004, -0.509159386, -0.81530714, 0.172408998, -0.860628903, 0.479155123))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.372556686, -0.862640858, 1.6172142, -0.753176987, -0.0285632014, 0.657196403, -0.657742977, 0.0477603078, -0.751726925, -0.00991600007, -0.99844873, -0.0547596216))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.24863625, 1.07616901, -3.5176115, -0.827387989, 0.344341993, -0.443685532, 0.543874979, 0.294174641, -0.785912931, -0.140101999, -0.891564429, -0.430676579))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.442635536, 0.386842728, 1.20203304, -0.317268997, -0.0405791104, 0.947466671, 0.948311985, -0.0205976367, 0.316669166, 0.00666500023, 0.998962462, 0.0450174809))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.869317532, 0.375377804, -1.34466648, -0.0556689985, -0.054125607, 0.996980071, -0.998399019, 0.0129500218, -0.0550460555, -0.00993099995, -0.998447299, -0.0547598898))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00572609901, 1.2132616, -1.43418598, -0.945644975, -0.00836071372, 0.325109363, 0.293462008, -0.452783316, 0.841947317, 0.140164003, 0.891581237, 0.430621147))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0182361603, 0.657887459, -0.658830166, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0183439255, -1.28556061, 1.0529418, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.467139721, -0.824126244, 1.9401741, -0.691560984, -0.0326350629, 0.721579313, 0.722248971, -0.0450371802, 0.690164506, 0.00997500028, 0.998450518, 0.0547169447))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0124258995, 1.03193283, -1.5137558, -0.945644975, -0.00836071372, 0.325109363, 0.293462008, -0.452783316, 0.841947317, 0.140164003, 0.891581237, 0.430621147))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00553035736, 1.21320629, 3.39674568, 0.945631981, 0.00844329596, -0.325129658, 0.293518007, -0.452768505, 0.841929674, -0.140100002, -0.891585946, -0.430631846))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.37141514, 0.914728642, -3.517488, -0.26919201, -0.384321958, 0.883079827, -0.952839017, 0.239682436, -0.186144352, -0.14012, -0.891541004, -0.43071875))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.577333927, 0.136631966, -0.371623993, -0.457565993, -0.500735164, -0.734776556, -0.872309983, 0.0926064253, 0.480102658, -0.172360003, 0.860630631, -0.479169786))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14286709, 0.989100933, -3.22495079, -0.374098003, -0.354982555, 0.856761634, 0.916745007, -0.281133533, 0.28380689, 0.140118003, 0.891599476, 0.430598587))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.176638365, 0.0274448395, -0.539523602, 0.984471023, 0.13431187, -0.113038488, 0.172435999, -0.860585213, 0.47922352, -0.0329140015, -0.49127388, -0.870382667))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0123057365, 0.277349949, -1.38873386, -0.945638001, -0.00842429698, 0.32511121, -0.32506901, 0.0550276935, -0.944087207, -0.00993700046, -0.998447835, -0.0547748506))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.018134594, -1.28544521, 1.35522413, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.018545866, 1.11250687, -1.00275946, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0184514523, 0.65782547, -0.353464603, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00561904907, 0.380084038, -0.233045578, -0.945649981, -0.00837637484, 0.325077653, 0.275757998, 0.509160697, 0.815298259, -0.172346994, 0.860629082, -0.479178131))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.839990616, 1.84679413, -1.25633812, 0.633059978, 0.253766179, -0.731327713, -0.140093997, -0.891588509, -0.430642188, -0.761322975, 0.375075012, -0.528881133))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0183250904, 0.892704964, -0.399085522, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0056707859, 1.35019207, -1.72672462, -0.945649028, -0.00842247903, 0.325080752, -0.293455988, 0.452827632, -0.841919959, -0.140114993, -0.891556382, -0.430688024))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389267445, -2.0454464, 0.445735931, -0.552766979, -0.0339186788, 0.832644939, 0.0066010002, 0.998960018, 0.0450767577, -0.833310008, 0.0304125994, -0.551968575))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.323024154, 0.495242119, -2.0453186, 0.977315009, -0.0159720108, 0.21118851, 0.211688995, 0.04258883, -0.976406693, 0.0066010002, 0.998962462, 0.0450052917))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00559186935, 0.671534538, -1.21310329, -0.945638001, -0.00842429698, 0.32511121, -0.32506901, 0.0550276935, -0.944087207, -0.00993700046, -0.998447835, -0.0547748506))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.291503787, 0.443075657, 0.229009628, 0.977315009, -0.0159720108, 0.21118851, 0.211688995, 0.04258883, -0.976406693, 0.0066010002, 0.998962462, 0.0450052917))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.25654316, 0.839886665, -3.22498322, -0.761322975, 0.375133514, -0.528830409, -0.633038998, -0.253731042, 0.731355965, 0.140175998, 0.891567647, 0.430645883))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.435650349, 0.400854111, -3.42425442, 0.849052012, -0.0293355137, 0.527491808, 0.528266013, 0.0347094834, -0.848365247, 0.00658100005, 0.998963833, 0.0449684262))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.320950985, -2.36834717, 0.491744518, -0.640497983, -0.0303247273, 0.767359674, -0.00660699978, -0.998963833, -0.0449928045, 0.767930984, -0.0338871181, 0.639634788))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.018269062, 1.11164665, -0.711820126, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0121514797, 1.17913532, 3.22498989, 0.945631981, 0.00844329596, -0.325129658, 0.293518007, -0.452768505, 0.841929674, -0.140100002, -0.891585946, -0.430631846))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.352334023, 0.397546768, 0.228942871, 0.552776992, 0.0338952243, -0.832639337, -0.833302975, 0.0303948224, -0.55197978, 0.00659799995, 0.99896121, 0.0450471342))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0122306347, 0.252039909, 1.21677685, -0.945644021, -0.00837676227, 0.325095654, 0.325136006, -0.0447039902, 0.944608986, 0.00662000012, 0.998964071, 0.0449978113))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0121312141, 0.255943298, 3.42425346, -0.945650995, -0.00844369829, 0.325086653, -0.325130999, 0.0447389781, -0.944610119, -0.00656899996, -0.998964906, -0.0450558364))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.183146, -0.565052509, 0.804014206, -0.984476984, -0.134306535, 0.112987287, -0.0328859985, -0.491202205, -0.870424032, 0.172404006, -0.860627055, 0.479161263))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.140179157, -0.397130728, 1.07658768, -0.847877979, 0.118018314, 0.516889036, 0.501401007, 0.495375037, 0.709365606, -0.172336996, 0.860623121, -0.479192138))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.840251923, 1.25616646, 4.7750597, 0.633011997, 0.253803939, -0.73135376, 0.761363983, -0.375044525, 0.528834105, -0.140071005, -0.891584039, -0.430645108))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.320811272, 0.491652012, -2.36838531, 0.640443027, 0.0304017365, -0.767403424, 0.767978013, -0.033914417, 0.639577866, -0.00658199983, -0.998960733, -0.0450687706))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.24868679, 1.07602596, 1.79203606, 0.827349007, -0.344349355, 0.443741441, 0.543919981, 0.29409951, -0.785903215, 0.140123993, 0.891583264, 0.430628717))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.988874435, 1.14295292, 4.77504349, 0.916776001, -0.281072497, 0.283758104, -0.374035001, -0.355041385, 0.856761932, -0.140066996, -0.891594172, -0.430625319))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.432393074, 0.398221493, -3.74727821, 0.344653994, 0.0400069952, -0.937876523, 0.938706994, -0.0216730535, 0.344034195, -0.00656299992, -0.998963118, -0.0450252593))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00552463531, 0.295747757, 3.59478569, -0.945650995, -0.00844369829, 0.325086653, -0.325130999, 0.0447389781, -0.944610119, -0.00656899996, -0.998964906, -0.0450558364))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.372509003, 0.338727951, -0.86254549, 0.75316298, 0.0285161734, -0.657214701, -0.00988600031, -0.998455048, -0.0546529591, -0.657759011, 0.0476591587, -0.751718402))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.25641441, 0.839912415, -1.49936295, -0.761322975, 0.375133514, -0.528830409, -0.633038998, -0.253731042, 0.731355965, 0.140175998, 0.891567647, 0.430645883))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.07605171, 1.2484479, 5.06769371, 0.543897986, 0.294134229, -0.785905838, -0.827369988, 0.344312727, -0.443729162, 0.140081003, 0.891587853, 0.43063432))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.375327945, 0.661680222, -0.869375706, 0.998399973, -0.0129472371, 0.05504556, 0.00993399974, 0.998452961, 0.0546820462, -0.0556689985, -0.0540472567, 0.996984899))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.322920561, -2.0453577, 0.495168686, -0.977321029, 0.0160136968, -0.211155653, 0.006635, 0.998961091, 0.0450543761, 0.211658001, 0.0426308513, -0.976412654))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0123112202, 1.31601906, 3.51765966, 0.945649981, 0.00841107965, -0.325067937, -0.293449014, 0.452777177, -0.841945529, 0.140099004, 0.891581953, 0.430637598))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.914561749, 1.39370823, -1.37108994, 0.952854991, -0.239649922, 0.186104864, 0.140138, 0.891590297, 0.4306117, -0.269125998, -0.384229302, 0.883141041))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.136589766, -0.577403545, 0.804008484, -0.872334003, 0.0925380141, 0.480073094, -0.457509011, -0.500737011, -0.73481071, 0.172392994, -0.860636711, 0.479147136))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.131325722, 0.0273952484, -0.551392078, 0.872326016, -0.0925438702, -0.480085731, 0.172434002, -0.860592961, 0.47920835, -0.457507014, -0.500808597, -0.734760761))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.349838018, 0.394323349, -0.094086647, 0.948341012, -0.0205164403, 0.316588104, -0.317184001, -0.0406053066, 0.947493553, -0.00658399984, -0.998962879, -0.0450152755))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.495267391, 0.322941065, -3.42423248, 0.211704999, 0.0425957739, -0.976404309, -0.977311015, 0.0159959272, -0.211203516, 0.00662200013, 0.998962283, 0.0450161099))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.375359833, -0.869326591, 1.94020939, -0.998401999, 0.0129667278, -0.0550001785, -0.0556249991, -0.0540816486, 0.996985197, 0.00995399989, 0.998451352, 0.0547175109))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.38686657, -2.36845398, 0.442763329, -0.948347986, 0.0205550045, -0.316564709, -0.00663099997, -0.998964071, -0.0449978113, -0.317162007, -0.0405736268, 0.947502375))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0182247162, 0.893579483, -0.99548769, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.133603811, 0.299964905, -0.371508121, 0.847890019, -0.117969424, -0.516868234, -0.172387004, 0.860588312, -0.479226232, 0.501349986, 0.495438159, 0.709345102))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0123648643, 0.00771617889, -0.2993927, -0.945649981, -0.00837637484, 0.325077653, 0.275757998, 0.509160697, 0.815298259, -0.172346994, 0.860629082, -0.479178131))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.914441109, 1.37090302, 5.06773043, 0.952857018, -0.239616245, 0.186124802, 0.269127011, 0.384222358, -0.883139789, 0.140103996, 0.891599178, 0.430600822))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.289441109, 0.439723015, -0.0940113068, 0.640443027, 0.0304017365, -0.767403424, 0.767978013, -0.033914417, 0.639577866, -0.00658199983, -0.998960733, -0.0450687706))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.824021816, 0.467221737, -1.34466362, -0.722289026, 0.0450052023, -0.690125883, 0.691520989, 0.0326744616, -0.721616447, -0.00992699992, -0.998450994, -0.0547233522))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0121717453, 0.252120972, 3.74730492, -0.945644021, -0.00837676227, 0.325095654, 0.325136006, -0.0447039902, 0.944608986, 0.00662000012, 0.998964071, 0.0449978113))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.321075439, 0.491578102, 5.29671383, -0.640534997, -0.0303301513, 0.767329037, 0.76789999, -0.0339406133, 0.639669359, 0.00664300006, 0.998961926, 0.0450305045))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.400350571, 0.435369492, 4.97371578, -0.528231025, -0.0348199308, 0.84839046, -0.849080026, 0.029407233, -0.527447701, -0.00658399984, -0.99896419, -0.0451005101))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0054731369, 0.291829109, 3.91781425, -0.945644021, -0.00837676227, 0.325095654, 0.325136006, -0.0447039902, 0.944608986, 0.00662000012, 0.998964071, 0.0449978113))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.37125301, 0.914560795, -1.79196548, -0.269194007, -0.384287894, 0.883093894, -0.952844024, 0.239642292, -0.186172456, -0.140083, -0.891566873, -0.430678248))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0969734192, 0.300020218, -0.381516457, 0.981526017, 0.109005764, -0.157230422, -0.172343001, 0.860589981, -0.479233682, 0.0830769986, 0.497480333, 0.86348021))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.46387887, -0.817541122, 1.61718559, -0.989462018, 0.0177100673, -0.14370434, 0.144451007, 0.0527287126, -0.988105357, -0.00992199965, -0.99845022, -0.054731369))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00553846359, 0.29176712, 1.10430145, -0.945644021, -0.00837676227, 0.325095654, 0.325136006, -0.0447039902, 0.944608986, 0.00662000012, 0.998964071, 0.0449978113))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102331638, -0.407433987, 1.07657814, -0.981522977, -0.108989954, 0.157267138, 0.0831319988, 0.497385502, 0.863537192, -0.172340006, 0.860654771, -0.4791345))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.397953033, 0.43229866, 5.29670334, -0.93869102, 0.0217482597, -0.344071895, -0.344695002, -0.0400097072, 0.937861204, 0.00663099997, 0.998961687, 0.0450535417))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.467223644, 0.661699295, -0.824067593, 0.691560984, 0.0326378345, -0.72157979, 0.00993200019, 0.998452783, 0.0546806753, 0.722249985, -0.0449820161, 0.690167665))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.8400383, -1.25642586, 1.84669495, -0.633087993, -0.253796428, 0.731290698, -0.761298001, 0.375114679, -0.528880179, -0.140090004, -0.891557097, -0.430695832))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle3,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0183458328, 1.11259842, -1.30823755, -0.945632994, -0.00835180283, 0.325107038, 0.259054005, -0.623695672, 0.7374807, 0.196610004, 0.781617641, 0.591960251))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.398132086, 2.3684597, -0.43219471, -0.938676, 0.0217326134, -0.344115824, 0.00659700017, 0.998959541, 0.0450948179, 0.344738007, 0.0400595069, -0.937843442))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.012321949, 1.16897488, -1.80618286, -0.945649028, -0.00842247903, 0.325080752, -0.293455988, 0.452827632, -0.841919959, -0.140114993, -0.891556382, -0.430688024))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.914655209, 2.13946152, -1.37107086, 0.952854991, -0.239649922, 0.186104864, 0.140138, 0.891590297, 0.4306117, -0.269125998, -0.384229302, 0.883141041))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.839997292, 1.10108471, -1.25634575, 0.633068025, 0.253745645, -0.731326282, -0.140089005, -0.891593993, -0.430620372, -0.761314988, 0.375062197, -0.528892517))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle3,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00559282303, 0.206690311, -0.505641937, -0.945644975, -0.0084451735, 0.325090468, -0.275736004, -0.509159386, -0.81530714, 0.172408998, -0.860628903, 0.479155123))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.07609653, 1.24873447, -2.13935757, -0.543944001, -0.294154286, 0.785873413, -0.827342987, 0.344371378, -0.443746746, -0.140101999, -0.891560376, -0.430685878))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle3,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.914701462, -1.3710413, 2.13946056, -0.952852011, 0.239669666, -0.186094731, -0.269122988, -0.384216726, 0.883147418, 0.140163004, 0.891590297, 0.430603087))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
    
    
    
    


SP_handle4=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,1,1,"Institutional white","Handle",Vector3.new(1, 1, 1))
SP_handle4weld=weld(m,Character["Torso"],SP_handle4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.749995351, -0.788825989, -5.97995806, -0.000193387328, 1.43942427e-011, 1, 2.36182814e-006, 0.999994278, 4.71795158e-010, -0.999994695, 3.94880772e-007, -0.000193386411))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0223629475, 1.20767784, -1.45314837, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0223317146, 1.20674896, -0.856748104, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0223493576, 0.751986504, -0.207345963, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0223982334, 0.987826347, -0.543978214, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0222668648, 0.752965927, -0.803734303, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0222821236, 0.988665581, -1.14041138, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.022200346, -1.19035244, 0.602741718, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0221426487, -0.95567894, 0.875216484, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0224292278, -1.19042015, 0.90809536, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0221824646, -1.1903038, 1.21036673, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0222542286, -1.41963387, 1.23551273, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0221951008, -1.4195118, 0.930125713, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0223770142, -0.955629349, 0.572946548, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0222458839, -0.955657959, 0.267565727, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0221590996, -1.41949844, 1.53772497, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0225367546, 0.988702774, -0.835006714, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0225255489, 0.752939224, -0.498351097, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle4,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0226261616, 1.20757675, -1.14768648, -0.945645988, -0.324580431, 0.0200050585, 0.259052008, -0.789050758, -0.557021558, 0.196586996, -0.521565497, 0.830248356))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.31996155, 0.876345158, -1.63082218, -0.269134641, -0.913233161, -0.305867076, -0.952855527, 0.206279069, 0.222516403, -0.140117556, 0.351337343, -0.9256984))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.507735252, 0.118404388, -0.503782272, 0.0830790028, -0.816853285, 0.570821345, -0.981507003, -0.166198343, -0.0949832126, 0.172460005, -0.552369833, -0.815552771))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00964736938, 0.308354378, -0.365270615, -0.945648015, -0.324582428, 0.0198820569, -0.275709987, 0.767828703, -0.57828331, 0.172436997, -0.552330852, -0.815584719))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0164206028, 1.09571266, -1.6748929, -0.945644975, -0.324585438, 0.0199660584, 0.293467999, -0.87820363, -0.377647758, 0.140114993, -0.351264209, 0.925726533))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00971293449, 0.678025246, -1.03990269, -0.945641994, -0.324597448, 0.019898057, -0.325058997, 0.945287406, -0.0274593867, -0.00989700016, -0.0324304253, -0.999417782))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.016399622, 0.283869743, -1.21550131, -0.945641994, -0.324597448, 0.019898057, -0.325058997, 0.945287406, -0.0274593867, -0.00989700016, -0.0324304253, -0.999417782))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.827951908, 0.473888397, -1.17143869, -0.722323, 0.691381454, -0.0153003177, 0.691484988, 0.721748292, -0.0303232297, -0.00992199965, -0.032479424, -0.999415815))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0162644386, 0.243733406, 1.04368019, -0.945644021, -0.324583441, 0.0200120583, 0.325134993, -0.94490546, 0.0377673134, 0.00665100012, 0.042217344, 0.99907881))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.486921787, 0.313209534, -3.57416868, 0.767952979, -0.640123904, 0.0220092367, -0.640473008, -0.767099917, 0.0366462097, -0.00657500001, -0.0422353446, -0.99907881))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.49463129, 0.169288158, -0.503814697, -0.501399994, 0.663479507, -0.555323422, 0.847863019, 0.504680395, -0.162550136, 0.172415003, -0.552336872, -0.815584719))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0164070129, -0.0939383507, -0.439764023, -0.945654988, -0.32455644, 0.0199480578, 0.275721997, -0.767811716, 0.578300297, -0.172377005, 0.552369833, 0.815570712))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.478517056, 0.112486362, -0.511974335, -0.457547992, 0.688356221, -0.562856376, -0.872325003, -0.470173627, 0.134100333, -0.172334, 0.552346826, 0.815595746))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00957298279, 0.283470154, 0.931209564, -0.945644021, -0.324583441, 0.0200120583, 0.325134993, -0.94490546, 0.0377673134, 0.00665100012, 0.042217344, 0.99907881))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.858084679, 0.366326332, -1.19477177, -0.65774399, 0.753022969, -0.0179223362, -0.753175974, -0.657179832, 0.0288901981, 0.00997699983, 0.0324974246, 0.999414802))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.42325592, 0.39621377, -3.57414293, 0.344671994, 0.937782466, -0.0418492779, 0.938700974, -0.344628215, 0.00840715319, -0.0065390002, -0.0421773456, -0.99908179))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0164124966, -0.0640296936, -0.431711197, -0.945648015, -0.324582428, 0.0198820569, -0.275709987, 0.767828703, -0.57828331, 0.172436997, -0.552330852, -0.815584719))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.31215572, 0.871266365, -1.66052389, -0.761318028, 0.559523404, 0.327598274, -0.633046985, -0.750676274, -0.189011186, 0.140166, -0.351286203, 0.925710559))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.433588982, 0.385080576, 1.02888012, -0.317292005, -0.94738245, 0.0421622805, 0.948305011, -0.317278475, 0.00713214464, 0.00662099989, 0.0422423445, 0.999077797))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.486723423, 0.313140869, 1.02883911, -0.767931998, 0.640149891, -0.0219522361, -0.640497029, -0.767078936, 0.036666207, 0.00663299998, 0.0422133468, 0.99907881))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.31222439, 0.87121582, -3.38614655, -0.761318028, 0.559523404, 0.327598274, -0.633046985, -0.750676274, -0.189011186, 0.140166, -0.351286203, 0.925710559))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.465577126, 0.162011385, -0.511925697, 0.0328349993, -0.824281156, 0.565217495, 0.984480977, 0.124218583, 0.123963028, -0.172392994, 0.55237186, 0.815565765))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.31998634, 0.876400471, -3.35645199, -0.269134641, -0.913233161, -0.305867076, -0.952855527, 0.206279069, 0.222516403, -0.140117556, 0.351337343, -0.9256984))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.876903534, 0.37401244, -1.17146683, -0.0556490012, -0.997898996, 0.0329493806, -0.998400986, 0.055944521, 0.00810290687, -0.00992999971, -0.0324424244, -0.999416769))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00976800919, 1.28631306, -1.56560278, -0.945650995, -0.324570447, 0.0198970586, -0.293469995, 0.87817663, 0.37770775, -0.140067995, 0.351344198, -0.925703585))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00968575478, 0.278396606, -0.373423576, -0.945654988, -0.32455644, 0.0199480578, 0.275721997, -0.767811716, 0.578300297, -0.172377005, 0.552369833, 0.815570712))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19670868, 1.03864479, 1.63091826, 0.827385247, -0.472027361, -0.304341733, 0.543877482, 0.808575869, 0.224505007, 0.14011088, -0.351276696, 0.925728738))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.809906006, 0.464472651, -1.19486141, -0.144457996, -0.988932133, 0.0336013697, 0.989461005, -0.144707814, -0.00512887398, 0.00993499998, 0.032502424, 0.999414802))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.449923515, 0.397589684, 1.05199718, -0.833356023, 0.552444577, -0.0178382117, 0.552698016, 0.832473397, -0.0387592353, -0.00656299992, -0.042155344, -0.99908179))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00962471962, 0.303980827, 0.954342842, -0.945644975, -0.324586451, 0.0199420583, -0.325134009, 0.944907427, -0.0377183147, -0.0066010002, -0.0421483442, -0.99908179))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.504252434, 0.323927164, -3.59736919, 0.211698994, 0.97639817, -0.0426062979, -0.977312982, 0.211784303, -0.00252411258, 0.00655899988, 0.0421693437, 0.99908179))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.439437866, 0.409231186, -3.59739017, 0.849096835, -0.527972281, 0.0167329088, 0.528196275, 0.848209918, -0.0393544845, 0.00658505363, 0.042254027, 0.999085307))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00973725319, 1.27706337, -1.59535503, -0.945644975, -0.324585438, 0.0199660584, 0.293467999, -0.87820363, -0.377647758, 0.140114993, -0.351264209, 0.925726533))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0164086819, 0.263489723, -1.23897266, -0.945640981, -0.324595451, 0.0199690573, 0.32506001, -0.945285439, 0.0275083855, 0.00994700007, 0.0325004235, 0.999414802))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00973701477, 0.657613754, -1.0633831, -0.945640981, -0.324595451, 0.0199690573, 0.32506001, -0.945285439, 0.0275083855, 0.00994700007, 0.0325004235, 0.999414802))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504302979, 0.32374835, 1.05212879, -0.211680993, -0.976403177, 0.0425672978, -0.977316022, 0.211768299, -0.00247711292, -0.00659599993, -0.042121347, -0.999083817))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0163221359, 0.264155388, 1.06694412, -0.945644975, -0.324586451, 0.0199420583, -0.325134009, 0.944907427, -0.0377183147, -0.0066010002, -0.0421483442, -0.99908179))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.19668627, 1.03875446, -3.35645771, -0.827395976, 0.472000182, 0.304344505, 0.543866992, 0.808557749, 0.224567875, -0.140085995, 0.351333201, -0.925704539))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.18959713, 1.03292561, -3.38603067, -0.374081999, -0.884435892, -0.278963447, 0.91674298, -0.307193667, -0.255364984, 0.140159994, -0.351268202, 0.925718546))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.1896925, 1.03269005, 1.66046858, 0.374027014, 0.884442866, 0.279014438, 0.916773975, -0.307151675, -0.255304962, -0.140105993, 0.351287216, -0.925719559))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle4,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0164701939, 1.10504913, -1.64507008, -0.945650995, -0.324570447, 0.0198970586, -0.293469995, 0.87817663, 0.37770775, -0.140067995, 0.351344198, -0.925703585))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.396119595, 2.19531393, -0.423256874, -0.938692987, 0.344650239, -0.00837315246, 0.00656899996, 0.042159345, 0.99908179, 0.344691992, 0.937775493, -0.0418422781))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113131762, 0.159641266, -0.481980324, 0.981525004, 0.16612035, 0.0949302092, -0.172374994, 0.552413821, 0.815541744, 0.0830380023, -0.816839278, 0.570846379))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03863621, 1.19680691, -1.9782486, -0.54391402, -0.808536708, -0.224528864, -0.827360988, 0.472042173, 0.304376483, -0.140113994, 0.351324201, -0.925703585))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0165145397, 1.2520256, 3.35657072, 0.945649505, 0.324578017, -0.0199093651, -0.29347977, 0.878210008, 0.377646506, 0.140060365, -0.351278216, 0.925735772))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.169274807, -0.494664669, 0.936203957, -0.847894013, -0.504614413, 0.162592143, 0.501378, -0.663525462, 0.555289447, -0.172325999, 0.552342832, 0.81559974))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.39603281, 0.423571587, 5.12355614, -0.938690007, 0.344657242, -0.00835715234, -0.344698012, -0.937769473, 0.041927278, 0.00661400007, 0.0422333442, 0.99907881))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.162759781, 0.159591675, -0.468995094, 0.847876012, 0.504657447, -0.162551135, -0.172409996, 0.552356839, 0.815572739, 0.501379013, -0.663481474, 0.555341423))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.03864574, -1.97832322, 1.19668961, 0.543905973, 0.808543742, 0.224530876, -0.140072003, 0.351296216, -0.925723553, -0.827374995, 0.47205618, 0.304323494))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.464510083, -0.809931755, 1.79035187, -0.989462018, 0.144699812, 0.00511587365, 0.144452006, 0.988934159, -0.033567369, -0.00991700031, -0.0324714221, -0.999415815))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03281689, 1.18959236, -1.26228476, -0.916755974, 0.307173669, 0.25534296, -0.374054015, -0.884448886, -0.278957427, 0.140152007, -0.351251215, 0.925725579))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.876188993, 1.31961918, 4.90657902, 0.952858627, -0.206318989, -0.222470358, 0.26914373, 0.913259864, 0.305807233, 0.140079394, -0.351267487, 0.925737023))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03283501, 1.18950748, -2.00787878, -0.916755974, 0.307173669, 0.25534296, -0.374054015, -0.884448886, -0.278957427, 0.140152007, -0.351251215, 0.925725579))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.281679153, 0.434744358, 0.0791082382, 0.640461981, 0.767111897, -0.0365992077, 0.767961979, -0.640112877, 0.021979237, -0.00656699995, -0.0421793461, -0.999080777))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.408720016, 0.439339161, 5.14681721, -0.528268993, -0.848162293, 0.0392532423, -0.849050999, 0.52804178, -0.0166942049, -0.00656800019, -0.0421423465, -0.999082804))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.473783493, 0.488498688, -0.828015804, 0.691582978, 0.721653283, -0.0303602275, 0.00991799962, 0.0325384252, 0.999413788, 0.722229004, -0.691477478, 0.0153483171))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.876455307, -1.31968403, 1.97834396, -0.952853024, 0.206291586, 0.222514257, -0.269131988, -0.913265586, -0.305773228, 0.140138, -0.351246208, 0.925729573))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.161879778, -0.465619087, 0.944372177, -0.98447597, -0.124262586, -0.123955034, -0.0328929983, 0.824329197, -0.565143466, 0.172408, -0.552289844, -0.815618753))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.871513367, 2.00791359, -1.31196213, 0.633042991, 0.75065428, 0.18911317, -0.140026003, 0.351307213, -0.925723553, -0.761346996, 0.559540391, 0.32750228))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.03281403, -2.00784349, 1.18958855, 0.916750014, -0.307206661, -0.255325973, 0.140107006, -0.351290196, 0.925717592, -0.374085993, -0.884421885, -0.279000431))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00944447517, 0.28345108, 3.74470615, -0.945644021, -0.324583441, 0.0200120583, 0.325134993, -0.94490546, 0.0377673134, 0.00665100012, 0.042217344, 0.99907881))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.37405315, -0.876828194, 1.76703262, -0.998400986, 0.0559335202, 0.00814290717, -0.0556359999, -0.997896016, 0.0330413803, 0.00997400004, 0.0325314254, 0.999413788))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.87138176, 1.2622323, -1.31208801, 0.633056998, 0.750666261, 0.189021185, -0.140107006, 0.351260215, -0.925729573, -0.761321008, 0.559554398, 0.327539295))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00965595245, 0.303880692, 3.76789665, -0.945644975, -0.324586451, 0.0199420583, -0.325134009, 0.944907427, -0.0377183147, -0.0066010002, -0.0421483442, -0.99908179))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.348054171, 0.385266304, 0.079041481, 0.948333979, -0.317190468, 0.0071431445, -0.317203999, -0.947412431, 0.0421442799, -0.00659999996, -0.0422283448, -0.99907881))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.871376038, -1.31227493, 2.00776863, -0.633126974, -0.750591278, -0.189080164, -0.761262, 0.559584379, 0.327623278, -0.140107006, 0.351370215, -0.925687551))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.464463711, 0.511996269, -0.80990696, 0.989462972, -0.144693807, -0.00508287363, -0.00989700016, -0.0325654224, -0.999413788, 0.144445002, 0.988932133, -0.0336583704))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.313250542, 0.486718655, 5.1235795, -0.64053297, -0.767048895, 0.0366532095, 0.767902017, -0.640185893, 0.0219572373, 0.00662299991, 0.042206347, 0.999079764))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.871554375, 1.31186581, 4.93623352, 0.633024991, 0.750679255, 0.189074174, 0.761353016, -0.559521377, -0.327521294, -0.140074, 0.351285219, -0.925724566))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.112469196, -0.478534222, 0.944395065, -0.872353017, -0.470152646, 0.133986324, -0.457466006, 0.688391268, -0.562879384, 0.172407001, -0.552319825, -0.815598726))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.876492023, 1.97825241, -1.31979942, 0.952845991, -0.206318587, -0.222522259, 0.140118003, -0.351311207, 0.925708592, -0.269169986, -0.913234591, -0.30583322))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0160889626, 1.24287796, 3.38618088, 0.94562602, 0.324643433, -0.0198960584, 0.293549001, -0.878181636, -0.377635747, -0.140072003, 0.351265222, -0.925732553))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.313216209, -2.19522572, 0.486758709, -0.640492022, -0.767081916, 0.0366862081, -0.00662000012, -0.0422503464, -0.999077797, 0.767935991, -0.640143871, 0.0219852366))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.118489981, -0.507835388, 0.936233521, -0.981526017, -0.166119352, -0.0949202105, 0.0830579996, -0.816886306, 0.570777357, -0.172359005, 0.552344859, 0.815590739))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.016130209, 0.243750572, 3.5741868, -0.945644021, -0.324583441, 0.0200120583, 0.325134993, -0.94490546, 0.0377673134, 0.00665100012, 0.042217344, 0.99907881))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.374025226, 0.488477707, -0.876927376, 0.998399973, -0.05596352, -0.00809990708, 0.00993300043, 0.0325494222, 0.999413788, -0.0556680001, -0.997893989, 0.0330573805))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.107240677, 0.167741776, -0.452542305, 0.87232703, 0.470199645, -0.133993328, 0.172470003, -0.55237186, -0.815549731, -0.457491994, 0.688318253, -0.562947392))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03861523, 1.19680691, -1.23256493, -0.54391402, -0.808536708, -0.224528864, -0.827360988, 0.472042173, 0.304376483, -0.140113994, 0.351324201, -0.925703585))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.384960651, -2.19533157, 0.433645248, -0.948335052, 0.317191839, -0.00707879011, -0.00665404275, -0.0421908461, -0.999087453, -0.317201048, -0.947422504, 0.0421216637))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0162477493, 0.264097214, 3.59738922, -0.945644975, -0.324586451, 0.0199420583, -0.325134009, 0.944907427, -0.0377183147, -0.0066010002, -0.0421483442, -0.99908179))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.366292477, 0.511864662, -0.858053207, 0.753187001, 0.657169819, -0.0288251974, -0.00988699961, -0.032502424, -0.999415815, -0.65773201, 0.753030956, -0.0179863349))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409173965, 2.21851635, -0.439306259, -0.528209984, -0.848194242, 0.0393742435, -0.00663900003, -0.0422393456, -0.999077797, 0.849088013, -0.527983785, 0.0166822057))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.876398563, 1.23254275, -1.31974125, 0.952844143, -0.206331179, -0.222521171, 0.140116021, -0.351297408, 0.925720155, -0.269176036, -0.913245678, -0.305821359))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.473690033, -0.827981949, 1.76701927, -0.691568971, -0.721665263, 0.0303952266, 0.722241998, -0.691465437, 0.0153243169, 0.00995900016, 0.0325464234, 0.999413788))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.366399765, -0.858189583, 1.79037666, -0.753194988, -0.657161832, 0.0287811998, -0.657721996, 0.753040969, -0.0179173369, -0.00989899971, -0.032421425, -0.999417782))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.03261375, 1.18949032, 4.93618965, 0.916786551, -0.307135433, -0.255284905, -0.373996198, -0.884472668, -0.278989166, -0.140105084, 0.351249129, -0.925740063))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.323866367, 0.504109383, 5.14675331, -0.977320015, 0.211751297, -0.00250711269, 0.211666003, 0.976405203, -0.0426002964, -0.00657299999, -0.0421613455, -0.99908179))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.03857136, 1.19647121, 4.90658855, 0.543891013, 0.808556736, 0.224511862, -0.827382028, 0.472045183, 0.304312497, 0.140075997, -0.351273209, 0.925728559))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.155371666, 0.167803764, -0.440021515, 0.98447001, 0.124325581, 0.123938031, 0.172433004, -0.552373827, -0.815555751, -0.032935001, 0.824263155, -0.565237463))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00984764099, 1.28618622, 3.52828598, 0.945649505, 0.324578017, -0.0199093651, -0.29347977, 0.878210008, 0.377646506, 0.140060365, -0.351278216, 0.925735772))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.313044548, 0.486735344, -2.1952548, 0.640461981, 0.767111897, -0.0365992077, 0.767961979, -0.640112877, 0.021979237, -0.00656699995, -0.0421793461, -0.999080777))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.323807716, -2.21849537, 0.504213333, -0.977317989, 0.211760297, -0.00248111296, 0.0065919999, 0.0421273448, 0.999082804, 0.211674005, 0.976405203, -0.0425712988))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.397585869, -2.21855927, 0.449854374, -0.552754998, -0.832433403, 0.0387952365, 0.00660800003, 0.0421703458, 0.999080777, -0.833316982, 0.552503586, -0.0178112127))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00944828987, 1.27693272, 3.55792809, 0.94562602, 0.324643433, -0.0198960584, 0.293549001, -0.878181636, -0.377635747, -0.140072003, 0.351265222, -0.925732553))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.323884487, 0.504407883, -2.21844196, 0.977316022, -0.211766303, 0.00251411274, 0.211680993, 0.976399183, -0.042660296, 0.00657900004, 0.0422203466, 0.99907881))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.360591888, 0.401652813, 0.0558204651, 0.552779019, 0.832418382, -0.0387782343, -0.833302021, 0.552524567, -0.0178692117, 0.00655200006, 0.0421883464, 0.999080777))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle4,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.292307854, 0.45228672, 0.0558776855, 0.977316022, -0.211766303, 0.00251411274, 0.211680993, 0.976399183, -0.042660296, 0.00657900004, 0.0422203466, 0.99907881))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
    
    
    
    


SP_handle5=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,1,1,"Institutional white","Handle",Vector3.new(1, 1, 1))
SP_handle5weld=weld(m,Character["Torso"],SP_handle5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.749995351, -0.243388176, -6.04334259, -0.000193387328, 1.43942427e-011, 1, -0.422617406, 0.906308293, -8.17288819e-005, -0.906309307, -0.422619551, -0.00017526884))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0102796555, 0.7435112, -0.733545303, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0103590488, 0.742489815, -0.137175083, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0103888512, 0.978325844, -0.473787785, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.010260582, 0.979205132, -1.0701952, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0103235245, 1.19726658, -0.786509991, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.010373354, 1.19819736, -1.38290882, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0102381706, -1.19992256, 0.672842503, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0101933479, -0.96524334, 0.945311069, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0103120804, -1.42921162, 1.30559826, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0104794502, -1.19997692, 0.978188038, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0102863312, -0.965192795, 0.337683678, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0104141235, -0.965200424, 0.643043041, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0102543831, -1.42908287, 1.00020361, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0102477074, -1.19986916, 1.28046274, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0102219582, -1.42909718, 1.60780764, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0105175972, 0.743440628, -0.428161144, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0105617046, 0.979235649, -0.764792919, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle5,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0106015205, 1.19812393, -1.07748127, -0.945650995, -0.325103402, -0.00837757438, 0.259063989, -0.737478614, -0.623714745, 0.196594, -0.591984689, 0.78160733))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00444841385, -0.126228333, -0.465532303, -0.945636988, -0.325136513, -0.00847689062, -0.275761008, 0.815296531, -0.509162545, 0.172459006, -0.479141325, -0.860637128))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00433301926, 0.27735424, 1.10600138, -0.945648015, -0.325081915, -0.00837877393, 0.325123012, -0.944612503, -0.0446807146, 0.00661000004, -0.0449787676, 0.998967469))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30938244, 0.883805275, -3.42708254, -0.269165993, -0.883098125, -0.38429302, -0.952848017, 0.186133012, 0.239657432, -0.140110999, 0.43068105, -0.891563177))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.841906548, 0.372624755, -1.23416519, -0.0556470007, -0.996977746, -0.0541481376, -0.998401999, 0.0550254397, 0.0129008349, -0.00988299958, 0.054781884, -0.998449981))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00443744659, 0.250902176, -1.27822828, -0.945647001, -0.325083941, -0.00845175236, -0.325044006, 0.944096446, 0.0549907982, -0.00989700016, 0.0547510684, -0.998452187))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.437318802, 0.142317295, -0.5376091, -0.501430988, 0.709335089, -0.495388567, 0.847835004, 0.516979754, -0.117922619, 0.172459006, -0.479134321, -0.860631526))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30933285, 0.883769751, -1.70145845, -0.269165993, -0.883098125, -0.38429302, -0.952848017, 0.186133012, 0.239657432, -0.140110999, 0.43068105, -0.891563177))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.444403648, 0.117814541, -0.537607193, 0.0831390023, -0.863493204, 0.497458875, -0.981508017, -0.157322258, -0.109046191, 0.172422007, -0.479190469, -0.860607564))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.20042419, 1.0264225, -3.42715788, -0.827404976, 0.443687469, 0.34429875, 0.543859005, 0.785918951, 0.294184417, -0.140064999, 0.430660069, -0.891579807))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.804131508, 0.448203087, -1.23412895, -0.722315013, 0.690099061, 0.044973731, 0.691493988, 0.721637487, 0.0327419341, -0.00985999964, 0.0547510684, -0.998452187))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00430679321, 0.230641365, 1.00459194, -0.945647001, -0.325085402, -0.0084477663, -0.325129986, 0.944607854, 0.0447369516, -0.00656400016, 0.0450542867, -0.998964012))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00234532356, 0.317088127, 0.993526936, -0.945648015, -0.325081915, -0.00837877393, 0.325123012, -0.944612503, -0.0446807146, 0.00661000004, -0.0449787676, 0.998967469))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.20056248, 1.02626991, 1.70160532, 0.827382982, -0.443717122, -0.344310284, 0.543879986, 0.785938919, 0.294092327, 0.140113994, -0.430590481, 0.891605854))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30965233, 0.883893013, -3.3155489, -0.761317015, 0.528869569, 0.375088871, -0.633054972, -0.731345296, -0.253715813, 0.140137002, -0.430610716, 0.891593218))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.883990288, 0.389895439, -1.13213825, -0.657786012, 0.751687527, 0.0477403998, -0.753139019, -0.657241523, -0.0285094231, 0.00994700007, -0.0547104478, 0.998454094))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.509227753, 0.340780258, 1.09116888, -0.767917991, 0.639637291, 0.0339070708, -0.640502989, -0.767345905, -0.0303307176, 0.00661899988, -0.0450086594, 0.998964906))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0022816658, 0.645073891, -1.10262823, -0.945647001, -0.325083941, -0.00845175236, -0.325044006, 0.944096446, 0.0549907982, -0.00989700016, 0.0547510684, -0.998452187))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.52882576, 0.165767431, -0.478123665, 0.0329240002, -0.870402336, 0.491245717, 0.98447901, 0.113029614, 0.13428925, -0.172410995, 0.479192197, 0.860608935))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30963707, 0.883950233, -1.5899353, -0.761317015, 0.528869569, 0.375088871, -0.633054972, -0.731345296, -0.253715813, 0.140137002, -0.430610716, 0.891593218))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.509435177, 0.340826035, -3.63651609, 0.767982006, -0.639573216, -0.0338619202, -0.64043802, -0.767407238, -0.0303605795, -0.00656800019, 0.0450046659, -0.998966277))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00440502167, 1.1002636, -1.71569109, -0.945658028, -0.325051516, -0.00842713565, -0.293431997, 0.841921687, 0.452835977, -0.140100002, 0.430701405, -0.891554952))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00441741943, -0.0317611694, -0.405936241, -0.945643008, -0.325109184, -0.00841352344, 0.275759012, -0.815273166, 0.509207904, -0.172407001, 0.479201794, 0.860603452))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00233054161, 0.270441055, 0.891981125, -0.945647001, -0.325085402, -0.0084477663, -0.325129986, 0.944607854, 0.0447369516, -0.00656400016, 0.0450542867, -0.998964012))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00231361389, 0.246170044, -0.399078369, -0.945636988, -0.325136513, -0.00847689062, -0.275761008, 0.815296531, -0.509162545, 0.172459006, -0.479141325, -0.860637128))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00227165222, 1.28150463, -1.63619161, -0.945658028, -0.325051516, -0.00842713565, -0.293431997, 0.841921687, 0.452835977, -0.140100002, 0.430701405, -0.891554952))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.467529297, 0.39597702, 1.09123468, -0.317189008, -0.947490871, -0.0405888557, 0.948338985, -0.316593349, -0.0205120072, 0.00658500008, -0.0450001955, 0.998966455))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.469417572, 0.316682339, -3.53503847, 0.21164, 0.976414919, 0.0426357985, -0.977325976, 0.211138904, 0.0159607977, 0.00658199983, -0.0450497866, 0.99896419))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00445270538, 0.296360016, -1.17630053, -0.945653975, -0.325082719, -0.00838282704, 0.325040013, -0.944106519, -0.0549320281, 0.00994300004, -0.0546755791, 0.998455584))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.537080765, 0.136572361, -0.478206635, -0.457509011, 0.734781325, -0.50078088, -0.872322977, -0.480098218, 0.092509754, -0.172450006, 0.479162902, 0.860617101))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00453495979, 1.1005249, -1.60424757, -0.945653975, -0.32506457, -0.00835815817, 0.293428987, -0.841973901, -0.452739835, 0.140132993, -0.430587798, 0.891604602))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.457004547, 0.408125877, -3.63648891, 0.344615996, 0.937887728, 0.0400079489, 0.938721001, -0.343996942, -0.0216481388, -0.00654100021, 0.045019418, -0.998965442))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.421041489, 0.378578186, -3.53505564, 0.849084973, -0.527434886, -0.0293280631, 0.528210998, 0.848393261, 0.0347626805, 0.00654199999, -0.0450090766, 0.998963952))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.430588722, 0.367683411, 0.989666939, -0.833360016, 0.551895797, 0.0303435177, 0.552691996, 0.832692146, 0.0339391828, -0.00653599994, 0.0450564921, -0.998964012))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.20108223, 1.02632904, 1.58997297, 0.373971999, 0.856794715, 0.355025202, 0.916806996, -0.28372553, -0.281004757, -0.140034005, 0.43057847, -0.89162457))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00232815742, 0.340610504, -0.33960247, -0.945643008, -0.325109184, -0.00841352344, 0.275759012, -0.815273166, 0.509207904, -0.172407001, 0.479201794, 0.860603452))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.20102119, 1.02659655, -3.31541204, -0.37411201, -0.856742501, -0.355003208, 0.91674, -0.283817887, -0.28112942, 0.140100002, -0.430620134, 0.89159435))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00214600563, 1.28190231, -1.5247364, -0.945653975, -0.32506457, -0.00835815817, 0.293428987, -0.841973901, -0.452739835, 0.140132993, -0.430587798, 0.891604602))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.469408989, 0.316599607, 0.989748478, -0.211705998, -0.976398945, -0.0426630676, -0.977311015, 0.211202025, 0.0160251483, -0.00663599977, 0.0450904369, -0.998962164))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.844632149, 0.468960524, -1.13224697, -0.144447997, -0.988105595, -0.0526977777, 0.989462018, -0.143698961, -0.0177532323, 0.00997000001, -0.0547095537, 0.998453736))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle5,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00222039223, 0.690469742, -1.00072145, -0.945653975, -0.325082719, -0.00838282704, 0.325040013, -0.944106519, -0.0549320281, 0.00994300004, -0.0546755791, 0.998455584))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.142289162, -0.437278271, 0.970044136, -0.847883999, -0.516880989, 0.118008979, 0.501387, -0.709362566, 0.495393634, -0.172349006, 0.479200959, 0.860615909))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.112532854, 0.193429947, -0.418643951, 0.981513977, 0.157263279, 0.109075889, -0.172417998, 0.479179114, 0.860614061, 0.0830760002, -0.863509655, 0.4974401))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00426340103, 0.277500153, 3.63651133, -0.945648015, -0.325081915, -0.00837877393, 0.325123012, -0.944612503, -0.0446807146, 0.00661000004, -0.0449787676, 0.998967469))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.135740757, 0.193400383, -0.411708355, 0.847880006, 0.516904771, -0.117929608, -0.172451004, 0.479206532, 0.860592306, 0.501357973, -0.70934093, 0.495454192))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.883888721, -1.30915928, 2.04894066, -0.952856004, 0.186135992, 0.239647239, -0.269156009, -0.883128047, -0.384243727, 0.140117005, -0.430632502, 0.89158684))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.883449793, 1.30905533, 4.97726059, 0.952866971, -0.186128348, -0.239583492, 0.269120008, 0.883135319, 0.384240329, 0.140066996, -0.43060708, 0.891605854))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02632523, -2.0489912, 1.2004652, 0.543853998, 0.785940826, 0.294136703, -0.140085995, 0.430614501, -0.891599417, -0.827404976, 0.443692565, 0.344290853))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.309295654, 0.457249641, 0.0167889595, 0.640465975, 0.767383695, 0.0303550363, 0.767957985, -0.639600754, -0.0338854939, -0.00658799987, 0.0450158715, -0.998965979))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00442838669, 1.24719238, 3.42720175, 0.945650995, 0.325074017, 0.0084232837, -0.293462008, 0.841953874, 0.452755809, 0.140086994, -0.430621982, 0.891595185))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.340646744, 0.509337425, -2.25758886, 0.640452981, 0.76739341, 0.0304089487, 0.767970026, -0.639588594, -0.0338569283, -0.00653199991, 0.0450386107, -0.998964489))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00242948532, 0.317198753, 3.80702019, -0.945648015, -0.325081915, -0.00837877393, 0.325123012, -0.944612503, -0.0446807146, 0.00661000004, -0.0449787676, 0.998967469))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.37838459, 2.15622139, -0.4208951, -0.528208971, -0.848397017, -0.0348393023, -0.00654499978, 0.0450993776, -0.998961926, 0.849089026, -0.527430952, -0.0293740332))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00225687027, 1.28135872, 3.59890461, 0.945650995, 0.325074017, 0.0084232837, -0.293462008, 0.841953874, 0.452755809, 0.140086994, -0.430621982, 0.891595185))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.372802556, -0.841813087, 1.82969904, -0.998399019, 0.0550508425, 0.0130026396, -0.0556779988, -0.996981502, -0.0540592074, 0.00998700038, -0.0546987653, 0.99845314))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.358931541, 0.41921711, 0.0166773796, 0.948351026, -0.316557974, -0.0205284953, -0.317155987, -0.947503567, -0.0406160653, -0.00659300014, 0.0450315773, -0.998967767))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02630711, 1.20068645, -1.30312657, -0.543923974, -0.785878897, -0.294160068, -0.827349007, 0.443721384, 0.344383329, -0.14012, 0.430695474, -0.891551137))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.884176254, 1.19155502, -1.30958271, 0.633031011, 0.731341064, 0.253787279, -0.140070006, 0.430635691, -0.891591668, -0.761349022, 0.528854668, 0.375045002))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00432324409, 1.24766159, 3.31556368, 0.945626974, 0.325142086, 0.00842022896, 0.293527007, -0.841949344, -0.452722609, -0.140110001, 0.430579484, -0.891612887))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.165706873, -0.52881813, 0.910549164, -0.984476984, -0.112998009, -0.134299561, -0.0329039991, 0.870434225, -0.491182208, 0.172401994, -0.479134023, -0.860642731))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.372710079, 0.551142454, -0.841942787, 0.998399019, -0.0550548434, -0.0129544269, 0.00993799977, -0.0547131002, 0.9984532, -0.0556790009, -0.99698019, -0.0540752709))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.340771675, 0.509366035, 5.18590498, -0.640515029, -0.767335534, -0.0303653479, 0.767910004, -0.639650226, -0.0338922143, 0.00658300007, -0.0450274348, 0.998964787))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.883847713, 2.04883647, -1.30935383, 0.952872992, -0.186007917, -0.239651769, 0.140157998, -0.43067953, 0.891556978, -0.269050002, -0.883125782, -0.384312063))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.448187828, 0.551116943, -0.804180145, 0.691465974, 0.721668422, 0.0326403379, 0.00998300035, -0.0547265112, 0.998452842, 0.722339988, -0.690068007, -0.0450445116))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.340531349, -2.25763845, 0.50919199, -0.64051199, -0.767342925, -0.0304402411, -0.00656800019, 0.0451132059, -0.998960674, 0.767920017, -0.639643669, -0.0339349508))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.448026657, -0.804162025, 1.82971144, -0.691551983, -0.721585989, -0.0326457024, 0.722257972, -0.690157056, -0.0449798107, 0.00992599968, -0.0546867549, 0.998455286))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.389789104, -0.884142876, 1.72770309, -0.753217995, -0.657148838, -0.0285592675, -0.657696009, 0.751764536, 0.0477707088, -0.00992299989, 0.0547671914, -0.998450816))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.407728195, 0.457262039, 5.18589783, -0.938690007, 0.344074249, 0.021750018, -0.344698012, -0.93786025, -0.0399468243, 0.00665399991, -0.0449970365, 0.998966098))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00420284271, 0.230693817, 3.53502321, -0.945647001, -0.325085402, -0.0084477663, -0.325129986, 0.944607854, 0.0447369516, -0.00656400016, 0.0450542867, -0.998964012))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.883693695, 1.30314851, -1.3092556, 0.952872992, -0.1860165, -0.239648893, 0.140164003, -0.430640191, 0.891574979, -0.269050002, -0.883143365, -0.38427192))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.884008408, -1.30978155, 1.93718195, -0.633109987, -0.731283784, -0.253754377, -0.761273026, 0.528895438, 0.375141889, -0.140126005, 0.430683613, -0.891559958))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.136530876, -0.537120819, 0.910599709, -0.872331023, -0.480086029, 0.0925382674, -0.457516998, 0.734794855, -0.500754058, 0.172408998, -0.479157537, -0.860633969))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.407977104, 2.25767756, -0.456833839, -0.938691974, 0.344070017, 0.0217078477, 0.00657700002, -0.0450846851, 0.99896276, 0.344693005, 0.937857807, 0.0400550067))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0263443, 1.20070553, -2.04882646, -0.543923974, -0.785878897, -0.294160068, -0.827349007, 0.443721384, 0.344383329, -0.14012, 0.430695474, -0.891551137))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.159177303, 0.134029388, -0.503241539, 0.98446703, 0.113055512, 0.134323493, 0.172454998, -0.479233384, -0.86057657, -0.0329210013, 0.870372653, -0.491290361))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.396071911, -2.25768614, 0.467406273, -0.948343992, 0.31660524, 0.0205186009, -0.00656400016, 0.0450766683, -0.998965681, -0.317202002, -0.94748944, -0.0406755805))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.884000778, 1.3092165, 4.86567259, 0.632999003, 0.731382847, 0.253746808, 0.761373997, -0.528848708, -0.375001431, -0.140075997, 0.43057251, -0.891620696))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02666998, 1.20096684, -1.19167471, -0.916760027, 0.283737779, 0.281146914, -0.374040008, -0.856784344, -0.354977071, 0.140162006, -0.430589408, 0.891598701))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0023291111, 1.28172779, 3.48731136, 0.945626974, 0.325142086, 0.00842022896, 0.293527007, -0.841949344, -0.452722609, -0.140110001, 0.430579484, -0.891612887))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.378253937, 0.420800209, 5.08447266, -0.528277993, -0.84835422, -0.0348162055, -0.849045992, 0.527498126, 0.0294045061, -0.00657999981, 0.0450971723, -0.998961926))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.117905378, -0.444492817, 0.970052719, -0.981527984, -0.157225728, -0.109009549, 0.0830800012, -0.863520384, 0.49742192, -0.172340006, 0.47917366, 0.860633075))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02664518, -1.93719149, 1.20097828, 0.916768014, -0.28371045, -0.28114751, 0.140156001, -0.430630982, 0.891580582, -0.374022007, -0.856773257, -0.355024189))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.884130478, 1.93729258, -1.30953693, 0.633031011, 0.731341064, 0.253787279, -0.140070006, 0.430635691, -0.891591668, -0.761349022, 0.528854668, 0.375045002))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389806747, 0.449202538, -0.884012222, 0.75317502, 0.657198548, 0.0285592973, -0.00988799985, 0.054723829, -0.998453856, -0.657746017, 0.751724482, 0.0477132499))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.31670928, 0.469305992, 5.08440351, -0.977325022, 0.211141676, 0.0159572884, 0.211641997, 0.976413846, 0.0426406562, -0.0065779998, 0.0450533628, -0.998963594))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00242996216, 0.270469666, 3.70555067, -0.945647001, -0.325085402, -0.0084477663, -0.325129986, 0.944607854, 0.0447369516, -0.00656400016, 0.0450542867, -0.998964012))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.131312847, 0.13392067, -0.511146545, 0.872309029, 0.480116367, -0.0925347432, 0.172454998, -0.479187578, -0.860598981, -0.457531989, 0.734749615, -0.500801444))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02629185, 1.20047569, 4.97715378, 0.543883979, 0.785916567, 0.294143617, -0.827382982, 0.443706363, 0.34432745, 0.140099004, -0.430644035, 0.891583443))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.31670332, 0.469573021, -2.15609121, 0.977321982, -0.211153403, -0.01595404, 0.211654007, 0.976411581, 0.0425623059, 0.00658799987, -0.0449759662, 0.998963952))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.468921423, 0.449314117, -0.844655037, 0.989464998, -0.143682063, -0.0177004188, -0.00992500037, 0.0546598136, -0.998451471, 0.144428, 0.98810488, 0.0526561737))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.367687225, -2.1562252, 0.430572987, -0.552783012, -0.832633793, -0.0338802636, 0.00659399992, -0.0450283289, 0.998965204, -0.833298981, 0.551984727, 0.0303804129))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02650404, 1.20081329, 4.86561298, 0.916774988, -0.28374368, -0.281093419, -0.374024987, -0.856787801, -0.354998589, -0.140108004, 0.430589348, -0.891613126))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02666569, 1.2008152, -1.93728065, -0.916745007, 0.283792496, 0.281141251, -0.374087006, -0.856769443, -0.354964107, 0.140137002, -0.430583835, 0.891606092))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.31669426, -2.15614033, 0.469385147, -0.977322996, 0.211151943, 0.0159580186, 0.00657599978, -0.0450636446, 0.998962879, 0.211652994, 0.976410866, 0.0426508784))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.28516674, 0.417357445, 0.118249893, 0.977321982, -0.211153403, -0.01595404, 0.211654007, 0.976411581, 0.0425623059, 0.00658799987, -0.0449759662, 0.998963952))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.468868494, -0.844754219, 1.72766972, -0.989464998, 0.143690884, 0.0176720284, 0.144437, 0.988102376, 0.0527809262, -0.00987800024, 0.0547792315, -0.998450935))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle5,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.330698013, 0.382250309, 0.118203878, 0.552739978, 0.832662106, 0.0338935852, -0.833328009, 0.551943243, 0.0303412527, 0.00655600009, -0.0450180769, 0.998965919))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
    
    
    
    


SP_handle6=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,1,1,"Institutional white","Handle",Vector3.new(1, 1, 1))
SP_handle6weld=weld(m,Character["Torso"],SP_handle6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.849995315, 5.96735525, -0.804005623, -0.000193387241, 4.42551898e-011, 1, 0.500005305, 0.866025388, 9.66948428e-005, -0.866022468, 0.499999255, -0.000167477934))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.241353512, 0.212377071, -0.384321213, 0.84788698, 0.162552103, 0.504638314, -0.172417, -0.815562844, 0.552394331, 0.501357973, -0.555377483, -0.663467288))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.476468086, -2.27375221, 0.3931427, -0.948346019, 0.00714252889, 0.317155451, -0.00658399984, 0.999093235, -0.0421915352, -0.317169994, -0.0420934856, -0.947428226))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.106987476, 1.2970438, 3.60944366, 0.945652008, 0.0199052244, 0.324567795, -0.293476999, -0.377628297, 0.878217518, 0.140046999, -0.925749362, -0.351252645))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242034912, -2.27368808, 0.557118893, -0.640502989, -0.0365644097, -0.767079949, -0.00656800019, 0.999095023, -0.0421465933, 0.767928004, -0.0219528675, -0.640155852))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.210780621, 0.505153179, 0.000733852386, 0.640450001, 0.0366179049, 0.767121255, 0.767971992, -0.022020191, -0.640101254, -0.00654699979, 0.999092042, -0.0422314405))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113420963, 0.267274857, 3.65260267, -0.945647001, -0.0199635923, -0.324580699, 0.325129002, -0.0377707779, -0.944909453, 0.00660399999, -0.999091983, 0.0422153175))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800662816, 1.3817029, 4.98773861, 0.952872992, 0.222463787, -0.206261322, 0.269086003, -0.305809736, 0.913274109, 0.140093997, -0.925743282, -0.351249129))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.439391136, 0.344855309, 0.000628471375, 0.948355019, -0.00716349483, -0.317127168, -0.31714201, -0.0421414673, -0.947435141, -0.00657700002, 0.99909097, -0.0422436297))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.275514722, -0.892379761, 1.84571862, -0.998399973, -0.00810044818, 0.0559633747, -0.0556670018, -0.0330680311, -0.997895777, 0.00993399974, -0.99942565, 0.0325714946))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.275465995, 0.567115068, -0.892612934, 0.99840498, 0.00811067969, -0.0558650978, 0.00993799977, -0.999427557, 0.0325126946, -0.0555699989, -0.0330093503, -0.997903526))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242276192, 0.557240486, 5.20198774, -0.640522242, -0.0366345234, -0.767065346, 0.767911315, -0.0219858587, -0.64017874, 0.00658805389, -0.999086857, 0.0422144979))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.1206584, 1.1431601, 4.98768187, 0.543882012, -0.224544764, 0.808559418, -0.827391028, -0.304308474, 0.472039312, 0.140056998, -0.925735831, -0.351284087))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.106761456, 0.306973457, 3.82311344, -0.945647001, -0.0199635923, -0.324580699, 0.325129002, -0.0377707779, -0.944909453, 0.00660399999, -0.999091983, 0.0422153175))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.106642246, 0.28041172, 3.68945241, -0.945643008, -0.0199017376, -0.324595839, -0.325141013, 0.037715286, 0.944907427, -0.00656299992, 0.999095261, -0.0421430171))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.800963879, -1.38177729, 2.05950022, -0.952857018, -0.222513512, 0.206283435, -0.269118994, 0.305775791, -0.913275301, 0.140138999, -0.925742507, -0.351232499))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.228590131, 0.53445816, 5.06830406, -0.977328002, 0.00250004232, 0.211716235, 0.211630002, 0.0426208675, 0.976414263, -0.00658199983, 0.999093652, -0.0421901643))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.10072982, 1.11940479, 4.85504913, 0.916778982, 0.255297899, -0.307149678, -0.374015003, 0.27900064, -0.884458065, -0.140104994, 0.925738811, 0.351256937))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.783953667, -1.35601974, 1.92664766, -0.633100986, 0.189078361, -0.750619054, -0.761277974, -0.327646494, 0.559556246, -0.140137002, 0.925692916, 0.351364374))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800820112, 1.3137126, -1.38186646, 0.952866971, 0.222522557, -0.206225097, 0.140162006, -0.925731957, -0.351250708, -0.269071013, 0.305800378, -0.913281918))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.12068033, -2.05945635, 1.14336991, 0.543836772, -0.224549159, 0.808590949, -0.140077919, 0.925728202, 0.351291358, -0.827417552, -0.304310888, 0.471990645))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00551402569, 0.212399483, -0.439886093, 0.98151499, -0.0949383974, 0.166178554, -0.172407001, -0.81559056, 0.552356362, 0.0830940008, -0.570796847, -0.816869736))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.247926712, -0.409865856, 0.98904562, -0.847872019, -0.162609503, -0.504644871, 0.501394987, -0.555368364, -0.663447022, -0.172380999, -0.815557718, 0.552413464))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.197048306, 0.482494354, 0.134335041, 0.977328002, -0.00250327587, -0.21171464, 0.211628005, 0.0427143276, 0.976410449, 0.00659900019, -0.999089241, 0.0422826707))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0296592712, -0.559075356, 0.89161706, -0.872331023, -0.134014562, -0.470187068, -0.457507014, 0.562892199, 0.688354969, 0.172416002, 0.815599918, -0.552340567))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.460373402, -2.14012241, 0.372218132, -0.552745998, -0.0387893915, -0.832441032, 0.00657400023, -0.999093533, 0.0421959758, -0.833324015, 0.0178467035, 0.552493393))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.423408031, 0.323885918, 0.134233713, 0.552726984, 0.0387387276, 0.832456827, -0.833337009, 0.0178928226, 0.552471519, 0.00650699995, -0.999094307, 0.0421793461))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.12059593, 1.14361358, -2.0593586, -0.543929994, 0.224538401, -0.808528483, -0.82735002, -0.304392397, 0.472056687, -0.140114993, 0.925709844, 0.351329118))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.228600502, -2.1400528, 0.53455162, -0.977317989, 0.00249153376, 0.211760983, 0.00659300014, -0.999093235, 0.0421915352, 0.211674005, 0.0426241755, 0.976404548))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.46927166, 0.359649658, 5.06838036, -0.528254986, -0.0392580628, -0.848173022, -0.849059999, 0.0166607052, 0.528029978, -0.00659799995, 0.999095976, -0.0421402454))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0108391047, -0.465679169, 0.989036322, -0.981519997, 0.0949323326, -0.166182056, 0.0830919966, -0.570839942, -0.81684494, -0.172408, -0.815564752, 0.552395642))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.271468461, -0.502202034, 0.891578674, -0.98447299, 0.123947874, -0.124296919, -0.032926999, 0.565136969, 0.824332595, 0.172418997, 0.815639377, -0.552280903))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.469393253, 2.14012766, -0.359801769, -0.528205991, -0.0392333865, -0.848203778, -0.00656200014, 0.999095559, -0.0421335697, 0.849090993, -0.0166856349, -0.527980804))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.113636494, 1.26288891, 3.43773556, 0.945652008, 0.0199052244, 0.324567795, -0.293476999, -0.377628297, 0.878217518, 0.140046999, -0.925749362, -0.351252645))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.106718302, 1.26589012, 3.47680855, 0.945630014, 0.0199323595, 0.324630827, 0.293527007, 0.377623379, -0.878203034, -0.140092999, 0.925750673, 0.351230323))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.228605151, 0.534753799, -2.14000106, 0.977328002, -0.00250327587, -0.21171464, 0.211628005, 0.0427143276, 0.976410449, 0.00659900019, -0.999089241, 0.0422826707))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.486174822, 0.380377769, 5.20198727, -0.938673973, 0.00834883749, 0.344713658, -0.344752997, -0.0419026911, -0.937754869, 0.00661499985, -0.999092817, 0.0422148108))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0244445801, 0.114972353, -0.533114433, 0.872299016, 0.13405177, 0.470238864, 0.172442794, 0.815562844, -0.552377343, -0.457556456, 0.562927544, 0.688298404))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.10094953, -1.92666721, 1.11947584, 0.916763008, 0.255384624, -0.307123899, 0.140184999, -0.925711811, -0.35129565, -0.374024004, 0.279010504, -0.884451151))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.48627615, 2.27372575, -0.38020134, -0.938686013, 0.00837792456, 0.344669253, 0.00657299999, -0.999093413, 0.0421937406, 0.344709992, 0.0418655574, 0.937769175))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.549856186, 0.567103148, -0.763280869, 0.691462994, 0.030361563, 0.721770287, 0.0099600004, -0.99942714, 0.0325059593, 0.722343981, -0.0152818263, -0.691361487))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.12057972, 1.14359403, -1.31365633, -0.543929994, 0.224538401, -0.808528483, -0.82735002, -0.304392397, 0.472056687, -0.140114993, 0.925709844, 0.351329118))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800957322, 2.05937862, -1.38197756, 0.952866971, 0.222528845, -0.206217974, 0.140154004, -0.925715566, -0.351307064, -0.269073993, 0.305857092, -0.913264155))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.561144829, 0.433321953, -0.785589218, 0.989468992, 0.00509894267, -0.144653141, -0.00990800001, 0.99942708, -0.0325498879, 0.144403994, 0.0336329043, 0.988941669))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.284889698, -0.915885925, 1.71168542, -0.753211021, -0.0288272798, -0.657142818, -0.657702982, 0.017870456, 0.753060818, -0.00996499974, 0.999430001, -0.0324269831))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10088491, 1.1193409, -1.92678475, -0.916746974, -0.255331606, 0.307226062, -0.37409699, 0.278967559, -0.884436727, 0.140118003, -0.925740361, -0.351252079))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.784060001, 1.92680383, -1.35573244, 0.63302201, -0.189098701, 0.750674307, -0.140062004, 0.925730646, 0.351294965, -0.761352003, -0.327527732, 0.559518576))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.783869267, 1.35564494, 4.85511684, 0.633018017, -0.189029485, 0.750700414, 0.761350989, 0.327537328, -0.559521198, -0.140116006, 0.925741851, 0.351243675))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.264970422, 0.115027189, -0.476583481, 0.984468997, -0.123946428, 0.124332398, 0.172443002, 0.815561116, -0.552395344, -0.0329339989, 0.56525588, 0.824254632))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113221645, 0.240617752, 3.5189507, -0.945643008, -0.0199017376, -0.324595839, -0.325141013, 0.037715286, 0.944907427, -0.00656299992, 0.999095261, -0.0421430171))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.549645901, -0.763238907, 1.84567857, -0.691558003, -0.030382812, -0.721677423, 0.722253025, -0.0153434277, -0.691454828, 0.00993499998, -0.999426007, 0.0325620472))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.284937859, 0.433258772, -0.915681839, 0.753134668, 0.0288272016, 0.65723455, -0.00987603515, 0.999422371, -0.0325189345, -0.65779233, 0.0180002619, 0.752984285))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.113333702, 1.23185301, 3.30506229, 0.945630014, 0.0199323595, 0.324630827, 0.293527007, 0.377623379, -0.878203034, -0.140092999, 0.925750673, 0.351230323))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10086834, 1.11944342, -1.18115616, -0.916754842, -0.255354375, 0.307172179, -0.374054223, 0.278970599, -0.884454012, 0.140157208, -0.925726473, -0.35126403))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.784108162, 1.18106318, -1.35576534, 0.63302201, -0.189098701, 0.750674307, -0.140062004, 0.925730646, 0.351294965, -0.761352003, -0.327527732, 0.559518576))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.5611974, -0.785604477, 1.71169615, -0.989462018, -0.00510535389, 0.144700244, 0.144452006, 0.0335480571, 0.988936543, -0.00990299974, 0.999429584, -0.0324641764))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle6,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.242191315, 0.557261944, -2.27363729, 0.640450001, 0.0366179049, 0.767121255, 0.767971992, -0.022020191, -0.640101254, -0.00654699979, 0.999092042, -0.0422314405))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119339943, 0.725962639, -0.726405621, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119386673, 0.724883556, -0.130029678, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119437933, 0.960775375, -0.466621876, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119302273, 0.961672783, -1.06303787, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119337797, 1.18070412, -1.37576962, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119323254, 1.17974949, -0.779339314, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119430542, -1.21756649, 1.28744507, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119663239, -1.21765518, 0.985169411, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119366169, -0.982890129, 0.952311516, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119522095, -1.4469552, 1.3125701, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119463444, -1.2175498, 0.679824829, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119467258, -1.44674206, 1.00716496, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119585514, -0.982824326, 0.650053024, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119431973, -0.982800007, 0.344668865, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119439125, -1.44682789, 1.61477613, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119553089, 0.725892067, -0.421018124, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.119608641, 1.18059826, -1.07030296, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle6,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.11958313, 0.961698532, -0.757634163, -0.945622027, -0.0199416727, -0.324654669, 0.259121001, 0.557142138, -0.788956642, 0.196612, -0.8301844, -0.521666288))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.892507076, 0.275578439, -1.25014257, -0.0557189994, -0.0329663455, -0.997896016, -0.998396993, -0.00809633359, 0.056014251, -0.00992599968, 0.999428928, -0.0324691534))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.38212967, 0.800967991, -3.43754482, -0.269201994, 0.305880189, -0.913216114, -0.952839017, -0.222526819, 0.206348479, -0.140097007, 0.925705433, 0.351348549))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.38199759, 0.801011205, -1.71191978, -0.26919201, 0.30585444, -0.913227558, -0.95283401, -0.222571999, 0.206324726, -0.140153006, 0.925702453, 0.35133183))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113509655, 0.261181831, -1.2941699, -0.945644975, -0.0199314207, -0.324586391, -0.325048, 0.0274571478, 0.945293069, -0.0099290004, 0.999429584, -0.0324502587))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.557383537, 0.242281437, -3.65257335, 0.767964005, -0.0220205486, -0.640110672, -0.640460014, -0.0366332233, -0.767112732, -0.00655699987, 0.99909097, -0.0422436297))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.465665817, 0.010797739, -0.556585312, 0.0831760019, -0.570809543, -0.816851676, -0.98150599, 0.0948985443, -0.166253522, 0.172417, 0.815586746, -0.552359819))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.106797695, 0.655351639, -1.11856437, -0.945644975, -0.0199314207, -0.324586391, -0.325048, 0.0274571478, 0.945293069, -0.0099290004, 0.999429584, -0.0324502587))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.40991354, 0.247961998, -0.556583405, -0.501492023, 0.555322409, 0.663412452, 0.847796977, 0.162567079, 0.504784346, 0.172469005, 0.815597773, -0.552326798))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.557165146, 0.242211342, 1.10723662, -0.767911017, 0.0220005214, 0.640175283, -0.640523016, -0.0366633534, -0.767058551, 0.00659500016, -0.999090612, 0.0422530472))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113437653, 0.267234802, 1.12208343, -0.945647001, -0.0199635923, -0.324580699, 0.325129002, -0.0377707779, -0.944909453, 0.00660399999, -0.999091983, 0.0422153175))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.106779099, 0.306955338, 1.0096364, -0.945647001, -0.0199635923, -0.324580699, 0.325129002, -0.0377707779, -0.944909453, 0.00660399999, -0.999091983, 0.0422153175))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.393110275, 0.476408005, 1.10733986, -0.317214012, -0.0421024859, -0.94741261, 0.948330998, -0.00710609555, -0.317202568, 0.00662299991, -0.999094009, 0.0421887636))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.763219833, 0.549896717, -1.25007749, -0.722329021, 0.0153311193, 0.69137615, 0.691479981, 0.0302534699, 0.721757472, -0.00985100027, 0.999430299, -0.0324614346))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.380284309, 0.486471176, -3.65254426, 0.344648987, 0.041872263, 0.937791586, 0.938709021, -0.0084413588, -0.344605386, -0.006513, 0.9990924, -0.042222023))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113532066, -0.126597404, -0.484512568, -0.945634007, -0.0198916942, -0.324621201, -0.275748014, 0.578281283, 0.76781714, 0.172448993, 0.815601885, -0.552327991))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.1195364, 1.10095096, -3.3048408, -0.374067992, 0.278998911, -0.884437084, 0.916750014, 0.255365491, -0.307178795, 0.140152007, -0.925721407, -0.351284981))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.106875658, 1.29725313, -1.64671326, -0.945657015, -0.0199032873, -0.324555159, -0.293453008, -0.377710402, 0.878189743, -0.140066996, 0.925715864, 0.351332605))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.35997057, 0.469682693, -3.518929, 0.849072337, -0.0167402662, -0.528011382, 0.528235853, 0.039334137, 0.848186135, 0.00657001045, -0.999085963, 0.0422403291))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113513231, -0.0314016342, -0.386986017, -0.945644975, -0.0199430883, -0.324586213, 0.275734991, -0.578341961, -0.767776012, -0.172409996, -0.815556824, 0.552405953))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.106906891, 0.680256844, -0.984727144, -0.945657015, -0.0199931264, -0.324573547, 0.325038999, -0.0275373757, -0.945300102, 0.00996300019, -0.999428272, 0.0325399637))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113397837, 0.240679741, 0.988533258, -0.945643008, -0.0199017376, -0.324595839, -0.325141013, 0.037715286, 0.944907427, -0.00656299992, 0.999095261, -0.0421430171))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.106888056, 1.26609373, -1.51425695, -0.945654988, -0.0199691653, -0.324555039, 0.293440014, 0.377639472, -0.87822485, 0.140101999, -0.925743043, -0.351245552))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.915691376, 0.284912586, -1.11614299, -0.657739997, 0.0179360807, 0.753027201, -0.753179014, -0.0288897753, -0.657176554, 0.00996700022, -0.999427438, 0.0325185359))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.372214317, 0.460397243, 0.973590612, -0.833351016, 0.0178491175, 0.55245322, 0.552706003, 0.0387634337, 0.83246994, -0.00655600009, 0.999094486, -0.04217574))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.35582352, 0.783789158, -3.30506945, -0.761317015, -0.327565968, 0.559550822, -0.633055985, 0.189010873, -0.750674248, 0.140134007, -0.925735831, -0.351254046))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.11358881, 0.286130905, -1.16030788, -0.945657015, -0.0199931264, -0.324573547, 0.325038999, -0.0275373757, -0.945300102, 0.00996300019, -0.999428272, 0.0325399637))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.11955881, 1.10069919, 1.5793705, 0.37399599, -0.279020488, 0.884460449, 0.916787028, 0.255292594, -0.307128489, -0.140101001, 0.925734043, 0.351269186))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.106734276, 0.280498505, 0.875917912, -0.945643008, -0.0199017376, -0.324595839, -0.325141013, 0.037715286, 0.944907427, -0.00656299992, 0.999095261, -0.0421430171))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.35582638, 0.783813, -1.57944846, -0.761317015, -0.327565968, 0.559550822, -0.633055985, 0.189010873, -0.750674248, 0.140134007, -0.925735831, -0.351254046))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14337516, 1.12060928, 1.71211386, 0.827417016, 0.304308057, -0.471994549, 0.543829978, -0.224484682, 0.808611393, 0.140111998, -0.925750732, -0.351222277))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.534491539, 0.228695393, -3.51894307, 0.211664006, 0.0426087379, 0.97640729, -0.977321029, 0.00252804905, 0.211749718, 0.00655400008, -0.999093652, 0.0421843231))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113569021, 1.08472824, -1.59378862, -0.945654988, -0.0199691653, -0.324555039, 0.293440014, 0.377639472, -0.87822485, 0.140101999, -0.925743043, -0.351245552))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.785497665, 0.561206937, -1.11628461, -0.144470006, -0.0336330235, -0.988939345, 0.989467978, 0.00510715693, -0.144715369, 0.00992400013, -0.99943018, 0.0325411856))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.502122879, 0.271580815, -0.459151268, 0.0328800008, -0.565247416, -0.824261308, 0.98447901, -0.123951226, 0.124270737, -0.172409996, -0.815564215, 0.552394748))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.10678339, 0.340955734, -0.320638418, -0.945644975, -0.0199430883, -0.324586213, 0.275734991, -0.578341961, -0.767776012, -0.172409996, -0.815556824, 0.552405953))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.534570694, 0.228540897, 0.973649263, -0.211720005, -0.0425924063, -0.976395547, -0.977307975, 0.00245734304, 0.211808205, -0.00662200013, 0.999094605, -0.0421538055))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14326453, 1.12070513, -3.4376626, -0.827414989, -0.304311633, 0.471994758, 0.543842971, -0.224565655, 0.808579683, -0.140065998, 0.925730169, 0.351295829))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113579035, 1.11600542, -1.72622538, -0.945657015, -0.0199032873, -0.324555159, -0.293453008, -0.377710402, 0.878189743, -0.140066996, 0.925715864, 0.351332605))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.106799126, 0.245800972, -0.418057919, -0.945634007, -0.0198916942, -0.324621201, -0.275748014, 0.578281283, 0.76781714, 0.172448993, 0.815601885, -0.552327991))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle6,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.559051514, 0.0297412872, -0.459212065, -0.457545012, 0.56289196, 0.688329399, -0.872304976, -0.134017557, -0.470233858, -0.172443002, -0.815599918, 0.55233258))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
    
    
    
    


SP_handle7=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,1,1,"Institutional white","Handle",Vector3.new(1, 1, 1))
SP_handle7weld=weld(m,Character["Torso"],SP_handle7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.849995315, 5.64696217, -0.779978275, -0.000193386877, 4.02278477e-009, 1, 1.00731813e-005, 1, -2.07476347e-009, -1, 1.00731822e-005, -0.000193386877))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06238353, 1.06006074, 4.7195797, 0.543910682, -0.224475473, 0.808561683, -0.827357531, -0.30437988, 0.472051442, 0.140145913, -0.925723374, -0.351276875))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06269479, -1.7913332, 1.05998313, 0.543890953, -0.224529862, 0.808559895, -0.140077978, 0.925727904, 0.351292133, -0.827381909, -0.304325998, 0.472043335))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.298558235, -0.574375629, 0.759660482, -0.847868621, -0.162552416, -0.504673719, 0.501394153, -0.555319726, -0.663493812, -0.17240274, -0.815595984, 0.552341044))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.121835709, 1.16163945, 3.16960621, 0.945641339, 0.0199327059, 0.32460019, -0.293494105, -0.377633572, 0.878210783, 0.140085042, -0.925740659, -0.351255745))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.194128752, 0.49374938, 0.286732197, 0.640463173, 0.0366358981, 0.76711458, 0.767960787, -0.0219984818, -0.640119016, -0.00657597696, 0.999086559, -0.0422241464))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.832104206, -1.44526482, 2.19490004, -0.633064926, 0.189050123, -0.750658929, -0.761311889, -0.327580005, 0.559549391, -0.140117988, 0.925716758, 0.351305485))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.225713968, 0.545813322, 4.91597223, -0.64051193, -0.0366319455, -0.767074049, 0.767919898, -0.0219687298, -0.640169084, 0.00659899507, -0.999087334, 0.0422016345))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.471865833, -1.98773766, 0.373470306, -0.948341131, 0.00712645985, 0.317172438, -0.00659099687, 0.99908936, -0.0421552509, -0.317184031, -0.0420680381, -0.947430551))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.06267214, 1.06018543, -1.04549408, -0.543962896, 0.224554434, -0.808504641, -0.827327847, -0.304420114, 0.472077399, -0.140117973, 0.925691009, 0.351373315))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.27361989, 0.280938625, -0.910027027, 0.998404503, 0.00814594701, -0.0558761656, 0.00997399166, -0.999421537, 0.032515537, -0.0555789731, -0.0330209695, -0.997908115))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.121825218, 1.33308291, 3.57315755, 0.945621908, 0.0199723467, 0.324654311, 0.293528974, 0.37764287, -0.878195167, -0.140142992, 0.92573601, 0.351244867))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.273629189, -0.909916639, 1.55949211, -0.998399734, -0.00810127147, 0.0559675284, -0.0556719862, -0.0329959914, -0.997903764, 0.00993099343, -0.999422669, 0.0324921757))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.434843421, 0.325225115, 0.286607742, 0.948349774, -0.00711537385, -0.317146927, -0.317157924, -0.04209207, -0.94743818, -0.00660799444, 0.999088466, -0.0421747006))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.832085133, 1.4448874, 5.12331152, 0.632974327, -0.189049706, 0.750735462, 0.761388958, 0.327516764, -0.559481621, -0.14010863, 0.925739169, 0.351250052))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.292034149, -0.0169911385, -0.548767567, 0.847838402, 0.162626073, 0.50470072, -0.172359094, -0.815600395, 0.552348137, 0.501460254, -0.555291712, -0.663467228))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0313916802, -0.0169150829, -0.610028267, 0.981517613, -0.0949028432, 0.166183025, -0.172381103, -0.815583646, 0.552366018, 0.0831150487, -0.570803821, -0.81686902))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.564170837, -0.773265839, 1.5594511, -0.691524804, -0.0303643271, -0.721714318, 0.72228384, -0.0152633283, -0.691428363, 0.0099789938, -0.999422431, 0.0324866325))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.738848925, 1.79126453, -1.30151594, 0.95285964, 0.222531646, -0.206248105, 0.140154108, -0.925715506, -0.351294428, -0.269101173, 0.305827737, -0.913265646))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.564300537, 0.280967712, -0.773188353, 0.691477954, 0.0303831529, 0.721758366, 0.00995799527, -0.999421179, 0.0325314291, 0.722328961, -0.0153074982, -0.691380203))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.115152836, 1.19581079, 3.34131432, 0.945641339, 0.0199327059, 0.32460019, -0.293494105, -0.377633572, 0.878210783, 0.140085042, -0.925740659, -0.351255745))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.481203198, 1.9876833, -0.360839128, -0.938690364, 0.00840988755, 0.344658792, 0.00655399822, -0.999086499, 0.0422283635, 0.344699115, 0.0418982506, 0.937777698))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.738619745, 1.30147946, 4.71956635, 0.952862859, 0.222477466, -0.206291363, 0.269124985, -0.305841267, 0.913253963, 0.14008598, -0.92572397, -0.351299018))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.12154758, 0.258850574, 3.80496645, -0.945643485, -0.0199032873, -0.324595749, -0.325138777, 0.0376651362, 0.94491601, -0.00658099214, 0.999092221, -0.0420891196))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.115208626, 1.36715484, 3.7449019, 0.945621908, 0.0199723467, 0.324654311, 0.293528974, 0.37764287, -0.878195167, -0.140142992, 0.92573601, 0.351244867))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114960074, 0.298610449, 3.97548389, -0.945643485, -0.0199032873, -0.324595749, -0.325138777, 0.0376651362, 0.94491601, -0.00658099214, 0.999092221, -0.0420891196))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.017718792, 0.344287634, -0.36626482, 0.872313201, 0.134022474, 0.470220864, 0.172433048, 0.815588772, -0.552342117, -0.457533121, 0.562896967, 0.688338876))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.738741338, 1.04558611, -1.30149102, 0.952856779, 0.222536579, -0.206255734, 0.140163973, -0.925723791, -0.351268739, -0.269105941, 0.305799186, -0.913273752))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.231038034, -2.4260304, 0.554632187, -0.977320135, 0.00250977301, 0.211752355, 0.00657799654, -0.999087453, 0.0422016233, 0.211665034, 0.0426373966, 0.976411819))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0367662609, -0.635819435, 0.759697914, -0.981523335, 0.0949367434, -0.166129559, 0.0830510333, -0.570805669, -0.816874206, -0.172379062, -0.815578341, 0.552374423))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.44116807, 0.333414555, -0.151769161, 0.552708924, 0.038741529, 0.832473457, -0.83334887, 0.0178685524, 0.552458584, 0.00652799476, -0.999089479, 0.0421613194))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.832253695, 1.44914389, -1.44523406, 0.633038044, -0.189094171, 0.750670671, -0.140092015, 0.925712764, 0.351326436, -0.761339128, -0.327565938, 0.559520721))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.231049627, 0.55464077, -2.42602754, 0.977325857, -0.00251909485, -0.211725891, 0.211638972, 0.042638544, 0.976417422, 0.00656799506, -0.999087453, 0.0422048867))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.271422863, -0.904661417, 1.99789929, -0.753205121, -0.0287958365, -0.657155275, -0.657711089, 0.0179088917, 0.75305748, -0.00991599727, 0.999424875, -0.0324284099))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.271476746, 0.719465733, -0.904472589, 0.753121018, 0.0288138296, 0.657250762, -0.00985697005, 0.99942255, -0.0325198509, -0.657808244, 0.0180128813, 0.75297004))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.231094122, 0.554218531, 5.35433674, -0.977327108, 0.00251917145, 0.211720333, 0.211634025, 0.0425503403, 0.97642231, -0.00654899655, 0.999091208, -0.0421187431))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.478116512, -2.4261384, 0.381778955, -0.552739978, -0.0387623422, -0.83245182, 0.00654999586, -0.999088943, 0.0421725065, -0.833328009, 0.0178578757, 0.552490294))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199465066, 0.502525568, -0.151699066, 0.977325857, -0.00251909485, -0.211725891, 0.211638972, 0.042638544, 0.976417422, 0.00656799506, -0.999087453, 0.0422048867))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0125086308, -0.392321587, 1.12094426, -0.872356296, -0.133957624, -0.470159501, -0.457463145, 0.562835097, 0.688435972, 0.172401056, 0.815642059, -0.552273393))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.121764541, 0.249010563, 3.36657286, -0.945649505, -0.0199542195, -0.324575126, 0.325121135, -0.0377881303, -0.944917142, 0.00658999896, -0.999086618, 0.0422218628))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.832235575, 2.19488287, -1.44521546, 0.633038044, -0.189094171, 0.750670671, -0.140092015, 0.925712764, 0.351326436, -0.761339128, -0.327565938, 0.559520721))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.225598335, 0.54582262, -1.98764658, 0.640463173, 0.0366358981, 0.76711458, 0.767960787, -0.0219984818, -0.640119016, -0.00657597696, 0.999086559, -0.0422241464))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.06270432, 1.0602169, -1.79119062, -0.543962896, 0.224554434, -0.808504641, -0.827327847, -0.304420114, 0.472077399, -0.140117973, 0.925691009, 0.351373315))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.225419044, -1.98769617, 0.54564786, -0.64050597, -0.0365557, -0.767082632, -0.00659099501, 0.999091327, -0.0421087779, 0.767924905, -0.0219150856, -0.640164912))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.487360001, 0.368535995, 5.3543849, -0.528254986, -0.0392589159, -0.848177731, -0.849059999, 0.0166275054, 0.528034806, -0.00662699575, 0.999090731, -0.0421167389))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.481192946, 0.361121893, 4.91594934, -0.938685477, 0.00837380346, 0.344673276, -0.344711781, -0.0419403054, -0.937771201, 0.0066029923, -0.999085069, 0.0422552973))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.115078568, 0.288699865, 3.53709173, -0.945649505, -0.0199542195, -0.324575126, 0.325121135, -0.0377881303, -0.944917142, 0.00658999896, -0.999086618, 0.0422218628))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.738783777, -1.30160105, 1.79125023, -0.952869236, -0.222507223, 0.206229895, -0.269080073, 0.305862308, -0.913260221, 0.14012903, -0.925709963, -0.351319015))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.1715281, 1.19219339, 5.12320566, 0.916778564, 0.255314767, -0.307134449, -0.374006808, 0.278993487, -0.884466887, -0.14012894, 0.925730467, 0.351264715))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.487421036, 2.42614436, -0.368805289, -0.528245986, -0.0392348655, -0.848184526, -0.00656699575, 0.99909085, -0.0421255119, 0.849066019, -0.0166826062, -0.528023362))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.17157495, -2.19488668, 1.19232154, 0.916773617, 0.255347222, -0.307121933, 0.14016296, -0.925722897, -0.351271212, -0.374005884, 0.278989077, -0.884468675))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.236938179, -0.33363533, 1.1209197, -0.984473228, 0.123933606, -0.124309756, -0.0329470038, 0.565129578, 0.824344039, 0.172415048, 0.815640211, -0.552271783))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17150044, 1.19249856, -2.19481277, -0.916783869, -0.255321532, 0.307112962, -0.37399897, 0.279062569, -0.884448349, 0.140114978, -0.925707936, -0.351330012))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.561463118, 0.719490528, -0.76807785, 0.98946923, 0.00511615817, -0.144652978, -0.00992099941, 0.999422014, -0.03251452, 0.144403026, 0.0336072147, 0.988948166))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.561436296, -0.768132925, 1.99786997, -0.989465475, -0.00508869253, 0.144680277, 0.144432068, 0.033519119, 0.988946915, -0.00988200121, 0.999425173, -0.03243104))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.230454534, 0.344371319, -0.308007717, 0.984470785, -0.123933211, 0.124329232, 0.172429949, 0.815566361, -0.552376151, -0.0329409875, 0.56523633, 0.824271083))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle7,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17148161, 1.19251478, -1.44920826, -0.916783869, -0.255321532, 0.307112962, -0.37399897, 0.279062569, -0.884448349, 0.140114978, -0.925707936, -0.351330012))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.12769258, 0.878246307, -0.372187614, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127701879, 1.11408424, -0.708797932, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127638102, 0.879276991, -0.968561649, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127640128, 1.33305001, -1.02151394, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127587557, 1.11499166, -1.30519962, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127649069, 1.334005, -1.6179409, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127840638, -1.29348922, 1.07052374, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127808332, -1.29333901, 0.765118122, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127695322, -0.829499722, 0.710238457, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127777219, -1.06414628, 0.437771797, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127999067, -1.06423926, 0.743121147, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127774477, -1.29337549, 1.37271929, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127899647, -0.829425812, 0.407992363, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127892613, 1.33391356, -1.31246328, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127864361, 0.879205465, -0.663184166, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127868295, 1.11500669, -0.999802589, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127747416, -1.0641551, 1.04539251, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle7,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127735972, -0.829448223, 0.102591038, -0.94562602, -0.0199243389, -0.324645132, 0.259127796, 0.557105124, -0.788978219, 0.196581334, -0.830202878, -0.521650195))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.12176168, 0.248873711, 0.836067677, -0.945649505, -0.0199542195, -0.324575126, 0.325121135, -0.0377881303, -0.944917142, 0.00658999896, -0.999086618, 0.0422218628))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.121814251, 1.01471686, -1.45812559, -0.945644259, -0.0199343543, -0.324591577, -0.293477058, -0.377689481, 0.878192425, -0.14010103, 0.925717711, 0.351309597))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.635783672, 0.0367712379, -0.327187538, 0.0830280259, -0.570740819, -0.81692189, -0.981517255, 0.0950010493, -0.166129023, 0.172425047, 0.81561619, -0.552304208))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.05985272, 1.06269085, -3.16955566, -0.82738781, -0.304321349, 0.472036034, 0.54388386, -0.224541187, 0.808561444, -0.140070975, 0.925726712, 0.351298094))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.360952377, 0.481380224, -3.36650324, 0.344624043, 0.0419013128, 0.937805176, 0.93871814, -0.008446794, -0.34458217, -0.00651699677, 0.999086082, -0.042244494))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.909877777, 0.273747683, -0.963951588, -0.0557320192, -0.0329589471, -0.997901678, -0.998396337, -0.00811441522, 0.0560276508, -0.00994400028, 0.999423802, -0.0324538611))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.773144007, 0.564270258, -0.963958263, -0.72231698, 0.0153309936, 0.691392243, 0.691491246, 0.0303243846, 0.721748114, -0.00990092754, 0.999422491, -0.0325050689))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.115071058, 0.288588285, 0.72360611, -0.945649505, -0.0199542195, -0.324575126, 0.325121135, -0.0377881303, -0.944917142, 0.00658999896, -0.999086618, 0.0422218628))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.115138054, 0.670778751, -0.832363129, -0.945632994, -0.0199002903, -0.324626476, -0.325085014, 0.0274361037, 0.945286751, -0.00990499649, 0.99942553, -0.0324137695))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.373492956, 0.471836269, 0.821312428, -0.317190886, -0.0420929193, -0.947427154, 0.948338628, -0.00710983155, -0.317180216, 0.00661499333, -0.999088466, 0.0421735123))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.545747042, 0.225619555, 0.821218491, -0.767913997, 0.0219993927, 0.640175164, -0.640519023, -0.0366774313, -0.767066002, 0.00660499558, -0.999085069, 0.0422561392))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.3016243, 0.738853455, -1.44379997, -0.269208014, 0.305870444, -0.91321981, -0.952832997, -0.222557828, 0.206342891, -0.140129998, 0.925695062, 0.351357788))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.574380875, 0.298605919, -0.327244043, -0.501460016, 0.555320561, 0.663443267, 0.847814023, 0.16253145, 0.504772246, 0.172480002, 0.815599561, -0.55231154))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.545918703, 0.225731134, -3.36656141, 0.767966807, -0.0219978783, -0.640111804, -0.640455842, -0.0366498604, -0.767120063, -0.00658499449, 0.999086082, -0.0422345437))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.115144372, 1.19595361, -1.37863302, -0.945644259, -0.0199343543, -0.324591577, -0.293477058, -0.377689481, 0.878192425, -0.14010103, 0.925717711, 0.351309597))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.115085006, 0.417692184, -0.188679695, -0.945639551, -0.019869294, -0.32460922, -0.275734872, 0.578230381, 0.767867208, 0.172441915, 0.815631688, -0.552276134))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.121842265, 0.276617765, -1.00798082, -0.945632994, -0.0199002903, -0.324626476, -0.325085014, 0.0274361037, 0.945286751, -0.00990499649, 0.99942553, -0.0324137695))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30164456, 0.73897624, -3.16941214, -0.269208014, 0.305870444, -0.91321981, -0.952832997, -0.222557828, 0.206342891, -0.140129998, 0.925695062, 0.351357788))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.121828198, 0.045293808, -0.255165339, -0.945639551, -0.019869294, -0.32460922, -0.275734872, 0.578230381, 0.767867208, 0.172441915, 0.815631688, -0.552276134))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.121812344, 0.270653725, -1.44648981, -0.945639014, -0.0199508108, -0.324605674, 0.325067014, -0.0275512617, -0.945289612, 0.00991599634, -0.999421299, 0.0325388983))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.19264615, 1.17178273, -3.57285261, -0.374042511, 0.279067934, -0.884428263, 0.916757703, 0.255396008, -0.307128996, 0.140169561, -0.925685763, -0.351366639))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.369014025, 0.487838268, -3.8049531, 0.849110126, -0.016745016, -0.527950466, 0.528175056, 0.0393512435, 0.848223269, 0.00657199696, -0.999085188, 0.042257838))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.115087509, 0.169072151, -0.549975157, -0.945651114, -0.0199070387, -0.324573308, 0.275709033, -0.578312874, -0.767814279, -0.17242001, -0.815572262, 0.552370667))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.554452181, 0.231060743, -3.80495167, 0.211639002, 0.0425804183, 0.976419926, -0.977325976, 0.00251875771, 0.211725533, 0.0065559959, -0.999089956, 0.0421480127))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.05998957, 1.06269753, 1.44397354, 0.8273893, 0.304322958, -0.472032279, 0.543872178, -0.224484488, 0.808585048, 0.140107051, -0.925739884, -0.351248801))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.44535959, 0.832259893, -3.57307673, -0.761350155, -0.327604711, 0.559482932, -0.633015156, 0.189093485, -0.750690043, 0.140135035, -0.925699115, -0.351345122))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.121850133, 1.18607283, -1.86183023, -0.945622981, -0.0199606698, -0.324651718, 0.293520987, 0.377706766, -0.878170252, 0.140152007, -0.925710142, -0.35130927))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.381774068, 0.478163242, 1.25959444, -0.833372414, 0.0178675745, 0.552422941, 0.552673221, 0.0387505516, 0.832496643, -0.00653199898, 0.999089181, -0.0421685688))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19244361, 1.17122483, 1.8476119, 0.373938084, -0.279001802, 0.884493291, 0.916817248, 0.255219489, -0.307098091, -0.140059024, 0.925754309, 0.351229966))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.11514914, 0.664756298, -1.2709322, -0.945639014, -0.0199508108, -0.324605674, 0.325067014, -0.0275512617, -0.945289612, 0.00991599634, -0.999421299, 0.0325388983))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.554561615, 0.230921954, 1.25968409, -0.211724967, -0.0425784551, -0.976401389, -0.977306902, 0.00245465455, 0.211814284, -0.00662199501, 0.999090195, -0.0421319269))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.392204285, -0.0125303268, -0.688553095, -0.457504541, 0.562893152, 0.688361049, -0.872341037, -0.134058982, -0.470158875, -0.172368214, -0.815585375, 0.552367389))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.904435396, 0.271415949, -1.40239811, -0.65777117, 0.0179920588, 0.753002942, -0.753152192, -0.0289156493, -0.657210588, 0.00994899869, -0.999419987, 0.0325706378))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.121813416, -0.203297615, -0.616305351, -0.945651114, -0.0199070387, -0.324573308, 0.275709033, -0.578312874, -0.767814279, -0.17242001, -0.815572262, 0.552370667))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.768075228, 0.561466694, -1.40242529, -0.144402042, -0.0335751772, -0.988949299, 0.989469349, 0.00512390817, -0.144651935, 0.00992400013, -0.999423146, 0.0324817039))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.44525635, 0.832183838, -1.84746075, -0.761350155, -0.327604711, 0.559482932, -0.633015156, 0.189093485, -0.750690043, 0.140135035, -0.925699115, -0.351345122))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.115132451, 1.36738443, -1.78229094, -0.945622981, -0.0199606698, -0.324651718, 0.293520987, 0.377706766, -0.878170252, 0.140152007, -0.925710142, -0.35130927))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.333556175, 0.237042338, -0.688510656, 0.0328939892, -0.565236688, -0.824272752, 0.984476745, -0.12393856, 0.124276809, -0.17240496, -0.815565348, 0.552385569))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.115046382, 0.298792601, 1.16193962, -0.945643485, -0.0199032873, -0.324595749, -0.325138777, 0.0376651362, 0.94491601, -0.00658099214, 0.999092221, -0.0420891196))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle7,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.121685028, 0.25898695, 1.27454853, -0.945643485, -0.0199032873, -0.324595749, -0.325138777, 0.0376651362, 0.94491601, -0.00658099214, 0.999092221, -0.0420891196))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
    
    
    
    


SP_handle8=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,1,1,"Institutional white","Handle",Vector3.new(1, 1, 1))
SP_handle8weld=weld(m,Character["Torso"],SP_handle8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.749995351, 5.74871063, -0.231134176, -0.00019338631, 4.09768619e-009, 1, -0.422608793, 0.906312227, -8.17304681e-005, -0.906312168, -0.422608823, -0.000175266643))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0304018259, 1.05077505, -0.665717125, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0303175449, 1.26973391, -0.978426456, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0303451419, 1.27067208, -1.57486629, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0302453041, 1.05164957, -1.2621187, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0303044319, 0.815973282, -0.925470352, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0303657651, 0.814937115, -0.329096079, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0304018259, -1.35662651, 0.808242321, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0304549932, -1.35676575, 1.11366272, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0305967927, -1.12753534, 0.786252499, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0303921103, -0.892733574, 0.145734549, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0302373171, -0.892805099, 0.753364086, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0303384066, -1.35665894, 1.4158473, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0303558111, -1.12744045, 1.0885067, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0303755999, -1.12743378, 0.480916739, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0305114388, -0.892728329, 0.451109409, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.030549109, 1.05167484, -0.956727266, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0304884315, 0.815870762, -0.620111465, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle8,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.030580163, 1.27054882, -1.26941001, -0.945626616, 0.00841701776, -0.325145394, 0.259113908, 0.623733222, -0.737439454, 0.19659692, -0.781592011, -0.59199971))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0177048445, 0.262690306, 0.795734406, -0.945627689, 0.00840517413, -0.325142622, 0.32518363, 0.0448156595, -0.944588363, 0.00663205096, -0.998959959, -0.0451121479))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.017790854, 0.697359085, -0.904196739, -0.945637345, 0.00849579182, -0.325112164, -0.325073123, -0.0550540797, 0.944085062, -0.00987800118, 0.998447239, 0.0548229404))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0177147985, 0.638320923, -1.19904709, -0.945622504, 0.00845525321, -0.325156331, 0.325115144, 0.0550361946, -0.944071651, 0.00991300214, -0.99844861, -0.0547923893))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.52637887, 0.327563643, 1.18755627, -0.211527959, 0.0426233672, -0.976442099, -0.977349758, -0.0159576498, 0.211027995, -0.00658699591, 0.998963833, 0.0450334214))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0176902413, 0.324715614, 1.08982086, -0.945642769, 0.00844511297, -0.325097799, -0.325140923, -0.0447720475, 0.944605231, -0.00657799561, 0.998961568, 0.0450842157))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.21321273, 1.0625478, -3.51794839, -0.374075979, 0.355044574, -0.85674423, 0.916750908, 0.28115046, -0.283764482, 0.140124992, -0.891570508, -0.430659026))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.461472988, 0.416662693, 1.18748283, -0.833374202, -0.0303657614, 0.551874459, 0.552670121, -0.0339150876, 0.83270973, -0.00656899856, 0.998963356, 0.045046214))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0177404284, 1.31412315, -1.72727537, -0.945626736, 0.00842398591, -0.325144649, 0.29351595, 0.45281142, -0.841908693, 0.140136972, -0.891566515, -0.430663198))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.581257582, 0.199875534, -0.401726246, -0.501508117, 0.495366871, 0.709296405, 0.847787201, 0.117947362, 0.517054558, 0.172472045, 0.860639334, -0.479117215))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.897734404, 0.373848796, -1.03583908, -0.0556309819, 0.0540674627, -0.996986449, -0.998401761, -0.0129681472, 0.0550066866, -0.00995499454, 0.998453081, 0.0547024868))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0243785381, 0.222923279, 0.908171654, -0.945627689, 0.00840517413, -0.325142622, 0.32518363, 0.0448156595, -0.944588363, 0.00663205096, -0.998959959, -0.0451121479))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.29317355, 0.849464297, -3.2244978, -0.269099772, 0.384265035, -0.883134067, -0.952861726, -0.239649951, 0.186071157, -0.140142396, 0.89157635, 0.430641174))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.473282456, 0.295542598, -3.4386692, 0.767947316, 0.0338959023, -0.639615655, -0.640479267, 0.0303617902, -0.767375171, -0.00659099966, 0.99896419, 0.0450258702))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0244535208, 0.027487278, -0.329665184, -0.94562614, 0.00844465103, -0.325146258, -0.275791019, 0.509127796, 0.81530875, 0.172426015, 0.860649586, -0.479115516))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0245130062, 0.303220272, -1.07980394, -0.945637345, 0.00849579182, -0.325112164, -0.325073123, -0.0550540797, 0.944085062, -0.00987800118, 0.998447239, 0.0548229404))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.2932179, 0.849393249, -1.49891472, -0.269099772, 0.384265035, -0.883134067, -0.952861726, -0.239649951, 0.186071157, -0.140142396, 0.89157635, 0.430641174))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.40237689, 0.389302611, -3.43864632, 0.344622105, -0.0399877205, 0.937889457, 0.938718379, 0.0216900334, -0.344001949, -0.00658699963, 0.998964787, 0.0450120717))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0177072287, 0.399853826, -0.263174057, -0.94562614, 0.00844465103, -0.325146258, -0.275791019, 0.509127796, 0.81530875, 0.172426015, 0.860649586, -0.479115516))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599018455, 0.128614008, -0.401697636, 0.0831239894, -0.497436613, -0.863508642, -0.981514871, 0.109030753, -0.157292366, 0.172391981, 0.860621333, -0.479178369))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.841408849, 0.489928365, -1.03575373, -0.722325087, -0.0449959524, 0.690088332, 0.69148308, -0.0327253416, 0.721651077, -0.00988799799, 0.998451114, 0.0547522604))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0244309902, -0.185481369, -0.541816711, -0.945637524, 0.0084194392, -0.325113684, 0.275756896, -0.509218335, -0.815263689, -0.172417909, -0.86059624, 0.479214221))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.789072514, 0.46281901, -1.33057404, -0.144400015, 0.0527401268, -0.988112926, 0.989469111, 0.0177663043, -0.143649936, 0.00997899845, -0.998450279, -0.054750178))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0243879557, 0.244198322, -1.37464428, -0.945622504, 0.00845525321, -0.325156331, 0.325115144, 0.0550361946, -0.944071651, 0.00991300214, -0.99844861, -0.0547923893))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.473163486, 0.295451164, 0.893368244, -0.767936826, -0.03392547, 0.639626622, -0.640491843, 0.0304226372, -0.767362237, 0.00657399604, -0.998961329, -0.0450916514))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.16276932, 1.0214076, -3.22458267, -0.827417731, -0.3442837, 0.443676323, 0.543838799, -0.294172585, 0.785940111, -0.140068948, 0.891589165, 0.430638403))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.374956131, 0.147137582, -0.613998413, 0.0329520069, -0.491220415, -0.870411754, 0.984483242, -0.134231806, 0.113024779, -0.172357038, -0.860630155, 0.479175061))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526440859, 0.327508271, -3.73284554, 0.211625099, -0.04260974, 0.976421714, -0.977328479, -0.0160032399, 0.211123273, 0.00663000066, -0.998963714, -0.0450303964))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0245232582, 1.06802177, -1.51313066, -0.945642889, 0.00845607277, -0.325096965, -0.293486983, -0.452813625, 0.841917694, -0.14008899, 0.891565204, 0.430681676))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.39043355, 0.0865291655, -0.614056587, -0.457533985, 0.500722945, 0.734805584, -0.872309029, -0.0924861655, -0.480128437, -0.172452003, -0.860652566, 0.479100704))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.34751356, 0.884771705, -1.79246879, -0.761355996, -0.375109255, 0.528800666, -0.633005977, 0.253778249, -0.731368601, 0.140145004, -0.891565859, -0.430661947))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.16311717, 1.02136827, 1.49885941, 0.827364326, 0.34438315, -0.443698734, 0.543900192, -0.294137418, 0.785910785, 0.140146047, -0.891562402, -0.430668861))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.450188518, 0.428284168, -3.73294592, 0.849064291, 0.0294376966, -0.527468801, 0.528248191, -0.0348082073, 0.848376334, 0.00661399961, -0.998960435, -0.0451048166))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0178140998, 1.24927807, -1.43362331, -0.945642889, 0.00845607277, -0.325096965, -0.293486983, -0.452813625, 0.841917694, -0.14008899, 0.891565204, 0.430681676))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.34757495, 0.884764552, -3.51811361, -0.761355996, -0.375109255, 0.528800666, -0.633005977, 0.253778249, -0.731368601, 0.140145004, -0.891565859, -0.430661947))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.21305633, 1.06237829, 1.79252577, 0.374021202, -0.355013818, 0.856780887, 0.916776061, 0.281095743, -0.283737451, -0.140106708, 0.891599953, 0.430603921))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0176983476, 0.186896801, -0.475494862, -0.945637524, 0.0084194392, -0.325113684, 0.275756896, -0.509218335, -0.815263689, -0.172417909, -0.86059624, 0.479214221))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0244594812, 1.132797, -1.8068099, -0.945626736, 0.00842398591, -0.325144649, 0.29351595, 0.45281142, -0.841908693, 0.140136972, -0.891566515, -0.430663198))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0243572593, 0.284901619, 1.20243502, -0.945642769, 0.00844511297, -0.325097799, -0.325140923, -0.0447720475, 0.944605231, -0.00657799561, 0.998961568, 0.0450842157))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.412189126, 0.378841162, 0.893413544, -0.31724003, 0.0406404771, -0.947474182, 0.948322117, 0.0205804538, -0.316641212, 0.0066309981, -0.998961866, -0.0450692102))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle8,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.843192339, 0.351683497, -1.33047533, -0.657770753, -0.0477839708, 0.751700997, -0.753152728, 0.0285656638, -0.657225251, 0.00993199367, -0.998449147, -0.0547782853))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.12329638, 0.0575609207, -0.573266387, 0.981521547, -0.108981334, 0.157285154, -0.172347903, -0.860613465, 0.47920841, 0.0831369609, -0.49746111, -0.863493323))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.849377155, -1.29325485, 1.84629536, -0.952882588, -0.239595622, 0.186034694, -0.269046158, 0.384293497, -0.883138061, 0.140104085, -0.891578674, -0.430648804))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.849486709, 1.29316878, 4.77453613, 0.952856004, 0.23965171, -0.186098129, 0.269127995, -0.384280592, 0.883118689, 0.140127003, -0.891569078, -0.430661082))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0243371725, 0.222762108, 3.43867016, -0.945627689, 0.00840517413, -0.325142622, 0.32518363, 0.0448156595, -0.944588363, 0.00663205096, -0.998959959, -0.0451121479))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389291406, 2.05979156, -0.40228641, -0.938694894, -0.0216971412, 0.344065636, 0.00659499643, -0.998965144, -0.0450030304, 0.344685972, -0.0399750099, 0.937866449))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0176548958, 0.262459636, 3.60918522, -0.945627689, 0.00840517413, -0.325142622, 0.32518363, 0.0448156595, -0.944588363, 0.00663205096, -0.998959959, -0.0451121479))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.849658251, 1.84626484, -1.29314661, 0.952845991, 0.239710435, -0.186073765, 0.140196994, -0.891566217, -0.430644274, -0.269127011, 0.384250671, -0.883131981))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.193298787, 0.0574960709, -0.555636823, 0.847819865, 0.118038133, 0.516980231, -0.172363982, -0.860632002, 0.479169279, 0.501489937, -0.49535799, -0.709315419))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.373856455, 0.35274744, -0.897895813, 0.99840188, 0.0130161485, -0.0549939461, 0.0100029958, -0.998452008, -0.054714907, -0.055620987, 0.0540773608, -0.996986449))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.489913702, 0.352811337, -0.841460228, 0.691520095, -0.0326454863, 0.721619248, 0.0099329846, -0.998454094, -0.0546879433, 0.722289026, 0.0449856408, -0.690126717))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.378848195, -2.05986023, 0.412130833, -0.948353231, -0.0205427594, 0.316550493, -0.00658099866, 0.998960316, 0.0451121926, -0.317148089, 0.0406990759, -0.947502375))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0242310166, 1.21527958, 3.22449017, 0.945630789, -0.00837177224, 0.325134277, -0.293481946, -0.452826083, 0.841912687, 0.140180975, -0.891559541, -0.430663288))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.341829598, 0.36392355, 0.214519501, 0.948346257, 0.0205601789, -0.316570252, -0.317168087, 0.040615797, -0.947499216, -0.00662299851, 0.998963296, 0.0450388677))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389090955, 0.402075529, 4.98810291, -0.938713491, -0.0217408668, 0.34401232, -0.344635189, 0.0400490575, -0.937882006, 0.0066130003, -0.99896121, -0.0450872518))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02133036, 1.16309834, -1.84627581, -0.543913066, 0.29414469, -0.785899222, -0.827361107, -0.344361454, 0.443721622, -0.140115008, 0.891568422, 0.430666566))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.128644884, -0.599088907, 0.834199905, -0.98151511, 0.109073602, -0.157261521, 0.0830720067, -0.497455895, -0.863502622, -0.172416016, -0.860604763, 0.479199499))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02137256, -1.84628344, 1.16305113, 0.543884039, -0.294156909, 0.785914779, -0.140110016, 0.891570449, 0.430663973, -0.827381134, -0.344345778, 0.443696558))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199867666, -0.581256509, 0.834160328, -0.847855389, -0.117940478, -0.51694423, 0.501409233, -0.49538368, -0.70935452, -0.172424093, -0.860630691, 0.479150116))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.35158968, -0.843251348, 1.92609358, -0.753183722, 0.0285814889, -0.657189071, -0.657735765, -0.047755897, 0.751733422, -0.00989899319, 0.9984501, 0.0547680296))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.32784754, 0.526129007, 5.28221941, -0.977333665, -0.0159277916, 0.211105093, 0.211603925, -0.0426672846, 0.97642374, -0.00654499466, 0.998962402, 0.0450705551))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06263876, 1.21301126, 5.06810427, 0.916772246, 0.281142771, -0.283703327, -0.37401408, 0.355036348, -0.856774569, -0.140151024, 0.891576171, 0.43063876))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02098274, 1.16316485, 4.7745719, 0.543869793, -0.294086754, 0.78595072, -0.827377677, -0.344378561, 0.443677366, 0.140184954, -0.89158088, -0.430617929))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.884854674, 1.39416528, -1.34746909, 0.633010507, -0.253768742, 0.731367946, -0.140115902, 0.891584575, 0.430632859, -0.761357486, -0.375071466, 0.528825343))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.06253171, 1.21319175, -1.39414883, -0.916767776, -0.281161308, 0.283699065, -0.374025911, 0.355083704, -0.856749833, 0.140147969, -0.891551435, -0.430690944))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.849377155, 1.10057926, -1.29315782, 0.95286113, 0.239651233, -0.186072513, 0.140142009, -0.89157486, -0.430644453, -0.269102037, 0.384267807, -0.88313216))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0244005322, 1.27990484, 3.51813173, 0.945618987, -0.0084098326, 0.325167894, 0.293538004, 0.452764422, -0.841926277, -0.140144005, 0.891590476, 0.430611223))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.327682078, -2.35390592, 0.526466846, -0.977324247, -0.0159551241, 0.211146727, 0.00659199851, -0.998966515, -0.044974003, 0.21164605, -0.0425623059, 0.97641921))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0864845216, -0.390470862, 1.04646444, -0.872322857, -0.092511192, -0.480098426, -0.457519948, 0.50072521, 0.734812796, 0.172418982, 0.860648632, -0.479119748))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.351539731, 0.647615433, -0.84317863, 0.753155351, -0.0285411458, 0.657223284, -0.00991102774, 0.998452723, 0.0547173619, -0.657768011, -0.0477244332, 0.751707137))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.379652977, 0.413157582, -0.079662323, 0.552699208, -0.0338513404, 0.8326931, -0.833354294, -0.0304380767, 0.551900685, 0.00666299975, -0.998963356, -0.0450332575))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.884800315, 2.13990641, -1.34743476, 0.633021951, -0.253776133, 0.731355548, -0.140105978, 0.891581655, 0.43064186, -0.761349857, -0.375073016, 0.528835177))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.06257486, 1.21317387, -2.1397419, -0.916767776, -0.281161308, 0.283699065, -0.374025911, 0.355083704, -0.856749833, 0.140147969, -0.891551435, -0.430690944))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.462741494, -0.789059997, 1.92605639, -0.989465892, -0.0177080948, 0.143678918, 0.144425988, -0.0527600944, 0.988108039, -0.00991699658, 0.99845022, 0.0547618195))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.264046192, 0.421180129, 0.214625359, 0.64045918, -0.0303727705, 0.767391503, 0.767964184, 0.0338866077, -0.639595926, -0.0065779984, 0.998964071, 0.0450281873))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.29538238, 0.47304976, 4.98810434, -0.640497208, 0.0304066036, -0.767358303, 0.767932177, 0.0339476392, -0.639630973, 0.00660099881, -0.998960972, -0.0450935736))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.428260326, 2.35404849, -0.450281143, -0.528255105, 0.0348195918, -0.848371506, -0.00659399852, 0.998960495, 0.045106072, 0.849060178, 0.0294216722, -0.52747637))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0175436735, 1.24944067, 3.39620161, 0.945630789, -0.00837177224, 0.325134277, -0.293481946, -0.452826083, 0.841912687, 0.140180975, -0.891559541, -0.430663288))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.295408249, -2.05978537, 0.473101377, -0.640504718, 0.0303913485, -0.767352641, -0.0066289939, 0.998960614, 0.0450974666, 0.76792562, 0.0339719169, -0.63963753))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.373821646, -0.897901535, 1.63127327, -0.998403788, -0.0129731158, 0.0549696386, -0.0555949807, 0.0541390181, -0.996984541, 0.00995799433, -0.998449147, -0.0547738411))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0176455379, 0.324687243, 3.9033637, -0.945642769, 0.00844511297, -0.325097799, -0.325140923, -0.0447720475, 0.944605231, -0.00657799561, 0.998961568, 0.0450842157))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.884729862, 1.34734154, 5.06823778, 0.633003831, -0.253758073, 0.731377542, 0.761362195, 0.375065356, -0.528823018, -0.140121296, 0.891590118, 0.430619568))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.295479655, 0.473255634, -2.05974007, 0.64045918, -0.0303727705, 0.767391503, 0.767964184, 0.0338866077, -0.639595926, -0.0065779984, 0.998964071, 0.0450281873))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0177766085, 1.31394958, 3.6898849, 0.945618987, -0.0084098326, 0.325167894, 0.293538004, 0.452764422, -0.841926277, -0.140144005, 0.891590476, 0.430611223))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.140526175, 0.269866943, -0.349399328, 0.984475195, -0.134268254, 0.113052145, 0.172402203, 0.860623896, -0.479170144, -0.0329580419, 0.491221488, 0.870410979))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.428089499, 0.450348496, 5.28227091, -0.528241754, 0.0348280817, -0.848379433, -0.849068582, -0.0293966997, 0.527464092, -0.00656899391, 0.998960972, 0.0450999923))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.462729931, 0.647660732, -0.789045811, 0.989471495, 0.0176834352, -0.143643767, -0.00990100205, 0.998453021, 0.0547139719, 0.144389078, -0.0527156964, 0.988115847))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0812166035, 0.269806862, -0.364444017, 0.872301459, 0.09256953, 0.480126113, 0.172422886, 0.860609591, -0.479188561, -0.457559347, 0.500781655, 0.734749794))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.489854217, -0.841462493, 1.63128328, -0.691518962, 0.032670863, -0.721619189, 0.72228992, 0.0450236425, -0.69012332, 0.00994299632, -0.998451591, -0.0547325388))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.416651249, -2.35401297, 0.461527109, -0.552724421, 0.0339019336, -0.832674265, 0.00657001464, -0.998964012, -0.0450334735, -0.833338201, -0.0303617846, 0.551928997))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06257951, -2.13987565, 1.21293354, 0.916756213, 0.281157553, -0.283740401, 0.140165031, -0.891590059, -0.430605352, -0.374048084, 0.354989648, -0.856779099))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146990776, -0.374937177, 1.04645252, -0.984467745, 0.134327665, -0.113046527, -0.0329309925, 0.491185755, 0.870432198, 0.172449961, 0.860635102, -0.479132921))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0242411494, 0.284903049, 3.7328546, -0.945642769, 0.00844511297, -0.325097799, -0.325140923, -0.0447720475, 0.944605231, -0.00657799561, 0.998961568, 0.0450842157))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02133846, 1.16307878, -1.1005826, -0.543913066, 0.29414469, -0.785899222, -0.827361107, -0.344361454, 0.443721622, -0.140115008, 0.891568422, 0.430666566))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.327713192, 0.526359797, -2.35392618, 0.977333486, 0.0159306657, -0.211105496, 0.211604103, -0.042614311, 0.976426005, 0.00655900035, -0.998964608, -0.0450193845))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.884807825, -1.34755719, 2.13982582, -0.633083045, 0.253793478, -0.731296718, -0.7613011, -0.375114828, 0.528875768, -0.14009501, 0.891559243, 0.430692047))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle8,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.296105862, 0.474221706, -0.0796031952, 0.977333486, 0.0159306657, -0.211105496, 0.211604103, -0.042614311, 0.976426005, 0.00655900035, -0.998964608, -0.0450193845))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
    
    
    
    


SP_handle9=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,1,1,"Institutional white","Handle",Vector3.new(1, 1, 1))
SP_handle9weld=weld(m,Character["Torso"],SP_handle9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.849995315, 5.81548786, -0.250574589, -0.00019338628, 3.37727957e-009, 1, -0.819146395, 0.573584437, -0.000158413619, -0.573584378, -0.819146454, -0.000110920599))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146749496, 0.991060257, -0.637871504, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146625519, 0.991956711, -1.23424554, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146656275, 0.755193233, -0.301217794, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146713257, 1.21099663, -1.54697895, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146654606, 1.21001244, -0.950552702, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146649837, 0.756252766, -0.897587538, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146698713, -1.41640282, 0.836066008, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146614552, -0.952563286, 0.781186104, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146771669, -1.41655159, 1.1414454, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146688223, -0.952487946, 0.173545599, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146701097, -1.18720531, 0.508717895, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146634579, -1.41643333, 1.44368076, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.14683032, -0.952483177, 0.478936791, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146910667, -1.18730831, 0.81408, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146657228, -1.18721008, 1.1163547, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146910191, 0.991962433, -0.928844213, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146857262, 0.756155491, -0.592225313, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle9,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146931171, 1.21085024, -1.24152565, -0.945625007, 0.00840008259, -0.325154692, 0.259104997, 0.623743236, -0.737430573, 0.196618006, -0.781572163, -0.592020214))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.506044865, 0.179415703, 0.9510355, -0.767965972, -0.0339526832, 0.639595091, -0.640456021, 0.030411303, -0.767398715, 0.00660399953, -0.998951077, -0.0451087654))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.816984177, 0.608190536, -1.0931313, -0.722328007, -0.0449707508, 0.69009316, 0.691479981, -0.0326776206, 0.721661866, -0.00990299881, 0.998444557, 0.0547097325))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.617358208, 0.0136389732, -0.467428684, 0.0831409693, -0.497435421, -0.863507688, -0.981513619, 0.109021805, -0.157306403, 0.172390938, 0.86062324, -0.479175419))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.134061813, 0.395038128, -0.328916073, -0.945631981, 0.00844144821, -0.325131834, -0.275772005, 0.509151816, 0.815308332, 0.172424003, 0.860623837, -0.479144245))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.304243565, 0.459341288, -3.49627781, 0.344642818, -0.0399577245, 0.937883079, 0.938710928, 0.0216801204, -0.344023257, -0.00658703409, 0.998966217, 0.0449806415))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.140695572, 0.191043854, 0.965841532, -0.945623994, 0.00840817392, -0.325157583, 0.325195998, 0.0447452962, -0.944595218, 0.00660699932, -0.998953104, -0.0450553))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.12990427, 1.14473152, -3.26389074, -0.827391028, -0.344325453, 0.443691581, 0.543866992, -0.294129193, 0.785940289, -0.140117005, 0.891576648, 0.430642545))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.134015799, 0.230770111, 0.853376627, -0.945623994, 0.00840817392, -0.325157583, 0.325195998, 0.0447452962, -0.944595218, 0.00660699932, -0.998953104, -0.0450553))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.971796989, 0.278346896, -1.09312296, -0.0555859953, 0.0540786386, -0.996997058, -0.998404026, -0.0129564516, 0.0549627282, -0.0099459989, 0.998443246, 0.0547221601))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.316063881, 0.451728821, 0.951092482, -0.317232996, 0.0406350791, -0.947484374, 0.948324025, 0.0205953866, -0.316635877, 0.00664699962, -0.998952031, -0.0450777411))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.134084702, 0.729849339, -0.961545944, -0.945622981, 0.008436203, -0.325157493, -0.325112998, -0.0549962223, 0.944082737, -0.00991799869, 0.998441517, 0.0547575951))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.14079237, 0.335688591, -1.13714671, -0.945622981, 0.008436203, -0.325157493, -0.325112998, -0.0549962223, 0.944082737, -0.00991799869, 0.998441517, 0.0547575951))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.1301713, 1.14472532, 1.53820705, 0.827338874, 0.344414175, -0.443722129, 0.543929935, -0.294094592, 0.785906255, 0.14018099, -0.891564488, -0.430653065))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.547764063, 0.311354399, -0.467467785, -0.501471996, 0.495386094, 0.709315777, 0.84780997, 0.117946044, 0.517021716, 0.172464997, 0.860617042, -0.479141653))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.140802145, 0.211676121, -1.31731439, -0.945614994, 0.00838936865, -0.325182974, 0.325134993, 0.0550331473, -0.944072723, 0.00997599866, -0.998439968, -0.0547773242))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.40101767, 0.780726433, -1.53816605, -0.269109011, 0.384290218, -0.883122861, -0.952854991, -0.239682212, 0.186059296, -0.140167996, 0.891546726, 0.430688739))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.14078784, 0.0226373672, -0.395396709, -0.945631981, 0.00844144821, -0.325131834, -0.275772005, 0.509151816, 0.815308332, 0.172424003, 0.860623837, -0.479144245))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.36663246, 0.758462906, -1.75305998, -0.761346996, -0.375139862, 0.528790474, -0.63301301, 0.253788292, -0.73136282, 0.140163004, -0.891539454, -0.430704474))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.418157339, -0.0265460014, -0.548335552, -0.457549006, 0.500735104, 0.734795094, -0.872304022, -0.0925227851, -0.480134785, -0.172435001, -0.860630095, 0.479128838))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.140758991, -0.180626392, -0.47608614, -0.94562602, 0.00839024782, -0.325149387, 0.275812, -0.509149075, -0.81529659, -0.172389999, -0.860625982, 0.47915256))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.134040356, 0.191751003, -0.409736633, -0.94562602, 0.00839024782, -0.325149387, 0.275812, -0.509149075, -0.81529659, -0.172389999, -0.860625982, 0.47915256))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.140794039, 1.0799818, -1.76743519, -0.945622981, 0.00840376318, -0.325158238, 0.293513, 0.452830285, -0.841900229, 0.140166, -0.89154613, -0.430689573))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.350835323, 0.261023045, -0.548240662, 0.0329280011, -0.491154253, -0.870458364, 0.984477997, -0.134282202, 0.113012969, -0.172394007, -0.860649109, 0.479110718))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.506101608, 0.179496765, -3.49636769, 0.767966986, 0.033926636, -0.639596224, -0.640456021, 0.0303605795, -0.767401278, -0.00661599962, 0.998953462, 0.0450530946))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.416073322, 0.528438568, 1.12981296, -0.833384991, -0.0303271115, 0.551864982, 0.552654028, -0.0338946283, 0.832728028, -0.00654899934, 0.998955607, 0.0450167954))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.40102148, 0.780882835, -3.26378775, -0.269109011, 0.384290218, -0.883122861, -0.952854991, -0.239682212, 0.186059296, -0.140167996, 0.891546726, 0.430688739))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.36678076, 0.758495808, -3.47867823, -0.761346996, -0.375139862, 0.528790474, -0.63301301, 0.253788292, -0.73136282, 0.140163004, -0.891539454, -0.430704474))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.140688419, 0.316919327, 1.14476228, -0.945631981, 0.00845503807, -0.325132072, -0.325172991, -0.0447011292, 0.94460547, -0.00654699933, 0.998955607, 0.0450290442))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.134084225, 1.26131344, -1.68788278, -0.945622981, 0.00840376318, -0.325158238, 0.293513, 0.452830285, -0.841900229, 0.140166, -0.89154613, -0.430689573))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.09844303, 1.11885977, -3.47862101, -0.374078006, 0.355028272, -0.85675317, 0.916747987, 0.281157941, -0.283763736, 0.140138999, -0.891564012, -0.430660605))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.614086151, 0.24455595, -3.67516184, 0.211674005, -0.0425680876, 0.976421118, -0.977317989, -0.0160057917, 0.211173698, 0.00663899956, -0.998956025, -0.044998765))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.134019136, 0.356711388, 1.03214717, -0.945631981, 0.00845503807, -0.325132072, -0.325172991, -0.0447011292, 0.94460547, -0.00654699933, 0.998955607, 0.0450290442))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.140822172, 1.12085867, -1.5525074, -0.945632994, 0.00844554603, -0.325128973, -0.293514013, -0.452771634, 0.841931581, -0.140098006, 0.891576469, 0.430649817))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.134165525, 1.30211592, -1.47301471, -0.945632994, 0.00844554603, -0.325128973, -0.293514013, -0.452771634, 0.841931581, -0.140098006, 0.891576469, 0.430649817))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.856942654, 0.231738091, -1.27314496, -0.657787979, -0.0477834046, 0.751692593, -0.753138006, 0.0285807848, -0.657246828, 0.00992099941, -0.998438954, -0.0547961593))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.706817627, 0.551327646, -1.27323532, -0.144459993, 0.052739352, -0.98811233, 0.989459991, 0.0177660324, -0.143710822, 0.00997499935, -0.998440385, -0.054759264))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.401647568, 0.538899899, -3.67523646, 0.849054992, 0.0294000506, -0.527489066, 0.528262019, -0.0347333252, 0.848377287, 0.00662099943, -0.998954475, -0.0450306535))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09830427, 1.11866617, 1.75316107, 0.374031693, -0.355003268, 0.856780648, 0.916771054, 0.281101912, -0.283747464, -0.140111387, 0.891602159, 0.430597723))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.134081602, 0.605783939, -1.14172244, -0.945614994, 0.00838936865, -0.325182974, 0.325134993, 0.0550331473, -0.944072723, 0.00997599866, -0.998439968, -0.0547773242))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle9,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.613945007, 0.244534373, 1.12989902, -0.211553007, 0.0425952971, -0.976446033, -0.977343976, -0.0160011128, 0.211053684, -0.00663499953, 0.998954892, 0.0450248122))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00832045078, 0.123304844, -0.591567516, 0.981523752, -0.108968966, 0.157279551, -0.172334954, -0.860611796, 0.47921598, 0.0831369758, -0.497466624, -0.863490105))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14478588, 1.12997198, -1.88564384, -0.543922007, 0.294145644, -0.785895824, -0.827360988, -0.344327241, 0.443746477, -0.140079007, 0.89157027, 0.4306674))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.304813147, 0.123262405, -0.522139549, 0.847826004, 0.118051499, 0.516972303, -0.172377005, -0.860591173, 0.479219675, 0.501474977, -0.49540621, -0.709299326))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.179429531, 0.506001472, 5.0457449, -0.640495002, 0.0303773284, -0.767367601, 0.767934024, 0.0339350104, -0.639634311, 0.00661099935, -0.998952389, -0.0450719297))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.133872032, 1.30221844, 3.43563938, 0.945639551, -0.00836337265, 0.325109005, -0.293461859, -0.452787876, 0.841940224, 0.140163943, -0.891579092, -0.430628479))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.414729834, 0.267811298, 0.156853199, 0.948348999, 0.020576356, -0.316560984, -0.317159325, 0.0405772328, -0.947503805, -0.00665100664, 0.998964548, 0.0450073555))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.780668736, 1.13998592, -1.40082884, 0.952859998, 0.239665985, -0.186053559, 0.140182003, -0.89158535, -0.430602252, -0.269084007, 0.38420853, -0.883166552))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.134017944, 0.230751038, 3.66687274, -0.945623994, 0.00840817392, -0.325157583, 0.325195998, 0.0447452962, -0.944595218, 0.00660699932, -0.998953104, -0.0450553))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.179311752, -2.11743069, 0.506025314, -0.640510976, 0.0304014087, -0.767353177, -0.00661199959, 0.998951137, 0.0451052189, 0.767920971, 0.0339580774, -0.639649868))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14481831, -1.88568282, 1.12985992, 0.543826997, -0.294142723, 0.785959482, -0.140115261, 0.891588926, 0.430623829, -0.827417552, -0.344309777, 0.443656296))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.459413767, 2.11743784, -0.303994179, -0.938680351, -0.0216719601, 0.344107032, 0.00656204438, -0.998964787, -0.0450146645, 0.344726354, -0.0399963334, 0.937850833))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.278374255, 0.410135031, -0.971896172, 0.998403013, 0.0129740722, -0.0549931228, 0.0099639995, -0.99844563, -0.0546750426, -0.0556169972, 0.0540303886, -0.996997893))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.780912161, 1.4006319, 4.81391811, 0.952848971, 0.239676148, -0.186097696, 0.269131005, -0.38421762, 0.883148074, 0.140166998, -0.89157939, -0.430621266))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.140699148, 0.191049099, 3.49634242, -0.945623994, 0.00840817392, -0.325157583, 0.325195998, 0.0447452962, -0.944595218, 0.00660699932, -0.998953104, -0.0450553))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.311371565, -0.547811747, 0.89986372, -0.847841978, -0.118000045, -0.516965508, 0.501459002, -0.495335966, -0.709361196, -0.172367007, -0.860643029, 0.479136884))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.14800024, 0.454114914, 0.156971931, 0.640438735, -0.0303425733, 0.767409742, 0.767980874, 0.0338910557, -0.639575481, -0.00660195528, 0.998964846, 0.0450076647))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14454174, 1.129951, 4.81393337, 0.543874025, -0.294097751, 0.78594768, -0.827382028, -0.344341099, 0.443696529, 0.140144005, -0.891581237, -0.430623829))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.608176231, -0.817094803, 1.68859768, -0.691522002, 0.0326803327, -0.721622109, 0.722286999, 0.0450351536, -0.690131068, 0.00994399935, -0.998441339, -0.0547562838))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.134170532, 1.26120424, 3.65048885, 0.945624709, -0.00839507207, 0.325151443, 0.293513834, 0.45278424, -0.841924131, -0.140155405, 0.891580701, 0.430628061))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.244716048, -2.29627943, 0.613955498, -0.977325976, -0.015956223, 0.211141273, 0.00658899965, -0.998955667, -0.0450046062, 0.211639002, -0.0425840318, 0.976428151))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.244569063, 0.613838196, -2.29632759, 0.977316976, 0.0160325021, -0.211176977, 0.211678997, -0.0426298082, 0.976416945, 0.00665199943, -0.998952866, -0.0450660884))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.491384983, 0.367761612, -0.0219893456, 0.552745998, -0.0338576324, 0.832661748, -0.833323479, -0.0304045361, 0.551948965, 0.00662901113, -0.998964071, -0.0450203419))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.013617754, -0.617470741, 0.89987278, -0.98151201, 0.109001145, -0.157331362, 0.083178997, -0.497391939, -0.86353755, -0.172381997, -0.860639632, 0.479131997))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.780819654, 1.88571012, -1.40079832, 0.952859998, 0.239665985, -0.186053559, 0.140182003, -0.89158535, -0.430602252, -0.269084007, 0.38420853, -0.883166552))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.140558243, 1.26805115, 3.26391363, 0.945639551, -0.00836337265, 0.325109005, -0.293461859, -0.452787876, 0.841940224, 0.140163943, -0.891579092, -0.430628479))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.140529633, 0.317078114, 3.67521214, -0.945631981, 0.00845503807, -0.325132072, -0.325172991, -0.0447011292, 0.94460547, -0.00654699933, 0.998955607, 0.0450290442))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.538521767, 0.401754379, 5.22461414, -0.528223991, 0.0348114669, -0.848398268, -0.849080026, -0.0293764323, 0.527451932, -0.00656199967, 0.998952389, 0.0450841188))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.528288364, -2.29639339, 0.41616869, -0.552725017, 0.033947885, -0.832678556, 0.00651799934, -0.9989537, -0.0450630784, -0.833338022, -0.0303303748, 0.551935911))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.451801538, -2.11749649, 0.316032887, -0.948361993, -0.0205099881, 0.316529632, -0.00655599963, 0.998951852, 0.0450972021, -0.317122996, 0.0406841934, -0.94751966))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.244721532, 0.613797188, 5.22458935, -0.977330029, -0.0159549043, 0.211120218, 0.211619005, -0.0426368117, 0.976430297, -0.00657699956, 0.998953938, 0.0450558662))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.26089716, -0.350802898, 0.980700016, -0.984471977, 0.134299576, -0.113044754, -0.0329429992, 0.491179824, 0.870444536, 0.172425002, 0.860632122, -0.47912991))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.133948326, 0.356869698, 3.8457098, -0.945631981, 0.00845503807, -0.325132072, -0.325172991, -0.0447011292, 0.94460547, -0.00654699933, 0.998955607, 0.0450290442))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.459151506, 0.303975582, 5.04575634, -0.938706994, -0.0217421651, 0.344033092, -0.34465301, 0.040019393, -0.937884331, 0.00662399968, -0.998952746, -0.0450697541))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.231602669, -0.856951237, 1.8687911, -0.753161013, 0.0285643935, -0.657221675, -0.657761991, -0.0477293134, 0.751718283, -0.00989599898, 0.998442352, 0.0547460318))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.608223915, 0.410148621, -0.817043781, 0.691504061, -0.032606598, 0.721636415, 0.00995500013, -0.998455822, -0.0546537973, 0.722304046, 0.0449772105, -0.690111637))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.780777216, -1.4009614, 1.88561487, -0.952867508, -0.239652574, 0.186037958, -0.269073278, 0.384284854, -0.883133471, 0.140153632, -0.891567051, -0.430656672))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.758473873, 1.35487378, -1.36649251, 0.633027971, -0.253748626, 0.731363714, -0.140100002, 0.891589284, 0.430620968, -0.761345983, -0.375047624, 0.528857529))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.231562138, 0.590295196, -0.856915474, 0.753130972, -0.0285055637, 0.657257974, -0.00992099941, 0.998446107, 0.0546814501, -0.657795012, -0.0476959944, 0.75169158))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.278277516, -0.971914291, 1.68860197, -0.998405993, -0.0129496511, 0.0549442992, -0.0555679947, 0.0541240573, -0.996995687, 0.00993699953, -0.998441041, -0.0547670424))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.11882377, -2.10050178, 1.09823322, 0.916756332, 0.281152457, -0.283745021, 0.140156046, -0.891589105, -0.430610299, -0.374051124, 0.354996115, -0.856775105))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.551238239, 0.590348363, -0.70679903, 0.989468992, 0.0177220367, -0.143654957, -0.00994499866, 0.998444796, 0.0546866953, 0.144400999, -0.052672565, 0.988125026))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.75844574, 2.10051918, -1.36659241, 0.63301897, -0.253769457, 0.731363773, -0.140138, 0.891561031, 0.430668294, -0.761345983, -0.37510252, 0.528819084))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14476681, 1.13000488, -1.13996112, -0.543922007, 0.294145644, -0.785895824, -0.827360988, -0.344327241, 0.443746477, -0.140079007, 0.89157027, 0.4306674))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.254415274, 0.204137325, -0.325238705, 0.984471977, -0.134266838, 0.113081858, 0.172417164, 0.860598564, -0.479210287, -0.0329760313, 0.49126634, 0.870384932))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.758476734, -1.36650515, 2.10056353, -0.633063972, 0.253792763, -0.731316924, -0.761322975, -0.375062019, 0.52888155, -0.140063003, 0.891570985, 0.430671602))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.538701057, 2.29639101, -0.401575565, -0.528234005, 0.034789443, -0.848392904, -0.00661999965, 0.99895215, 0.0450949669, 0.849072993, 0.0294326693, -0.527458966))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0266022682, -0.418201923, 0.980725288, -0.87232101, -0.0925376862, -0.480101287, -0.457531005, 0.500719666, 0.734817147, 0.172398001, 0.860637844, -0.479129493))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.140766859, 1.22714186, 3.478755, 0.945624709, -0.00839507207, 0.325151443, 0.293513834, 0.45278424, -0.841924131, -0.140155405, 0.891580701, 0.430628061))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.11878729, 1.09850073, -1.35476637, -0.916770995, -0.281171441, 0.283674926, -0.374009013, 0.355078906, -0.856762826, 0.140169993, -0.891539752, -0.430702239))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.213203669, 0.561765194, -0.0219783783, 0.977316976, 0.0160325021, -0.211176977, 0.211678997, -0.0426298082, 0.976416945, 0.00665199943, -0.998952866, -0.0450660884))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.758407593, 1.36644483, 5.02886629, 0.633010983, -0.253754139, 0.73137331, 0.761354983, 0.375062287, -0.528831363, -0.140117005, 0.891581893, 0.430631608))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.11886358, 1.09846973, -2.10037565, -0.916770995, -0.281171441, 0.283674926, -0.374009013, 0.355078906, -0.856762826, 0.140169993, -0.891539752, -0.430702239))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.11907935, 1.09828949, 5.02873468, 0.916767359, 0.281172752, -0.283689141, -0.374012977, 0.355027527, -0.856778681, -0.140185371, 0.891570151, 0.430639893))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0318524837, 0.204067707, -0.392213821, 0.872305453, 0.0925827846, 0.480116427, 0.172415078, 0.860600591, -0.479207516, -0.457554817, 0.50079459, 0.734743834))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.551170409, -0.706842422, 1.86874747, -0.989471018, -0.0176863112, 0.143645793, 0.144391, -0.0527368784, 0.988122702, -0.00990099926, 0.998442054, 0.0547446311))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle9,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.179482937, 0.506161213, -2.11739254, 0.640438735, -0.0303425733, 0.767409742, 0.767980874, 0.0338910557, -0.639575481, -0.00660195528, 0.998964846, 0.0450076647))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
    
    
    
    


SP_handle10=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,1,1,"Institutional white","Handle",Vector3.new(1, 1, 1))
SP_handle10weld=weld(m,Character["Torso"],SP_handle10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.749995291, 0.595200539, 5.82000351, -0.000193387532, 4.00835631e-009, 1, 1.13919396e-005, 1, -1.80529725e-009, -1, 1.13919386e-005, -0.000193387532))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0103628635, 0.821665764, -0.836967468, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0104212761, 0.820603371, -0.240584373, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0104532242, 1.05648422, -0.577259064, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.010406971, 1.27543354, -0.889935493, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0104146004, 1.27641535, -1.48637104, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0103459358, 1.05736542, -1.17363644, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0103452206, -1.35101986, 1.50429296, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.010384798, -1.12177658, 0.56934166, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.010307312, -0.887136936, 0.841810226, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.01039505, -0.887077808, 0.234170914, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0105407238, -0.887062073, 0.539541245, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0104122162, -1.35096741, 0.896686554, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0104589462, -1.35114384, 1.20208979, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0106124878, -1.12187958, 0.874708652, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.010571003, 0.821580887, -0.531607628, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0106003284, 1.05737209, -0.868231773, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0106773376, 1.27628803, -1.18091011, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle10,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.010368824, -1.1217885, 1.17695999, -0.945631027, 0.324627727, -0.0199704953, 0.259086996, 0.78898561, 0.557113767, 0.196611002, 0.521650016, -0.830195963))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.504136086, 0.159493446, -0.427830935, -0.501437187, -0.663444817, 0.555339336, 0.847837269, -0.504719615, 0.162573516, 0.172432065, 0.552357733, 0.815578401))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.800821304, 0.446554184, -1.10455942, -0.722352087, -0.691356122, 0.0153078493, 0.691454053, -0.721782207, 0.0303619709, -0.00994200073, 0.0325167105, 0.999421716))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.512046814, 0.131440997, -0.427809238, 0.083115004, 0.816885948, -0.570779622, -0.981514096, 0.166191399, 0.0949243382, 0.172401011, 0.5523386, 0.815598011))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.511220455, 0.341873169, 0.96157515, -0.767958879, -0.640124083, 0.0219168495, -0.640464962, 0.767115057, -0.0365940742, 0.00661199959, -0.0421397202, -0.999089897))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00226759911, 0.319304466, 0.863936663, -0.945625663, 0.324641824, -0.0199957769, 0.325188875, 0.94489789, -0.0376875848, 0.00665899832, -0.0421407484, -0.999089539))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0046339035, 1.0444746, -1.59869623, -0.945631623, 0.324631155, -0.019888306, -0.293534875, -0.878187001, -0.377657235, -0.140064955, -0.351286739, 0.925731838))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.26275826, 0.853389502, -1.58433914, -0.269056946, 0.913268566, 0.305857748, -0.952865779, -0.206185117, -0.222563535, -0.140196964, -0.351323664, 0.925697803))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00439739227, 0.279554367, 0.976404428, -0.945625663, 0.324641824, -0.0199957769, 0.325188875, 0.94489789, -0.0376875848, 0.00665899832, -0.0421407484, -0.999089539))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00447583199, -0.0572519302, -0.355761766, -0.945632756, 0.324626952, -0.0199017059, -0.275754929, -0.767816722, 0.57828778, 0.172446951, 0.552335918, 0.815590084))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.838511467, 0.371193349, -1.10453999, -0.0555630215, 0.997910619, -0.0329729244, -0.998405457, -0.0558597334, -0.00814616587, -0.00997100491, 0.0324677229, 0.999423087))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511291027, 0.342019081, -3.50687838, 0.767963469, 0.640117884, -0.0219377708, -0.640459359, 0.767117083, -0.0366508141, -0.0066320044, 0.042196732, 0.999087393))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.469265938, 0.397476435, 0.961621165, -0.317275971, 0.947398067, -0.0421055108, 0.948309898, 0.317266762, -0.00707799522, 0.00665299967, -0.0421747454, -0.999088109))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.35635567, 0.91435957, -1.70692158, -0.761349976, -0.559468389, -0.327629834, -0.633011997, 0.750689745, 0.189105138, 0.140149996, 0.351368785, -0.925687909))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00445699692, 0.228327751, 1.13420701, -0.945626497, 0.32464245, -0.0199464392, -0.325187862, -0.944895387, 0.0377563238, -0.00658999709, 0.0421897173, 0.99908787))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.467567444, 0.315345764, -3.66464114, 0.211689577, -0.976406753, 0.042631574, -0.977314711, -0.21177806, 0.00248197117, 0.0066050184, -0.0421898738, -0.999087811))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00450491905, 0.300148964, -1.30584693, -0.945622504, 0.324653715, -0.019952571, 0.325113863, 0.945277095, -0.0274283402, 0.00995599572, -0.032423716, -0.999424636))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.24384594, 1.06201863, 1.70700073, 0.374044806, -0.884451091, -0.278992504, 0.916758478, 0.307156891, 0.255359918, -0.140158907, -0.351284802, 0.925718367))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.469534874, 0.12281847, -0.587954521, -0.45754993, -0.688376188, 0.56283778, -0.87231487, 0.470211565, -0.134044275, -0.172379985, -0.552303731, -0.815626085))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00220608711, 0.694266319, -1.13025069, -0.945622504, 0.324653715, -0.019952571, 0.325113863, 0.945277095, -0.0274283402, 0.00995599572, -0.032423716, -0.999424636))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.418911934, 0.377438545, -3.66472292, 0.849089801, 0.527985692, -0.0166661516, 0.528206885, -0.848203301, 0.0393557698, 0.00664299913, -0.042219758, -0.999086261))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.462005615, 0.14881289, -0.587880373, 0.0328669995, 0.824325085, -0.565161824, 0.984478891, -0.124239542, -0.123959035, -0.172397986, -0.552315712, -0.815614045))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00452971458, 0.247223854, -1.14861298, -0.945623517, 0.324653685, -0.0199022889, -0.325112849, -0.945275366, 0.027497448, -0.00988599565, 0.032472726, 0.999423742))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00219941139, 0.26812458, 1.02160215, -0.945626497, 0.32464245, -0.0199464392, -0.325187862, -0.944895387, 0.0377563238, -0.00658999709, 0.0421897173, 0.99908787))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428672791, 0.366399765, 1.11927533, -0.833383441, -0.552407265, 0.0178429503, 0.552656233, -0.832505763, 0.0387981199, -0.00657800352, 0.0421947278, 0.999087751))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.467514038, 0.315276623, 1.11939144, -0.211598039, 0.976428211, -0.0425953157, -0.977334261, -0.21168825, 0.00243328302, -0.00664100191, 0.0421447381, 0.99908942))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00205421448, 1.22572517, -1.51919127, -0.945631623, 0.324631155, -0.019888306, -0.293534875, -0.878187001, -0.377657235, -0.140064955, -0.351286739, 0.925731838))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.15772057, 0.990996838, 1.58438587, 0.827361524, 0.47202161, 0.304415137, 0.543895721, -0.808569551, -0.224483192, 0.140179917, 0.351298779, -0.925709903))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00216650963, 0.6413908, -0.973021865, -0.945623517, 0.324653685, -0.0199022889, -0.325112849, -0.945275366, 0.027497448, -0.00988599565, 0.032472726, 0.999423742))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.24393225, 1.0623157, -3.43240643, -0.37408191, 0.884429097, 0.27901265, 0.916736782, 0.307167768, 0.255424321, 0.140200973, 0.351330757, -0.925694585))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00222444534, 1.33763885, -1.64175129, -0.945628643, 0.324636608, -0.0199373495, 0.293509871, 0.878158987, 0.377741784, 0.140136957, 0.351351708, -0.925696313))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00225925446, 0.315119743, -0.289325953, -0.945632756, 0.324626952, -0.0199017059, -0.275754929, -0.767816722, 0.57828778, 0.172446951, 0.552335918, 0.815590084))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00223565102, 0.271659851, -0.449365854, -0.945634246, 0.324619651, -0.0199505147, 0.275781065, 0.767825902, -0.578263164, -0.172397047, -0.552327394, -0.815606356))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.847935677, 0.47073555, -1.26174498, -0.144449979, 0.988943577, -0.0335398391, 0.989461899, 0.144701228, 0.00517597003, 0.00997199863, -0.0324387252, -0.99942404))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00445532799, 1.15629053, -1.72130966, -0.945628643, 0.324636608, -0.0199373495, 0.293509871, 0.878158987, 0.377741784, 0.140136957, 0.351351708, -0.925696313))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.26272202, 0.853584766, -3.30993795, -0.269056946, 0.913268566, 0.305857748, -0.952865779, -0.206185117, -0.222563535, -0.140196964, -0.351323664, 0.925697803))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.35651422, 0.914390087, -3.4325428, -0.761349976, -0.559468389, -0.327629834, -0.633011997, 0.750689745, 0.189105138, 0.140149996, 0.351368785, -0.925687909))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.15748787, 0.990974426, -3.31005931, -0.827416599, -0.471969754, -0.304345757, 0.543825746, -0.808604777, -0.224526018, -0.140125945, -0.351287663, 0.925722301))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.458781242, 0.409511328, -3.50684881, 0.344680905, -0.937785327, 0.0418789275, 0.938696742, 0.344642431, -0.0083646588, -0.00658899918, 0.0421947539, 0.999087751))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00448942184, -0.100720406, -0.515701532, -0.945634246, 0.324619651, -0.0199505147, 0.275781065, 0.767825902, -0.578263164, -0.172397047, -0.552327394, -0.815606356))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle10,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.887491226, 0.391259193, -1.26169181, -0.657770455, -0.75300622, 0.0178802311, -0.753152788, 0.657214046, -0.0288218986, 0.00995193142, -0.0324247368, -0.999424636))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.159528732, -0.504172325, 0.860218287, -0.847859561, 0.504678428, -0.162585005, 0.501429737, 0.663524568, -0.555250764, -0.17234391, -0.552299559, -0.815636337))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.152953148, 0.0836074352, -0.478504181, 0.84784472, -0.504697323, 0.16260393, -0.172378942, -0.552349925, -0.815595031, 0.50144285, 0.663468361, -0.555306137))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.85353446, 1.26248169, 4.86010122, 0.952844322, 0.206307769, 0.222541988, 0.269160807, -0.913250983, -0.305818826, 0.140143901, 0.351297319, -0.925715864))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.341884136, 0.510987282, 5.05633736, -0.640505195, 0.767080784, -0.0366101004, 0.767925203, 0.640165567, -0.0218888558, 0.00664600171, -0.0421337374, -0.999089897))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00427699089, 0.279417992, 3.50691223, -0.945625663, 0.324641824, -0.0199957769, 0.325188875, 0.94489789, -0.0376875848, 0.00665899832, -0.0421407484, -0.999089539))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.371233821, 0.421535015, -0.838600159, 0.99840188, 0.0559229143, 0.00814490207, 0.00997299887, -0.0324887149, -0.999422371, -0.05562599, 0.997906387, -0.0329945125))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.142145276, 0.243739367, -0.436419487, 0.98447454, -0.124347329, -0.123885997, 0.172399908, 0.552345574, 0.815593421, -0.0329889879, -0.824288905, 0.565207541))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.446519852, 0.421538115, -0.800918102, 0.69153595, -0.721702039, 0.0304025281, 0.0099989986, -0.0325207114, -0.99942106, 0.722272933, 0.691439569, -0.0152729396))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.360462427, 0.420999527, 0.146313667, 0.948337257, 0.317185432, -0.00707568694, -0.317194432, 0.947424114, -0.0421352424, -0.00666100951, 0.0422027856, 0.999086916))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.126096725, 0.0836660862, -0.486280441, 0.981524527, -0.166154012, -0.0948810354, -0.172346905, -0.552373946, -0.815585434, 0.0831029639, 0.816869617, -0.570804715))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.991041183, 1.15756178, -1.18618441, -0.543875873, 0.808571339, 0.224524811, -0.827392817, -0.47203508, -0.30430904, -0.140071973, -0.351276577, 0.92573458))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.315510511, 0.467567444, 5.21403217, -0.977332532, -0.211695209, 0.00250807125, 0.211607888, -0.976424217, 0.0426364802, -0.00657699723, 0.0422007479, 0.999087512))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.377152443, 2.28585482, -0.418854713, -0.528236926, 0.848187268, -0.0392949767, -0.00665599946, 0.0421407558, 0.999089539, 0.849070907, 0.528017581, -0.0166147705))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.37698555, 0.419285297, 5.21406078, -0.52824682, 0.848182619, -0.039264068, -0.849065721, -0.52802223, 0.0167326052, -0.00653999811, 0.0421767198, 0.999088764))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.914198399, 1.30870104, -1.3563838, 0.633088827, -0.750649571, -0.189007342, -0.140140176, -0.351281732, 0.925722361, -0.761287987, -0.559576929, -0.327588677))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.44645977, -0.80098629, 1.70004225, -0.691540182, 0.721700013, -0.0303554125, 0.722269177, 0.69144392, -0.0152557306, 0.00997900311, -0.0324747302, -0.999422729))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00441026688, 1.19162655, 3.31006503, 0.9456411, -0.324599117, 0.019959772, -0.293478042, -0.878200471, -0.37766996, 0.140120015, 0.351282477, -0.925725162))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00439214706, 1.30337477, 3.43263912, 0.945624113, -0.324649155, 0.019949697, 0.293527365, 0.878182054, 0.37767452, -0.140131161, -0.351282328, 0.925723493))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.853440762, -1.26277256, 1.93171549, -0.95286864, -0.206223175, -0.222516149, -0.269082904, 0.913246095, 0.305901855, 0.140127957, 0.351359516, -0.925694704))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.341907024, 0.511263847, -2.12794161, 0.64047277, -0.767106593, 0.0366374627, 0.767952442, 0.640131056, -0.0219418537, -0.00662103901, 0.0421889909, 0.999087751))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.914181709, 1.35638261, 4.98267174, 0.633039594, -0.750682771, -0.189040557, 0.761327744, 0.559520423, 0.327592731, -0.140146136, -0.351300985, 0.925714195))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.914266586, -1.35628366, 2.05442238, -0.633088827, 0.750631392, 0.189079806, -0.761301816, -0.559580028, -0.327551275, -0.14006497, -0.351315796, 0.92572093))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.148662567, -0.461979866, 1.02031827, -0.984472215, 0.124319583, 0.1239326, -0.0329490118, -0.824321926, 0.565161705, 0.172421038, 0.552302539, 0.815618098))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00240087509, 0.319134712, 3.67743373, -0.945625663, 0.324641824, -0.0199957769, 0.325188875, 0.94489789, -0.0376875848, 0.00665899832, -0.0421407484, -0.999089539))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00226020813, 1.22576523, 3.4817903, 0.9456411, -0.324599117, 0.019959772, -0.293478042, -0.878200471, -0.37766996, 0.140120015, 0.351282477, -0.925725162))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.991016388, 1.15749359, -1.93187618, -0.543875873, 0.808571339, 0.224524811, -0.827392817, -0.47203508, -0.30430904, -0.140071973, -0.351276577, 0.92573458))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.85357666, 1.9317317, -1.26263142, 0.952846587, 0.206274241, 0.222563252, 0.140166089, 0.351329118, -0.925700426, -0.269141138, 0.913246334, 0.305850089))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.391195774, -0.887477398, 1.85735178, -0.753168106, 0.657198012, -0.0287882648, -0.657754064, -0.753018916, 0.0179536548, -0.00987900048, 0.0324577168, 0.999424338))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.853420019, 1.18613434, -1.26252842, 0.952844977, 0.206285596, 0.222559601, 0.140181005, 0.351253837, -0.925726831, -0.269138992, 0.913272798, 0.305773109))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.341828346, -2.12795806, 0.511249065, -0.640510261, 0.767076552, -0.036610581, -0.00661700265, 0.0421587341, 0.999089003, 0.767921269, 0.640168965, -0.0219273511))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.315322399, 0.467539787, -2.28577399, 0.977315247, 0.211776003, -0.00244848221, 0.211686045, -0.976406991, 0.0426427759, 0.00664000167, -0.0421937406, -0.999087393))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.310422421, 0.459292889, 0.14639163, 0.64047277, -0.767106593, 0.0366374627, 0.767952442, 0.640131056, -0.0219418537, -0.00662103901, 0.0421889909, 0.999087751))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.397457123, -2.12808228, 0.469182968, -0.948354244, -0.317133933, 0.00710775936, -0.00659400178, 0.0421107523, 0.999091208, -0.317145079, 0.947445393, -0.042027086))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.131419897, -0.512194633, 0.860224485, -0.981517613, 0.166177034, 0.0949127153, 0.0831229687, 0.816929221, -0.570716381, -0.172376946, -0.552278697, -0.815643549))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.47063303, -0.847823143, 1.85730863, -0.989471018, -0.144640908, -0.0051161279, 0.144391, -0.988950074, 0.0336032659, -0.0099200001, 0.0325107351, 0.999422193))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00439143181, 0.22842598, 3.66465187, -0.945626497, 0.32464245, -0.0199464392, -0.325187862, -0.944895387, 0.0377563238, -0.00658999709, 0.0421897173, 0.99908787))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.371227384, -0.838590622, 1.70006013, -0.998404622, -0.0558726229, -0.00814745575, -0.055575978, 0.99791038, -0.0329600982, 0.00997199584, -0.0324547142, -0.999423504))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409637451, 2.1279695, -0.45882988, -0.938699245, -0.344634771, 0.00841473788, 0.00655700173, -0.0422537066, -0.999085486, 0.344675094, -0.937785506, 0.0419232883))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.990716457, 1.1574564, 4.86013174, 0.54388088, -0.80858165, -0.224475801, -0.827379823, -0.472033083, -0.304347694, 0.140129969, 0.351255625, -0.925733805))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.06201339, 1.24395466, -2.05431366, -0.916777134, -0.307106853, -0.255352944, -0.374003023, 0.884449959, 0.279052258, 0.140148014, 0.351331472, -0.925702393))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409442663, 0.45865345, 5.05628872, -0.938709855, -0.344607353, 0.00833784323, -0.344644964, 0.937799752, -0.041851189, 0.00660299975, -0.0421597213, -0.999089062))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.914289951, 2.05433607, -1.35640335, 0.633035243, -0.750678897, -0.189070344, -0.140152052, -0.351339757, 0.925698578, -0.761330307, -0.559501231, -0.327619642))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.990971088, -1.93175554, 1.15773439, 0.543943048, -0.808526635, -0.22452347, -0.140129015, -0.351335853, 0.925703526, -0.827339113, -0.472067714, -0.304404706))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06208229, -2.05441189, 1.24373341, 0.91675359, 0.307167143, 0.255364805, 0.140168935, 0.351264954, -0.925724447, -0.374052823, 0.884455383, 0.278968126))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06210279, 1.24363279, 4.98264551, 0.916778266, 0.307115644, 0.255338401, -0.373996735, 0.88447237, 0.278989643, -0.140157655, -0.351267368, 0.925725222))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.117540836, 0.243682623, -0.4435606, 0.872311115, -0.470223159, 0.134028256, 0.17242001, 0.55232811, 0.81560111, -0.457542062, -0.688348651, 0.562877834))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.315478563, -2.28576088, 0.467499733, -0.977324247, -0.211733639, 0.00252361153, 0.00656000199, -0.0421877168, -0.999088228, 0.211647049, -0.976416528, 0.0426200442))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.391103268, 0.5788095, -0.887467384, 0.753160298, -0.657204688, 0.0288370028, -0.00991900358, 0.032485716, 0.999422967, -0.657762229, -0.753011763, 0.0179481357))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.470628381, 0.578876257, -0.847900391, 0.989469767, 0.144648507, 0.00513296528, -0.00993799698, 0.032515727, 0.999421835, 0.144397974, -0.988948762, 0.0336108431))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0619719, 1.24398947, -1.30868816, -0.916777134, -0.307106853, -0.255352944, -0.374003023, 0.884449959, 0.279052258, 0.140148014, 0.351331472, -0.925702393))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.329339027, 0.380379677, -0.0114355087, 0.552763879, -0.832433581, 0.0388137884, -0.833311796, -0.552515745, 0.0178299248, 0.00660299929, -0.0421997271, -0.999087453))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283899784, 0.415407181, -0.0114166737, 0.977315247, 0.211776003, -0.00244848221, 0.211686045, -0.976406991, 0.0426427759, 0.00664000167, -0.0421937406, -0.999087393))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.122784138, -0.469544411, 1.02035785, -0.872335136, 0.470185876, -0.134002686, -0.457503051, -0.688390315, 0.562858641, 0.172402009, 0.552307904, 0.815618515))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00221776962, 0.268208504, 3.83515882, -0.945626497, 0.32464245, -0.0199464392, -0.325187862, -0.944895387, 0.0377563238, -0.00658999709, 0.0421897173, 0.99908787))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00222539902, 1.33742666, 3.60435581, 0.945624113, -0.324649155, 0.019949697, 0.293527365, 0.878182054, 0.37767452, -0.140131161, -0.351282328, 0.925723493))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle10,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.366291046, -2.28582573, 0.428756714, -0.552696109, 0.832481146, -0.038759172, 0.0065420256, -0.0421728604, -0.999089003, -0.833357155, -0.552446127, 0.0178626645))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
    
    
    
    


SP_handle11=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,1,1,"Institutional white","Handle",Vector3.new(1, 1, 1))
SP_handle11weld=weld(m,Character["Torso"],SP_handle11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.749995291, -5.92536449, 0.11785984, -0.000193386892, 4.00258227e-009, 1, 0.906313837, 0.422605217, 0.000175267545, -0.422605187, 0.906313837, -8.17299442e-005))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0267398357, 0.764000416, -0.244439125, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0267810822, 0.999874353, -0.581038475, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0267043114, 0.765051842, -0.84078598, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0266802311, 1.00079417, -1.17745018, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0267260075, 1.21883488, -0.89372921, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0267353058, 1.21984816, -1.49016285, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0267078876, -1.17848754, 1.17303085, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0266876221, -1.40775132, 1.5003624, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0267322063, -1.40768409, 0.892746925, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0266506672, -0.94383359, 0.837892532, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0269429684, -1.17856956, 0.87076664, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0267543793, -0.943730116, 0.230259895, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0268666744, -0.943728685, 0.53562355, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0267708302, -1.40786195, 1.19815636, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0267329216, -1.17845988, 0.565413475, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0269515514, 1.00077677, -0.872039795, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0269987583, 1.21969771, -1.18470383, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle11,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0269098282, 0.764958382, -0.535432816, -0.945628643, -0.00839626323, 0.32513997, 0.259082913, -0.62379086, 0.737401545, 0.19662793, 0.781546235, 0.592049897))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.538546562, 0.120099425, -0.479366541, 0.083154045, 0.497410059, 0.863521159, -0.981514454, -0.109010547, 0.157309219, 0.17238009, -0.860639334, 0.479150444))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19077063, 1.03924561, 1.59213829, 0.827351868, -0.344373107, 0.443729818, 0.543909967, 0.294040829, -0.78594017, 0.140181988, 0.891598105, 0.430583179))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0207197666, 0.231508255, 1.00657415, -0.945632637, -0.00838041306, 0.325128615, 0.325168878, -0.0447610691, 0.944595993, 0.00663700048, 0.998962581, 0.0450525768))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0141522884, 0.689717293, -1.00276041, -0.945626855, -0.00843370613, 0.325144261, -0.325102985, 0.0549267456, -0.944082201, -0.00989700202, -0.998454809, -0.0546820313))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.19052219, 1.03918266, -3.31779289, -0.827414095, 0.344310045, -0.443662703, 0.543826044, 0.294096917, -0.785977304, -0.140140012, -0.891604006, -0.430584669))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0208113194, -0.0335445404, -0.407359838, -0.945622861, -0.0083885882, 0.325157106, -0.275813967, -0.509194195, -0.815259516, 0.172406986, -0.860610783, 0.479191989))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0208199024, 1.10070086, -1.60639095, -0.945635736, -0.0084223412, 0.32511878, -0.293504953, 0.452730566, -0.84195596, -0.140099972, -0.891607583, -0.430590183))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0141124725, 0.338831902, -0.340885043, -0.945622861, -0.0083885882, 0.325157106, -0.275813967, -0.509194195, -0.815259516, 0.172406986, -0.860610783, 0.479191989))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.3188014, 0.870595515, -3.31758785, -0.269099981, -0.384283245, 0.88312608, -0.952852905, 0.23970966, -0.186039463, -0.140201986, -0.891552448, -0.430671245))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.478591919, 0.303277016, -3.53708792, 0.767981112, -0.0339282081, 0.639573276, -0.64043808, -0.0303106662, 0.76741147, -0.00665100385, -0.998964548, -0.0450069271))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.523054123, 0.181190968, -0.479435325, -0.501452208, -0.495407075, -0.70930779, 0.847827315, -0.117973886, -0.516982615, 0.172437057, -0.860612571, 0.479177952))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.421201706, 0.381134033, 0.991816998, -0.317194164, -0.0406203344, 0.947490394, 0.948337495, -0.020577753, 0.316595525, 0.00663700607, 0.9989627, 0.045048926))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.411280632, 0.391744137, -3.53706121, 0.344645232, 0.0399757847, -0.937881529, 0.938709676, -0.02172409, 0.344023645, -0.00662200758, -0.998964489, -0.0450127646))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.478550911, 0.303015232, 0.991762161, -0.767959833, 0.033945512, -0.639597833, -0.640463829, -0.0303836986, 0.767387152, 0.00661600148, 0.998961687, 0.0450743362))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0208973885, 0.251695633, -1.27614975, -0.945632994, -0.00838453695, 0.32512778, 0.325082988, -0.0550144017, 0.944083929, 0.00997100305, 0.998450339, 0.0547491051))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.014087677, 0.247921944, -0.397778511, -0.945631683, -0.00834596623, 0.325132459, 0.275825441, 0.509132922, 0.815293849, -0.172340035, 0.86064744, -0.479150206))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.31882715, 0.870404541, -1.59196758, -0.269099981, -0.384283245, 0.88312608, -0.952852905, 0.23970966, -0.186039463, -0.140201986, -0.891552448, -0.430671245))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0208337307, 0.295552254, -1.17834187, -0.945626855, -0.00843370613, 0.325144261, -0.325102985, 0.0549267456, -0.944082201, -0.00989700202, -0.998454809, -0.0546820313))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0141716003, 0.64583683, -1.100564, -0.945632994, -0.00838453695, 0.32512778, 0.325082988, -0.0550144017, 0.944083929, 0.00997100305, 0.998450339, 0.0547491051))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.014039278, 0.271250725, 0.894136429, -0.945632637, -0.00838041306, 0.325128615, 0.325168878, -0.0447610691, 0.944595993, 0.00663700048, 0.998962581, 0.0450525768))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.836351871, 0.483226299, -1.13427925, -0.722331822, 0.0449716039, -0.690082908, 0.691475809, 0.0326818787, -0.721660018, -0.00990100019, -0.998453557, -0.0547039397))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0141632557, 1.28196192, -1.52689838, -0.945635736, -0.0084223412, 0.32511878, -0.293504953, 0.452730566, -0.84195596, -0.140099972, -0.891607583, -0.430590183))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.889514923, 0.374359071, -1.1342659, -0.0555640124, -0.0541254245, 0.996987104, -0.998405218, 0.0129966792, -0.0549374782, -0.00998400524, -0.998449564, -0.0547612607))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.797394753, 0.463146925, -1.23209858, -0.144461975, -0.0527350903, 0.988104105, 0.989459753, -0.0177993085, 0.143710211, 0.0100090001, 0.998449922, 0.0547505654))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0207760334, 0.276483536, 1.1039896, -0.945626259, -0.00842915569, 0.325146109, -0.325189084, 0.0446756929, -0.944593191, -0.00656400435, -0.998965979, -0.0449875779))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.434963226, 0.158716947, -0.536307454, 0.0329330042, 0.491199464, 0.870424271, 0.98448199, 0.134253249, -0.113010496, -0.172368005, 0.860638738, -0.47915566))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.456906796, 0.40865612, 1.08905888, -0.833379567, 0.0303442124, -0.551867485, 0.552661777, 0.0338454023, -0.832718134, -0.00658999942, -0.998966336, -0.0449761525))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.517260551, 0.326261282, -3.63443851, 0.211650968, 0.0425900593, -0.976416945, -0.977322876, 0.0159879383, -0.211149991, 0.00661800196, 0.998964667, 0.045008108))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.31812882, 0.869916439, -1.69924068, -0.761338174, 0.375159591, -0.528790653, -0.633017182, -0.253762722, 0.731364369, 0.140191033, 0.891549051, 0.430681735))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.31810212, 0.869936943, -3.42491531, -0.761354864, 0.375110924, -0.528801084, -0.63300705, -0.253778011, 0.731367767, 0.140145913, 0.891565323, 0.43066293))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0209357738, 1.10007858, -1.71359062, -0.945640266, -0.00837116037, 0.325106889, 0.293452054, -0.452859581, 0.841905057, 0.140180036, 0.891542614, 0.430698782))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.19011545, 1.0393486, -3.4247036, -0.374129921, -0.355019867, 0.856730819, 0.916713774, -0.281264931, 0.283771038, 0.140223965, 0.891544163, 0.430681169))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.449507713, 0.102131367, -0.536375761, -0.457582057, -0.500710428, -0.734784186, -0.872295141, 0.0925650969, 0.4801386, -0.172395021, 0.860651314, -0.479123384))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.517122269, 0.326164246, 1.08918095, -0.211628109, -0.0426359661, 0.976419926, -0.977327466, 0.0160611849, -0.211123496, -0.00668100594, -0.998961627, -0.0450682975))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0208697319, -0.124435425, -0.464158773, -0.945631683, -0.00834596623, 0.325132459, 0.275825441, 0.509132922, 0.815293849, -0.172340035, 0.86064744, -0.479150206))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.848856449, 0.357923031, -1.23194218, -0.657818019, 0.0478376634, -0.751656175, -0.753111005, -0.0285681151, 0.657272935, 0.00996900257, 0.998446465, 0.0548196882))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0141003132, 0.316260338, 0.991415024, -0.945626259, -0.00842915569, 0.325146109, -0.325189084, 0.0446756929, -0.944593191, -0.00656400435, -0.998965979, -0.0449875779))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0142376423, 1.28139687, -1.63401222, -0.945640266, -0.00837116037, 0.325106889, 0.293452054, -0.452859581, 0.841905057, 0.140180036, 0.891542614, 0.430698782))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.445985317, 0.420334816, -3.63449574, 0.849070728, -0.029387597, 0.527461231, 0.52823782, 0.0347286686, -0.84838599, 0.00661400054, 0.998964667, 0.0450107381))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle11,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19002771, 1.03876746, 1.69938564, 0.37400806, 0.354994237, -0.856794715, 0.916778028, -0.281104296, 0.283722579, -0.140128776, -0.89160496, -0.430586189))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114780188, 0.135261774, -0.51278019, 0.981517136, 0.109018527, -0.157286689, -0.172381014, 0.860608518, -0.47920537, 0.0831200182, 0.497461498, 0.863494694))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.869967461, 1.30095673, -1.31805015, 0.633070648, 0.253765643, -0.731316984, -0.140104905, -0.891574264, -0.430657595, -0.761309505, 0.375097781, -0.528875709))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03942347, 1.19066691, -1.19378471, -0.543874025, -0.294140518, 0.785927832, -0.827386498, 0.344337881, -0.443692565, -0.140116751, -0.891578794, -0.430644304))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.483170509, -0.836477757, 1.72973537, -0.691536665, -0.0326633789, 0.721602499, 0.722272635, -0.0450446121, 0.690140009, 0.00996199809, 0.998450875, 0.0547418706))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0139198303, 1.28195906, 3.48949432, 0.945648372, 0.00836184341, -0.325083584, -0.29344511, 0.452746481, -0.841968298, 0.140140042, 0.891600132, 0.430592656))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.37441802, -0.889609337, 1.72969389, -0.998402119, 0.0130164875, -0.0549901165, -0.055618003, -0.0541588776, 0.996982217, 0.00999900326, 0.998447537, 0.0547962859))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0206103325, 1.24781656, 3.31776619, 0.945648372, 0.00836184341, -0.325083584, -0.29344511, 0.452746481, -0.841968298, 0.140140042, 0.891600132, 0.430592656))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.870414615, -1.31887865, 1.93937969, -0.952864468, 0.23964633, -0.186061844, -0.269099116, -0.38432616, 0.883107603, 0.140125066, 0.891550958, 0.430699348))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.869656086, 1.31802559, 4.97504902, 0.633027315, 0.253705382, -0.731375515, 0.761334538, -0.37509498, 0.528841794, -0.140165284, -0.891592622, -0.430600017))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0209038258, 1.24716902, 3.42494488, 0.945630491, 0.00836391281, -0.325135708, 0.293487161, -0.452779919, 0.841935694, -0.140173063, -0.891583085, -0.430617154))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.391491413, 0.410979271, 5.08651161, -0.938711464, 0.0217750203, -0.344015747, -0.344640166, -0.0400457196, 0.937880337, 0.0066460059, 0.998960555, 0.0450959168))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0206575394, 0.231471062, 3.53709793, -0.945632637, -0.00838041306, 0.325128615, 0.325168878, -0.0447610691, 0.944595993, 0.00663700048, 0.998962581, 0.0450525768))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.870394111, 1.31858301, 4.86776066, 0.952849627, -0.239648461, 0.186135098, 0.26915592, 0.384249359, -0.883123755, 0.14011696, 0.891583443, 0.430634648))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.302954197, -2.15817499, 0.478517056, -0.640524805, -0.03037709, 0.767336488, -0.0066320016, -0.99896127, -0.0450825728, 0.767908812, -0.0339654833, 0.639658034))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.483219147, 0.451294899, -0.836423397, 0.691521883, 0.0326012745, -0.721619546, 0.00996698625, 0.998455346, 0.0546594225, 0.72228682, -0.0449905545, 0.690128744))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0968532562, 0.192103624, -0.42353344, 0.872299194, -0.0925749987, -0.480129212, 0.172419041, -0.860610783, 0.479187727, -0.457565129, -0.500778496, -0.734748363))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.869863033, -1.31789565, 2.0468483, -0.633060217, -0.253737926, 0.731335759, -0.7613253, 0.375026137, -0.528903961, -0.140067041, -0.891612351, -0.430591166))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.120140433, -0.538675308, 0.911805153, -0.981522381, -0.108987339, 0.157275587, 0.0831450373, 0.497363955, 0.863548517, -0.172339067, 0.860668778, -0.479112089))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.03909874, 1.19081545, 4.86773109, 0.54389298, 0.294088632, -0.78593415, -0.827364981, 0.34437716, -0.443702161, 0.140169993, 0.89158082, 0.430622935))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.381127357, -2.15823555, 0.421205521, -0.948350012, 0.0205625743, -0.316558838, -0.00661600288, -0.998962045, -0.0450688489, -0.317157, -0.0406466909, 0.9475016))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.344136715, 0.37292099, 0.116117477, 0.948348165, -0.0205844548, 0.316562861, -0.317161709, -0.0406073853, 0.947501779, -0.0066490178, -0.998963177, -0.0450385399))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.271543503, 0.426626205, 0.116225243, 0.640492082, 0.0303136967, -0.76736629, 0.76793611, -0.0339231454, 0.639627576, -0.00664200354, -0.998964667, -0.0450064838))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142958164, 1.28122759, 3.59667397, 0.945630491, 0.00836391281, -0.325135708, 0.293487161, -0.452779919, 0.841935694, -0.140173063, -0.891583085, -0.430617154))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.357679844, 0.549085617, -0.848843575, 0.753205478, 0.0285467356, -0.657165587, -0.00991599541, -0.998451531, -0.054737065, -0.657710552, 0.0477447025, -0.751756132))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.03899395, -2.04664612, 1.18994999, 0.916746378, -0.281186968, 0.283742964, 0.140181378, 0.891575098, 0.430631071, -0.374065995, -0.355003983, 0.856765389))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0139677525, 0.271186829, 3.707623, -0.945632637, -0.00838041306, 0.325128615, 0.325168878, -0.0447610691, 0.944595993, 0.00663700048, 0.998962581, 0.0450525768))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.174636364, 0.135187864, -0.49742794, 0.8478567, -0.117993601, -0.516929865, -0.172380939, 0.860622764, -0.47917974, 0.501421809, 0.495384574, 0.709344983))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03938389, 1.1906848, -1.93947506, -0.543874025, -0.294140518, 0.785927832, -0.827386498, 0.344337881, -0.443692565, -0.140116751, -0.891578794, -0.430644304))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.869921684, 2.04671574, -1.31806302, 0.633070648, 0.253765643, -0.731316984, -0.140104905, -0.891574264, -0.430657595, -0.761309505, 0.375097781, -0.528875709))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.302970886, 0.478327274, 5.08651018, -0.640504718, -0.0303856358, 0.767352939, 0.76792562, -0.0339723676, 0.639637589, 0.00663299952, 0.998960733, 0.0450933725))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.408584595, -2.25568676, 0.456677914, -0.552705824, -0.0338919498, 0.83268702, 0.00667504873, 0.998960674, 0.0450902469, -0.833349764, 0.030479867, -0.551905096))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.391698837, 2.15825558, -0.411062241, -0.938696742, 0.0217720065, -0.344055831, 0.00664700149, 0.99896127, 0.0450795218, 0.344679922, 0.0400290601, -0.937866449))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.158625752, -0.434890747, 0.968763113, -0.984474778, -0.134268403, 0.113054939, -0.0329589956, -0.4912287, -0.870406866, 0.172403961, -0.860619783, 0.479176909))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.46299243, 0.549161911, -0.797379494, 0.989470005, -0.0177557357, 0.143645197, -0.00997900311, -0.998454154, -0.0546789356, 0.144393995, 0.0526697263, -0.988117576))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.294825792, 0.464999199, 0.0188074112, 0.97731775, -0.016014345, 0.211172089, 0.21167396, 0.0425464809, -0.976413846, 0.00665200129, 0.998966098, 0.0449712463))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.326217175, -2.2556076, 0.516963005, -0.977326751, 0.0160165206, -0.211130023, 0.00662600156, 0.998960018, 0.0451101102, 0.211632952, 0.042688366, -0.976416588))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.303115368, 0.478591442, -2.15813684, 0.640492082, 0.0303136967, -0.76736629, 0.76793611, -0.0339231454, 0.639627576, -0.00664200354, -0.998964667, -0.0450064838))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.181184769, -0.523085594, 0.911836505, -0.847856879, 0.118012778, 0.516925275, 0.501436949, 0.495334029, 0.7093696, -0.172335982, 0.860649288, -0.479148388))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.326301813, 0.517473221, 5.18379021, -0.977336228, 0.0159653462, -0.211090282, 0.211590052, 0.0425555594, -0.976431727, -0.0066060042, -0.998966575, -0.0449691974))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.870340824, 1.19378471, -1.31865597, 0.952856243, -0.239682823, 0.18605724, 0.14019303, 0.891590834, 0.430594623, -0.269093066, -0.384210795, 0.883159697))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.0393219, -1.93949413, 1.19071054, 0.543899238, 0.294118792, -0.785918415, -0.140120059, -0.891583681, -0.430633307, -0.827369392, 0.34434405, -0.443719685))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03885496, 1.19017458, -1.30100155, -0.916781425, 0.281152278, -0.283663929, -0.373987168, -0.35507223, 0.856771529, 0.140162066, 0.891558886, 0.430670947))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.03903425, 1.18976831, 4.97499752, 0.916760445, -0.281152308, 0.283731848, -0.374037176, -0.354986697, 0.856785178, -0.140166059, -0.89159292, -0.430599183))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.420154572, 2.25565529, -0.445982933, -0.528229177, -0.03477633, 0.848389387, -0.0066020051, -0.998962522, -0.0450590476, 0.849076271, -0.0294025764, 0.527451515))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.870506287, 1.9394083, -1.31875992, 0.952856898, -0.239688948, 0.18604584, 0.140184134, 0.891561687, 0.430657834, -0.269095272, -0.384274572, 0.883131325))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.374366701, 0.451246262, -0.889552116, 0.99840045, -0.0130049158, 0.0550217703, 0.00999100786, 0.998452723, 0.0547013916, -0.0556480214, -0.0540641695, 0.996985614))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.371558189, 0.40860796, 0.0187597275, 0.552742064, 0.0338427983, -0.832664967, -0.833326101, 0.0303896479, -0.551945746, 0.00662500365, 0.998965025, 0.0449997224))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0206820965, 0.276702881, 3.63445759, -0.945626259, -0.00842915569, 0.325146109, -0.325189084, 0.0446756929, -0.944593191, -0.00656400435, -0.998965979, -0.0449875779))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.357715607, -0.848736286, 1.82770729, -0.753180981, -0.0285323877, 0.657194316, -0.657738984, 0.0476902984, -0.751734793, -0.00989300292, -0.998454571, -0.054686293))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.462924123, -0.797297478, 1.82764912, -0.989472508, 0.0176813994, -0.143637031, 0.144381925, 0.0526836365, -0.988118649, -0.00990399811, -0.99845469, -0.054681886))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03890169, 1.1901288, -2.04661751, -0.916765988, 0.281147569, -0.283718586, -0.374036014, -0.355071306, 0.856750548, 0.140132993, 0.891560674, 0.430676579))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140726566, 0.316495895, 3.80495453, -0.945626259, -0.00842915569, 0.325146109, -0.325189084, 0.0446756929, -0.944593191, -0.00656400435, -0.998965979, -0.0449875779))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.326248169, 0.517269135, -2.25553322, 0.97731775, -0.016014345, 0.211172089, 0.21167396, 0.0425464809, -0.976413846, 0.00665200129, 0.998966098, 0.0449712463))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102089405, -0.449448586, 0.968808889, -0.872304857, 0.0925724953, 0.480119377, -0.457553953, -0.500787139, -0.734749436, 0.17241998, -0.860606015, 0.479195952))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.42007637, 0.44630909, 5.18386078, -0.52823925, -0.034784086, 0.848382831, -0.84907043, 0.0293339062, -0.527464747, -0.00653900625, -0.99896425, -0.0450294651))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.152088016, 0.19218874, -0.409366608, 0.984473646, 0.134265646, -0.113068759, 0.172409937, -0.860595763, 0.479217887, -0.0329639912, -0.491271526, -0.870382547))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle11,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.968908191, 3.3164165, 1.25036621, 0.945655525, 0.169800803, -0.277314633, -0.293440193, 0.813073754, -0.502796113, 0.140102088, 0.556847095, 0.818714142))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
    
    
    
    


SP_handle12=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,1,1,"Institutional white","Handle",Vector3.new(1, 1, 1))
SP_handle12weld=weld(m,Character["Torso"],SP_handle12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.749995291, -6.00375795, 0.0932588577, -0.000193386906, 4.0083461e-009, 1, 0.57358706, 0.819144547, 0.000110920955, -0.819144547, 0.57358706, -0.000158414143))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0169172287, 1.22267985, -1.44636536, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0168681145, 1.22169423, -0.849960327, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167939663, 1.00362563, -1.13366127, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0168809891, 1.00270939, -0.537223816, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0168149471, 0.767932415, -0.797010422, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0168428421, 0.766857386, -0.200618744, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0170936584, 1.00360775, -0.828252792, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171511173, 1.2225318, -1.14093971, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0170316696, 0.767828226, -0.491628647, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0169796944, -1.17561877, 0.914663315, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.016711235, -1.40478814, 1.54426289, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.016695261, -0.940895677, 0.881789207, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167319775, -1.17556047, 1.21693802, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167865753, -0.940833449, 0.274137497, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0169231892, -0.940833211, 0.57953167, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.016764164, -1.17554855, 0.609320641, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.200000003, 0.592930973))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0168166161, -1.40490437, 1.24205303, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("BlockMesh",Col_Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 0.811576009, 1))
Col_Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Dark indigo","Col_Part",Vector3.new(0.200000003, 0.205298007, 0.200000003))
Col_Partweld=weld(m,SP_handle12,Col_Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167732239, -1.40476739, 0.936648369, -0.945631027, -0.00836631656, 0.325129956, 0.259066999, -0.623767078, 0.73742944, 0.196636006, 0.781576633, 0.592004716))
mesh("SpecialMesh",Col_Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.686944008, 1, 0.813539028))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.488731384, 0.120184898, -0.523491859, -0.457610011, -0.500695944, -0.734768271, -0.872283995, 0.0925886333, 0.480149895, -0.172379002, 0.860666871, -0.479117036))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.478107452, 0.159593046, -0.523436069, 0.0328670032, 0.491220981, 0.870404363, 0.984489977, 0.134253472, -0.112939075, -0.172333002, 0.860636294, -0.479188502))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0108549595, 0.248308182, 1.07028675, -0.945629001, -0.00843299925, 0.325158954, -0.325204015, 0.0447222888, -0.944582939, -0.00657700421, -0.998973727, -0.04502967))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0110123158, 0.279522419, -1.24211788, -0.945638001, -0.00835730135, 0.325111866, 0.325067997, -0.0550625622, 0.944077611, 0.0100120045, 0.99845624, 0.0547766984))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.488065243, 0.320220232, -3.60068989, 0.211696997, 0.0426039398, -0.976397634, -0.977312982, 0.015981853, -0.211194664, 0.00660700398, 0.998972654, 0.0450119376))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00427818298, 1.2702626, -1.56924915, -0.945632994, -0.00844055414, 0.325124383, -0.293520004, 0.452738166, -0.841944575, -0.140089005, -0.89161396, -0.430586278))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0110039711, 1.11171973, -1.67130756, -0.945644021, -0.00838932395, 0.325093091, 0.293453991, -0.45284009, 0.84191227, 0.140152007, 0.891561747, 0.430673063))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.32242489, 0.88474524, -1.65692234, -0.761358023, 0.375117153, -0.528792918, -0.633011997, -0.253840864, 0.731337547, 0.140108004, 0.891554713, 0.430702269))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.43045187, 0.395131111, -3.60073757, 0.849048018, -0.0293985456, 0.527492583, 0.528274, 0.0346702337, -0.848358393, 0.00665200409, 0.9989748, 0.0449584723))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0109272003, -0.0823965073, -0.451261997, -0.945635974, -0.00840480626, 0.325115204, 0.275795996, 0.509085894, 0.815324068, -0.172363997, 0.860684514, -0.479089975))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.20534682, 1.03868341, 1.65693283, 0.374047995, 0.355030119, -0.856759012, 0.916756988, -0.281168908, 0.283728808, -0.140160993, -0.891580164, -0.430631012))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.32249689, 0.884855032, -3.38256168, -0.761358023, 0.375117153, -0.528792918, -0.633011997, -0.253840864, 0.731337547, 0.140108004, 0.891554713, 0.430702269))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.870821953, 0.377480507, -1.19795418, -0.657764018, 0.0477971435, -0.751699269, -0.753157973, -0.0285328329, 0.657214284, 0.0099650044, 0.998458147, 0.0547583997))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.79667002))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00430417061, 1.29306054, -1.59174633, -0.945644021, -0.00838932395, 0.325093091, 0.293453991, -0.45284009, 0.84191227, 0.140152007, 0.891561747, 0.430673063))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.883213997, 0.694700003))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0109152794, 1.08899796, -1.64874935, -0.945632994, -0.00844055414, 0.325124383, -0.293520004, 0.452738166, -0.841944575, -0.140089005, -0.89161396, -0.430586278))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.18781149, 1.02430105, -3.36010361, -0.827413023, 0.34432438, -0.443653554, 0.543832004, 0.294153631, -0.785947144, -0.140118003, -0.891589463, -0.430626512))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.826546669, 0.467098117, -1.19805622, -0.144503996, -0.0527106822, 0.988090277, 0.989453018, -0.0178252608, 0.143749967, 0.0100360047, 0.998459458, 0.0547215044))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00420260429, 0.661962986, -1.03679848, -0.945623994, -0.00840310752, 0.325149387, -0.325109005, 0.0549497604, -0.944069922, -0.0099340044, -0.998462319, -0.0546843708))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.449511528, 0.390370607, 1.02560997, -0.317238986, -0.0406476855, 0.94746536, 0.948321998, -0.020631358, 0.316635817, 0.00667700404, 0.99896884, 0.0450837016))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.18792284, 1.02428627, 1.63445473, 0.827378988, -0.344344974, 0.443700999, 0.543880641, 0.294110924, -0.785934329, 0.140135169, 0.891585827, 0.4306238))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500577986, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.253762007, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.49539566, 0.121511757, -0.492212772, 0.0831680074, 0.497386903, 0.863523662, -0.981519997, -0.108973943, 0.157297015, 0.172339007, -0.860667408, 0.47913003))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.256740987, 0.200000003, 0.714712024))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.484771729, 0.161202908, -0.492306709, -0.501474023, -0.495411694, -0.709280968, 0.847818971, -0.118013784, -0.516981184, 0.172414005, -0.8606143, 0.479198933))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.487922668, 0.320092201, 1.05545616, -0.211651996, -0.0426565409, 0.976404786, -0.977321982, 0.0160600841, -0.211145997, -0.00667500403, -0.998969495, -0.0450792611))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.439267159, 0.402028561, -3.57078743, 0.344695985, 0.0400046408, -0.93785274, 0.93869102, -0.0216678977, 0.344073355, -0.00655700406, -0.998972654, -0.0450119376))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.534879982, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00420308113, 0.28811264, 0.957666397, -0.945629001, -0.00843299925, 0.325158954, -0.325204015, 0.0447222888, -0.944582939, -0.00657700421, -0.998973727, -0.04502967))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 1.36598396))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00430369377, 0.673610687, -1.06649494, -0.945638001, -0.00835730135, 0.325111866, 0.325067997, -0.0550625622, 0.944077611, 0.0100120045, 0.99845624, 0.0547766984))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.440597534, 0.383632183, 1.05534935, -0.83336103, 0.0303862691, -0.551887929, 0.552690029, 0.0339016318, -0.832689524, -0.00659300433, -0.998971581, -0.0450379848))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.522713006, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 0.666209996))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30350971, 0.872096062, -1.63454437, -0.269125998, -0.384252191, 0.88312757, -0.952870011, 0.239560902, -0.186146528, -0.140036002, -0.891615629, -0.43059963))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103999, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00416874886, 0.289971352, -0.384903431, -0.945635974, -0.00840480626, 0.325115204, 0.275795996, 0.509085894, 0.815324068, -0.172363997, 0.860684514, -0.479089975))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.30321598))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.497478008, 0.326032639, 1.0255394, -0.767938972, 0.0339792967, -0.639615536, -0.640488029, -0.0303964019, 0.767359018, 0.00663300417, 0.998969138, 0.0450972617))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 0.991810024))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0041706562, 0.296820641, -0.35376358, -0.945618987, -0.00842922926, 0.32516405, -0.275797993, -0.50922358, -0.815237343, 0.172453001, -0.860603094, 0.479205608))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.675235987, 2.49871612))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00413966179, 0.299330235, 0.92788887, -0.945635021, -0.00838768482, 0.325118661, 0.325161994, -0.0448105633, 0.944587052, 0.00664600404, 0.998968959, 0.0450922549))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.81623745, 0.461636066, -1.1683073, -0.722333014, 0.0450000763, -0.690073669, 0.69147402, 0.0326491296, -0.721656621, -0.00994400494, -0.998462081, -0.0546916127))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.693889976, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.922468007, 1.15926802))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0109143257, -0.0755825043, -0.420210838, -0.945618987, -0.00842922926, 0.32516405, -0.275797993, -0.50922358, -0.815237343, 0.172453001, -0.860603094, 0.479205608))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.588810027, 2.33292603))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0108268261, 0.25961113, 1.04033184, -0.945635021, -0.00838768482, 0.325118661, 0.325161994, -0.0448105633, 0.944587052, 0.00664600404, 0.998968959, 0.0450922549))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30352926, 0.872011662, -3.36011696, -0.269136995, -0.384276867, 0.88311398, -0.952866971, 0.239571214, -0.186149061, -0.140036002, -0.891602457, -0.430627078))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.46103701, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 1.10292101))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.860013008, 0.373155415, -1.16829014, -0.0556459948, -0.0541249216, 0.996973634, -0.998400986, 0.0130229481, -0.0550171584, -0.0100060049, -0.998457313, -0.0547541976))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.665929019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.497393608, 0.326304913, -3.57086658, 0.767928183, -0.0339716338, 0.63963449, -0.640501201, -0.0303070396, 0.767358959, -0.00668300549, -0.998963237, -0.0450324975))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.484982014, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 0.200000003, 2.72803903))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.205405, 1.03908813, -3.38238144, -0.374105006, -0.355022699, 0.856736124, 0.916724026, -0.281254858, 0.283750415, 0.140223995, 0.891556203, 0.430661768))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.500576019, 0.0196269993, 1))
Col_Part2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col_Part2",Vector3.new(0.200000003, 1.21687305, 1.19114494))
Col_Part2weld=weld(m,SP_handle12,Col_Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0109066963, 0.267799854, -1.21238518, -0.945623994, -0.00840310752, 0.325149387, -0.325109005, 0.0549497604, -0.944069922, -0.0099340044, -0.998462319, -0.0546843708))
mesh("BlockMesh",Col_Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.461530685, -0.816445351, 1.76377201, -0.691555977, -0.0326340199, 0.721579313, 0.722253978, -0.0451000035, 0.690150142, 0.0100200046, 0.998458028, 0.0547498167))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.294595718, 0.44557476, 0.0824670792, 0.640488982, 0.0303523242, -0.767360568, 0.767938972, -0.0339097679, 0.639619112, -0.00660700398, -0.998972535, -0.0450190902))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.872347355, -1.30366564, 1.98172092, -0.952868998, 0.23965615, -0.186029777, -0.269073009, -0.384334683, 0.883107662, 0.140145004, 0.891554117, 0.430690885))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.872362018, 1.30310559, 4.9101429, 0.952853024, -0.239657149, 0.186109662, 0.269129008, 0.384218127, -0.883141696, 0.140145004, 0.891604841, 0.430587173))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.116191387, 0.148124218, -0.469632149, 0.98152101, 0.109000154, -0.157278657, -0.172358006, 0.860631943, -0.479189098, 0.0831280053, 0.497443616, 0.863494992))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.461687088, 0.485296249, -0.816271305, 0.691524982, 0.0326455981, -0.72161454, 0.00995103363, 0.998452902, 0.0547057837, 0.722284079, -0.0450112224, 0.690130293))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.253762007))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114886761, 0.179239273, -0.462753296, 0.872295976, -0.0925952792, -0.4801265, 0.172387004, -0.860638022, 0.479166508, -0.457583994, -0.500745416, -0.734751701))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.121556774, -0.495499611, 0.924717903, -0.981523991, -0.108973928, 0.157272592, 0.0831420049, 0.497406304, 0.863515258, -0.172328994, 0.860656023, -0.479153872))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.884339809, 1.32224095, 4.93277931, 0.633059025, 0.253709197, -0.731343091, 0.761317015, -0.375065207, 0.528887868, -0.140118003, -0.891613603, -0.430576324))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.461037993, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.87227571, 1.23609829, -1.30344081, 0.952851892, -0.239674881, 0.186089218, 0.140165284, 0.891583681, 0.430618435, -0.269122541, -0.384232372, 0.883141279))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02429271, -1.98185253, 1.18786669, 0.543887019, 0.294157743, -0.785907626, -0.140083998, -0.891588688, -0.430638134, -0.827382982, 0.344321281, -0.443711907))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.004124403, 1.27022862, 3.53183746, 0.945654988, 0.00839741528, -0.325059325, -0.293440014, 0.452755749, -0.841962695, 0.140101999, 0.891604781, 0.430599391))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.373072207, -0.860134125, 1.7637825, -0.998403013, 0.0129759181, -0.054986611, -0.0556129962, -0.0541579127, 0.996973693, 0.00995800458, 0.998456955, 0.054784447))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.326086998, 0.497576237, -2.19189835, 0.640488982, 0.0303523242, -0.767360568, 0.767938972, -0.0339097679, 0.639619112, -0.00660700398, -0.998972535, -0.0450190902))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0107531548, 0.259442806, 3.57087803, -0.945635021, -0.00838768482, 0.325118661, 0.325161994, -0.0448105633, 0.944587052, 0.00664600404, 0.998968959, 0.0450922549))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.390368223, -2.1919899, 0.449641705, -0.948353112, 0.0205779038, -0.316548437, -0.00664200494, -0.998963058, -0.0450408235, -0.317147017, -0.0406120867, 0.947506428))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02431726, 1.1878407, -1.23625469, -0.543866992, -0.294128895, 0.78593272, -0.827400029, 0.344270974, -0.443720251, -0.140063003, -0.891618729, -0.430584729))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00405859947, 0.299171448, 3.74136925, -0.945635021, -0.00838768482, 0.325118661, 0.325161994, -0.0448105633, 0.944587052, 0.00664600404, 0.998968959, 0.0450922549))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0109298229, 1.25877535, 3.38266087, 0.945638001, 0.00838916004, -0.325110316, 0.293482006, -0.452760905, 0.841945767, -0.140134007, -0.891601861, -0.430594862))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.353393316, 0.401264668, 0.0823535919, 0.948347986, -0.020565331, 0.316562414, -0.317162991, -0.0405997634, 0.947492778, -0.00663300417, -0.998972058, -0.0450163484))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.161160946, -0.484844208, 0.924701691, -0.847854972, 0.118021831, 0.516920865, 0.501443028, 0.495334685, 0.709357679, -0.172328994, 0.86065793, -0.479151428))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.884678602, 1.25866127, -1.32244503, 0.633068979, 0.253792077, -0.731304526, -0.140068993, -0.891585827, -0.43065083, -0.761317015, 0.375075847, -0.528880417))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.652297974, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.326159954, 0.497179508, 5.12028027, -0.64052403, -0.0303610861, 0.767331243, 0.76790899, -0.0339961648, 0.639650166, 0.00666500442, 0.998969197, 0.0450814664))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03865862, 1.20551062, -1.25866795, -0.916774988, 0.281170845, -0.283668816, -0.374000013, -0.355078191, 0.856759548, 0.140171006, 0.891560495, 0.430669665))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500577986, 0.65229702))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.288711905, 0.435816765, 0.0525484085, 0.977320015, -0.0160126537, 0.211158454, 0.211662993, 0.0425874591, -0.976405501, 0.00664200401, 0.99897325, 0.0450024605))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.87242645, 1.98175716, -1.30354619, 0.95285213, -0.239680022, 0.186081707, 0.140156314, 0.891558409, 0.430673718, -0.269126594, -0.384287804, 0.883116007))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.401650906, 0.438946247, 5.12028027, -0.938692987, 0.021766454, -0.344064176, -0.344691008, -0.0400664508, 0.937852144, 0.00662800437, 0.998968124, 0.0451038778))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.88460207, -1.32239044, 2.0044384, -0.633041978, -0.253759325, 0.731339753, -0.761332989, 0.375073969, -0.528858483, -0.140103996, -0.891595185, -0.430618316))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.46103999, 0.142450005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.256740987, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.159418166, -0.478068352, 0.955898285, -0.98447299, -0.134269804, 0.113070458, -0.0329760052, -0.491219103, -0.870401919, 0.172410995, -0.860635161, 0.479162395))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.326053143, -2.19191742, 0.497511864, -0.640509009, -0.0303610861, 0.767343521, -0.00662700413, -0.998971105, -0.0450474024, 0.767921984, -0.0339437723, 0.639638066))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.320102215, 0.488115311, 5.15007401, -0.977337003, 0.0159860104, -0.211085543, 0.211587995, 0.0425983667, -0.976421118, -0.00661700405, -0.998973131, -0.0450061262))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.484982014, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.154603958, 0.148050308, -0.459197044, 0.847873986, -0.11801976, -0.516888916, -0.172343001, 0.860628784, -0.479198635, 0.501405001, 0.495385408, 0.709348023))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02405643, 1.18774855, 4.91011143, 0.543908417, 0.294103444, -0.785917819, -0.827366173, 0.34432283, -0.443742156, 0.14010337, 0.891596913, 0.430611283))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03868246, 1.20545387, -2.00427341, -0.916764021, 0.281151295, -0.283722818, -0.374042004, -0.355081618, 0.856740057, 0.140129, 0.891565382, 0.430673063))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.370718002))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.39479351, 0.430790424, 5.15008354, -0.528203011, -0.0347746015, 0.848397613, -0.84909302, 0.0293265134, -0.527424574, -0.00654000416, -0.998973608, -0.045008868))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.534879982, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.37193799))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.03879857, 1.20510864, 4.93266201, 0.916760027, -0.281157017, 0.283731014, -0.374038994, -0.354997784, 0.856775522, -0.140165001, -0.891597092, -0.430596411))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.500576019, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02423644, 1.18774867, -1.98195553, -0.543866992, -0.294128895, 0.78593272, -0.827400029, 0.344270974, -0.443720251, -0.140063003, -0.891618729, -0.430584729))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196289998, 0.500576019, 0.142454997))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.588810027, 2.72803903))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0107932091, 0.248432159, 3.60072803, -0.945629001, -0.00843299925, 0.325158954, -0.325204015, 0.0447222888, -0.944582939, -0.00657700421, -0.998973727, -0.04502967))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588809013, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.346598148, 0.392314911, 0.0524988174, 0.552745461, 0.0339123979, -0.832659841, -0.833324254, 0.0303676967, -0.551949739, 0.00656802254, 0.998963356, 0.0450456254))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.522713006, 0.977497995))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.466935098, 0.515107155, -0.826631069, 0.989459991, -0.0177102312, 0.143718198, -0.00991800427, -0.998459578, -0.0547423065, 0.144466996, 0.0527495742, -0.988093555))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.693889976))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.884662509, 2.00440407, -1.32240307, 0.633068979, 0.253792077, -0.731304526, -0.140068993, -0.891585827, -0.43065083, -0.761317015, 0.375075847, -0.528880417))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196279995, 0.142450005, 0.46103999))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.401797771, 2.19200039, -0.439144611, -0.93868798, 0.0217656344, -0.344076991, 0.00664200401, 0.998970151, 0.0450626314, 0.344702989, 0.0400231183, -0.937849522))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.277098, 0.256740987))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.152932584, 0.179296017, -0.452551842, 0.984476984, 0.134252757, -0.113053121, 0.172388002, -0.860631108, 0.479177505, -0.0329660028, -0.491230965, -0.870395541))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.37305969, 0.485281944, -0.860087872, 0.998402119, -0.0129696308, 0.0550014861, 0.00995600596, 0.998452306, 0.0547160134, -0.0556260049, -0.0540809818, 0.996985972))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.394759655, 2.22188568, -0.430408955, -0.528217018, -0.0347710848, 0.84838903, -0.00660500396, -0.998971403, -0.0450451672, 0.84908402, -0.0294022262, 0.527435064))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148548007, 0.534879982))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.320097446, -2.22184944, 0.487874985, -0.977320015, 0.0160409138, -0.211156979, 0.00665500434, 0.998969615, 0.0450756252, 0.211662993, 0.042656213, -0.976402521))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.484982014))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.253762007, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.120118618, -0.488716125, 0.955907822, -0.872309029, 0.0925576687, 0.480108678, -0.457551003, -0.500750542, -0.734768689, 0.172406003, -0.860638916, 0.479157329))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.750757992))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.383625984, -2.22194576, 0.440413952, -0.552721977, -0.0338967443, 0.832668543, 0.00666200416, 0.998969495, 0.0450792611, -0.833338976, 0.030468747, -0.551916838))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.148550004, 0.522713006))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00419831276, 0.288212299, 3.77124119, -0.945629001, -0.00843299925, 0.325158954, -0.325204015, 0.0447222888, -0.944582939, -0.00657700421, -0.998973727, -0.04502967))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.0388217, -2.00428391, 1.20530534, 0.916742325, -0.281204283, 0.283738792, 0.140190199, 0.891563058, 0.430653185, -0.374072522, -0.355020612, 0.856755614))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.142449006, 0.500579))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.466951966, -0.82654953, 1.79359531, -0.989468694, 0.0177233703, -0.143658742, 0.144406125, 0.0527056605, -0.98811388, -0.00994108152, -0.998452783, -0.0547099598))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.693889976, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.320160747, 0.488027573, -2.22180653, 0.977320015, -0.0160126537, 0.211158454, 0.211662993, 0.0425874591, -0.976405501, 0.00664200401, 0.99897325, 0.0450024605))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196419992, 0.484984994, 0.148549005))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.263063014, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.37737751, 0.515069962, -0.870795727, 0.753169, 0.0285560787, -0.657200456, -0.00990300439, -0.998460531, -0.0547235012, -0.657751977, 0.0477314591, -0.751713514))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 0.665929019))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.377346516, -0.870707035, 1.79366589, -0.753166974, -0.0285209417, 0.65720427, -0.657754004, 0.0476917624, -0.751714468, -0.00990400463, -0.998463392, -0.0546705723))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 0.665929973, 0.441118985))
Col3_Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Col3_Wedge",Vector3.new(0.200000003, 0.675235987, 3.12846708))
Col3_Wedgeweld=weld(m,SP_handle12,Col3_Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00431895256, 1.29282582, 3.55440235, 0.945638001, 0.00838916004, -0.325110316, 0.293482006, -0.452760905, 0.841945767, -0.140134007, -0.891601861, -0.430594862))
mesh("SpecialMesh",Col3_Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0196269993, 1, 1))
--[[local mult = 2
----------------------------------------------------
larm.Size = larm.Size * mult
rarm.Size = rarm.Size * mult
lleg.Size = lleg.Size * mult
rleg.Size = rleg.Size * mult
torso.Size = torso.Size * mult
hed.Size = hed.Size * mult
rutprt.Size = rutprt.Size * mult
----------------------------------------------------]]
newWeld(law, torso, larm, -1.5, 0.5, 0)
newWeld(raw, torso, rarm, 1.5, 0.5, 0)
newWeld(llw, torso, lleg, -.5, -2, 0)
newWeld(rlw, torso, rleg, .5, -2, 0)
newWeld(hw, torso, hed, 0, 1.5, 0)
local rutwald=Instance.new('Weld',rutprt)
rutwald.Part0=rutprt
rutwald.Part1=torso
rutprt.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),0,0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),0,0)
rleg.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)
lleg.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)













maus.KeyDown:connect(function(kei)
if string.byte(kei)==48 and not otheranims then
runnin=true
end
if kei=='w' then fldb.w=true end
if kei=='a' then fldb.a=true end
if kei=='s' then fldb.s=true end
if kei=='d' then fldb.d=true end
end)
maus.KeyUp:connect(function(kei)
if string.byte(kei)==48 and not otheranims then
runnin=false
end
if kei=='w' then fldb.w=false end
if kei=='a' then fldb.a=false end
if kei=='s' then fldb.s=false end
if kei=='d' then fldb.d=false end
end)


local sine = 0
local change = 0.5

local i = 1
local sy
game:service'RunService'.RenderStepped:connect(function()
if anim~=lastanim then
runtime=0
end
lastanim=anim
chr.Humanoid.CameraOffset=(rutprt.CFrame:toObjectSpace(hed.CFrame)).p+Vector3.new(0,-1.25,0)
syne=syne+.95
i = i + 1
if not otheranims and not swimming then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 1 and not chr.Humanoid.Jump then-- and torso.Velocity.y<5 and torso.Velocity.y>-5
anim="Idling"
elseif (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 and (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude < RunSpeed-10 and not chr.Humanoid.Jump then-- and torso.Velocity.y<5 and torso.Velocity.y>-5
anim="Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > RunSpeed-10 and not chr.Humanoid.Jump then-- and torso.Velocity.y<5 and torso.Velocity.y>-5
anim="Sprinting"
elseif torso.Velocity.y>5 and chr.Humanoid.Jump then
anim='Jumping'
elseif (torso.Velocity.y < -5) and chr.Humanoid.Jump then
anim='Falling'
end
end


if anim=="Idling" then
idlesineinc=35
SP_handle1weld.C0=clerp(SP_handle1weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle2weld.C0=clerp(SP_handle2weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle3weld.C0=clerp(SP_handle3weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle4weld.C0=clerp(SP_handle4weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle5weld.C0=clerp(SP_handle5weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle6weld.C0=clerp(SP_handle6weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle7weld.C0=clerp(SP_handle7weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle8weld.C0=clerp(SP_handle8weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle9weld.C0=clerp(SP_handle9weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle10weld.C0=clerp(SP_handle10weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle11weld.C0=clerp(SP_handle11weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle12weld.C0=clerp(SP_handle12weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
LY_handleweld.C0=clerp(LY_handleweld.C0,CFrame.new(0, -.5, .46)*CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),.1)

rarm.Weld.C0=clerp(rarm.Weld.C0,CFrame.new(1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(14+2*math.cos(sine/10))), 0.4)
larm.Weld.C0=clerp(larm.Weld.C0,CFrame.new(-1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-20),math.rad(6),math.rad(-10-2*math.cos(sine/10))), 0.4)
lleg.Weld.C0=clerp(lleg.Weld.C0,CFrame.new(-0.5, -1-0.1*math.cos(sine/10), -0.55) * CFrame.Angles(math.rad(-10+1*math.cos(sine/10)), math.rad(10), math.rad(-0-2*math.cos(sine/10))), 0.4)
rleg.Weld.C0=clerp(rleg.Weld.C0,CFrame.new(0.5, -1.9-0.1*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-10), math.rad(0+2*math.cos(sine/10))), 0.4)
hed.Weld.C0=clerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/idlesineinc)/50,0)*CFrame.Angles(math.cos(syne/idlesineinc)/40,0,0),.1)
rutprt.Weld.C0=clerp(rutprt.Weld.C0,CFrame.new(0,15+math.cos(syne/idlesineinc)/20,0)*CFrame.Angles(math.cos(syne/idlesineinc)/35+math.rad(0),math.rad(0),math.rad(0)),.1)
end

if anim=="Walking" then
SP_handle1weld.C0=clerp(SP_handle1weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle2weld.C0=clerp(SP_handle2weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle3weld.C0=clerp(SP_handle3weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle4weld.C0=clerp(SP_handle4weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle5weld.C0=clerp(SP_handle5weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle6weld.C0=clerp(SP_handle6weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle7weld.C0=clerp(SP_handle7weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle8weld.C0=clerp(SP_handle8weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle9weld.C0=clerp(SP_handle9weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle10weld.C0=clerp(SP_handle10weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle11weld.C0=clerp(SP_handle11weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle12weld.C0=clerp(SP_handle12weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)

rarm.Weld.C0=clerp(rarm.Weld.C0,CFrame.new(1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(14+2*math.cos(sine/10))), 0.4)
larm.Weld.C0=clerp(larm.Weld.C0,CFrame.new(-1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-20),math.rad(6),math.rad(-10-2*math.cos(sine/10))), 0.4)
lleg.Weld.C0=clerp(lleg.Weld.C0,CFrame.new(-0.5, -1-0.1*math.cos(sine/10), -0.55) * CFrame.Angles(math.rad(-10+1*math.cos(sine/10)), math.rad(10), math.rad(-0-2*math.cos(sine/10))), 0.4)
rleg.Weld.C0=clerp(rleg.Weld.C0,CFrame.new(0.5, -1.9-0.1*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-10), math.rad(0+2*math.cos(sine/10))), 0.4)
hed.Weld.C0=clerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/20)/50,0)*CFrame.Angles(-math.cos(syne/3)/20,0,0),.1)
rutprt.Weld.C0=clerp(rutprt.Weld.C0,CFrame.new(0,15+math.cos(syne/3.375)/20,0)*CFrame.Angles(math.cos(syne/3)/20+math.rad(-3.5),0,0),.1)
end

if anim=="Sprinting" then
SP_handle1weld.C0=clerp(SP_handle1weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle2weld.C0=clerp(SP_handle2weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle3weld.C0=clerp(SP_handle3weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle4weld.C0=clerp(SP_handle4weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle5weld.C0=clerp(SP_handle5weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle6weld.C0=clerp(SP_handle6weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle7weld.C0=clerp(SP_handle7weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle8weld.C0=clerp(SP_handle8weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle9weld.C0=clerp(SP_handle9weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle10weld.C0=clerp(SP_handle10weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle11weld.C0=clerp(SP_handle11weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle12weld.C0=clerp(SP_handle12weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)

rarm.Weld.C0=clerp(rarm.Weld.C0,CFrame.new(1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(14+2*math.cos(sine/10))), 0.4)
larm.Weld.C0=clerp(larm.Weld.C0,CFrame.new(-1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-20),math.rad(6),math.rad(-10-2*math.cos(sine/10))), 0.4)
lleg.Weld.C0=clerp(lleg.Weld.C0,CFrame.new(-0.5, -1-0.1*math.cos(sine/10), -0.55) * CFrame.Angles(math.rad(-10+1*math.cos(sine/10)), math.rad(10), math.rad(-0-2*math.cos(sine/10))), 0.4)
rleg.Weld.C0=clerp(rleg.Weld.C0,CFrame.new(0.5, -1.9-0.1*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-10), math.rad(0+2*math.cos(sine/10))), 0.4)
hed.Weld.C0=clerp(hed.Weld.C0,CFrame.new(0,1.55+math.cos(syne/20)/50,0)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(20),0,0),.1)
rutprt.Weld.C0=clerp(rutprt.Weld.C0,CFrame.new(0,15+math.cos(syne/2.5)/15,0)*CFrame.Angles(math.cos(syne/2.5)/10+math.rad(-30),0,0),.1)
end

if anim=="Jumping" then
SP_handle1weld.C0=clerp(SP_handle1weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle2weld.C0=clerp(SP_handle2weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle3weld.C0=clerp(SP_handle3weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle4weld.C0=clerp(SP_handle4weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle5weld.C0=clerp(SP_handle5weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle6weld.C0=clerp(SP_handle6weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle7weld.C0=clerp(SP_handle7weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle8weld.C0=clerp(SP_handle8weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle9weld.C0=clerp(SP_handle9weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle10weld.C0=clerp(SP_handle10weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle11weld.C0=clerp(SP_handle11weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle12weld.C0=clerp(SP_handle12weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)

rarm.Weld.C0=clerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(50)),.1)
larm.Weld.C0=clerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-50)),.1)
lleg.Weld.C0=clerp(lleg.Weld.C0,CFrame.new(-.55,-1.4,0)*CFrame.Angles(math.rad(-17.5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=clerp(rleg.Weld.C0,CFrame.new(.55,-1.1,-.1)*CFrame.Angles(math.rad(-17.5),0,math.rad(2.5)),.1)
hed.Weld.C0=clerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/20)/50,0)*CFrame.Angles(math.cos(syne/20)/40,0,0),.1)
rutprt.Weld.C0=clerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/20)/20,0)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.1)
end

if anim=="Falling" then
SP_handle1weld.C0=clerp(SP_handle1weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle2weld.C0=clerp(SP_handle2weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle3weld.C0=clerp(SP_handle3weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle4weld.C0=clerp(SP_handle4weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle5weld.C0=clerp(SP_handle5weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle6weld.C0=clerp(SP_handle6weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle7weld.C0=clerp(SP_handle7weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle8weld.C0=clerp(SP_handle8weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle9weld.C0=clerp(SP_handle9weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle10weld.C0=clerp(SP_handle10weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle11weld.C0=clerp(SP_handle11weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)
SP_handle12weld.C0=clerp(SP_handle12weld.C0,CFrame.new(0, 0, 1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(i)),.1)

rarm.Weld.C0=clerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(70)),.035)
larm.Weld.C0=clerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-70)),.035)
lleg.Weld.C0=clerp(lleg.Weld.C0,CFrame.new(-.55,-1.2,0)*CFrame.Angles(math.rad(-14),0,math.rad(-2.5)),.035)
rleg.Weld.C0=clerp(rleg.Weld.C0,CFrame.new(.55,-1.9,0)*CFrame.Angles(math.rad(0),0,math.rad(2.5)),.035)
hed.Weld.C0=clerp(hed.Weld.C0,CFrame.new(0,1.5,-.3)*CFrame.Angles(math.rad(-40),0,0),.035)
rutprt.Weld.C0=clerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/20)/20,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.035)
end

if runnin and not otheranims and not swimming then
chr.Humanoid.WalkSpeed=RunSpeed
elseif not runnin and not otheranims and not swimming then
chr.Humanoid.WalkSpeed=WlkSpeed
end
end)


--Player Stuff--
player = game.Players.LocalPlayer
chara = player.Character
debby = game:GetService("Debris")

function ScatterEff(part)
local eff1 = Instance.new("ParticleEmitter",part)
eff1.Size = NumberSequence.new(.1)
eff1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.9,0),NumberSequenceKeypoint.new(1,1)})
eff1.LightEmission = 1
eff1.Lifetime = NumberRange.new(1)
eff1.Speed = NumberRange.new(1)
eff1.Rate = 100
eff1.VelocitySpread = 10000
eff1.Texture = "rbxassetid://347504241"
eff1.Color = ColorSequence.new(Color3.new(0.5,0.05,1))
local eff2 = Instance.new("ParticleEmitter",part)
eff2.Size = NumberSequence.new(.1)
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.9,0),NumberSequenceKeypoint.new(1,1)})
eff2.LightEmission = 1
eff2.Lifetime = NumberRange.new(1)
eff2.Speed = NumberRange.new(1)
eff2.Rate = 100
eff2.VelocitySpread = 10000
eff2.Texture = "rbxassetid://347504259"
eff2.Color = ColorSequence.new(Color3.new(0.5,0.05,1))
end

function BurningEff(part)
local eff1 = Instance.new("ParticleEmitter",part)
eff1.Size = NumberSequence.new(.1)
eff1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
eff1.LightEmission = 1
eff1.Lifetime = NumberRange.new(1)
eff1.Speed = NumberRange.new(0)
eff1.Rate = 100
eff1.Texture = "rbxassetid://347504241"
eff1.Acceleration = Vector3.new(0,10,0)
eff1.Color = ColorSequence.new(Color3.new(0.5,0.05,1))
local eff2 = Instance.new("ParticleEmitter",part)
eff2.Size = NumberSequence.new(.1)
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
eff2.LightEmission = 1
eff2.Lifetime = NumberRange.new(1)
eff2.Speed = NumberRange.new(0)
eff2.Rate = 100
eff2.Texture = "rbxassetid://347504259"
eff2.Acceleration = Vector3.new(0,10,0)
eff2.Color = ColorSequence.new(Color3.new(0.5,0.05,1))
local eff3 = Instance.new("ParticleEmitter",part)
eff3.Size = NumberSequence.new(1)
eff3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
eff3.LightEmission = 1
eff3.Lifetime = NumberRange.new(1)
eff3.Speed = NumberRange.new(0)
eff3.Rate = 100
eff3.Texture = "rbxasset://textures/particles/fire_main.dds"
eff3.Acceleration = Vector3.new(0,10,0)
eff3.Color = ColorSequence.new(Color3.new(0.5,0.05,1))
end


local eff1 = Instance.new("ParticleEmitter",EyeFire)
eff1.Size = NumberSequence.new(.1)
eff1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
eff1.LightEmission = 1
eff1.Lifetime = NumberRange.new(.5)
eff1.Speed = NumberRange.new(1)
eff1.EmissionDirection = "Front"
eff1.Rate = 100
eff1.Texture = "rbxassetid://347504241"
eff1.Acceleration = Vector3.new(0,10,0)
eff1.Color = ColorSequence.new(Color3.new(0.5,0.05,1))
local eff2 = Instance.new("ParticleEmitter",EyeFire)
eff2.Size = NumberSequence.new(.1)
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
eff2.LightEmission = 1
eff2.Lifetime = NumberRange.new(.5)
eff2.Speed = NumberRange.new(1)
eff2.EmissionDirection = "Front"
eff2.Rate = 100
eff2.Texture = "rbxassetid://347504259"
eff2.Acceleration = Vector3.new(0,10,0)
eff2.Color = ColorSequence.new(Color3.new(0.5,0.05,1))
local eff3 = Instance.new("ParticleEmitter",EyeFire)
eff3.Size = NumberSequence.new(.1)
eff3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
eff3.LightEmission = 1
eff3.Lifetime = NumberRange.new(.5)
eff3.Speed = NumberRange.new(1)
eff3.EmissionDirection = "Front"
eff3.Rate = 100
eff3.Texture = "rbxasset://textures/particles/fire_main.dds"
eff3.Acceleration = Vector3.new(0,10,0)
eff3.Color = ColorSequence.new(Color3.new(0.5,0.05,1))

--Name Tag--
local naeeym = Instance.new("BillboardGui",chara)
naeeym.Size = UDim2.new(0,100,0,40)
naeeym.StudsOffset = Vector3.new(0,2,0)
naeeym.Adornee = chara.Head
local tecks = Instance.new("TextLabel",naeeym)
tecks.BackgroundTransparency = 1
tecks.BorderSizePixel = 0
tecks.Text = "Osu"
tecks.Font = "Fantasy"
tecks.FontSize = "Size24"
tecks.TextStrokeTransparency = 0
tecks.TextStrokeColor3 = Color3.new(0.5,0.05,1)
tecks.TextColor3 = Color3.new(0.5,0.05,1)
tecks.Size = UDim2.new(1,0,0.5,0)

--Skybox--
skybox = Instance.new("Part",chara)
skybox.Size = Vector3.new(0,0,0)
skybox.Anchored = true
skybox.CanCollide = true
skyboxmesh = Instance.new("SpecialMesh",skybox)
skyboxmesh.MeshId = "http://www.roblox.com/asset/?id=1527559"
skyboxmesh.TextureId = "http://www.roblox.com/asset/?id=267613827"
skyboxmesh.VertexColor = Vector3.new(0.5,0.05,1)
skyboxmesh.Scale = Vector3.new(-3000,-1000,-3000)

--Soul Steal--
function SoulSteal(pos)
local soulst = coroutine.wrap(function()
local soul = Instance.new("Part",chara)
soul.Size = Vector3.new(0,0,0)
soul.CanCollide = false
soul.Anchored = false
soul.Position = pos
soul.CFrame = CFrame.new(pos.X,pos.Y,pos.Z)
soul.Transparency = 1
local ptc = Instance.new("ParticleEmitter",soul)
ptc.Texture = "http://www.roblox.com/asset/?id=413366101"
ptc.Size = NumberSequence.new(.5)
ptc.LockedToPart = true
ptc.Speed = NumberRange.new(0)
ptc.Lifetime = NumberRange.new(9999)
local bodpos = Instance.new("BodyPosition",soul)
bodpos.Position = pos
wait(2)
soul.Touched:connect(function(hit)
if hit.Parent == chara then
soul:Destroy()
end
end)
while soul do
wait(.1)
bodpos.Position = chara.Torso.Position
end
end)
soulst()
end

--Death of a Mortal--
function KillMortal(hitdude)
local torsy = nil
if hitdude:FindFirstChild("Torso")~=nil then
torsy = hitdude.Torso	
elseif hitdude:FindFirstChild("UpperTorso")~=nil then
torsy = hitdude.UpperTorso
end
local val = Instance.new("ObjectValue",hitdude)
val.Name = "HasBeenHit"
hitdude:BreakJoints()
hitdude.Humanoid:Destroy()
SoulSteal(torsy.Position)
local chi = hitdude:GetChildren()
for i = 1, #chi do
if chi[i].ClassName == "Part" or chi[i].ClassName == "MeshPart" then
local bodpos = Instance.new("BodyPosition",chi[i])
bodpos.Position = chi[i].Position + Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
ScatterEff(chi[i])
chi[i].BrickColor = BrickColor.new("Royal purple")
end
end
for i = 1, 4 do
for i = 1, #chi do
if chi[i].ClassName == "Part" or chi[i].ClassName == "MeshPart" then
chi[i].Transparency = chi[i].Transparency + .25
wait(.01)
end
end
end
for i = 1, #chi do
if chi[i].ClassName == "Part" or chi[i].ClassName == "MeshPart" then
chi[i]:Destroy()
end
end
end



--Death--
chara.Humanoid.Died:connect(function()
local pat = Instance.new("Part",game.Workspace)
pat.Transparency = 1
pat.Anchored = true
pat.CFrame = chara.Torso.CFrame
naeeym.Parent = pat
naeeym.Adornee = pat
skybox.Parent = game.Workspace
tecks.Text = "BAD CHOICE"
tecks.FontSize = "Size48"
tecks.TextColor3 = Color3.new(0.5,0.05,1)
music1:Stop()
music2:Stop()
deathmus.Parent = game.Workspace
deathex.Parent = game.Workspace
deathmus:Play()
deathex:Play()
game.Lighting.OutdoorAmbient = Color3.new(0.5,0.05,1)
game.Lighting.TimeOfDay = "00:00:00"
game.Lighting.FogColor = Color3.new(0.5,0.05,1)
game.Lighting.FogEnd = 1000
local ex = Instance.new("Explosion",game.Workspace)
ex.Position = chara.Torso.Position
ex.Visible = false
ex.BlastRadius = 999999999999999999999999
ex.BlastPressure = 9999999999999999999999999
end)

--Outfit--

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

--Sounds--
Music = New("Sound",chara,"Music",{SoundId = "rbxassetid://",Volume = 1,Looped = true})
SpellCastSnd = New("Sound",chara,"SpellCast",{SoundId = "rbxassetid://161006131",Volume = 1})
ExplodeSnd = New("Sound",chara,"Explode",{SoundId = "rbxassetid://221920694",Volume = 1})
MeteorSnd = New("Sound",chara,"Meteor",{SoundId = "rbxassetid://231917888",Volume = 1})
LasChgSnd = New("Sound",chara,"LasChg",{SoundId = "rbxassetid://137463716",Volume = 1})
LaserSnd = New("Sound",chara,"Laser",{SoundId = "rbxassetid://162246701",Volume = 1})
LasLoopSnd = New("Sound",chara,"LasLoop",{SoundId = "rbxassetid://162246683",Volume = 1,Looped = true})
deathmus = New("Sound",chara.Torso,"DeathMus",{SoundId = "rbxassetid://19094700",PlaybackSpeed = .5,Volume = 5,Looped = true})
deathex = New("Sound",chara.Torso,"DeathEx",{SoundId = "rbxassetid://11984351",PlaybackSpeed = 1,Volume = 5})
Snd = New("Sound",chara,"",{SoundId = "",Volume = 1})
Music:Play()

--Enamate--
function Enamate(part)
local trace = Instance.new("Part",chara)
trace.Size = Vector3.new(1,1,1)
trace.TopSurface = 0
trace.BottomSurface = 0
trace.BrickColor = BrickColor.new("Royal purple")
trace.CanCollide = false
trace.Anchored = true
trace.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0,359)),math.rad(math.random(0,359)),math.rad(math.random(0,359)))
local tracedisp = coroutine.wrap(function()
for i = 1, 9 do
wait(.01)
trace.Transparency = trace.Transparency + .1
end
wait(.01)
trace:Destroy()
end)
tracedisp()
end
function Enamate2(part,name)
if chara:FindFirstChild(name)== nil then
local angl = CFrame.fromEulerAnglesXYZ(math.rad(math.random(0,359)),math.rad(math.random(0,359)),math.rad(math.random(0,359)))
local trace = Instance.new("Part",chara)
trace.Size = Vector3.new(1,1,1)
trace.Name = name
trace.TopSurface = 0
trace.BottomSurface = 0
trace.BrickColor = BrickColor.new("Royal purple")
trace.CanCollide = false
trace.Anchored = true
trace.CFrame = part.CFrame * angl
local tracem = Instance.new("SpecialMesh",trace)
tracem.MeshId = "rbxassetid://3270017"
local tracedisp = coroutine.wrap(function()
for i = 1, 9 do
wait(.01)
trace.Transparency = trace.Transparency + .1
trace.CFrame = part.CFrame * angl
tracem.Scale = tracem.Scale + Vector3.new(.5,.5,0)
end
wait(.01)
trace:Destroy()
end)
tracedisp()
end
end
function Enamate3()
if chara:FindFirstChild("Ring")== nil then
local trace = Instance.new("Part",chara)
trace.Size = Vector3.new(1,1,1)
trace.Name = "Ring"
trace.TopSurface = 0
trace.BottomSurface = 0
trace.BrickColor = BrickColor.new("Royal purple")
trace.CanCollide = false
trace.Anchored = true
trace.CFrame = chara.Torso.CFrame
local tracem = Instance.new("SpecialMesh",trace)
tracem.MeshId = "rbxassetid://3270017"
local tracedisp = coroutine.wrap(function()
for i = 1, 99 do
wait(.01)
trace.Transparency = trace.Transparency + .01
trace.CFrame = chara.Torso.CFrame
tracem.Scale = tracem.Scale + Vector3.new(.2,.2,0)
end
wait(.01)
trace:Destroy()
end)
tracedisp()
end
end

--Play Sound in Part--
function PlaySnd(snd,part)
local sound = snd:Clone()
sound.PlayOnRemove = true
sound.Parent = Part
sound:Destroy()
end

--Explosion--
function Expld(rad,pos)
local ex = Instance.new("Explosion",game.Workspace)
ex.BlastRadius = rad
ex.BlastPressure = 0
ex.Position = pos
ex.Visible = false
ex.Hit:connect(function(hit)
if hit.Parent ~= chara and hit.Parent:FindFirstChild("Humanoid")~= nil then
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - rad
end
end)
end

--Cross Explosion--
function CrossExplosion()
local cirpos = Mouse.Hit.p
local spellcircle = Instance.new("Part",chara)
spellcircle.Anchored = true
spellcircle.Size = Vector3.new(1,1,1)
spellcircle.CFrame = CFrame.new(cirpos.x,cirpos.y,cirpos.z)
spellcircle.Transparency = 1
spellcircle.CanCollide = false
local blkm = Instance.new("BlockMesh",spellcircle)
blkm.Scale = Vector3.new(0,1,0)
local dec = Instance.new("Decal",spellcircle)
dec.Texture = "rbxassetid://685910499"
dec.Transparency = 1
dec.Face = "Top"
local ptl = Instance.new("PointLight",spellcircle)
ptl.Range = 0
ptl.Color = Color3.new(0.5,0.05,1)
spellc = coroutine.wrap(function()
while spellc ~= nil do
wait(.01)
spellcircle.CFrame = spellcircle.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(10),0)
end
end)
spellc()
PlaySnd(SpellCastSnd,spellcircle)
for i = 1, 10 do
wait(.01)
ptl.Range = ptl.Range + 1
dec.Transparency = dec.Transparency - .1
blkm.Scale = blkm.Scale + Vector3.new(1,0,1)
end
wait(.5)
PlaySnd(ExplodeSnd,spellcircle)
local pemit = Instance.new("ParticleEmitter",spellcircle)
pemit.Color = ColorSequence.new(Color3.new(0.5,0.05,1))
pemit.LightEmission = 1
pemit.Size = NumberSequence.new(5)
pemit.Texture = "rbxasset://textures/particles/smoke_main.dds"
pemit.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.9,0),NumberSequenceKeypoint.new(1,1)})
pemit.Lifetime = NumberRange.new(1)
pemit.Rate = 10000
pemit.Speed = NumberRange.new(100)
Expld(12,spellcircle.Position)
wait(.5)
local pt1 = Instance.new("Part",chara)
pt1.Size = Vector3.new(0,0,0)
pt1.Anchored = true
pt1.CFrame = spellcircle.CFrame + Vector3.new(0,60,0)
pt1.Transparency = 1
local pemit2 = pemit:clone()
pemit2.Lifetime = NumberRange.new(.25)
pemit2.EmissionDirection = "Left"
pemit2.Parent = pt1
local pemit3 = pemit2:clone()
pemit3.EmissionDirection = "Right"
pemit3.Parent = pt1
for i = 1, 10 do
Expld(12,spellcircle.Position)
wait(.5)
end
pemit.Enabled = false
pemit2.Enabled = false
pemit3.Enabled = false
for i = 1, 10 do
wait(.01)
ptl.Range = ptl.Range - 1
dec.Transparency = dec.Transparency + .1
blkm.Scale = blkm.Scale - Vector3.new(1,0,1)
end
wait(.01)
spellcircle:Destroy()
pt1:Destroy()
end

--Meteor--
function Meteor()
local meteor = Instance.new("Part",game.Workspace)
meteor.Size = Vector3.new(5,5,5)
meteor.BrickColor = BrickColor.new("Royal purple")
meteor.Material = "Neon"
meteor.TopSurface = 0
meteor.BottomSurface = 0
meteor.Shape = 0
meteor.CFrame = chara.Torso.CFrame + Vector3.new(0,100,0)
meteor.Velocity = (Mouse.Hit.p - (chara.Torso.CFrame.p + Vector3.new(0,100,0))).unit*100
debby:AddItem(meteor,15)
local bfo = Instance.new("BodyForce",meteor)
bfo.Force = Vector3.new(0,game.Workspace.Gravity*meteor:GetMass(),0)
local eff = Instance.new("ParticleEmitter",meteor)
eff.Color = ColorSequence.new(Color3.new(0.5,0.05,1))
eff.LightEmission = 1
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10),NumberSequenceKeypoint.new(1,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
eff.Texture = "rbxasset://textures/particles/smoke_main.dds"
eff.Rate = 100000
eff.Speed = NumberRange.new(0)
eff.Lifetime = NumberRange.new(1)
local mehs = Instance.new("SpecialMesh",meteor)
mehs.MeshType = "Sphere"
mehs.Scale = Vector3.new(2,2,2)
--
meteor.Touched:connect(function(hit)
if meteor.Anchored == false then
meteor.Anchored = true
meteor.CanCollide = false
eff.Speed = NumberRange.new(50)
eff.VelocitySpread = 10000
PlaySnd(MeteorSnd,meteor)
Expld(15,meteor.Position)
for i = 1, 10 do
wait(.01)
mehs.Scale = mehs.Scale + Vector3.new(.5,.5,.5)
meteor.Transparency = meteor.Transparency + .1
end
eff.Enabled = false
end
end)
end

--Beam--
lasactive = false
function Beam()
lasactive = true
LasChgSnd:Play()
local StartPart = Instance.new("Part",chara)
StartPart.Size = Vector3.new(0,0,0)
StartPart.Anchored = true
StartPart.BrickColor = BrickColor.new("Royal purple")
StartPart.Material = "Neon"
StartPart.Transparency = 1
local mehs = Instance.new("SpecialMesh",StartPart)
mehs.MeshType = "Sphere"
mehs.Scale = Vector3.new(0,0,0)
for i = 1, 20 do
wait(.01)
StartPart.CFrame = chara.Torso.CFrame + Vector3.new(0,10,0)
mehs.Scale = mehs.Scale + Vector3.new(2.5,2.5,2.5)
StartPart.Transparency = StartPart.Transparency - .05
end
local EffectPart = Instance.new("Part",chara)
EffectPart.Size = Vector3.new(0,0,0)
EffectPart.Anchored = true
EffectPart.Transparency = 1
LaserSnd:Play()
LasLoopSnd:Play()
local P = Instance.new("Part",chara)
P.BrickColor = BrickColor.new("Royal purple")
P.Material = "Neon"
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth" 
for i = 1, 20 do
wait(.1)
StartPart.CFrame = chara.Torso.CFrame + Vector3.new(0,10,0)
local Place0 = StartPart.CFrame
local Place1 = Mouse.Hit
EffectPart.Position = Mouse.Hit.p
local meshla = Instance.new("BlockMesh", P)
meshla.Scale = Vector3.new(1,1,1)
local trace = Instance.new("Part",game.Workspace)
trace.Size = Vector3.new(0,0,0)
trace.BrickColor = BrickColor.new("Royal purple")
trace.Material = "Neon"
trace.CanCollide = false
trace.Anchored = true
trace.CFrame = EffectPart.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0,359)),math.rad(math.random(0,359)),math.rad(math.random(0,359)))
tracem = Instance.new("BlockMesh",trace)
tracem.Scale = Vector3.new(10,10,10)
local tracedisp = coroutine.wrap(function()
for i = 1, 9 do
wait(.01)
tracem.Scale = tracem.Scale + Vector3.new(10,10,10)
trace.Transparency = trace.Transparency + .1
end
wait(.01)
trace:Destroy()
end)
tracedisp()
P.Size = Vector3.new(1,1,(Place0.p - Place1.p).magnitude) 
P.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) 
Expld(15,EffectPart.Position)
P:Destroy()
end
----
LasLoopSnd:Stop()
for i = 1, 20 do
wait(.01)
StartPart.CFrame = chara.Torso.CFrame + Vector3.new(0,10,0)
mehs.Scale = mehs.Scale - Vector3.new(2.5,2.5,2.5)
StartPart.Transparency = StartPart.Transparency + .05
end
StartPart:Destroy()
EffectPart:Destroy()
lasactive = false
end

--Sword Stab--
function SwordStab()
local cirpos = Mouse.Hit.p
local spellcircle = Instance.new("Part",chara)
spellcircle.Anchored = true
spellcircle.Size = Vector3.new(1,1,1)
spellcircle.CFrame = CFrame.new(cirpos.x,cirpos.y,cirpos.z)
spellcircle.Transparency = 1
spellcircle.CanCollide = false
local blkm = Instance.new("BlockMesh",spellcircle)
blkm.Scale = Vector3.new(0,1,0)
local dec = Instance.new("Decal",spellcircle)
dec.Texture = "rbxassetid://685910499"
dec.Transparency = 1
dec.Face = "Top"
local ptl = Instance.new("PointLight",spellcircle)
ptl.Range = 0
ptl.Color = Color3.new(0.5,0.05,1)
spellc = coroutine.wrap(function()
while spellc ~= nil do
wait(.01)
spellcircle.CFrame = spellcircle.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(10),0)
end
end)
spellc()
PlaySnd(SpellCastSnd,spellcircle)
for i = 1, 40 do
wait(.01)
ptl.Range = ptl.Range + 1
dec.Transparency = dec.Transparency - .1
blkm.Scale = blkm.Scale + Vector3.new(1,0,1)
end
wait(.5)
local sword = Instance.new("Part",game.Workspace)
sword.Size = Vector3.new(2,50,2)
sword.BottomSurface = 0
sword.TopSurface = 0
sword.Position = spellcircle.Position + Vector3.new(0,250,0)
sword.CFrame = sword.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,0)
local mehs = Instance.new("SpecialMesh",sword)
mehs.MeshId = "http://www.roblox.com/asset/?id=79109302"
mehs.Scale = Vector3.new(40,40,40)
mehs.TextureId = "http://www.roblox.com/asset/?id=66011553"
mehs.VertexColor = Vector3.new(1,1,0)
local bodf = Instance.new("BodyPosition",sword)
bodf.Position = spellcircle.Position
sword.Touched:connect(function(hit)
if sword.Anchored == false then
sword.Anchored = true
PlaySnd(ExplodeSnd,spellcircle)
local pt = Instance.new("Part",game.Workspace)
pt.Shape = 0
pt.Size = Vector3.new(1,1,1)
pt.Material = "Neon"
pt.CFrame = spellcircle.CFrame
pt.BrickColor = BrickColor.new("Royal purple")
local mh = Instance.new("SpecialMesh",pt)
mh.MeshType = "Sphere"
mh.Scale = Vector3.new(0,0,0)
for i = 1, 10 do
wait(.01)
mh.Scale = mh.Scale + Vector3.new(10,10,10)
pt.Transparency = pt.Transparency + .1
Expld(mh.Scale.x,spellcircle.Position)
end
wait(1)
for i = 1, 9 do
wait(.01)
sword.Transparency = sword.Transparency +.1
end
sword:Destroy()
wait(.5)
for i = 1, 40 do
wait(.01)
ptl.Range = ptl.Range - 1
dec.Transparency = dec.Transparency + .1
blkm.Scale = blkm.Scale - Vector3.new(1,0,1)
end
spellcircle:Destroy()
end
end)
end

--KeyDown--
mus = true
function onKeyDown(key)
if key == "e" then
flyposy = flyposy - 10
elseif key == "q" then
flyposy = flyposy + 10
elseif key == "z" and lasactive == false then
CrossExplosion()
elseif key == "x" and lasactive == false then
Meteor()
elseif key == "c" and lasactive == false then
Beam()
elseif key == "v" and lasactive == false then
SwordStab()
elseif key == "m" then
if mus == true then
Music:Stop()
mus = false
elseif mus == false then
Music:Play()
mus = true
end
end
end

--Mouse Function--
Mouse = player:GetMouse()
if Mouse then
Mouse.KeyDown:connect(onKeyDown)
end
--Loop Function--
while true do
wait(.01)
chance = math.random(0,100)
if chance < 10 then
sel = math.random(1,3)
if sel == 1 then
tecks.Text = "HAHAHA"
elseif sel == 2 then
tecks.Text = "Die"
elseif sel == 3 then
tecks.Text = "You cant run!"
end
else tecks.Text = "Osu"
end
if chara.Humanoid.Health > 0 then
chara.Humanoid.MaxHealth = math.huge
chara.Humanoid.Health = math.huge
game.Lighting.OutdoorAmbient = Color3.new(0.5,0.05,1)
game.Lighting.Ambient = Color3.new(0.5,0.05,1)
chara["Left Arm"].BrickColor = BrickColor.new("Cool yellow")
chara["Right Arm"].BrickColor = BrickColor.new("Cool yellow")
chara["Left Leg"].BrickColor = BrickColor.new("Medium blue")
chara["Right Leg"].BrickColor = BrickColor.new("Medium blue")
chara.Torso.BrickColor = BrickColor.new("Bright yellow")
chara["Left Arm"].Anchored = false
chara["Right Arm"].Anchored = false
chara["Left Leg"].Anchored = false
chara["Right Leg"].Anchored = false
chara.Torso.Anchored = false
ch = chara:GetChildren()
for i = 1, #ch do
if ch[i].ClassName == "Accessory" or ch[i].ClassName == "Hat" then
ch[i]:Destroy()
end
end
tools = player.Backpack:GetChildren()
for i = 1, #tools do
if tools[i].ClassName == "HopperBin" then
tools[i]:Destroy()
end
end
skybox.CFrame = skybox.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(1),0)
tecks.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3))
end
end