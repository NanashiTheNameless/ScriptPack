--Knight Suit Gifted by Rosemarijohn2, Regular Script! 
 
name = "luxulux"
player = game.Players[name]
char = player.Character
 
meow = char:GetChildren()
 
for i=1, #meow do
 
if meow[i].className == "Part" then
 
meow[i].Transparency = 1
 
end
 
end
 
char.Head.Transparency = 0
hopper = Instance.new("HopperBin")
hopper.Parent = player.Backpack
hopper.Name = "Attack"
script.Parent = hopper
 
 
rleg = char["Right Leg"]
lleg = char["Left Leg"]
rarm = char["Right Arm"]
larm = char["Left Arm"]
torso = char.Torso
head = char.Head
 
neck = torso.Neck
ne = torso.Neck.C0
 
armco = "Bright red"
legco = "Medium stone grey"
torsoco = "Dark grey"
 
suit = Instance.new("Model")
suit.Parent = char
suit.Name = "suu"
 
char.Humanoid.MaxHealth = 150
wait(0.05)
char.Humanoid.Health = 150
 
--Boots
sho1 = Instance.new("Part")
sho1.Parent = suit
sho1.formFactor = "Symmetric"
sho1.Size = Vector3.new(1,1,2)
sho1.TopSurface = 0
sho1.BottomSurface = 0
sho1.BrickColor = BrickColor.new(legco)
sho1.CFrame = rleg.CFrame * CFrame.new(0,-0.6, 0.4)
sho1.CanCollide = false
sho1.Locked = true
mesh1 = Instance.new("SpecialMesh")
mesh1.MeshType = "Brick"
mesh1.Parent = sho1
mesh1.Scale = Vector3.new(1.2,0.75,0.8)
sho2 = sho1:clone()
sho2.Parent = suit
sho2.CFrame = lleg.CFrame * CFrame.new(0,-0.6,0.4)
sho3 = sho1:clone()
sho3.Size = Vector3.new(1,1,1)
sho3.Parent = suit
sho3.Mesh.Scale = Vector3.new(1.1,0.7,1.1)
sho4 = sho3:clone()
sho4.Parent = suit
sho1:breakJoints()
sho2:breakJoints()
sho3:breakJoints()
sho4:breakJoints()
shoo1 = Instance.new("Part")
shoo1.Parent = suit
shoo1.formFactor = "Symmetric"
shoo1.Size = Vector3.new(1,1,1)
shoo1.TopSurface = 0
shoo1.BottomSurface = 0
shoo1.BrickColor = BrickColor.new(legco)
shoo1.CFrame = rleg.CFrame * CFrame.new(0,-0.6, 0.4)
shoo1.CanCollide = false
shoo1.Locked = true
mesh3 = Instance.new("SpecialMesh")
mesh3.MeshType = "Sphere"
mesh3.Parent = shoo1
mesh3.Scale = Vector3.new(1.25,0.8,0.9)
shoo2 = shoo1:clone()
shoo2.Parent = suit
shoo2.CFrame = lleg.CFrame * CFrame.new(0,-0.6,0.4)
shoo1:breakJoints()
shoo2:breakJoints()
sho5 = sho3:clone()
sho5.Parent = suit
sho5.Mesh.Scale = Vector3.new(1.02,1.5,1.02)
sho5.BrickColor = BrickColor.new(armco)
sho6 = sho5:clone()
sho6.Parent = suit
sho5:breakJoints()
sho6:breakJoints()
 
weld1 = Instance.new("Weld")
weld1.Parent = rleg
weld1.Part0 = weld1.Parent
weld1.Part1 = sho1
weld1.C1 = CFrame.new(0,0.7,0.25)
weld2 = Instance.new("Weld")
weld2.Parent = lleg
weld2.Part0 = weld2.Parent
weld2.Part1 = sho2
weld2.C1 = CFrame.new(0,0.7,0.25)
weld3 = Instance.new("Weld")
weld3.Parent = rleg
weld3.Part0 = weld3.Parent
weld3.Part1 = shoo1
weld3.C1 = CFrame.new(0,0.6,1)
weld4 = Instance.new("Weld")
weld4.Parent = lleg
weld4.Part0 = weld4.Parent
weld4.Part1 = shoo2
weld4.C1 = CFrame.new(0,0.6,1)
weld5 = Instance.new("Weld")
weld5.Parent = rleg
weld5.Part0 = weld5.Parent
weld5.Part1 = sho3
weld5.C1 = CFrame.new(0,0.2,0)
weld6 = Instance.new("Weld")
weld6.Parent = lleg
weld6.Part0 = weld6.Parent
weld6.Part1 = sho4
weld6.C1 = CFrame.new(0,0.2,0)
weld7 = Instance.new("Weld")
weld7.Parent = rleg
weld7.Part0 = weld7.Parent
weld7.Part1 = sho5
weld7.C1 = CFrame.new(0,-0.3,0)
weld8 = Instance.new("Weld")
weld8.Parent = lleg
weld8.Part0 = weld8.Parent
weld8.Part1 = sho6
weld8.C1 = CFrame.new(0,-0.3,0)
 
 
--Gloves
glo1 = Instance.new("Part")
glo1.Parent = suit
glo1.formFactor = "Symmetric"
glo1.Size = Vector3.new(1,1,1)
glo1.TopSurface = 0
glo1.BottomSurface = 0
glo1.BrickColor = BrickColor.new(armco)
glo1.CFrame = rarm.CFrame * CFrame.new(0,0,0)
glo1.CanCollide = false
glo1.Locked = true
me1 = Instance.new("SpecialMesh")
me1.MeshType = "Brick"
me1.Parent = glo1
me1.Scale = Vector3.new(1.1,0.8,1.1)
gloo1 = glo1:clone()
gloo1.Parent = suit
gloo1.Mesh.MeshType = "Sphere"
gloo1.Mesh.Scale = Vector3.new(1.35,0.8,1.35)
glo2 = glo1:clone()
glo2.Parent = suit
gloo2 = gloo1:clone()
gloo2.Parent = suit
gloo2:breakJoints()
glo2:breakJoints()
glo1:breakJoints()
gloo1:breakJoints()
glo3 = glo1:clone()
glo3.Parent = suit
glo3.Mesh.MeshType = "Wedge"
glo3.Mesh.Scale = Vector3.new(1.4,0.9,1.1)
glo3:breakJoints()
glo4 = glo1:clone()
glo4.Parent = suit
glo4.Mesh.MeshType = "Wedge"
glo4.Mesh.Scale = Vector3.new(1.4,0.9,1.1)
glo4:breakJoints()
glo5 = glo1:clone()
glo5.Parent = suit
glo5.Mesh.Scale = Vector3.new(1.02,1.6,1.02)
glo5.BrickColor = BrickColor.new(legco)
glo5:breakJoints()
glo6 = glo5:clone()
glo6.Parent = suit
glo6:breakJoints()
w1 = Instance.new("Weld")
w1.Parent = rarm
w1.Part0 = w1.Parent
w1.Part1 = glo1
w1.C1 = CFrame.new(0,0.5,0)
w2 = Instance.new("Weld")
w2.Parent = rarm
w2.Part0 = w2.Parent
w2.Part1 = gloo1
w2.C1 = CFrame.new(0,0.9,0)
w3 = Instance.new("Weld")
w3.Parent = larm
w3.Part0 = w3.Parent
w3.Part1 = glo2
w3.C1 = CFrame.new(0,0.5,0)
w4 = Instance.new("Weld")
w4.Parent = larm
w4.Part0 = w4.Parent
w4.Part1 = gloo2
w4.C1 = CFrame.new(0,0.9,0)
w5 = Instance.new("Weld")
w5.Parent = rarm
w5.Part0 = w5.Parent
w5.Part1 = glo3
w5.C1 = CFrame.fromEulerAnglesXYZ(2.8,1.6,0) * CFrame.new(0,-0.8,0)
w6 = Instance.new("Weld")
w6.Parent = larm
w6.Part0 = w6.Parent
w6.Part1 = glo4
w6.C1 = CFrame.fromEulerAnglesXYZ(2.8,-1.6,0) * CFrame.new(0,-0.8,0)
w7 = Instance.new("Weld")
w7.Parent = rarm
w7.Part0 = w7.Parent
w7.Part1 = glo5
w7.C1 = CFrame.new(0,-0.23,0)
w8 = Instance.new("Weld")
w8.Parent = larm
w8.Part0 = w8.Parent
w8.Part1 = glo6
w8.C1 = CFrame.new(0,-0.23,0)
 
 
 
--Torso
t1 = Instance.new("Part")
t1.Parent = suit
t1.formFactor = "Symmetric"
t1.Size = Vector3.new(2,2,1)
t1.TopSurface = 0
t1.BottomSurface = 0
t1.BrickColor = BrickColor.new(torsoco)
t1.CFrame = rarm.CFrame * CFrame.new(0,0,0)
t1.CanCollide = false
t1.Locked = true
t1.Anchored = false
t1:breakJoints()
m1 = Instance.new("SpecialMesh")
m1.MeshType = "Brick"
m1.Parent = t1
m1.Scale = Vector3.new(1.1,0.95,1.1)
t2 = t1:clone()
t2.Parent = suit
t2.Size = Vector3.new(1,1,1)
t2.Mesh.Scale = Vector3.new(0.7,1.1,1.1)
t2:breakJoints()
t3 = t2:clone()
t3.Parent = suit
t3:breakJoints()
 
wt1 = Instance.new("Weld")
wt1.Parent = torso
wt1.Part0 = wt1.Parent
wt1.Part1 = t1
wt1.C1 = CFrame.new(0,0.1,0)
wt2 = Instance.new("Weld")
wt2.Parent = torso
wt2.Part0 = wt2.Parent
wt2.Part1 = t2
wt2.C1 = CFrame.new(0.75,-0.55,0)
wt3 = Instance.new("Weld")
wt3.Parent = torso
wt3.Part0 = wt3.Parent
wt3.Part1 = t3
wt3.C1 = CFrame.new(-0.75,-0.55,0)
 
--Helmet
helmme = "51fb17ba583ccba6b5c6fbbb16a2dd55"
helmte = "Clear"
scal = Vector3.new(1.25,1.6,1.3)
wepo = Vector3.new(0,-0.5, 0)
 
he = Instance.new("Part")
he.Parent = suit 
he.Name = "Handle"
he.formFactor = "Symmetric"
he.Size = Vector3.new(1,1,1)
he.CanCollide = false
he.BrickColor = BrickColor.new("Black")
he.CFrame = head.CFrame
he.Locked = true
he:BreakJoints()
megh = Instance.new("SpecialMesh")
megh.Parent = he
megh.MeshType = "FileMesh"
megh.MeshId = helmme
megh.TextureId = helmte
megh.Scale = scal
print("Mesh")
 
wt3g = Instance.new("Weld")
wt3g.Parent = head
wt3g.Part0 = wt3g.Parent
wt3g.Part1 = he
wt3g.C1 = CFrame.new(wepo)
 
brick1 = Instance.new("Part")
brick1.Parent = char
brick1.formFactor = "Symmetric"
brick1.Size = Vector3.new(1,1,1)
brick1.CFrame = player.Character.Torso.CFrame * CFrame.new(-1.5,0.5,0)
brick1.Shape = "Ball"
brick1.CanCollide = false
brick1.Transparency = 1
brick1.BrickColor = BrickColor.new(21)
brick1.Locked = true
mesh1 = Instance.new("SpecialMesh")
mesh1.Parent = brick1
mesh1.MeshType = "Sphere"
mesh1.Scale = Vector3.new(1.4,1.4,1.4)
brick2 = Instance.new("Part")
brick2.Parent = char
brick2.formFactor = "Symmetric"
brick2.Size = Vector3.new(1,1,1)
brick2.CFrame = player.Character.Torso.CFrame * CFrame.new(1.5,0.5,0)
brick2.Shape = "Ball"
brick2.CanCollide = false
brick2.Transparency = 1
brick2.Locked = true
mesh2 = Instance.new("SpecialMesh")
mesh2.Parent = brick2
mesh2.MeshType = "Sphere"
mesh2.Scale = Vector3.new(1.4,1.4,1.4)
brick1:breakJoints()
brick2:breakJoints()
wads = Instance.new("Weld")
wads.Parent = char.Torso
wads.Part0 = wads.Parent
wads.Part1 = brick1
wads.C1 = CFrame.new(-1.5,-0.5,0)
wads2 = Instance.new("Weld")
wads2.Parent = char.Torso
wads2.Part0 = wads2.Parent
wads2.Part1 = brick2
wads2.C1 = CFrame.new(1.5,-0.5,0)
 
rightorigin = CFrame.fromEulerAnglesXYZ(-1.55,-0.2,-0.3) * CFrame.new(0,0,0.6)
leftorigin = CFrame.fromEulerAnglesXYZ(0,0.9,0.5) * CFrame.new(0,0.5,0)
 
right = Instance.new("Weld")
left = Instance.new("Weld")
 
baseshield = Instance.new("Part")
baseshield.formFactor = "Symmetric"
baseshield.Size = Vector3.new(1,3,2)
baseshield.BrickColor = BrickColor.new("Bright red")
baseshield.TopSurface = 0
baseshield.BottomSurface = 0
baseshield.Parent = game.Lighting
baseshield.CanCollide = false
baseshield.Locked = true
basemesh = Instance.new("SpecialMesh")
basemesh.Parent = baseshield
basemesh.MeshType = "Brick"
basemesh.Scale = Vector3.new(0.4,1.3,1.3)
basedecor = baseshield:clone()
basedecor.Parent = game.Lighting
basedecor.BrickColor = BrickColor.new("Medium stone grey")
basedecor.Mesh.Scale = Vector3.new(0.41,1.12,1.12)
basedecor.CanCollide = false
basedecor.Locked = true
baseweld = Instance.new("Weld")
baseweld.Parent = larm
baseweld.Part0 = nil
baseweld.Part1 = nil
baseweld.C1 = CFrame.fromEulerAnglesXYZ(0,0,-0.5) * CFrame.new(0.8,0.5,0)
decweld = Instance.new("Weld")
decweld.Parent = baseshield
decweld.Part0 = nil
decweld.Part1 = nil
decweld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
 
sh1 = Instance.new("Part")
sh1.Parent = game.Lighting
sh1.formFactor = "Symmetric"
sh1.Size = Vector3.new(1,1,1)
sh1.BrickColor = BrickColor.new("Black")
sh1.TopSurface = 0
sh1.BottomSurface = 0
sh1.CanCollide = false
sh1.Locked = true
swmesh1 = Instance.new("SpecialMesh")
swmesh1.Parent = sh1
swmesh1.MeshType = "Head"
swmesh1.Scale = Vector3.new(0.5,1.7,0.5)
 
sh2 = Instance.new("Part")
sh2.Parent = game.Lighting
sh2.formFactor = "Symmetric"
sh2.Size = Vector3.new(1,1,1)
sh2.BrickColor = BrickColor.new("Black")
sh2.TopSurface = 0
sh2.BottomSurface = 0
sh2.CanCollide = false
sh2.Locked = true
swmesh2 = Instance.new("SpecialMesh")
swmesh2.Parent = sh2
swmesh2.MeshType = "Brick"
swmesh2.Scale = Vector3.new(0.8,0.55,1.6)
 
sh3 = Instance.new("Part")
sh3.Parent = game.Lighting
sh3.formFactor = "Symmetric"
sh3.Size = Vector3.new(1,3,1)
sh3.BrickColor = BrickColor.new("Medium stone grey")
sh3.TopSurface = 0
sh3.BottomSurface = 0
sh3.CanCollide = false
sh3.Locked = true
sh3.Name = "Handle"
swmesh3 = Instance.new("SpecialMesh")
swmesh3.Parent = sh3
swmesh3.MeshType = "Brick"
swmesh3.Scale = Vector3.new(0.2,1.2,0.8)
 
sh4 = Instance.new("Part")
sh4.Parent = game.Lighting
sh4.formFactor = "Symmetric"
sh4.Size = Vector3.new(1,1,1)
sh4.BrickColor = BrickColor.new("Medium stone grey")
sh4.TopSurface = 0
sh4.BottomSurface = 0
sh4.CanCollide = false
sh4.Locked = true
swmesh4 = Instance.new("SpecialMesh")
swmesh4.Parent = sh4
swmesh4.MeshType = "Wedge"
swmesh4.Scale = Vector3.new(0.2,0.6,0.4)
 
sh5 = sh4:clone()
sh5.Parent = game.Lighting
 
 
swordorigin = CFrame.fromEulerAnglesXYZ(1.55,0,0) * CFrame.new(0,1.4,0)
 
swow1 = Instance.new("Weld")
swow1.Parent = rarm
swow1.Part0 = nil
swow1.Part1 = nil
swow1.C1 = swordorigin
 
swow2 = Instance.new("Weld")
swow2.Parent = sh1
swow2.Part0 = nil
swow2.Part1 = nil
swow2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.8,0)
 
swow3 = Instance.new("Weld")
swow3.Parent = sh2
swow3.Part0 = nil
swow3.Part1 = nil
swow3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-2,0)
 
swow4 = Instance.new("Weld")
swow4.Parent = sh3
swow4.Part0 = nil
swow4.Part1 = nil
swow4.C1 = CFrame.fromEulerAnglesXYZ(0,3.1,0) * CFrame.new(0,-2.037,-0.194)
 
swow5 = Instance.new("Weld")
swow5.Parent = sh3
swow5.Part0 = nil
swow5.Part1 = nil
swow5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-2.037,0.194)
 
screen = Instance.new("ScreenGui")
screen.Parent = player.PlayerGui
screen.Name = "DmgOMeter"
dmg = Instance.new("TextLabel")
dmg.Parent = screen
dmg.Size = UDim2.new(0,50,0,18)
dmg.Position = UDim2.new(0,20,0,150)
dmg.Text = 0
dmg.FontSize = "Size11"
dmg.BackgroundColor3 = Color3.new(1,0.5,0)
dmg.TextColor3 = Color3.new(0,0,0)
dmg.Visible = false
tex = Instance.new("TextLabel")
tex.Parent = dmg
tex.Size = UDim2.new(0,120,0,18)
tex.Position = UDim2.new(0,0,0,-18)
tex.Text = "Dmg               Rage"
tex.FontSize = "Size10"
tex.BackgroundColor3 = Color3.new(1,0.2,0.1)
tex.TextColor3 = Color3.new(0,0,0)
rage = 200
raa = Instance.new("TextLabel")
raa.Parent = dmg
raa.Size = UDim2.new(0,50,0,18)
raa.Position = UDim2.new(0,70,0,0)
raa.Text = rage
raa.FontSize = "Size11"
raa.BackgroundColor3 = Color3.new(1,0.2,1)
raa.TextColor3 = Color3.new(0,0,0)
raa.Visible = true
pos = 0
pos2 = 0
 
enabd = true
clash = false
lolol = false
 
local function kill(hit)
        if enabd == true then return end
        if lolol == true then return end
        lolol = true
        local hum = hit.Parent:findFirstChild("Humanoid")
        if hum ~= nil then
                local dam = math.random(2,10)
                hum.Health = hum.Health - dam
                dmg.Text = dmg.Text + dam
                pos = pos + 20
                local damgui = Instance.new("TextLabel")
                damgui.Parent = dmg
                damgui.Size = UDim2.new(0,30,0,18)
                damgui.Position = UDim2.new(0,0,0,pos)
                damgui.Text = dam
                damgui.FontSize = "Size10"
                damgui.BackgroundColor3 = Color3.new(1,0.05,0.25)
                damgui.TextColor3 = Color3.new(0,0,0)
                local ragechance = math.random(1,2)
                if ragechance == 1 then
                        pos2 = pos2 + 20
                        rage = rage + math.floor(dam/2)
                        if rage >= 200 then
                                rage = 200
                        end
                        local rag = Instance.new("TextLabel")
                        rag.Parent = dmg
                        rag.Size = UDim2.new(0,30,0,18)
                        rag.Position = UDim2.new(0,50,0,pos)
                        rag.Text = math.floor(dam/2)
                        rag.FontSize = "Size10"
                        rag.BackgroundColor3 = Color3.new(0.8,0,1)
                        rag.TextColor3 = Color3.new(0,0,0)
                        raa.Text = rage
                        coroutine.resume(coroutine.create(function()
                                wait(0.5)
                                for i=1,10 do
                                        wait()
                                        rag.Transparency = rag.Transparency + 0.1
                                end
                                damgui:remove()
                                pos2 = pos2 - 20
                        end))
                end
                coroutine.resume(coroutine.create(function()
                        wait(0.5)
                        for i=1,10 do
                                wait()
                                damgui.Transparency = damgui.Transparency + 0.1
                        end
                        damgui:remove()
                        pos = pos - 20
                end))
        end
        wait(0.03)
        lolol = false
end
 
sh3.Touched:connect(kill)
 
holding = false
ehh = true
 
larm.Touched:connect(function(hit)
        if ehh == true then return end
        local hum = hit.Parent:findFirstChild("Humanoid")
        if hum ~= nil then
                local toro = hit.Parent:findFirstChild("Torso")
                if toro ~= nil then
                        ehh = true
                        holding = true
                        hum.PlatformStand = true
                        local wel = Instance.new("Weld")
                        wel.Parent = larm
                        wel.Part0 = wel.Parent
                        wel.Part1 = toro
                        wel.C1 = CFrame.Angles(-1.57,1.5,0) * CFrame.new(0,1.5,1)
                        rage = rage - 83
                        raa.Text = rage
                        for i=1, 27 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(0.04,0.07,0)
                                left.C1 = left.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
                                neck.C0 = neck.C0 * CFrame.Angles(-0.02,0.01,0)
                                wait(0.02)
                        end
                        for i=1, 5 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,-0.45,0)
                                left.C1 = left.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
                                neck.C0 = neck.C0 * CFrame.Angles(0.2,0.02,0.07)
                                wait(0.02)
                        end
                        wel.Part1 = nil
                        wel.Part0 = nil
                        wel.Parent = nil
                        wait()
                        wel:remove()
                        wait()
                        hum.Health = 0
                        wait(0.5)
                        for i=1, 8 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(-0.06,0.04,0.08)
                                left.C1 = left.C1 * CFrame.new(0,0,0) * CFrame.Angles(0.1,-0.1,0.09)
                                neck.C0 = neck.C0 * CFrame.Angles(-0.05,0,0)
                                wait(0.02)
                        end
                        left.C1 = leftorigin
                        right.C1 = rightorigin
                        neck.C0 = ne
                        swow1.C1 = swordorigin
                        hitting = false
                end
        end
end)
 
dumm = false
 
baseshield.Touched:connect(function(hit)
        if dumm == false then return end
        local hum = hit.Parent:findFirstChild("Humanoid")
        if hum ~= nil then
                hum.Health = hum.Health - 3
                local torr = hum.Parent:findFirstChild("Torso")
                if torr ~= nil then
                        hum.PlatformStand = true
                        torr.Velocity = baseshield.CFrame.lookVector * -50
                        torr.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        wait(0.5)
                        hum.PlatformStand = false
                end
        end
end)
 
hitting = false
 
function select(mouse, key)
        dmg.Visible = true
        right.Parent = brick1
        right.Part0 = right.Parent
        right.Part1 = rarm
        right.C1 = rightorigin
 
        baseweld.Part0 = baseweld.Parent
        baseweld.Part1 = baseshield
        baseshield.Parent = char
 
        swow1.Parent = rarm
        swow1.Part0 = swow1.Parent
        swow1.Part1 = sh1
        swow1.C1 = swordorigin
        sh1.Parent = char
 
        swow2.Part0 = swow2.Parent
        swow2.Part1 = sh2
        sh2.Parent = char
 
        swow3.Part0 = swow3.Parent
        swow3.Part1 = sh3
        sh3.Parent = char
 
        swow4.Part0 = swow4.Parent
        swow4.Part1 = sh4
 
        swow5.Part0 = swow5.Parent
        swow5.Part1 = sh5
        sh4.Parent = char
        sh5.Parent = char
 
        decweld.Part0 = decweld.Parent
        decweld.Part1 = basedecor
        basedecor.Parent = char
 
        left.Parent = brick2
        left.Part0 = left.Parent
        left.Part1 = larm
        left.C1 = leftorigin
 
        mouse.KeyDown:connect(function(key)
                if hitting == true then return end
                key = key:lower()
                if (key == "q") then
                        hitting = true
                        for i=1, 6 do
                                left.C1 = left.C1 * CFrame.new(0,0,0) * CFrame.Angles(-0.12,-0.1,-0.23)
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(-0.05,-0.03,0.06)
                                neck.C0 = neck.C0 * CFrame.Angles(-0.02,-0.045,-0.01)
                                wait(0.015)
                        end
                        for i=1, 6 do
                                left.C1 = left.C1 * CFrame.new(-0.08,0,0) * CFrame.Angles(-0.08,0.04,-0.14)
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(-0.05,-0.03,0.06)
                                neck.C0 = neck.C0 * CFrame.Angles(-0.03,-0.06,-0.02)
                                wait(0.015)
                        end
                        wait(0.1)
                        enabd = false
                        for i=1, 10 do
                                left.C1 = left.C1 * CFrame.new(0.02,0,0) * CFrame.Angles(0.05,0,0.2)
                                right.C1 = right.C1 * CFrame.new(0.03,0,0) * CFrame.Angles(0.19,-0.05,-0.045)
                                neck.C0 = neck.C0 * CFrame.Angles(0.1,0.05,0.04)
                                wait(0.015)
                        end
                        enabd = true
                        for i=1, 6 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(-0.24,0.01,0.03)
                                neck.C0 = neck.C0 * CFrame.Angles(-0.11,0.03,-0.07)
                                wait(0.015)
                        end
                        left.C1 = leftorigin
                        right.C1 = rightorigin
                        neck.C0 = ne
                        hitting = false
                elseif (key == "e") then
                        hitting = true
                        if rage >= 15 then
                        rage = rage - 15
                        raa.Text = rage
                        for i=1, 10 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,0.09,0.15)
                                left.C1 = left.C1 * CFrame.new(0,0,0) * CFrame.Angles(-0.05,0,-0.16)
                                neck.C0 = neck.C0 * CFrame.Angles(-0.02,-0.045,-0.01)
                                wait(0.015)
                        end
                        for i=1, 4 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(-0.03,0.2,0)
                                neck.C0 = neck.C0 * CFrame.Angles(-0.03,-0.06,-0.02)
                                swow1.C1 = swow1.C1 * CFrame.new(0,-0.25,0.4) * CFrame.Angles(0.3,0,0)
                                wait(0.015)
                        end
                        enabd = false
                        for i=1, 8 do
                                right.C1 = right.C1 * CFrame.new(0.03,0,0) * CFrame.Angles(-0.04,-0.34,0.06)
                                left.C1 = left.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,-0.23,0)
                                neck.C0 = neck.C0 * CFrame.Angles(0.1,0.05,0.04)
                                wait(0.015)
                        end
                        enabd = true
                        for i=1, 6 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(-0.12,0.13,-0.28)
                                left.C1 = left.C1 * CFrame.new(0,0,0) * CFrame.Angles(0.22,0.23,0.06)
                                neck.C0 = neck.C0 * CFrame.Angles(-0.07,0.02,-0.05)
                                swow1.C1 = swow1.C1 * CFrame.new(0,0.13,-0.4) * CFrame.Angles(-0.2,0,0)
                                wait(0.015)
                        end
                        left.C1 = leftorigin
                        right.C1 = rightorigin
                        neck.C0 = ne
                        swow1.C1 = swordorigin
                        hitting = false
                        else
                        hitting = false
                        end
                elseif (key == "r") then
                        hitting = true
                        if rage >= 30 then
                        rage = rage - 30
                        raa.Text = rage
                        for i=1, 10 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(-0.05,0.17,0)
                                left.C1 = left.C1 * CFrame.new(0,0,0) * CFrame.Angles(-0.05,0,-0.16)
                                neck.C0 = neck.C0 * CFrame.Angles(-0.02,-0.045,-0.01)
                                wait(0.015)
                        end
                        for i=1, 6 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,0,-0.24)
                                neck.C0 = neck.C0 * CFrame.Angles(-0.03,-0.06,-0.02)
                                swow1.C1 = swow1.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,-0.25,0)
                                wait(0.015)
                        end
                        enabd = false
                        for i=1, 6 do
                                right.C1 = right.C1 * CFrame.new(0.03,0,0) * CFrame.Angles(0.24,0,0)
                                left.C1 = left.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,-0.23,0)
                                neck.C0 = neck.C0 * CFrame.Angles(0.1,0.05,0.04)
                                wait(0.015)
                        end
                        coroutine.resume(coroutine.create(function()
                                local pa = Instance.new("Part")
                                pa.Parent = workspace
                                pa.formFactor = 0
                                pa.Size = Vector3.new(13,1,13)
                                pa.CFrame = torso.CFrame * CFrame.new(0.5,-3.51,-2)
                                pa.BrickColor = BrickColor.new("Bright red")
                                pa.Transparency = 0.1
                                pa.CanCollide = false
                                pa.Anchored = true
                                local mes = Instance.new("CylinderMesh")
                                mes.Parent = pa
                                mes.Scale = Vector3.new(0.6,1,0.6)
                                pa.Touched:connect(function(hit)
                                        local hum = hit.Parent:findFirstChild("Humanoid")
                                        if hum ~= nil then
                                                if hum.Parent.Name == name then return end
                                                hum.Health = hum.Health - math.random(8,14)
                                                hum.Sit = true
                                                coroutine.resume(coroutine.create(function()
                                                        wait(0.5)
                                                        hum.Sit = false
                                                end))
                                                local tor = hit.Parent:findFirstChild("Torso")
                                                if tor ~= nil then
                                                        tor.Velocity = Vector3.new(math.random(-20,20),55,math.random(-20,20))
                                                        tor.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                                                end
                                        end
                                end)
                                coroutine.resume(coroutine.create(function()
                                        for i=1, 10 do
                                                wait()
                                                mes.Scale = mes.Scale + Vector3.new(0.15,0,0.15)
                                                pa.Transparency = pa.Transparency + 0.1
                                                pa.CFrame = pa.CFrame * CFrame.new(0, 0.12, 0)
                                        end
                                        pa:remove()
                                end))
                        end))
                        enabd = true
                        wait(0.2)
                        for i=1, 6 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0.18)
                                left.C1 = left.C1 * CFrame.new(0,0,0) * CFrame.Angles(0.22,0.23,0.06)
                                neck.C0 = neck.C0 * CFrame.Angles(-0.07,0.02,-0.05)
                                swow1.C1 = swow1.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,0.25,0)
                                wait(0.015)
                        end
                        left.C1 = leftorigin
                        right.C1 = rightorigin
                        neck.C0 = ne
                        swow1.C1 = swordorigin
                        hitting = false
                        else
                        hitting = false
                        end
                elseif (key == "f") then
                        hitting = true
                        if rage >= 85 then
                        rage = rage - 2
                        raa.Text = rage
                        holding = false
                        for i=1, 7 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
                                left.C1 = left.C1 * CFrame.new(0,0,0) * CFrame.Angles(-0.15,-0.13,0.12)
                                neck.C0 = neck.C0 * CFrame.Angles(-0.02,-0.045,-0.01)
                                wait(0.02)
                        end
                        ehh = false
                        for i=1, 7 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
                                left.C1 = left.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,0.3,0)
                                neck.C0 = neck.C0 * CFrame.Angles(0,0,0)
                                wait(0.02)
                        end
                        ehh = true
                        if holding == false then
                        left.C1 = leftorigin
                        right.C1 = rightorigin
                        neck.C0 = ne
                        swow1.C1 = swordorigin
                        hitting = false
                        end
                        else
                        hitting = false
                        end
                elseif (key == "t") then
                        hitting = true
                        if rage >= 10 then
                        rage = rage - 10
                        raa.Text = rage
                        for i=1, 4 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
                                left.C1 = left.C1 * CFrame.new(0,0,0) * CFrame.Angles(-0.1,0.17,0)
                                neck.C0 = neck.C0 * CFrame.Angles(-0.02,-0.045,-0.01)
                                wait(0.02)
                        end
                        dumm = true
                        for i=1, 4 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
                                left.C1 = left.C1 * CFrame.new(0,0,0.2) * CFrame.Angles(-0.2,0.04,0)
                                neck.C0 = neck.C0 * CFrame.Angles(0,0,0)
                                wait(0.02)
                        end
                        dumm = false
                        for i=1, 6 do
                                right.C1 = right.C1 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
                                left.C1 = left.C1 * CFrame.new(0,0,-0.15) * CFrame.Angles(0.23,-0.1,0)
                                neck.C0 = neck.C0 * CFrame.Angles(0,0,0)
                                wait(0.02)
                        end
                        left.C1 = leftorigin
                        right.C1 = rightorigin
                        neck.C0 = ne
                        swow1.C1 = swordorigin
                        hitting = false
                        else
                        hitting = false
                        end
                end
        end)
end
 
function deselect()
        dmg.Visible = false
        baseweld.Part0 = nil
        baseweld.Part1 = nil
        right.Part0 = nil
        right.Part1 = nil
        left.Part0 = nil
        left.Part1 = nil
        baseshield.Parent = game.Lighting
        basedecor.Parent = game.Lighting
        sh1.Parent = game.Lighting
        sh2.Parent = game.Lighting
        sh3.Parent = game.Lighting
        sh4.Parent = game.Lighting
        sh5.Parent = game.Lighting
end
 
hopper.Selected:connect(select)
hopper.Deselected:connect(deselect)
 
function chat(msg)
        if msg == "nosuit" then
                local k = player.Character:GetChildren()
                for i=1, #k do
                        if k[i].Name == "suu" then
                                k[i]:remove()
                        end
                end
        end
end
 
player.Chatted:connect(chat)
 