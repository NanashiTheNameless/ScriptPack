me = game.Players.LocalPlayer
char = me.Character
selected = false
attacking = false
hurt = false
DERPTRAIN = false 
ULTRADURPMODE = false 
if ULTRADURPMODE == true then 
normaldmg = 1234567891011121314151617181920 
normaldmg = 0 
else 
normaldmg = 1000 
end 
splashdmg = normaldmg * 2 
dmg = normaldmg
function moo1() 
local moan1=Instance.new("Sound") 
moan1.Parent=workspace 
moan1.SoundId="http://www.roblox.com/asset/?id=24902268" 
moan1.Name="Moan1" 
moan1.Pitch = math.random(1,10)*math.random() 
moan1.PlayOnRemove = true 
wait(0) 
moan1.Parent = nil 
local moan2=Instance.new("Sound") 
moan2.Parent=script.Parent 
moan2.SoundId="http://www.roblox.com/asset/?id=25495733" 
moan2.Name="Moan2" 
moan2.Pitch = 1 
moan2.PlayOnRemove = true 
wait(0) 
moan2.Parent = nil 
end 
function moo2() 
end 
function screem() 
local scream=Instance.new("Sound") 
scream.Parent=script.Parent
scream.SoundId="http://www.roblox.com/asset/?id=25495733" 
scream.Name="Scream" 
scream.Pitch = 2.5
scream.PlayOnRemove = true 
wait(0) 
scream.Parent = nil 
end 
function getnoobs(pos,dist)
    local stoof = {}
    for _,v in pairs(workspace:children()) do
        local h,t = v:findFirstChild("Humanoid"), v:findFirstChild("Torso")
        if h ~= nil and t ~= nil and v:IsA("Model") and v ~= char then
            if (t.Position - pos).magnitude < dist then
                table.insert(stoof,v)
            end
        end
    end
    return stoof
end
function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end
function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end
rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")
pcall(function() char.Lightsaber:remove() end)
mod = Instance.new("Model",char)
mod.Name = "Lightsaber"
hold = Instance.new("Part")
prop(hold,mod,false,1,0,0.5,0.5,0.5,1,false,"Custom")
hw = Instance.new("Weld")
weld(hw,rarm,hold,0,0,0,0,1,0)
main = Instance.new("Part")
prop(main,mod,false,0,0.04,0.44,2.1,0.44,"Really black",false,"Custom")
Instance.new("CylinderMesh",main)
wewe = Instance.new("Weld")
weld(wewe,hold,nil,math.pi/2,0,math.pi/2,0,0,0)
torsohold = Instance.new("Weld")
weld(torsohold,torso,main,0,0,math.rad(36)+math.pi,-1.1,-1.65,-0.8)
sp = Instance.new("Part")
prop(sp,mod,false,0,0,0.6,0.4,0.6,"Really red",false,"Custom")
Instance.new("CylinderMesh",sp)
w1 = Instance.new("Weld")
weld(w1,main,sp,0,0,0,0,0.8,0)
heh = Instance.new("Part")
prop(heh,mod,false,0,0,1,0.3,0.5,"Really red",false,"Custom")
w2 = Instance.new("Weld")
weld(w2,main,heh,0,0,0,0,-0.9,0)
Instance.new("CylinderMesh",heh)
blade = Instance.new("Part")
prop(blade,mod,false,0.5,0.5,0.44,3.50,0.50,"Toothpaste",false,"Custom")
w3 = Instance.new("Weld")
weld(w3,heh,blade,0,0,0,0,-blade.Size.Y/2,0)
blah = Instance.new("CylinderMesh",blade) 
coroutine.resume(coroutine.create(function() 
while true do 
wait() 
if ULTRADURPMODE == true then 
blade.Reflectance = 0.5 
blade.BrickColor = BrickColor.new(Color3.new(math.random(),math.random(),math.random())) 
else 
blade.BrickColor = BrickColor.new("Toothpaste") 
end 
end 
end)) 
lols = {}
touchs = {}
table.insert(lols,blade)
table.insert(touchs,blade)
for i=blade.Size.Y/2,-blade.Size.Y/2,-0.2 do
    local pf = Instance.new("Part")
    prop(pf,mod,false,1,0,0.65,0.1,0.15,1,false,"Custom")
    local wa = Instance.new("Weld")
    weld(wa,blade,pf,0,0,0,0,i,0)
    table.insert(touchs,pf)
end
rb = Instance.new("Part")
prop(rb,mod,false,1,0,0.5,0.5,0.5,1,false,"Custom")
rbw = Instance.new("Weld")
weld(rbw,torso,rb,0,0,0,-1.5,-0.5,0)
lb = Instance.new("Part")
prop(lb,mod,false,1,0,0.5,0.5,0.5,1,false,"Custom")
lbw = Instance.new("Weld")
weld(lbw,torso,lb,0,0,0,1.5,-0.5,0)
rw = Instance.new("Weld")
weld(rw,rb,nil,0,0,0,0,0.5,0)
lw = Instance.new("Weld")
weld(lw,lb,nil,0,0,0,0,0.5,0)
function showdmg(d)
    local pa = Instance.new("Part")
    prop(pa,mod,false,1,0,1,1,1,1,true,"Symmetric")
    pa.CFrame = CFrame.new(blade.Position)
    local bill = Instance.new("BillboardGui",pa)
    bill.Size = UDim2.new(0,50,0,35)
    bill.Adornee = pa
    local tx = Instance.new("TextLabel",bill)
    tx.Size = bill.Size
    tx.Position = UDim2.new(0,0,0,-30)
    tx.BackgroundTransparency = 1
    tx.Text = d
    tx.FontSize = "Size24"
    tx.TextColor3 = Color3.new(0,0,0)
    if ULTRADURPMODE == true then 
    if tx.Text ~= "TURDULATOR WAS HERE" or tx.Text ~= "LORD OF DARKNESS OLOL" then 
    coroutine.resume(coroutine.create(function()
    while true do 
    wait() 
    tx.TextColor3 = Color3.new(math.random(),math.random(),math.random()) 
    end 
    end)) 
    end 
    end 
    local poz = pa.Position
    for i=0,7,0.4 do
        wait()
	if ULTRADURPMODE == true then 
        pa.CFrame = CFrame.new(poz.X+math.random(-5,5), poz.Y+i+math.random(-5,5), poz.Z+math.random(-5,5))
	else 
        pa.CFrame = CFrame.new(poz.X, poz.Y+i, poz.Z)
	end 
    end
    pa:remove()
end
function durpmsg(d)
    local pa = Instance.new("Part")
    prop(pa,mod,false,1,0,1,1,1,1,true,"Symmetric")
    pa.CFrame = CFrame.new(blade.Position)
    local bill = Instance.new("BillboardGui",pa)
    bill.Size = UDim2.new(0,50,0,35)
    bill.Adornee = pa
    local tx = Instance.new("TextLabel",bill)
    tx.Size = bill.Size
    tx.Position = UDim2.new(0,0,0,-30)
    tx.BackgroundTransparency = 1
    tx.Text = d
    tx.FontSize = "Size24"
    tx.TextColor3 = Color3.new(0,0,0)
    if ULTRADURPMODE == true then 
    coroutine.resume(coroutine.create(function()
    while true do 
    wait() 
    tx.TextColor3 = Color3.new(math.random(),math.random(),math.random()) 
    end 
    end)) 
    end 
    local poz = pa.Position
    for i=0,8,0.1 do
        wait()
	if ULTRADURPMODE == true then 
        pa.CFrame = CFrame.new(poz.X, poz.Y+i, poz.Z)
	else 
        pa.CFrame = CFrame.new(poz.X, poz.Y+i, poz.Z)
	end 
    end
    pa:remove()
end
function derpmsg(d)
    local pa = Instance.new("Part")
    prop(pa,mod,false,1,0,1,1,1,1,true,"Symmetric")
    pa.CFrame = CFrame.new(blade.Position)
    local bill = Instance.new("BillboardGui",pa)
    bill.Size = UDim2.new(0,50,0,35)
    bill.Adornee = pa
    local tx = Instance.new("TextLabel",bill)
    tx.Size = bill.Size
    tx.Position = UDim2.new(0,0,0,-30)
    tx.BackgroundTransparency = 1
    tx.Text = d
    tx.FontSize = "Size24"
    tx.TextColor3 = Color3.new(0,0,0)
    local poz = pa.Position
    for i=0,8,0.1 do
        wait()
	if ULTRADURPMODE == true then 
        pa.CFrame = CFrame.new(poz.X, poz.Y+i, poz.Z)
	else 
        pa.CFrame = CFrame.new(poz.X, poz.Y+i, poz.Z)
	end 
    end
    pa:remove()
end
deb = true
function kill(h)
    if hurt and deb then
        local hu, to = h.Parent:findFirstChild("Humanoid"), h.Parent:findFirstChild("Torso")
        if hu ~= nil and to ~= nil and h.Parent ~= char then
            if hu.Health > 0 then
            deb = false
            local damg = math.random(dmg/4,dmg)
            local chance = math.random(1,5)
            if chance > 2 then
                hu.PlatformStand = true
                coroutine.resume(coroutine.create(function()
                    wait()
                    to.Velocity = CFrame.new(torso.Position, to.Position).lookVector * damg*2
                    wait(0.1)
                    hu.PlatformStand = false
                end))
            else
                damg = 0
            end
            hu.Health = hu.Health - damg
            coroutine.resume(coroutine.create(function()
--                showdmg("OVAR NINE THOUSAAAAAAND!!!")
--		showdmg(damg) 
		if ULTRADURPMODE == true then 
		moo1() 
		moo2() 
--		screem() 
		for i = 0,5 do 
		coroutine.resume(coroutine.create(function()
		LOLOL = math.random(1,101) 
		if LOLOL == 1 then 
		showdmg("OVAR NINE THOUSAAAAAAND!!!") 
		elseif LOLOL == 2 then 
		showdmg("ULTRADURP SLASH!") 
		elseif LOLOL == 3 then 
		showdmg("DINNUR") 
		elseif LOLOL == 4 then 
		showdmg("HERP DE DURP") 
		elseif LOLOL == 5 then 
		showdmg("IT'Z A BAGEL!") 
		elseif LOLOL == 6 then 
		showdmg("DERPDERPDERPDERPDERPDERPDERPDERP") 
		elseif LOLOL == 7 then 
		showdmg("BAGEL") 
		elseif LOLOL == 8 then 
		showdmg("IMMA FIRIN' MAH LAZOR") 
		elseif LOLOL == 9 then 
		showdmg("BLAAAAAARGH!") 
		elseif LOLOL == 10 then 
		showdmg("UMAD") 
		elseif LOLOL == 11 then 
		showdmg(math.huge) 
		elseif LOLOL == 12 then 
		showdmg("math.huge") 
		elseif LOLOL == 13 then 
		showdmg("ME BOTTOL O SCRUMPY") 
		elseif LOLOL == 14 then 
		showdmg("NEED A DISPENSER HERE") 
		elseif LOLOL == 15 then 
		showdmg("POOTIS") 
		elseif LOLOL == 16 then 
		showdmg("POOTIS SPENSER HERE") 
		elseif LOLOL == 17 then 
		showdmg("SANDVICH") 
		elseif LOLOL == 18 then 
		showdmg("TROLOLOLOLOLOLOLOLOLO") 
		elseif LOLOL == 19 then 
		showdmg("FUUUUUUUUUUUUUUUUUUUderpUUUUUUUUUUUU--") 
		elseif LOLOL == 20 then 
		showdmg("I HOPE SHE MAKES LOTS'A SPAGHETTI") 
		elseif LOLOL == 21 then 
		showdmg("DAI") 
		elseif LOLOL == 22 then 
		showdmg("BLAME JOHN!") 
		elseif LOLOL == 23 then 
		showdmg("BLAME DAVID!") 
		elseif LOLOL == 24 then 
		showdmg("OCTOGONAPUS") 
		elseif LOLOL == 25 then 
		showdmg("CORNISH GAME HEN") 
		elseif LOLOL == 26 then 
		showdmg("PINGAS") 
		elseif LOLOL == 27 then 
		showdmg("CREEPER AWAY") 
		elseif LOLOL == 28 then 
		showdmg("FAYULSLASH") 
		elseif LOLOL == 29 then 
		showdmg("NEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERENEEDADISPENSERHERE") 
		elseif LOLOL == 30 then 
		showdmg("YEAAAAAAAAAHHHHHHHHHHH") 
		elseif LOLOL == 31 then 
		showdmg("WHAT DA FUZZNUGGET") 
		elseif LOLOL == 32 then 
		showdmg("WHAT DA FUDGE") 
		elseif LOLOL == 33 then 
		showdmg("ANVIL GOD WAS HERE") 
		elseif LOLOL == 34 then 
		showdmg("AVIL GOD WAS ALSO HERE") 
		elseif LOLOL == 35 then 
		showdmg("TRANSFORMICE") 
		elseif LOLOL == 36 then 
		showdmg("PRINNY DOOD") 
		elseif LOLOL == 37 then 
		showdmg("POULTRYGEIST") 
		elseif LOLOL == 38 then 
		showdmg("SHAMAN FIGHT ENGAGE") 
		elseif LOLOL == 39 then 
		showdmg("DANCE DANCE REVOLUTION") 
		elseif LOLOL == 40 then 
		showdmg("FENRIER INVADED TIS LAIGHTSABOR") 
		elseif LOLOL == 41 then 
		showdmg("ARE YOU ON THE BALL?") 
		elseif LOLOL == 42 then 
		showdmg("GET ON THE BALL!") 
		elseif LOLOL == 43 then 
		showdmg("PLANK GOD KEELZ ALL") 
		elseif LOLOL == 44 then 
		showdmg("CANNONBALLZ") 
		elseif LOLOL == 45 then 
		showdmg("POWERTHIRST") 
		elseif LOLOL == 46 then 
		showdmg("RUM FROM ZE GOTTAMWAGON") 
		elseif LOLOL == 47 then 
		showdmg("GOTTAMGOTTAMGOTTAMGOTTAMGOTTAMWOOOOO") 
		elseif LOLOL == 48 then 
		showdmg("SPAH SAPPIN MAH SENTRY") 
		elseif LOLOL == 49 then 
		showdmg("GENTLEMEN?") 
		elseif LOLOL == 50 then 
		showdmg("MENTELGEN?") 
		elseif LOLOL == 51 then 
		showdmg("TURDULATOR WAS HERE") 
		elseif LOLOL == 52 then 
		showdmg("LORD OF DARKNESS OLOL") 
		elseif LOLOL == 53 then 
		showdmg("WALLJUMPIN MAH WAY") 
		elseif LOLOL == 54 then 
		showdmg("SPIRIT") 
		elseif LOLOL == 55 then 
		showdmg("BOXES WERE HERE") 
		elseif LOLOL == 56 then 
		showdmg("CHILDREN'S CARD GAEM") 
		elseif LOLOL == 57 then 
		showdmg("BONK") 
		elseif LOLOL == 58 then 
		showdmg("BONK") 
		elseif LOLOL == 59 then 
		showdmg("BOINK") 
		elseif LOLOL == 60 then 
		showdmg("BOINK") 
		elseif LOLOL == 61 then 
		showdmg("FORCE-A-NATURE") 
		elseif LOLOL == 62 then 
		showdmg("BODYLESS HEADLESS HORSELESS HORSEMAN") 
		elseif LOLOL == 63 then 
		showdmg("DAT VUZ NOT ZEH MEDICIN") 
		elseif LOLOL == 64 then 
		showdmg("PIKACHU!!!") 
		elseif LOLOL == 65 then 
		showdmg("BLASTOISE!!!") 
		elseif LOLOL == 66 then 
		showdmg("PANCAIK MIX") 
		elseif LOLOL == 67 then 
		showdmg("NARWHALS NARWHALS SWIMMING IN THE OCEAN") 
		elseif LOLOL == 68 then 
		showdmg("DUGONG DUGONG IT'S THE COW OF THE SEA-EA-EA") 
		elseif LOLOL == 69 then 
		showdmg("I'VE GOT A BIG BAG OF CRABS HERE") 
		elseif LOLOL == 70 then 
		showdmg("CHARLIE") 
		elseif LOLOL == 71 then 
		showdmg("CANDY MOUNTAIN CHARLIE") 
		elseif LOLOL == 72 then 
		showdmg("IT'S MAH KAT IN A BOX") 
		elseif LOLOL == 73 then 
		showdmg("MOAR NARWHALS") 
		elseif LOLOL == 74 then 
		showdmg("BABIES") 
		elseif LOLOL == 75 then 
		showdmg("THIS IS SENSATIONAL") 
		elseif LOLOL == 76 then 
		showdmg("SPYRO WUZ HERE") 
		elseif LOLOL == 77 then 
		showdmg("WELL EXCUSE ME PRINCESS") 
		elseif LOLOL == 78 then 
		showdmg("MOAR") 
		elseif LOLOL == 79 then 
		showdmg("MOARKRABZ") 
		elseif LOLOL == 80 then 
		showdmg("GAME.WORKSPACE:BREAKJOINTS()") 
		elseif LOLOL == 81 then 
		showdmg("NOPE.AVI") 
		elseif LOLOL == 82 then 
		showdmg("ODIN'S PIZZA PLACE") 
		elseif LOLOL == 83 then 
		showdmg("NARBLAND") 
		elseif LOLOL == 84 then 
		showdmg("4TH WALL BREAKAGE") 
		elseif LOLOL == 85 then 
		showdmg("POW HAHA") 
		elseif LOLOL == 86 then 
		showdmg("HIT IN DA FAIC WITH CANNONBALLZ") 
		elseif LOLOL == 87 then 
		showdmg("MEEP") 
		elseif LOLOL == 88 then 
		showdmg("U MUST DAI") 
		elseif LOLOL == 89 then 
		showdmg("I WONDER WHAT GANON'S UP TO") 
		elseif LOLOL == 90 then 
		showdmg("SAFETY DANCE") 
		elseif LOLOL == 91 then 
		showdmg("I'LL MAKE A MAN OUT OF YOU") 
		elseif LOLOL == 92 then 
		showdmg("I'LL MAKE A MOUSE OUT OF YOU") 
		elseif LOLOL == 93 then 
		showdmg("YOU MAY ONLY POST A COMMENT ONCE EVERY 9001 SECONDS") 
		elseif LOLOL == 94 then 
		showdmg("MOARMOARMOARMOARMOARMOAR") 
		elseif LOLOL == 95 then 
		showdmg("VAGINEER") 
		elseif LOLOL == 96 then 
		showdmg("HURR...") 
		elseif LOLOL == 97 then 
		showdmg("HURR DURR") 
		elseif LOLOL == 98 then 
		showdmg("THERE WILL BE AN ANSWER...") 
		elseif LOLOL == 99 then 
		showdmg("...LET IT BE") 
		elseif LOLOL == 100 then 
		showdmg("U JELLY?") 
		elseif LOLOL == 101 then 
		showdmg("U MADJELLY?") 
		end 
		end)) 	
		end 
		else 
		showdmg("THWACK!") 
		end 
            end))
            wait(0.25)
            deb = true
            end
        end
    end
end
for _,v in pairs(touchs) do
    v.Touched:connect(kill)
end
if script.Parent.className ~= "HopperBin" then
    h = Instance.new("HopperBin",me.Backpack)
    h.Name = "Lightsaber"
    script.Parent = h
end
bin = script.Parent
local mw = nil
local meow = nil
local tsah = nil
battleright = nil
battleleft = nil
battlewep = nil
function selmot()
    rw.Part1 = rarm
    for i=0,140,14 do
        rw.C0 = CFrame.Angles(-math.rad(i/1.1),math.rad(i/2.5),math.rad(-i/6))
        wait()
    end
    lo = rw.C0
    meow = lo
    torsohold.Part1 = nil
    wewe.Part1 = main
--    uns:play()
    for i=0,140,17 do
        rw.C0 = lo * CFrame.Angles(math.rad(-i),0,0)
        wewe.C0 = CFrame.Angles(math.rad(-i/2),0,0)
        wait()
    end
    lo = rw.C0
    mw = lo
    local hih = wewe.C0
    tsah = hih
    lw.Part1 = larm
    wait()
    for i=0,130,17 do
        rw.C0 = lo * CFrame.Angles(math.rad(i/4),math.rad(i/4),math.rad(-i/1.8)) * CFrame.new(-i/220,-i/500,0)
        lw.C0 = CFrame.new(i/130,-i/600,-i/160) * CFrame.Angles(math.rad(i/1.4),0,math.rad(i/2.6))
        wewe.C0 = hih * CFrame.Angles(math.rad(i/1.8),0,0)
        wait()
    end
    if battleright == nil then
        battleright = rw.C0
        battleleft = lw.C0
        battlewep = wewe.C0
    end
    selected = true
end
function deselmot()
    for i=130,0,-17 do
        rw.C0 = mw * CFrame.Angles(math.rad(i/4),math.rad(i/4),math.rad(-i/1.8)) * CFrame.new(-i/220,-i/500,0)
        lw.C0 = CFrame.new(i/130,-i/600,-i/160) * CFrame.Angles(math.rad(i/1.4),0,math.rad(i/2.6))
        wewe.C0 = tsah * CFrame.Angles(math.rad(i/1.8),0,0)
        wait()
    end
    lw.Part1 = nil
    for i=140,0,-17 do
        rw.C0 = meow * CFrame.Angles(math.rad(-i),0,0)
        wewe.C0 = CFrame.Angles(math.rad(-i/2),0,0)
        wait()
    end
    wewe.Part1 = nil
    torsohold.Part1 = main
    for i=140,0,-14 do
        rw.C0 = CFrame.Angles(-math.rad(i/1.1),math.rad(i/2.5),math.rad(-i/6))
        wait()
    end
    rw.Part1 = nil
    rw.C0 = CFrame.new(0,0,0)
    lw.C0 = CFrame.new(0,0,0)
    selected = false
end
function attack() 
if ULTRADURPMODE == false then 
    if attacking == false then
    attacking = true
--    slash.Pitch = 1
--    slash:play()
    for i=0,100,36 do
        rw.C0 = battleright * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.5),0,0)
        lw.C0 = battleleft * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.5),0,0)
        wait()
    end
    local lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
    hurt = true
    for i=0,140,48 do
        rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i),0,0)
        lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i/1.4),0,0)
        wewe.C0 = lo3 * CFrame.Angles(math.rad(-i/2.8),0,0)
--        eff()
        wait()
    end
    hurt = false
    lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
    for i=0,70,30 do
        rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.2),0,0)
        lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.9),0,0)
        wewe.C0 = lo3 * CFrame.Angles(math.rad(i/2),0,0)
        wait()
    end
    rw.C0 = battleright
    lw.C0 = battleleft
    wewe.C0 = battlewep
    attacking = false
    end
else 
    attacking = true
--    slash.Pitch = 1
--    slash:play()
    for i=0,100,60 do
        rw.C0 = battleright * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.5),0,0)
        lw.C0 = battleleft * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.5),0,0)
        wait()
    end
    local lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
    hurt = true
    for i=0,140,72 do
        rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i),0,0)
        lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i/1.4),0,0)
        wewe.C0 = lo3 * CFrame.Angles(math.rad(-i/2.8),0,0)
--        eff()
        wait()
    end
    hurt = false
    lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
    for i=0,70,50 do
        rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.2),0,0)
        lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.9),0,0)
        wewe.C0 = lo3 * CFrame.Angles(math.rad(i/2),0,0)
        wait()
    end
    rw.C0 = battleright
    lw.C0 = battleleft
    wewe.C0 = battlewep
    attacking = false
end 
end
function select(mouse)
    if bin.Parent ~= nil then
    repeat wait() until selected == false and attacking == false
    selmot()
    mouse.KeyDown:connect(key) 
    mouse.KeyUp:connect(key2) 
    mouse.Button1Down:connect(function() 
	hold = true 
        if hum.Health > 0 and bin.Parent ~= nil then
	if ULTRADURPMODE == true then 
	while hold == true do 
	wait() 
	coroutine.resume(coroutine.create(function()
	wait(0.2) 
	attack() 
	end)) 
	end 
	else 
            attack()
	end 
        end
    end) 
--    mouse.KeyDown:connect(function(key) keys(key) hold = false end)
--mouse.KeyDown:connect(function() hold = false end)
    end
end
function DURPMODEACTIVATE() 
ULTRADURPMODE = true 
coroutine.resume(coroutine.create(function() 
for i = 0,80 do 
wait() 
coroutine.resume(coroutine.create(function() 
showdmg("DURP") 
end)) 
end 
end)) 
durpmsg("DURPMODE ACTIVATE!!!") 
end 
function DURPMODEDISACTIVATE() 
ULTRADURPMODE = false 
derpmsg("DURPMODE DEACTIVATED") 
end 
function key(key) 
if key == "q" then 
if ULTRADURPMODE == true then 
DURPMODEDISACTIVATE() 
--normaldmg = 123456789101112131415 
normaldmg = 1000 
splashdmg = normaldmg * 2 
dmg = normaldmg
else 
DURPMODEACTIVATE() 
normaldmg = 123456789101112131415 
--normaldmg = 0 
splashdmg = normaldmg * 2 
dmg = normaldmg
end 
end 
if key == "e" then 
if DERPTRAIL == true then 
DERPTRAIL = false 
derpmsg("DURPTRAIL DEACTIVATED") 
else 
DERPTRAIL = true 
coroutine.resume(coroutine.create(function() 
while DERPTRAIL == true do 
wait(0.1) 
coroutine.resume(coroutine.create(function() 
showdmg("DURP") 
end)) 
end 
end)) 
durpmsg("DURPTRAIL ACTIVATE!!!") 
end 
end 
end 

function key2(key) 
hold = false 
end 
function desel()
    repeat wait() until selected == true and attacking == false
    deselmot()
end
bin.Selected:connect(select)
bin.Deselected:connect(desel)
-- lego 
while true do 
wait() 
if ULTRADURPMODE == true then 
game.Players.Fenrier.Character.Humanoid.WalkSpeed = 70 
else 
game.Players.Fenrier.Character.Humanoid.WalkSpeed = 30 
end 
end 