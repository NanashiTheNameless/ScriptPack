plr = game.Players.LocalPlayer
ch = plr.Character
tor = ch.Torso
mouse = plr:GetMouse()
reloads = false
extendedmag = true -- Change this to false if you don't want extended mags
shooting = false
damage = math.random(15, 50)
headdamage = 100
torsodamage = 50
ammotype = 1
silencer = false
if extendedmag then
ammo = 60
else
	ammo = 25
	end
local screen = Instance.new("ScreenGui", plr.PlayerGui)
 
local frame = Instance.new("Frame", screen)
        frame.Size=UDim2.new(0,0,0,200)
        frame.Style=("RobloxRound")
        frame.Active=true
frame.Position = UDim2.new(0, 100, 0, 0)
local txt = Instance.new("TextLabel", frame)
txt.TextScaled = true
txt.Size = UDim2.new(0,200,0,300)
txt.BackgroundTransparency = 1
txt.BackgroundColor3 = Color3.new(0,0,0)
txt.TextColor3 = Color3.new(255,255,255)
txt.FontSize = "Size24"
txt.TextStrokeTransparency = 0
txt.TextStrokeColor3 = Color3.new(0,0,0)
txt.Text = "Ammo "..ammo
        debounce = false
        
local sounda = Instance.new("Sound", ch.Head)
sounda.SoundId = "http://roblox.com/asset/?id=149915226"
sounda.Volume = 1

local soundb = Instance.new("Sound", ch.Head)
soundb.SoundId = "http://roblox.com/asset/?id=145653492"
soundb.Volume = 1
function weld(p0,p1,c0)--basic weld function
        local w=Instance.new("Weld",p0)
        w.Part0=p0
        w.Part1=p1
        w.C0=c0
        return w
end
 
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)--recommend to use this with my weld. use this function only with arm lockers.
    p0.Position = p1.Position
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p1
    w.Part1 = p0
    w.C0 = CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(rx or 0,ry or 0,rz or 0)
    w.MaxVelocity = .1
    return w
end
 
function cp(parent,color,size,anchored,cancollide)
        local newp=Instance.new("Part",parent)
        newp.TopSurface='Smooth'
        newp.BottomSurface='Smooth'
        newp.FormFactor="Custom"
        newp.BrickColor=BrickColor.new(color)
        newp.Size=size
        newp.Anchored=anchored
        newp.CanCollide=cancollide
        newp:BreakJoints()
        return newp
end
        
Tween = function(Weld, Stop, Step,a)
ypcall(function()
    local func = function()
        local Start = Weld.C1
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        
        for i = 0, 1, Step or .1 do
                Weld.C1 = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
                                (Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
                                (Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                                (X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
                                (Z1 * (1 - i)) + (Z2 * i) )
                wait()
        end
        
        Weld.C1 = Stop
    end
        
        if a then coroutine.wrap(func)() else func() end
end)
end
 
 
--arm welds for animation--
rw = weld(ch['Right Arm'],tor,CFrame.new(-1.5,-0.5,-0.3) * CFrame.Angles(math.rad(90),-0.6,0))
lw = weld(ch['Left Arm'],tor,CFrame.new(1.5,-0.5,-0.3) * CFrame.Angles(math.rad(90),0.6,0))
 
handle = cp(ch, "Really black", Vector3.new(0.4,1,0.4))
handledetail = cp(ch, "Institutional white", Vector3.new(0.45,0.80,0.3))
barrelbottom = cp(ch, "Institutional white", Vector3.new(0.4,0.1,1.35))
barreltop = cp(ch, "Black", Vector3.new(0.4,0.05,1.35))
barrel = cp(ch, "Institutional white", Vector3.new(0.1,0.1,0.1))
barrel2 = cp(ch, "Really black", Vector3.new(0.1,0.1,0.1))
trigger1 = cp(ch, "Really black", Vector3.new(0.1,0.1,0.4))
trigger2 = cp(ch, "Really black", Vector3.new(0.1,0.5,0.1))
cyl = Instance.new("CylinderMesh", barrel)
cyl.Scale = Vector3.new(1.5,0.2,1.5)
cyls = Instance.new("CylinderMesh", barrel2)
cyls.Scale = Vector3.new(1.4,0.15,1.4)
barreltop.Material = "Marble"
barrelbottom.Material = "Marble"
clip = cp(ch, "Dark stone grey", Vector3.new(0.25,1,0.3))
clip.Material = "Marble"
weld(handle, ch['Right Arm'], CFrame.new(0.9,0,-0.9)*CFrame.Angles(math.rad(90),0,math.rad(30)))
weld(handledetail, handle, CFrame.new(0,0,0))
weld(barrelbottom, handle, CFrame.new(0,0.58,-0.45))
w2 = weld(barreltop, barrelbottom, CFrame.new(0,0.2,0))
weld(barrel, barrelbottom, CFrame.new(0,0.68,0.1) * CFrame.Angles(math.rad(90),0,0))
wl = weld(barrel2, barrel, CFrame.new(0,0.01,0))
weld(clip, handle, CFrame.new(0,-0.4,0))
weld(trigger1, handle, CFrame.new(0, 0.15, -0.4))
weld(trigger2, trigger1, CFrame.new(-0.1, 0.2, 0)* CFrame.Angles(0,math.rad(90),0))
function shoot()
        local ray = Ray.new(barrel2.CFrame.p, (mouse.Hit.p-barrel2.CFrame.p).unit*300) 
                
                local hit, pos = game.Workspace:FindPartOnRay(ray, ch) 
                
                local h = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")
                if h then
        
local sound2 = Instance.new("Sound", h.Parent:findFirstChild("Head"))
sound2.SoundId = "http://roblox.com/asset/?id=10209590"
sound2.Volume = 1
sound2:Play()
   if ammotype == 1 then         
if hit:IsA("Part") and hit.Name == "Left Leg" then
hit.Parent:findFirstChild("Humanoid"):TakeDamage(15)
hit.Parent.Humanoid.PlatformStand = true
wait(5)
hit.Parent.Humanoid:TakeDamage(100)
hit.Parent.Humanoid.PlatformStand.Changed:connect(function()
	hit.Parent.Humanoid.PlatformStand = true
end)
end

if hit.ClassName == "Hat" then
hit.Parent:findFirstChild("Humanoid"):TakeDamage(100)
end

if hit.Parent.Humanoid.MaxHealth == math.huge then hit.Parent.Humanoid.MaxHealth = 0 end
 
if hit:IsA("Part") and hit.Name == "Right Leg" then
hit.Parent:findFirstChild("Humanoid"):TakeDamage(damage)
while wait() do
hit.Parent.Humanoid.PlatformStand = true
end
wait(5)
hit.Parent.Humanoid:TakeDamage(100)
end
 
if hit:IsA("Part") and hit.Name == "Torso" then
hit.Parent:findFirstChild("Humanoid"):TakeDamage(torsodamage)
end
 
if hit:IsA("Part") and hit.Name == "Left Arm" then
hit.Parent:findFirstChild("Humanoid"):TakeDamage(damage)
end
 
if hit:IsA("Part") and hit.Name == "Right Arm" then
hit.Parent:findFirstChild("Humanoid"):TakeDamage(damage)
end
 
if hit:IsA("Part") and hit.Name == "Head" then
hit.Parent:findFirstChild("Humanoid"):TakeDamage(headdamage)
end
elseif ammotype == 2 then
	b = Instance.new("Explosion", hit)
	b.BlastRadius = 2
	b.Position = hit.Position
elseif ammotype == 3 then
	f = Instance.new("Fire", hit)
	f.Size = 2
	Spawn(function()
	repeat
		wait(0.06)
	hit.Parent.Humanoid:TakeDamage(10)
	until
	hit.Parent.Humanoid.Health == 0
	end)
                end
end
                
                local dist = (pos-barrel2.CFrame.p).magnitude 
                local beam = Instance.new("Part", ch)
                beam.FormFactor = "Custom"
                beam.CanCollide = false
                beam.TopSurface = "Smooth"
                beam.BottomSurface = "Smooth"
beam.Anchored = true
                beam.Transparency = 0
if ammotype == 1 then
                beam.BrickColor = BrickColor.new("New Yeller")
elseif ammotype == 2 then
	beam.BrickColor = BrickColor.new("Deep orange")
elseif ammotype == 3 then
	beam.BrickColor = BrickColor.new("Really red")

end

               beam.Size = Vector3.new(0.2, dist, 0.2)
Instance.new("CylinderMesh", beam)
                beam.CFrame = CFrame.new(pos, barrel2.CFrame.p) * CFrame.new(0, 0, -dist/2) * CFrame.Angles(math.pi/2, 0, 0)
 
if silencer then
soundb:Play()
else
	sounda:Play()
 end
 
 
        Spawn(function()
        Tween(rw, CFrame.Angles(math.rad(5), 0, 0),0.4)
end)
 
Tween(lw, CFrame.Angles(math.rad(5), 0, 0),0.4)
 
debounce = false
 
        Spawn(function()
        Tween(rw, CFrame.Angles(-math.rad(5), 0, 0),0.4)
end)
 
Tween(lw, CFrame.Angles(-math.rad(5), 0, 0),0.4)
 
 
 
for i = 0, 1, .1 do
        beam.Transparency = beam.Transparency + i
        wait(.06)
end
game:service'Debris':AddItem(beam, 0.1)
end
 
function reload()
        if ammo == 25 then return end

        reloads = true
Tween(w2, CFrame.new(0, 0,-math.rad(30)))
 
local sounda = Instance.new("Sound", ch.Head)
sounda.SoundId = "http://roblox.com/asset/?id=149156263"
sounda.Volume = 1
sounda:Play()
                Tween(lw, CFrame.Angles(-0.5,0,0)*CFrame.Angles(1,0,0.1))
 
Tween(lw, CFrame.Angles(0, 0.2, 0.1))
Tween(rw, CFrame.new(-0.2,0,0)*CFrame.Angles(0,-0.1,0))
                wait(1)
                Tween(w2, CFrame.new(0, 0,0))
        Tween(rw, CFrame.Angles(0, 0, 0))
        Tween(lw, CFrame.Angles(0,0,0)* CFrame.new(0,0,0))
if not extendedmag then
                ammo = 25
else
	ammo = 60
end
                txt.Text = "Ammo "..ammo
        reloads = false
        end
 
 
mouse.KeyDown:connect(function(r)
	        if r:lower() == "z" then
ammotype = ammotype + 1
ammotypetext = "Switching to ammotype "..ammotype
if ammotype == 4 then ammotypetext = "Switching to ammotype 1" end
game:service("Chat"):Chat(game.Players.LocalPlayer.Character.Head, ammotypetext, Enum.ChatColor.Red)
if ammotype == 4 then
	ammotype = 1
end
	end
        if r:lower() == "r" then
                if not debounce then
                        debounce = true
                reload()
                debounce = false
                end
        end
        if r:lower() == "f" then
                pcall(function() if ch.Silencer ~= nil then for i = 1, 4 do ch.Silencer:destroy'' end end end)
pcall(function()
silencer = true
end)
                silencer = cp(ch,"Really black", Vector3.new(2,2,9))
                silencer.Name = "Silencer"
                cylsss = Instance.new("CylinderMesh", silencer)
                        cylsss.Scale = Vector3.new(0.2,0.8,0.2)
                weld(silencer, barrel2, CFrame.new(0, 0.4, 0))
        
        end
        if r:lower() == "q" then
                pcall(function()
	silencer = false
                ch.Silencer:destroy''
                end)
        end
end)
 
mouse.Button1Down:connect(function()
        if not reloads then
	shooting = true
                while shooting do
		wait(0.2)
	   if ammo <=60 and ammo>0 then
	ammo = ammo - 1
		                     txt.Text = "Ammo "..ammo
	if ammo == 0 then return end
	Spawn(function()
	shoot()
	end)
end
         end
end
end)
 
mouse.Button1Up:connect(function()
 shooting = false
end)

torsouse=true
torso = ch.Torso
 
bg2 = Instance.new("BodyGyro", torso)
bg2.P = 9999
bg2.D = 2000
bg2.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
 
for i = 0, 90, 10 do
bg2.cframe = CFrame.new(torso.Position,Vector3.new(mouse.hit.p.x,torso.Position.y,mouse.hit.p.z)) * CFrame.Angles(0, math.rad(i), 0)
wait()
end
coroutine.wrap(function()
while torsouse do
bg2.cframe = CFrame.new(torso.Position,Vector3.new(mouse.hit.p.x,torso.Position.y,mouse.hit.p.z)) 
game:service'RunService'.Stepped:wait()
end
end)()