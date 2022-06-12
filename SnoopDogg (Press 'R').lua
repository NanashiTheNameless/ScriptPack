plr = game.Players.LocalPlayer
char = plr.Character
--Particles--
dor = Instance.new("ParticleEmitter",char.Head)
dor.Size = NumberSequence.new(5,5)
dor.Texture = "rbxassetid://178913323"
dor.Lifetime = NumberRange.new(1)
dor.Enabled = false
dor.Rate = 100
dor.RotSpeed = NumberRange.new(500)
dor.Speed = NumberRange.new(90)
dor.VelocitySpread = 90
doge = Instance.new("ParticleEmitter",char.Head)
doge.Size = NumberSequence.new(5,5)
doge.Texture = "rbxassetid://183291727"
doge.Enabled = false
doge.Lifetime = NumberRange.new(1)
doge.Rate = 100
doge.RotSpeed = NumberRange.new(500)
doge.Speed = NumberRange.new(90)
doge.VelocitySpread = 90
logo = Instance.new("ParticleEmitter",char.Head)
logo.Texture = "rbxassetid://196140725"
logo.Enabled = false
logo.Size = NumberSequence.new(5,5)
logo.Lifetime = NumberRange.new(1)
logo.Rate = 100
logo.RotSpeed = NumberRange.new(500)
logo.Speed = NumberRange.new(90)
logo.VelocitySpread = 90
shades = Instance.new("ParticleEmitter",char.Head)
shades.Texture = "rbxassetid://235711522"
shades.Enabled = false
shades.Size = NumberSequence.new(5,5)
shades.Lifetime = NumberRange.new(1)
shades.Rate = 100
shades.RotSpeed = NumberRange.new(500)
shades.Speed = NumberRange.new(90)
shades.VelocitySpread = 90
dew = Instance.new("ParticleEmitter",char.Head)
dew.Texture = "rbxassetid://242399520"
dew.Enabled = false
dew.Size = NumberSequence.new(5,5)
dew.Lifetime = NumberRange.new(1)
dew.Rate = 100
dew.RotSpeed = NumberRange.new(500)
dew.Speed = NumberRange.new(90)
dew.VelocitySpread = 90
rekt = Instance.new("ParticleEmitter",char.Head)
rekt.Texture = "rbxassetid://183463791"
rekt.Size = NumberSequence.new(5,5)
rekt.Enabled = false
rekt.Lifetime = NumberRange.new(1)
rekt.Rate = 100
rekt.RotSpeed = NumberRange.new(500)
rekt.Speed = NumberRange.new(40)
rekt.VelocitySpread = 90
print("rekt1")
--FRAMES--
b = Instance.new("BillboardGui",char.Torso)
b.Adornee = char.Torso
b.Size = UDim2.new(3,0,3,0)
b.ExtentsOffset = Vector3.new(0,3,0)
frame = Instance.new("ImageLabel",b)
frame.Visible = false
frame.BackgroundTransparency = 1
frame.Size = UDim2.new(1,0,2.5,0)
--Snoop--
h = Instance.new("BillboardGui",char.Torso)
h.Adornee = char.Torso
h.Size = UDim2.new(3,0,3,0)
h.ExtentsOffset = Vector3.new(0,0,0)
frame2 = Instance.new("ImageLabel",h)
frame2.Visible = false
frame2.BackgroundTransparency = 1
frame2.Size = UDim2.new(0.2,0,0.2,0)
frame2.Image = "rbxassetid://263842702"
frame2.Position = UDim2.new(0,0,0,0)
--Hitmarker--
h = Instance.new("BillboardGui",char.Torso)
h.Adornee = char.Torso
h.Size = UDim2.new(3,0,3,0)
h.ExtentsOffset = Vector3.new(0,0,0)
frame2 = Instance.new("ImageLabel",h)
frame2.Visible = false
frame2.BackgroundTransparency = 1
frame2.Size = UDim2.new(0.2,0,0.2,0)
frame2.Image = "rbxassetid://263842702"
frame2.Position = UDim2.new(0,0,0,0)
--Divider ;)--
mouse = plr:GetMouse()
song = Instance.new("Sound",char.Torso)
song.SoundId = "rbxassetid://182157309"
song.Looped = true
song.Volume = 1
smoke = Instance.new("Smoke",char.Torso)
smoke.Enabled = false
hit = Instance.new("Sound",char.Torso)
hit.SoundId = "rbxassetid://227097685"
hit.Looped = true
hit.Volume = 1
--Intervention--
inte = Instance.new("Sound",char.Torso)
inte.SoundId = "rbxassetid://193444173"
inte.Volume = 0.5
intehit = Instance.new("Sound",char.Head)
intehit.SoundId = "rbxassetid://160432334"
intehit.Volume = 1
interv = Instance.new("BillboardGui",char.Head)
interv.Adornee = char.Torso
interv.Size = UDim2.new(3,0,3,0)
hity = Instance.new("ImageLabel",interv)
hity.Visible = false
hity.BackgroundTransparency = 1
hity.Size = UDim2.new(0.4,0,0.4,0)
hity.Image = "rbxassetid://122007496"
hity.Position = UDim2.new(0,0,0,0)
--mlg sh!t--
--157545980
mom = Instance.new("Sound",char.Head)
mom.SoundId = "rbxassetid://157545980"
mom.Volume = 1
wombo = Instance.new("Sound",char.Head)
wombo.SoundId = "rbxassetid://151149854"
wombo.Volume = 1
freak = Instance.new("Sound",char.Head)
freak.SoundId = "rbxassetid://138097458"
freak.Volume = 1
bewm = Instance.new("Sound",char.Head)
bewm.SoundId = "rbxassetid://141679994"
bewm.Volume = 1
damn = Instance.new("Sound",char.Head)
damn.SoundId = "rbxassetid://154345248"
damnVolume = 1
horn = Instance.new("Sound",char.Head)
horn.SoundId = "rbxassetid://165695059"
horn.Volume = 1
horn2 = Instance.new("Sound",char.Head)
horn2.SoundId = "rbxassetid://164097557"
horn2.Volume = 1
tauge = Instance.new("Sound",char.Head)
tauge.SoundId = "rbxassetid://168015372"
tauge.Volume = 1
tauge2 = Instance.new("Sound",char.Head)
tauge2.SoundId = "rbxassetid://163206486"
tauge2.Volume = 1

mouse.KeyDown:connect(function(k)
	if k == "r" then
		song:play()
		frame.Visible = true
		char['Left Arm'].Transparency = 1
		char['Right Arm'].Transparency = 1
		char['Left Leg'].Transparency = 1
		char['Right Leg'].Transparency = 1
		char.Head.Transparency = 1
		char.Torso.Transparency = 1
		smoke.Enabled = true
		end
    if k == "e" then
	song:stop()
	frame.Visible = false
	char['Left Arm'].Transparency = 0
    char['Right Arm'].Transparency = 0
	char['Left Leg'].Transparency = 0
	char['Right Leg'].Transparency = 0
	char.Head.Transparency = 0
	char.Torso.Transparency = 0
	smoke.Enabled = false
    end
if k == "h" then
	hit:play()
	frame2.Visible = true
end
if k == "g" then
	hit:stop()
	frame2.Visible = false
end

if k == "f" then
interv.ExtentsOffset = Vector3.new(1,0.5,1.5)
mom:stop()
wombo:stop()
freak:stop()
damn:stop()
horn:stop()
horn2:stop()
tauge:stop()
tauge2:stop()
bewm:stop()
i = math.random(1,9)
    inte:play()
	wait(0.07)
	doge.Enabled = true
    rekt.Enabled = true
    dew.Enabled = true
    shades.Enabled = true
    dor.Enabled = true
    logo.Enabled = true
	intehit:play()
	hity.Visible = true
	if i == 1 then
		mom:play()
	end
	if i == 2 then
		wombo:play()
	end
	if i == 3 then
		freak:play()
	end
	if i == 4 then
		bewm:play()
	end
	if i == 5 then
		damn:play()
	end
	if i == 6 then
		horn:play()
	end
	if i == 7 then
		horn2:play()
	end
	if i == 8 then
		tauge:play()
	end
	if i == 9 then
		tauge2:play()
	end
	wait(0.07)
    doge.Enabled = false
    rekt.Enabled = false
    dew.Enabled = false
    shades.Enabled = false
    dor.Enabled = false
    logo.Enabled = false
	hity.Visible = false
        print("rekt a scrub")
	end
if k == "c" then
interv.ExtentsOffset = Vector3.new(1,0.5,1.5)
mom:stop()
wombo:stop()
freak:stop()
damn:stop()
horn:stop()
horn2:stop()
tauge:stop()
tauge2:stop()
bewm:stop()
i = math.random(1,9)
    inte:play()
    local  ff = Instance.new("ForceField",char)
	    wait(0.07)
    local  ex = Instance.new("Explosion",char.Torso)
    ex.Position = char.Torso.Position
    ex.BlastRadius = 20
	doge.Enabled = true
    rekt.Enabled = true
    dew.Enabled = true
    shades.Enabled = true
    dor.Enabled = true
    logo.Enabled = true
	intehit:play()
	hity.Visible = true
	if i == 1 then
		mom:play()
	end
	if i == 2 then
		wombo:play()
	end
	if i == 3 then
		freak:play()
	end
	if i == 4 then
		bewm:play()
	end
	if i == 5 then
		damn:play()
	end
	if i == 6 then
		horn:play()
	end
	if i == 7 then
		horn2:play()
	end
	if i == 8 then
		tauge:play()
	end
	if i == 9 then
		tauge2:play()
	end
	wait(0.07)
    doge.Enabled = false
    rekt.Enabled = false
    dew.Enabled = false
    shades.Enabled = false
    dor.Enabled = false
    logo.Enabled = false
	hity.Visible = false
	wait(0.3)
	ff:remove()
        print("rekt a scrub 4 real")
	end
if k == "z" then
mom:stop()
wombo:stop()
freak:stop()
damn:stop()
horn:stop()
horn2:stop()
tauge:stop()
tauge2:stop()
bewm:stop()
intehit:play()
end
end)

while true do
		    wait(0.02)
	frame.Image = "rbxassetid://175425821"
	h.ExtentsOffset = Vector3.new(math.random(2),math.random(),math.random())
			wait(0.02)
	frame.Image = "rbxassetid://175425875"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175425917"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175425939"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175425956"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175425985"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426012"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426037"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426074"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426091"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426269"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426297" --frame 10
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426372"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426396"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426406"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426431"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426442"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426469"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426488"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426560"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426585" --frame 20
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426606"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426619"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426637"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426652"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426665"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426690"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426735"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426763"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426776"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426971" --frame 30
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426987"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175426998"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175427016"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175427037"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175427053"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175427065"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175427091"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
			wait(0.02)
	frame.Image = "rbxassetid://175427109"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
	        wait(0.02)
	frame.Image = "rbxassetid://175427136"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
	        wait(0.02)
	frame.Image = "rbxassetid://175427147"
	h.ExtentsOffset = Vector3.new(math.random(5),math.random(5),math.random(5))
end