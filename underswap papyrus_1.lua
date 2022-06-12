dot = false
des = false
local ChatService = game:GetService("Chat")
local player = game.Players.LocalPlayer
char = player.Character
hum = char.Humanoid
torso = hum.Torso
lig = Instance.new("PointLight",player.Character.Torso)
lig.Color=Color3.new(0,255,255)
m=player:GetMouse()
bb = Instance.new("BillboardGui",player.Character.Head)
bb.Enabled = true
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,200,0,50)
bb.StudsOffset = Vector3.new(0,1,0)
gui=Instance.new("TextBox",bb)
gui.Text = "* "
gui.Size = UDim2.new(0,133,0,45)
gui.Position=UDim2.new(0,57,0,-40)
gui.TextColor3 = Color3.new(255,255,255)
gui.BackgroundColor3=Color3.new(0,0,0)
gui.TextWrapped = true
gui.TextScaled = true
gui.TextXAlignment = "Left"
gui.TextYAlignment = "Top"
gui.Visible = false
gui.BorderColor3 = Color3.new(0,0,0)
 
gui1=Instance.new("TextButton",bb)
gui1.Position=UDim2.new(0,5,0,-43)
gui1.Size = UDim2.new(0,190,0,51)
 
gui1.TextColor3 = Color3.new(255,255,255)
gui1.BackgroundColor3=Color3.new(255,255,255)
 
 
 
 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end
 
 
gui1.Visible = false
img = Instance.new("ImageLabel",bb)
img.Size = UDim2.new(0,46,0,47)
img.Position = UDim2.new(0,10,0,-41)
img.Image = "rbxassetid://337271716" --388166921
img.BorderColor3 = Color3.new(0,0,0)
img.Visible = false
asd = Instance.new("Sound",player.Character.Torso)
asd.SoundId = "http://www.roblox.com/asset/?id = 358280695"
 
asd1 = Instance.new("Sound",player.Character.Torso)
asd1.SoundId = "http://www.roblox.com/asset/?id = 358280695"
 
asd2 = Instance.new("Sound",player.Character.Torso)
asd2.SoundId = "http://www.roblox.com/asset/?id = 435603951" --306370481
asd2.Looped = true
asd3 = Instance.new("Sound",player.Character.Torso)
asd3.SoundId = "http://www.roblox.com/asset/?id = 3345161611" --16014309"
asd3.Looped = true
asd4 = Instance.new("Sound",player.Character.Torso)
asd4.SoundId = "http://www.roblox.com/asset/?id = 388938813"
asd4.Looped = false
asd5 = Instance.new("Sound",player.Character.Torso)
asd5.SoundId = "http://www.roblox.com/asset/?id = 391549957"
asd5.Looped = true
dunkd = Instance.new("Sound",player.Character.Torso)
dunkd.SoundId = "http://www.roblox.com/asset/?id = 333078694"
dunkd.Looped = false
function play(play)
asd:Play()
asd1:Play()
end
eye = Instance.new("Part",player.Character)
eye.BrickColor = BrickColor.new("Toothpaste")
eye.Material = "Neon"
eye.FormFactor = 3
eye.Shape = "Ball"
eye.Size = Vector3.new(0.37,0.37,0.1)
weld = Instance.new("Weld",eye)
weld.Part0 = eye
weld.Part1 = player.Character.Head
weld.C0 = CFrame.new(0.1,-0.2,0.45)
eye.Transparency = 1
-- listen for their chatting
player.Chatted:connect(function(message)
a = string.len(message)
gui.Text = " "
gui.Visible = true
gui1.Visible = true
des = false
img.Visible = true
print(a)
if dot == false then
for i = 1,string.len(message) do wait(0.07)
gui.Text =gui.Text..message:sub(i,i)
 
play()
end
end
 
des = true
end)
m.KeyDown:connect(function(k)
if k == "g" then
asd2:Play()
--eye.Transparency = 0
end
end)
m.KeyDown:connect(function(k)
if k == "p" then
--eye.Transparency = 1
asd3:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "t" then
asd5:Play()
--eye.Transparency = 0
end
end)
m.KeyDown:connect(function(k)
if k == "r" then
--eye.Transparency = 0
asd4:Play()
end
end)
--[[m.KeyDown:connect(function(k)
if k == "q" then
--eye.Transparency = 1
asd5:Play()
end
end) ]]
m.KeyDown:connect(function(k)
if k == "z" then
 
img.Image = "rbxassetid://388167098"
end
end)
m.KeyDown:connect(function(k)
if k == "c" then
img.Image = "rbxassetid://337271716" --388166921
end
end)
m.KeyDown:connect(function(k)
if k == "n" then
img.Image = "rbxassetid://388166991"
end
end)
m.KeyDown:connect(function(k)
if k == "b" then
img.Image = "rbxassetid://378060690"
end
end)
m.KeyDown:connect(function(k)
if k == "m" then
img.Image = "rbxassetid://378609498"
end
end)
m.KeyDown:connect(function(k)
if k == "v" then
img.Image = "rbxassetid://399379490" --388166961
end
end)
m.KeyDown:connect(function(k)
if k == "h" then
img.Image = "rbxassetid://438755332" --378577428
end
end)
m.KeyDown:connect(function(k)
if k == "j" then
img.Image = "rbxassetid://436794687" --388167116
end
end)
m.KeyDown:connect(function(k)
if k == "l" then
img.Image = "rbxassetid://388167154"
print("You take your very last breath...")
asdd = Instance.new("Sound",player.Character.Torso)
asdd.SoundId = "http://www.roblox.com/asset/?id = 357417055"
asdd.Looped = false
spawn(function()
wait()
asdd:Play()
end)
wait(2)
asddd = Instance.new("Sound",player.Character.Torso)
asddd.SoundId = "http://www.roblox.com/asset/?id = 387183672"
asddd.Looped = false
spawn(function()
wait()
asddd:Play()
end)
wait(2)
asdded = Instance.new("Sound",player.Character.Torso)
asdded.SoundId = "http://www.roblox.com/asset/?id = 387187707"
asdded.Looped = false
spawn(function()
wait()
asdded:Play()
end)
char:BreakJoints()
end
end)
m.KeyDown:connect(function(k)
if k == "x" then
if des == true then
gui.Visible = false
gui.Text = " "
gui1.Visible = false
img.Visible = false
end
end
end)
m.KeyDown:connect(function(k)
if k == "f" then
asd3:Stop()
asd2:Stop()
asd4:Stop()
dunkd:Stop()
--eye.Transparency = 1
asd5:Stop()
end
end)
m.KeyDown:connect(function(k)
if k == "u" then
dunkd = Instance.new("Sound",player.Character.Torso)
dunkd.SoundId = "http://www.roblox.com/asset/?id = 333078694"
dunkd.Looped = false
dunkd:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "y" then
img.Image = "rbxassetid://378198656"
end
end)
--------------------------------------------------------

        pls = game:GetService'Players'
        rs = game:GetService'RunService'
        uinps = game:GetService'UserInputService'
        lp = pls.LocalPlayer
        mouse = lp:GetMouse()
        c = lp.Character
        human = c.Humanoid
        human.MaxHealth = 50
        wait()
        human.Health = 50
        c.Health:Destroy()
        active = true

--------------------------------------------------------

        Debounces = {
                AnimationCycles = 0;
                FPS = 0;
                scalingDamage = false;
                damageLevel = 0;
                attackNumber = 0;
                isAttacking = false;
                isMoving = false;
                isSprinting = false;
                isBoosting = false;
                isPassive = true;
                isTyping = false;
        }

--------------------------------------------------------

        numLerp = function(start, goal, alpha)
                return(((goal - start) * alpha) + start)
        end

        CFrameZero = function()
                return CFrame.new(Vector3.new())
        end

        rad = function(value)
                return math.rad(value)
        end

        CFAngles = function(Vector)
                return CFrame.Angles(rad(Vector.x),rad(Vector.y),rad(Vector.z))
        end

--------------------------------------------------------

        AnimStat = {
                lerpSpeed = .2;
                lerpSpeed2 = .35;
                lerpTween = 0;
        }

        Joints = {
                c.HumanoidRootPart.RootJoint;
                c.Torso.Neck;
                c.Torso['Left Shoulder'];
                c.Torso['Right Shoulder'];
                c.Torso['Left Hip'];
                c.Torso['Right Hip'];
        }

        JointTargets = {
                CFrameZero();
                CFrameZero();
                CFrameZero();
                CFrameZero();
                CFrameZero();
                CFrameZero();
        }

--------------------------------------------------------

        BodyColors = {
                HeadColor = BrickColor.new("Institutional white");
                LeftArmColor = BrickColor.new("Institutional white");
                RightArmColor = BrickColor.new("Institutional white");
                LeftLegColor = BrickColor.new("Institutional white");
                RightLegColor = BrickColor.new("Institutional white");
                TorsoColor = BrickColor.new("Mid gray");
        }

        Customs = {
                Face = "http://www.roblox.com/asset/?id=8560915";
                Shirt = "http://www.roblox.com/asset/?id=334781688";
                Pants = "http://www.roblox.com/asset/?id=335237283";
        }

--------------------------------------------------------

                for i,v in pairs (c:children()) do
                        if v.ClassName == "Hat" then
                                v:Destroy()
                        end
                end

c.Head.face.Texture="rbxassetid://416805762"

c.Head.BrickColor = BrickColor.new("Institutional white")
c.Torso.BrickColor = BrickColor.new("Institutional white")
c["Left Arm"].BrickColor = BrickColor.new("Institutional white")
c["Right Arm"].BrickColor = BrickColor.new("Institutional white")
c["Left Leg"].BrickColor = BrickColor.new("Institutional white")
c["Right Leg"].BrickColor = BrickColor.new("Institutional white")

c.Shirt.ShirtTemplate="http://www.roblox.com/asset/?id=264345597"
c.Pants.PantsTemplate="http://www.roblox.com/asset/?id=335237283"

        prepareCharacter = function()
                local transPoints = {
                        NumberSequenceKeypoint.new(0,.819,.0375),
                        NumberSequenceKeypoint.new(.207,.594,.0187),
                        NumberSequenceKeypoint.new(.4,.55,.031),
                        NumberSequenceKeypoint.new(.57,.619,.05),
                        NumberSequenceKeypoint.new(.76,.8,.0375),
                        NumberSequenceKeypoint.new(1,1,0),
                }
                local sizePoints = {
                        NumberSequenceKeypoint.new(0,.687,0),
                        NumberSequenceKeypoint.new(.111,.875,0),
                        NumberSequenceKeypoint.new(.327,1.19,0),
                        NumberSequenceKeypoint.new(.646,1.56,0),
                        NumberSequenceKeypoint.new(.805,1.37,0),
                        NumberSequenceKeypoint.new(.905,1.06,0),
                        NumberSequenceKeypoint.new(.968,.938,0),
                        NumberSequenceKeypoint.new(.984,1.13,0),
                        NumberSequenceKeypoint.new(1,1.62,0),
                }
                local Size = NumberSequence.new(sizePoints)
                local Transparency = NumberSequence.new(transPoints)
                rayModel = Instance.new("Model",c)
                boneModel = Instance.new("Model",c)
                efxBlock = Instance.new("Part",c)
                efxBlock.BrickColor = BrickColor.new("Cyan")
                efxBlock.Material = "Neon"
                efxBlock.FormFactor = "Custom"
                efxBlock.Transparency = .3
                efxBlock.Name="eyeblok"
                efxBlock.Size = Vector3.new(.3,.3,.3)
                local mesh = Instance.new("SpecialMesh",efxBlock)
                mesh.MeshType = Enum.MeshType.Sphere
                mesh.Scale = Vector3.new(1,1,1)
                light = Instance.new("PointLight",c.Head)
                light.Range = 10
                light.Color = Color3.new(0,200/255,1)
                light.Shadows = false
                local particles = Instance.new("ParticleEmitter",efxBlock)
                particles.Color = ColorSequence.new(Color3.new(0,0,225/255),Color3.new(20/255,190/255,205/255))
                particles.LightEmission = .95
                particles.Size = Size
                particles.Name = "Fire"
                particles.Transparency = Transparency
                particles.LockedToPart = true
                particles.VelocityInheritance = .5
                particles.LockedToPart = true
                particles.Rate = 70
                particles.Texture = "rbxassetid://56561915"
                particles.Lifetime = NumberRange.new(2,2)
                particles.RotSpeed = NumberRange.new(100,100)
                particles.Speed = NumberRange.new(7,7)
                script.Parent = efxBlock
                fire = particles
                local offset = Vector3.new(-0.11, .23, -0.5)
                local weld = Instance.new("Weld",c.Head)
                weld.Part0 = c.Head
                weld.Part1 = efxBlock
                weld.C0 = CFrame.new(offset) * CFrame.Angles(math.rad(-40),math.rad(40),math.rad(40))
                efxBlock.Parent = c
                local music = Instance.new("Sound",c)
                music.SoundId = "rbxassetid://316012176" --316012176
                music.Looped = true
                music.Volume = 0
                fight = music
                local music2 = Instance.new("Sound",c)
                music2.SoundId = "rbxassetid://316014309"
                music2.Looped = true
                music2.Volume = 0
                sans = music2
                pointGyro = Instance.new("BodyGyro",c.HumanoidRootPart)
                pointGyro.P = 1e7
                pointGyro.D = 1e3
                pointGyro.MaxTorque = Vector3.new(0,1e7,0)
                animator = c.Humanoid:FindFirstChild("Animator")
                if animator then
                        animator:Destroy()
                end
                c.Torso.roblox:Destroy()
                for i,v in pairs (c.Head:children()) do
                        if v.ClassName == "Sound" then
                                v:Destroy()
                        end
                end
                for i = 1,#Joints do
                        Joints[i].C1 = CFrame.new(Vector3.new())
                end
                human.WalkSpeed = 0
                human.JumpPower = 0
        end

        uinps.InputBegan:connect(function(InputObject)
                if InputObject.KeyCode == Enum.KeyCode.K and Debounces.isTyping == false then
                        Debounces.isPassive = not Debounces.isPassive
                end
        end)

        setJointCFrames = function(table)
                for i = 1,#table do
                        JointTargets[i] = table[i]
                end
                AnimationCycles = 0
        end

        setLerp = function(speed)
                AnimStat.lerpSpeed = speed
        end

        setTween = function(tween)
                AnimStat.lerpTween = tween
        end

        takeDamage = function(position,damage,distance,platformStand)
                for i,v in pairs (pls:children()) do
                        if v.ClassName == "Player" and v:FindFirstChild("Character") then
                                local torso = v.Character:FindFirstChild("Torso")
                                if torso and (torso.Position - position).magnitude < distance then
                                        v.Character.Humanoid:TakeDamage(damage)
                                        if platformStand == true then
                                                v.Character.PlatformStand = platformStand
                                        end
                                end
                        end
                end
        end

--------------------------------------------------------

        prepareCharacter()

--------------------------------------------------------

        spawn(function()
                local sine = 0
                while wait() do
                        pointGyro.CFrame = CFrame.new(Vector3.new(),(mouse.Hit.p - c.HumanoidRootPart.CFrame.p).unit * 100)
                        if Debounces.isAttacking == false and Debounces.isMoving == false and Debounces.isBoosting == false then
                                setLerp(.1)
                                if Debounces.isPassive == true then
                                        setJointCFrames({
                                                CFrame.new(Vector3.new(0, -0.901 + math.sin(tick() * 1.5)/45, 0)) * CFAngles(Vector3.new(-22.001, 0, 0));
                                                CFrame.new(Vector3.new(-0.001, 1.52 + math.sin(tick() * -1.5)/35, math.sin(tick() * 1.5)/35)) * CFAngles(Vector3.new(-10.861 + math.sin((-tick() + 2) * 1.5) * 5, 13.765, -1.658));
                                                CFrame.new(Vector3.new(-1.5, -0.1 + math.sin(tick() * 1.5)/15, -0.801)) * CFAngles(Vector3.new(44.999, 0, 0));
                                                CFrame.new(Vector3.new(1.7, 0.2 + math.sin(tick() * 1.5)/15, 0.199)) * CFAngles(Vector3.new(-15.001, -15.001, 15));
                                                CFrame.new(Vector3.new(-0.7, -1.8, 0.6)) * CFAngles(Vector3.new(-59.511, 3.84, 0.489));
                                                CFrame.new(Vector3.new(0.5, -1, -0.801)) * CFAngles(Vector3.new(14.999, -15, -0.001));
                                        })
                                else
                                        setJointCFrames({
                                                CFrame.new(Vector3.new(0, 0 + math.sin(tick() * 1.5)/25, 0)) * CFAngles(Vector3.new(0, 0, 0));
                                                CFrame.new(Vector3.new(0, 1.5 + math.sin(tick() * -1.5)/35, math.sin(tick() * 1.5)/35)) * CFAngles(Vector3.new(1.554 + math.sin((-tick() + 2) * 1.5) * 5, -0.001, -0.001));
                                                CFrame.new(Vector3.new(-1.06, -0.03 + math.sin(tick() * 1.5)/25, 0.449)) * CFAngles(Vector3.new(-29.511, 0, 29.51));
                                                CFrame.new(Vector3.new(1.059, -0.031 + math.sin(tick() * 1.5)/25, 0.449)) * CFAngles(Vector3.new(-29.511, -3.842, -29.511));
                                                CFrame.new(Vector3.new(-0.49, -2, -0.05/1.5)) * CFAngles(Vector3.new(0, 8.885, 0));
                                                CFrame.new(Vector3.new(0.49, -2, -0.05/1.5)) * CFAngles(Vector3.new(-0.001, -8.886, 0));
                                        })
                                end
                        elseif Debounces.isAttacking == false and Debounces.isMoving == true and Debounces.isBoosting == false then
                                sine = sine + math.rad(12)
                                human.WalkSpeed = 15
                                setLerp(.15)
                                setJointCFrames({
                                        CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, math.sin(sine) * -2.5, 0));
                                        CFrame.new(Vector3.new(0, 1.499, -0.04)) * CFAngles(Vector3.new(-5.676, -0.001 - math.sin(sine) * 3, -0.001));
                                        CFrame.new(Vector3.new(-1.97, 0 + math.sin(sine + .5)/20, 0.1 + math.sin(-sine)/2)/1.3) * CFAngles(Vector3.new(-5 + math.sin(sine) * 23, 0, 0));
                                        CFrame.new(Vector3.new(1.97, 0 - math.sin(sine + .5)/20, 0.1 + math.sin(sine)/2)/1.3) * CFAngles(Vector3.new(-5 + math.sin(-sine) * 23, 0, 0));
                                        CFrame.new(Vector3.new(-0.5, -1.93 - math.cos(sine)/8.7, 0.2 + math.sin(sine)/2)) * CFAngles(Vector3.new(-15 + math.sin(-sine) * 30, 0, 0));
                                        CFrame.new(Vector3.new(0.5, -1.93 + math.cos(sine)/8.7, 0.2 + math.sin(-sine)/2)) * CFAngles(Vector3.new(-15 + math.sin(sine) * 30, 0, 0));
                                })
                        end
                        if Debounces.scalingDamage == true then
                                takeDamage(c.HumanoidRootPart.Position,Debounces.damageLevel,8,true)
                        end
                end
        end)

        human.Changed:connect(function(prop)
                if prop == "MoveDirection" then
                        if human.MoveDirection.magnitude > .02 then
                                Debounces.isMoving = true
                        else
                                Debounces.isMoving = false
                        end
                end
        end)

        uinps.InputBegan:connect(function(InputObject)
                if InputObject.KeyCode == Enum.KeyCode.A and Debounces.isAttacking == false and Debounces.isSprinting == true and Debounces.isBoosting == false and Debounces.isPassive == true and Debounces.isTyping == false then
                        Debounces.isBoosting = true
                        Debounces.damageLevel = 10
                        Debounces.scalingDamage = true
                        local vel = Instance.new("BodyVelocity",c.HumanoidRootPart)
                        setLerp(.15)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -0.901, 0)) * CFAngles(Vector3.new(-22.001, 0, 20));
                                CFrame.new(Vector3.new(-0.001, 1.52, 0)) * CFAngles(Vector3.new(-10.372, 28.758, -1.837));
                                CFrame.new(Vector3.new(-0.7, -0.2, -0.801)) * CFAngles(Vector3.new(45, 0, 45));
                                CFrame.new(Vector3.new(1.7, 0.2, 0.199)) * CFAngles(Vector3.new(-15.001, -15.001, 45));
                                CFrame.new(Vector3.new(-0.3, -2, 0.2)) * CFAngles(Vector3.new(-11.283, -17.801, 19.495));
                                CFrame.new(Vector3.new(0.9, -2, -0.201)) * CFAngles(Vector3.new(15, -15, 29.999));
                        })
                        local boostSpeed = 250
                        local efx = Instance.new("Sound",c.Head)
                        efx.SoundId = "rbxassetid://200632875"
                        efx.Pitch = math.random(1100,1300)/1000
                        efx.Volume = .5
                        efx:Play()
                        spawn(function()
                                wait(5)
                                efx:Destroy()
                        end)
                        vel.Velocity = (c.HumanoidRootPart.Position - c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(1,0,0)).p).unit * boostSpeed
                        vel.P = 1e3
                        vel.MaxForce = Vector3.new(math.huge,0,math.huge)
                        wait(.15)
                        vel.P = 1000
                        vel.MaxForce = Vector3.new(3000,0,3000)
                        vel.Velocity = Vector3.new()
                        wait(.3)
                        setLerp(.3)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -0.901, 0)) * CFAngles(Vector3.new(-22.001, 0, 13));
                                CFrame.new(Vector3.new(-0.001, 1.52, 0)) * CFAngles(Vector3.new(-30.239, 42.47, 11.879));
                                CFrame.new(Vector3.new(-1.9, -0.2, -0.401)) * CFAngles(Vector3.new(44.999, 0, -45));
                                CFrame.new(Vector3.new(1.5, 0.4, 0.599)) * CFAngles(Vector3.new(-62.058, -21.088, -15.383));
                                CFrame.new(Vector3.new(-0.7, -1.8, 0.6)) * CFAngles(Vector3.new(-59.239, -26.158, -14.457));
                                CFrame.new(Vector3.new(0.5, -1, -0.801)) * CFAngles(Vector3.new(-0.505, -14.478, -18.968));
                        })
                        wait(.2)
                        vel:Destroy()
                        Debounces.damageLevel = 0
                        Debounces.scalingDamage = false
                        Debounces.isBoosting = false
                end
        end)

        uinps.InputBegan:connect(function(InputObject)
                if InputObject.KeyCode == Enum.KeyCode.D and Debounces.isAttacking == false and Debounces.isSprinting == true and Debounces.isBoosting == false and Debounces.isPassive == true and Debounces.isTyping == false then
                        Debounces.isBoosting = true
                        Debounces.damageLevel = 10
                        Debounces.scalingDamage = true
                        local vel = Instance.new("BodyVelocity",c.HumanoidRootPart)
                        setLerp(.15)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -0.901, 0)) * CFAngles(Vector3.new(-22.001, 0, -15));
                                CFrame.new(Vector3.new(-0.001, 1.52, 0)) * CFAngles(Vector3.new(-13.603, -45.662, -6.645));
                                CFrame.new(Vector3.new(-1.9, 0, -0.201)) * CFAngles(Vector3.new(31.935, -7.436, -60.853));
                                CFrame.new(Vector3.new(1.9, 0, 0.399)) * CFAngles(Vector3.new(-3.644, -23.448, 59.102));
                                CFrame.new(Vector3.new(-1.1, -1.8, 0)) * CFAngles(Vector3.new(-3.616, -11.936, -29.566));
                                CFrame.new(Vector3.new(0.1, -1.6, -0.601)) * CFAngles(Vector3.new(1.943, -7.181, -32.528));
                        })
                        local boostSpeed = 250
                        local efx = Instance.new("Sound",c.Head)
                        efx.SoundId = "rbxassetid://200632875"
                        efx.Pitch = math.random(1100,1300)/1000
                        efx.Volume = .5
                        efx:Play()
                        spawn(function()
                                wait(5)
                                efx:Destroy()
                        end)
                        vel.Velocity = (c.HumanoidRootPart.Position - c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(-1,0,0)).p).unit * boostSpeed
                        vel.P = 1e3
                        vel.MaxForce = Vector3.new(math.huge,0,math.huge)
                        wait(.15)
                        vel.P = 1000
                        vel.MaxForce = Vector3.new(3000,0,3000)
                        vel.Velocity = Vector3.new()
                        wait(.3)
                        setLerp(.3)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -0.901, 0)) * CFAngles(Vector3.new(-22.001, 0, -13));
                                CFrame.new(Vector3.new(-0.001, 1.52, 0)) * CFAngles(Vector3.new(-12.936, -46.206, -2.327));
                                CFrame.new(Vector3.new(-1.9, 0.2, -0.201)) * CFAngles(Vector3.new(45, 0, -60));
                                CFrame.new(Vector3.new(1.7, 0, -0.401)) * CFAngles(Vector3.new(14.035, -5.69, 35.342));
                                CFrame.new(Vector3.new(-0.3, -1.8, 0.6)) * CFAngles(Vector3.new(-55.479, -10.612, 15.729));
                                CFrame.new(Vector3.new(0.5, -1, -0.801)) * CFAngles(Vector3.new(14.999, -15, 14.999));
                        })
                        wait(.2)
                        vel:Destroy()
                        Debounces.damageLevel = 0
                        Debounces.scalingDamage = false
                        Debounces.isBoosting = false
                end
        end)

        uinps.InputBegan:connect(function(InputObject)
                if InputObject.KeyCode == Enum.KeyCode.W and Debounces.isAttacking == false and Debounces.isSprinting == true and Debounces.isBoosting == false and Debounces.isPassive == true and Debounces.isTyping == false then
                        Debounces.isBoosting = true
                        Debounces.damageLevel = 10
                        Debounces.scalingDamage = true
                        local vel = Instance.new("BodyVelocity",c.HumanoidRootPart)
                        setLerp(.15)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -0.901, 0)) * CFAngles(Vector3.new(-40.001, 0, 5));
                                CFrame.new(Vector3.new(-0.001, 1.429, 0.2)) * CFAngles(Vector3.new(25.141, -8.347, 0.878));
                                CFrame.new(Vector3.new(-1.5, 0, .101)) * CFAngles(Vector3.new(14.999, -0.001, 0));
                                CFrame.new(Vector3.new(1.7, 0.199, -0.401)) * CFAngles(Vector3.new(28.08, -0.358, 21.087));
                                CFrame.new(Vector3.new(-0.5, -1.8, 0.6)) * CFAngles(Vector3.new(-29.448, 3.57, -1.5));
                                CFrame.new(Vector3.new(0.499, -1.6, -0.401)) * CFAngles(Vector3.new(-0.505, -14.478, -3.968));
                        })
                        local boostSpeed = 250
                        local efx = Instance.new("Sound",c.Head)
                        efx.SoundId = "rbxassetid://200632875"
                        efx.Pitch = math.random(1100,1300)/1000
                        efx.Volume = .5
                        efx:Play()
                        spawn(function()
                                wait(5)
                                efx:Destroy()
                        end)
                        vel.Velocity = (c.HumanoidRootPart.Position - c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,1)).p).unit * boostSpeed
                        vel.P = 1e3
                        vel.MaxForce = Vector3.new(math.huge,0,math.huge)
                        wait(.15)
                        vel.P = 1000
                        vel.MaxForce = Vector3.new(3000,0,3000)
                        vel.Velocity = Vector3.new()
                        wait(.3)
                        setLerp(.3)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -0.901, 0)) * CFAngles(Vector3.new(-22.001, 40, -13));
                                CFrame.new(Vector3.new(-0.001, 1.52, 0)) * CFAngles(Vector3.new(-12.936, -46.206, -2.327));
                                CFrame.new(Vector3.new(-1.9, 0.2, -0.201)) * CFAngles(Vector3.new(45, 0, -60));
                                CFrame.new(Vector3.new(1.7, 0, -0.401)) * CFAngles(Vector3.new(14.035, -5.69, 35.342));
                                CFrame.new(Vector3.new(-0.3, -1.8, 0.6)) * CFAngles(Vector3.new(-55.479, -10.612, 15.729));
                                CFrame.new(Vector3.new(0.5, -1, -0.801)) * CFAngles(Vector3.new(14.999, -15, 14.999));
                        })
                        wait(.2)
                        vel:Destroy()
                        Debounces.damageLevel = 0
                        Debounces.scalingDamage = false
                        Debounces.isBoosting = false
                end
        end)

        uinps.InputBegan:connect(function(InputObject)
                if InputObject.KeyCode == Enum.KeyCode.S and Debounces.isAttacking == false and Debounces.isSprinting == true and Debounces.isBoosting == false and Debounces.isPassive == true and Debounces.isTyping == false then
                        Debounces.isBoosting = true
                        Debounces.damageLevel = 10
                        Debounces.scalingDamage = true
                        local vel = Instance.new("BodyVelocity",c.HumanoidRootPart)
                        setLerp(.15)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -.3, 0)) * CFAngles(Vector3.new(15, 0, 0));
                                CFrame.new(Vector3.new(-0.001, 1.52, -0.03)) * CFAngles(Vector3.new(-5.298, -1.305, -4.093));
                                CFrame.new(Vector3.new(-1.7, 0, -0.201)) * CFAngles(Vector3.new(12.112, -6.562, -16.939));
                                CFrame.new(Vector3.new(1.7, 0, -0.201)) * CFAngles(Vector3.new(8.817, 8.378, 20.465));
                                CFrame.new(Vector3.new(-0.7, -1.8, 0.2)) * CFAngles(Vector3.new(-14.432, 3.06, -2.373));
                                CFrame.new(Vector3.new(0.5, -1.8, -0.201)) * CFAngles(Vector3.new(-0.505, -14.478, -3.968));
                        })
                        local boostSpeed = 150
                        local boostSpeed = 250
                        local efx = Instance.new("Sound",c.Head)
                        efx.SoundId = "rbxassetid://200632875"
                        efx.Pitch = math.random(1100,1300)/1000
                        efx.Volume = .5
                        efx:Play()
                        spawn(function()
                                wait(5)
                                efx:Destroy()
                        end)
                        vel.Velocity = (c.HumanoidRootPart.Position - c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,-1)).p).unit * boostSpeed
                        vel.P = 1e3
                        vel.MaxForce = Vector3.new(math.huge,0,math.huge)
                        wait(.15)
                        vel.P = 1000
                        vel.MaxForce = Vector3.new(3000,0,3000)
                        vel.Velocity = Vector3.new()
                        wait(.3)
                        setLerp(.3)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -.5, 0)) * CFAngles(Vector3.new(4, 0, 0));
                                CFrame.new(Vector3.new(-0.001, 1.52, -0.03)) * CFAngles(Vector3.new(-20.081, 28.752, 3.598));
                                CFrame.new(Vector3.new(-1.7, 0.2, -0.601)) * CFAngles(Vector3.new(59.51, -3.841, -14.511));
                                CFrame.new(Vector3.new(1.7, 0.2, 0.399)) * CFAngles(Vector3.new(-47.597, -13.104, 17.887));
                                CFrame.new(Vector3.new(-0.7, -1.4, 0.2)) * CFAngles(Vector3.new(-44.477, 3.836, -0.524));
                                CFrame.new(Vector3.new(0.5, -1.4, -0.601)) * CFAngles(Vector3.new(-15.868, -12.953, -7.631));
                        })
                        wait(.2)
                        vel:Destroy()
                        Debounces.damageLevel = 0
                        Debounces.scalingDamage = false
                        Debounces.isBoosting = false
                end
        end)

        uinps.InputBegan:connect(function(InputObject)
                if InputObject.KeyCode == Enum.KeyCode.Q and Debounces.isAttacking == false and Debounces.isSprinting == false and Debounces.isPassive == true and Debounces.isTyping == false then
                        local isLooping = true
                        uinps.InputEnded:connect(function(InputObject2)
                                if InputObject2.KeyCode == Enum.KeyCode.Q then
                                        isLooping = false
                                end
                        end)
                        while true do
                                if isLooping == false then
                                        break
                                end
                                Debounces.attackNumber = Debounces.attackNumber + 1
                                local aimPos = mouse.Hit.p
                                local head = Instance.new("Part",c)
                                head.Size = Vector3.new(12,.2,12)
                                head.CanCollide = false
                                head.Anchored = true
                                head.Rotation = Vector3.new(0, 360, 0)
                                head.Transparency = 1
local mesh = Instance.new("SpecialMesh",head)
mesh.MeshId="rbxassetid://431908407"
mesh.Scale=Vector3.new(0.03, 0.03, 0.03)
local decal = Instance.new("Decal",head)
decal.Texture = "rbxassetid://441975828"
                                --[[for i = 1,2 do
                                        local decal = Instance.new("Decal",head)
                                        decal.Texture = "rbxassetid://323497117"
                                        if i == 1 then
                                                decal.Face = Enum.NormalId.Top
                                        else
                                                decal.Face = Enum.NormalId.Bottom
                                        end
                                end ]]
                                if Debounces.attackNumber%2 == 1 then
                                        head.CFrame = CFrame.new(c.Torso.CFrame:toWorldSpace(CFrame.new(8,8,.5)).p,aimPos)
                                else
                                        head.CFrame = CFrame.new(c.Torso.CFrame:toWorldSpace(CFrame.new(-8,8,.5)).p,aimPos)
                                end
                                spawn(function()
                                        local timer = 0
                                        while rs.RenderStepped:wait() do
                                                if timer >= 1.55 then
                                                        break
                                                end
                                                --head.CFrame = head.CFrame * CFrame.Angles(0,0,math.rad(timer * 25/(Debounces.FPS/60)))
                                                timer = timer + 1/30/(Debounces.FPS/60)
                                        end
                                        head.CFrame = CFrame.new(head.CFrame.p,aimPos)
                                        local ray = Ray.new(head.CFrame.p,(aimPos - head.CFrame.p).unit * 999)
                                        local hit, pos = workspace:FindPartOnRay(ray,c)
                                        local dis = (head.CFrame.p - pos).magnitude
                                        local rayPart = Instance.new("Part",rayModel)
                                        rayPart.Material = "Neon"
                                        rayPart.FormFactor = "Custom"
                                        rayPart.BrickColor = BrickColor.new(1,1,1)
                                        rayPart.Anchored = true
                                        rayPart.CanCollide = false
                                        rayPart.Size = Vector3.new(3,3,dis + 400)
                                        local rayCFrame = CFrame.new(head.CFrame.p + (aimPos - head.CFrame.p).unit * (dis/2 + 200),head.CFrame.p + (aimPos - head.CFrame.p).unit * dis * 2)
                                        rayPart.CFrame = rayCFrame
                                        head:Destroy()
                                end)
                                wait()
                                local s = Instance.new("Sound",head)
                                s.Volume = 1
                                s.SoundId = "rbxassetid://332223043"
                                s:Play()
                                wait(.04)
                        end
                end
        end)

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end

function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BC, Name, Size)
	local Part = Create("Part"){
		formFactor = FormFactor,
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BC)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end

function CreateWeld(Parent, P0, P1, c0, c1)
	local W = Create("Weld"){
		Parent = Parent,
		Part0 = P0,
		Part1 = P1,
		C0 = c0,
		C1 = c1,
	}
	return W
end


--For Fennybunny
        uinps.InputBegan:connect(function(InputObj)
                if InputObj.KeyCode == Enum.KeyCode.Z and Debounces.isAttacking == false and Debounces.isSprinting == false and Debounces.isPassive == true and Debounces.isTyping == false then
                        Debounces.isAttacking = true
                        local aimPos = c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,-999)).p
local head = Instance.new("Part",c)
head.Size = Vector3.new(18,.2,18)
head.CanCollide = false
head.Anchored = true
head.CFrame = CFrame.new(c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,-9)).p,aimPos)
head.Transparency = 1
                        setLerp(.1)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
                                CFrame.new(Vector3.new(0, 1.499, -0.09)) * CFAngles(Vector3.new(-11.676, -0.001, -0.001));
                                CFrame.new(Vector3.new(-1.7, 0, 0)) * CFAngles(Vector3.new(-12.808, -28.88, -21.502));
                                CFrame.new(Vector3.new(1.699, 1.2, 0.599)) * CFAngles(Vector3.new(-146.606, 16.571, 13.928));
                                CFrame.new(Vector3.new(-0.501, -1.601, 0.6)) * CFAngles(Vector3.new(-60, 0, -0.001));
                                CFrame.new(Vector3.new(0.5, -1.4, -0.4)) * CFAngles(Vector3.new(-15.001, -15.001, 0));
                        })
wait(0.03)
sb=Instance.new("Sound",c)
sb.SoundId = "rbxassetid://367453005"
sb.Looped = false
sb.Volume = 1.1
sb.Pitch=1
wait(0.01)
sb:Play()
head.CFrame = CFrame.new(head.CFrame.p,aimPos)
local bone = Ray.new(head.CFrame.p,(aimPos - head.CFrame.p).unit * 999)
local hit, pos = workspace:FindPartOnRay(bone,c)
local dis = (head.CFrame.p - pos).magnitude
local bonepart = Instance.new("Part",boneModel)
bonepart.Name="Punch"
local bonecframe = CFrame.new(head.CFrame.p + (aimPos - head.CFrame.p).unit * (dis/2 + 200),head.CFrame.p + (aimPos - head.CFrame.p).unit * dis * 2)
bonepart.CFrame = bonecframe
wait(0.01)
head:Remove()
wait()
                        wait(.75)
                        setLerp(.17)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -.5, 0)) * CFAngles(Vector3.new(-20, 15, 0));
                                CFrame.new(Vector3.new(0, 1.499, -0.09)) * CFAngles(Vector3.new(-11.676, 14.999, -0.001));
                                CFrame.new(Vector3.new(-1.7, 0, 0.2)) * CFAngles(Vector3.new(-33.928, -4.374, -38.76));
                                CFrame.new(Vector3.new(1.499, 0.4, -0.601)) * CFAngles(Vector3.new(74.335, 25.091, -6.155));
                                CFrame.new(Vector3.new(-0.501, -1.601, 0.6)) * CFAngles(Vector3.new(-45, 0, -0.001));
                                CFrame.new(Vector3.new(0.5, -1.8, -0.4)) * CFAngles(Vector3.new(-15, -15, 0));
                        })
                        wait(.5)
                        Debounces.isAttacking = false
                end
        end)

        uinps.InputBegan:connect(function(InputObj)
                if InputObj.KeyCode == Enum.KeyCode.E and Debounces.isAttacking == false and Debounces.isSprinting == false and Debounces.isPassive == true and Debounces.isTyping == false then
                        Debounces.isAttacking = true
                        local aimPos = c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,-999)).p
                        local head = Instance.new("Part",c)
                        head.Size = Vector3.new(18,.2,18)
                        head.CanCollide = false
                        head.Anchored = true
                        head.CFrame = CFrame.new(c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,-9)).p,aimPos)
                        head.Transparency = 1
                        for i = 1,2 do
                                local decal = Instance.new("Decal",head)
                                decal.Texture = "rbxassetid://323497117"
                                if i == 1 then
                                        decal.Face = Enum.NormalId.Top
                                else
                                        decal.Face = Enum.NormalId.Bottom
                                end
                        end
                        setLerp(.1)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
                                CFrame.new(Vector3.new(0, 1.499, -0.09)) * CFAngles(Vector3.new(-11.676, -0.001, -0.001));
                                CFrame.new(Vector3.new(-1.7, 0, 0)) * CFAngles(Vector3.new(-12.808, -28.88, -21.502));
                                CFrame.new(Vector3.new(1.699, 1.2, 0.599)) * CFAngles(Vector3.new(-146.606, 16.571, 13.928));
                                CFrame.new(Vector3.new(-0.501, -1.601, 0.6)) * CFAngles(Vector3.new(-60, 0, -0.001));
                                CFrame.new(Vector3.new(0.5, -1.4, -0.4)) * CFAngles(Vector3.new(-15.001, -15.001, 0));
                        })
                        spawn(function()
                                local timer = 0
                                while rs.RenderStepped:wait() do
                                        if timer >= 1.55/.8 then
                                                break
                                        end
                                        head.CFrame = head.CFrame * CFrame.Angles(0,0,math.rad(timer * 25/(Debounces.FPS/60)))
                                        timer = timer + 1/30/(Debounces.FPS/60)
                                end
                                head.CFrame = CFrame.new(head.CFrame.p,aimPos)
                                local ray = Ray.new(head.CFrame.p,(aimPos - head.CFrame.p).unit * 999)
                                local hit, pos = workspace:FindPartOnRay(ray,c)
                                local dis = (head.CFrame.p - pos).magnitude
                                local rayPart = Instance.new("Part",rayModel)
                                rayPart.Material = "Neon"
                                rayPart.FormFactor = "Custom"
                                rayPart.Name = "Punch"
                                rayPart.BrickColor = BrickColor.new(1,1,1)
                                rayPart.Anchored = true
                                rayPart.CanCollide = false
                                rayPart.Size = Vector3.new(28,28,dis + 400)
                                local rayCFrame = CFrame.new(head.CFrame.p + (aimPos - head.CFrame.p).unit * (dis/2 + 200),head.CFrame.p + (aimPos - head.CFrame.p).unit * dis * 2)
                                rayPart.CFrame = rayCFrame
                                head:Destroy()
                        end)
                        wait()
                        local s = Instance.new("Sound",head)
                        s.Volume = 1
                        s.SoundId = "rbxassetid://332223043"
                        s.Pitch = .8
                        s:Play()
                        wait(.75)
                        setLerp(.17)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -.5, 0)) * CFAngles(Vector3.new(-20, 15, 0));
                                CFrame.new(Vector3.new(0, 1.499, -0.09)) * CFAngles(Vector3.new(-11.676, 14.999, -0.001));
                                CFrame.new(Vector3.new(-1.7, 0, 0.2)) * CFAngles(Vector3.new(-33.928, -4.374, -38.76));
                                CFrame.new(Vector3.new(1.499, 0.4, -0.601)) * CFAngles(Vector3.new(74.335, 25.091, -6.155));
                                CFrame.new(Vector3.new(-0.501, -1.601, 0.6)) * CFAngles(Vector3.new(-45, 0, -0.001));
                                CFrame.new(Vector3.new(0.5, -1.8, -0.4)) * CFAngles(Vector3.new(-15, -15, 0));
                        })
                        wait(.5)
                        Debounces.isAttacking = false
                end
        end)
        
        reflect = function(d,n)
                local i, n = -1 * d.unit, n.unit
                local dot = n:Dot(i)
                return 2*dot*n - i
        end

        makeReflectionBeam = function(pos,look,isCrit)
                local ray = Ray.new(pos,look)
                local hit,hitpos,norm = workspace:FindPartOnRay(ray,c)
                local e = Instance.new("Part",rayModel)
                e.Anchored = true
                e.CanCollide = false
                e.BrickColor = BrickColor.new("White")
                e.Material = "Neon"
                e.FormFactor = "Custom"
                e.Size = Vector3.new(6,6,(pos - hitpos).magnitude)
                if isCrit == true then
                        e.Size = Vector3.new(16,16,(pos - hitpos).magnitude)
                        e.Name = "Punch"
                end
                e.CFrame = CFrame.new(pos + (hitpos - pos)/2, pos)
                local e = Instance.new("Sound",c)
                if isCrit == true then
                        e.Volume = .5
                else
                        e.Volume = .3
                        e.Pitch = 1.5
                end
                e.SoundId = "rbxassetid://200632875"
                e:Play()
                spawn(function()
                        wait(6)
                        e:Destroy()
                end)
                wait(.05)
                if hit ~= nil then
                        newDir = reflect(look.unit,norm,isCrit)
                        makeReflectionBeam(hitpos,newDir * 999,isCrit)
                end
        end

        uinps.InputBegan:connect(function(InputObject)
                if InputObject.KeyCode == Enum.KeyCode.Q and Debounces.isAttacking == false and Debounces.isSprinting == true and Debounces.isPassive == true and Debounces.isTyping == false then
                        local isLooping = true
                        uinps.InputEnded:connect(function(InputObject2)
                                if InputObject2.KeyCode == Enum.KeyCode.Q then
                                        isLooping = false
                                end
                        end)
                        while true do
                                if isLooping == false then
                                        break
                                end
                                Debounces.attackNumber = Debounces.attackNumber + 1
                                local aimPos = mouse.Hit.p
                                local head = Instance.new("Part",c)
                                head.Size = Vector3.new(12,.2,12)
                                head.CanCollide = false
                                head.Anchored = true
                                head.Transparency = 1
                                for i = 1,2 do
                                        local decal = Instance.new("Decal",head)
                                        decal.Texture = "rbxassetid://323497117"
                                        if i == 1 then
                                                decal.Face = Enum.NormalId.Top
                                        else
                                                decal.Face = Enum.NormalId.Bottom
                                        end
                                end
                                if Debounces.attackNumber%2 == 1 then
                                        head.CFrame = CFrame.new(c.Torso.CFrame:toWorldSpace(CFrame.new(8,8,.5)).p,aimPos)
                                else
                                        head.CFrame = CFrame.new(c.Torso.CFrame:toWorldSpace(CFrame.new(-8,8,.5)).p,aimPos)
                                end
                                spawn(function()
                                        local timer = 0
                                        while rs.RenderStepped:wait() do
                                                if timer >= 1.55 then
                                                        break
                                                end
                                                head.CFrame = head.CFrame * CFrame.Angles(0,0,math.rad(timer * 25/(Debounces.FPS/60)))
                                                timer = timer + 1/30/(Debounces.FPS/60)
                                        end
                                        head.CFrame = CFrame.new(head.CFrame.p,aimPos)
                                        head:Destroy()
                                        makeReflectionBeam(head.CFrame.p,(head.CFrame.p - aimPos).unit * -999,false)        
                                end)
                                
                                wait()
                                local s = Instance.new("Sound",head)
                                s.Volume = 1
                                s.SoundId = "rbxassetid://332223043"
                                s.Pitch = 1.02
                                s:Play()
                                wait(.2)
                        end
                end
        end)

        uinps.InputBegan:connect(function(InputObj)
                if InputObj.KeyCode == Enum.KeyCode.E and Debounces.isAttacking == false and Debounces.isSprinting == true and Debounces.isPassive == true and Debounces.isTyping == false then
                        Debounces.isAttacking = true
                        local aimPos = c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,-999)).p
                        local head = Instance.new("Part",c)
                        head.Size = Vector3.new(18,.2,18)
                        head.CanCollide = false
                        head.Anchored = true
                        head.CFrame = CFrame.new(c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,-9)).p,aimPos)
                        head.Transparency = 1
                        for i = 1,2 do
                                local decal = Instance.new("Decal",head)
                                decal.Texture = "rbxassetid://323497117"
                                if i == 1 then
                                        decal.Face = Enum.NormalId.Top
                                else
                                        decal.Face = Enum.NormalId.Bottom
                                end
                        end
                        setLerp(.1)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
                                CFrame.new(Vector3.new(0, 1.499, -0.09)) * CFAngles(Vector3.new(-11.676, -0.001, -0.001));
                                CFrame.new(Vector3.new(-1.7, 0, 0)) * CFAngles(Vector3.new(-12.808, -28.88, -21.502));
                                CFrame.new(Vector3.new(1.699, 1.2, 0.599)) * CFAngles(Vector3.new(-146.606, 16.571, 13.928));
                                CFrame.new(Vector3.new(-0.501, -1.601, 0.6)) * CFAngles(Vector3.new(-60, 0, -0.001));
                                CFrame.new(Vector3.new(0.5, -1.4, -0.4)) * CFAngles(Vector3.new(-15.001, -15.001, 0));
                        })
                        spawn(function()
                                local timer = 0
                                while rs.RenderStepped:wait() do
                                        if timer >= 1.55/.8 then
                                                break
                                        end
                                        head.CFrame = head.CFrame * CFrame.Angles(0,0,math.rad(timer * 25/(Debounces.FPS/60)))
                                        timer = timer + 1/30/(Debounces.FPS/60)
                                end
                                head.CFrame = CFrame.new(head.CFrame.p,aimPos)
                                head:Destroy()
                                makeReflectionBeam(head.CFrame.p,(head.CFrame.p - aimPos).unit * -999,true)
                        end)
                        wait()
                        local s = Instance.new("Sound",head)
                        s.Volume = 2
                        s.SoundId = "rbxassetid://332223043"
                        s.Pitch = .8
                        s:Play()
                        wait(.75)
                        setLerp(.17)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -.5, 0)) * CFAngles(Vector3.new(-20, 15, 0));
                                CFrame.new(Vector3.new(0, 1.499, -0.09)) * CFAngles(Vector3.new(-11.676, 14.999, -0.001));
                                CFrame.new(Vector3.new(-1.7, 0, 0.2)) * CFAngles(Vector3.new(-33.928, -4.374, -38.76));
                                CFrame.new(Vector3.new(1.499, 0.4, -0.601)) * CFAngles(Vector3.new(74.335, 25.091, -6.155));
                                CFrame.new(Vector3.new(-0.501, -1.601, 0.6)) * CFAngles(Vector3.new(-45, 0, -0.001));
                                CFrame.new(Vector3.new(0.5, -1.8, -0.4)) * CFAngles(Vector3.new(-15, -15, 0));
                        })
                        wait(.5)
                        Debounces.isAttacking = false
                end
        end)

        uinps.InputBegan:connect(function(InputObj)
                if InputObj.KeyCode == Enum.KeyCode.Slash then
                        local finishEvent = nil
                        Debounces.isTyping = true
                        finishEvent = uinps.InputBegan:connect(function(InputObj)
                                if InputObj.KeyCode == Enum.KeyCode.Return or InputObj.UserInputType == Enum.UserInputType.MouseButton1 then
                                        Debounces.isTyping = false
                                        finishEvent:disconnect()
                                end
                        end)
                end
        end)

        uinps.InputBegan:connect(function(InputObj)
                if InputObj.KeyCode == Enum.KeyCode.LeftShift then
                        Debounces.isSprinting = true
                end
        end)

        uinps.InputEnded:connect(function(InputObj)
                if InputObj.KeyCode == Enum.KeyCode.LeftShift then
                        Debounces.isSprinting = false
                end
        end)

        rs.RenderStepped:connect(function()
                Debounces.FPS = 1/rs.RenderStepped:wait()
                local FPSLerp = AnimStat.lerpSpeed/(Debounces.FPS/60)
                if Debounces.isPassive == false then
Debounces.isPassive = false
                        fire.Enabled = false
                        light.Range = 0
                        fight:Pause()
--fight:Stop()
                        sans:Resume()
                        efxBlock.Transparency = 1
                else
                        fire.Enabled = true
                        light.Range = 10
                        fight:Resume()
Debounces.isPassive = true
--[[fight:Play()
wait(1)
fight:Stop() ]]
                        sans:Pause()
                        efxBlock.Transparency = 0
                end
                for i,v in pairs (rayModel:children()) do
                        if v.Transparency >= 1 then
                                v:Destroy()
                        else
                                v.CanCollide = true
                                local parts = v:GetTouchingParts()
                                v.CanCollide = false
                                for i = 1,#parts do
                                        if parts[i].Parent:FindFirstChild("Humanoid") and parts[i].Parent ~= c and v.Name ~= "Punch" then
                                                parts[i].Parent.Humanoid:TakeDamage(.5/(Debounces.FPS/60))
                                        elseif parts[i].Parent:FindFirstChild("Humanoid") and parts[i].Parent ~= c and v.Name == "Punch" then
                                                parts[i].Parent.Humanoid:TakeDamage(3.1/(Debounces.FPS/60))
                                        end
                                end
                                v.Size = v.Size + Vector3.new(1/(Debounces.FPS/60),1/(Debounces.FPS/60),0)
                                v.Transparency = v.Transparency + .05/(Debounces.FPS/60)
                        end
                end
                for i = 1,#Joints do
                        Joints[i].C0 = Joints[i].C0:lerp(JointTargets[i], FPSLerp)
                end
                local sineval = math.sin(tick() * 2) * 3
                fire.Acceleration = Vector3.new(sineval,1,sineval)
                light.Brightness = math.sin(math.cos(tick() * 2) * 1.5)
        end)
if Debounces.isPassive==true then
                bso = Instance.new("Sound",c)
bso.Name="bso"
                c.bso.SoundId = "rbxassetid://429205230"
                c.bso.Looped = true
                c.bso.Volume = 100
wait(0.01)
c.bso:Play()
wait(1.26)
c.bso:Stop()
wait(0.02)
c.bso:Remove()
end

--[[if Debounces.isPassive==false then
c.bso:Stop()
c.bso:Remove()
end ]]

efxBlock=c.eyeblok
while true do
wait(0.15)
if active==true then
if efxBlock.BrickColor ~= BrickColor.new("New Yeller") then
efxBlock.BrickColor = BrickColor.new("New Yeller")
else
efxBlock.BrickColor = BrickColor.new("Bright orange")
end
end
end