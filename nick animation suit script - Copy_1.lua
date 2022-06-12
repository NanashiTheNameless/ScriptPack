plr = game:FindService'Players'.LocalPlayer
char = plr.Character
for i,v in pairs(plr:children()) do
        if v.Name == 'Coach' or v.Name == 'Rochelle' or v.Name == 'Ellis' or v.Name == 'Nick' then
                v:remove()
        end
end
if char:FindFirstChild'Animate' then
        char:FindFirstChild'Animate':remove()
        wait(0.1)
end
function ClearNotNeededStuff(parent)
        for i,v in pairs(parent:children()) do
                if v.ClassName == 'CharacterMesh' or v.ClassName == 'Hat' or v.ClassName == 'Shirt' or v.ClassName == 'Pants' or (v.ClassName == 'Decal' and v.Name ~= 'face') then
                        v:remove()
                else
                        ClearNotNeededStuff(v)
                end
        end
end
function getVelocity(p1,p2,speed)
        local dis=(p1-p2).magnitude
        if speed=="dis" then 
                if dis*6>100 then 
                        speed=dis*6 
                else 
                        speed=100 
                end 
        end
        local x=(p1.x-p2.x)/dis*speed
        local y=(p1.y-p2.y)/dis*speed
        local z=(p1.z-p2.z)/dis*speed
        return Vector3.new(-x,-y+10,-z)
end
ClearNotNeededStuff(char)
ControllerService = game:GetService("ControllerService")
Controllers = ControllerService:GetChildren()[1]
mouse = plr:GetMouse()
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
rootpart = char:findFirstChild("HumanoidRootPart")
backpack = plr:FindFirstChild'Backpack'
PlayerGui = plr:FindFirstChild'PlayerGui'
MainScreenGui = Instance.new("ScreenGui",PlayerGui)
MainFrame = Instance.new("Frame",MainScreenGui)
MainFrame.Size = UDim2.new(0.2, 0,0.1, 0)
MainFrame.Position = UDim2.new(0.79, 0,0.4, 0)
MainFrame.BorderSizePixel = 0
MainFrame.BackgroundColor3 = BrickColor.new'Institutional white'.Color
GunNameTextLabel = Instance.new("TextLabel",MainFrame)
GunNameTextLabel.BackgroundTransparency = 1
GunNameTextLabel.Size = UDim2.new(1,0,0.5,0)
GunNameTextLabel.Font = 'Legacy'
GunNameTextLabel.TextScaled = true
GunNameTextLabel.Text = 'Current weapon: None'
AmmoTextLabel = Instance.new("TextLabel",MainFrame)
AmmoTextLabel.BackgroundTransparency = 1
AmmoTextLabel.Size = UDim2.new(1,0,0.5,0)
AmmoTextLabel.Position = UDim2.new(0,0,0.5,0)
AmmoTextLabel.Font = 'Legacy'
AmmoTextLabel.TextScaled = true
AmmoTextLabel.Text = 'Ammo amount: No weapon'
pcall(function()
        game:FindService'Lighting':FindFirstChild'Pistol':Clone().Parent=backpack
end)
camera = workspace.CurrentCamera
local climbing = false
local rm = Instance.new("Motor", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
rm.Name = "Right Shoulder"

local lm = Instance.new("Motor", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
lm.Name = "Left Shoulder"

local rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
rlegm.Name = "Right Hip"

local llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
llegm.Name = "Left Hip"

neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)

rj.C0 = CFrame.new(0, -1.5, 0)
rj.C1 = CFrame.new(0, -1.5, 0)

rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
neckc0 = neck.C0
rootc0 = rj.C0

local angle = 0
local anglespeed = 8
local count = 0
local countspeed = 16
local action = 'none'
local lastaction = 'none'
local dancingtime = 0
local idletime = 0
local will_lay = false
local hmesh = head:FindFirstChild'Mesh'
hmesh:remove()
hmesh = Instance.new('SpecialMesh',head)
hmesh.Scale = Vector3.new(1.25, 1.25, 1.25)
hmesh.MeshType = 'Head'

local notUsedPlayers = {
        ['Nick'] = 'notused',
        ['Rochelle'] = 'notused',
        ['Coach'] = 'notused',
        ['Ellis'] = 'notused'
}
local availablePlayerNames = {'Nick','Rochelle','Coach','Ellis'}
function GetNotUsedPlayers()
        for i,v in pairs(game:FindService'Players':players()) do
                for j,k in pairs(notUsedPlayers) do
                        if v:FindFirstChild(j) then
                                notUsedPlayers[j] = 'used'
                        end
                end
        end
end
GetNotUsedPlayers()
local currentPlayer = nil
for i,v in pairs(availablePlayerNames) do
        if currentPlayer ~= nil then break end
        if notUsedPlayers[v] == 'notused' then
                currentPlayer = v
        end
end

local asd = Instance.new("StringValue",plr)
asd.Name = currentPlayer

pcall(function()
        head.face.Texture = 'rbxasset://textures/face.png'
end)

rbxutil = LoadLibrary'RbxUtility'
onToolSelected = rbxutil.CreateSignal()

ToolSelected = nil

for i,v in pairs(backpack:children()) do
        if v.ClassName == 'Tool' then
                if v:FindFirstChild'Handle' then
                        v.Equipped:connect(function()
                                onToolSelected:fire('selected',v)
                                ToolSelected = v
                        end)
                        v.Unequipped:connect(function()
                                onToolSelected:fire('unselected',v)
                                ToolSelected = nil
                        end)
                end
        end
end

backpack.ChildAdded:connect(function(what)
        if what.ClassName == 'Tool' then
                if what:FindFirstChild'Handle' then
                        what.Equipped:connect(function()
                                onToolSelected:fire('selected',what)
                                ToolSelected = what
                        end)
                        what.Unequipped:connect(function()
                                onToolSelected:fire('unselected',what)
                                ToolSelected = nil
                        end)
                end
        end
end)

currentShootConnection = nil
MaxAmmuntition = {} --ye, spell mistake, don't judge it

onToolSelected:connect(function(a,b)
        if a == 'selected' then
                if MaxAmmuntition[b.Name] == nil then
                        MaxAmmuntition[b.Name] = b:FindFirstChild'Ammo'.Value
                end
                GunNameTextLabel.Text = 'Current weapon: '..b.Name
                AmmoTextLabel.Text = 'Ammo amount: '..b:FindFirstChild'Ammo'.Value or 'Ammo amount: No ammo'
                currentShootConnection = b.Activated:connect(function()
                        if b:FindFirstChild'Ammo'.Value > 0 then
                                b:FindFirstChild'Ammo'.Value = b:FindFirstChild'Ammo'.Value-1
                                AmmoTextLabel.Text = 'Ammo amount: '..b:FindFirstChild'Ammo'.Value or 'Ammo amount: No ammo'
                                local bullet = Instance.new("Part",workspace)
                                bullet.Name = 'Bullet'
                                bullet.TopSurface = 0
                                bullet.BottomSurface = 0
                                bullet.FormFactor = 'Custom'
                                bullet.CFrame = b:FindFirstChild'Handle'.CFrame
                                bullet.CanCollide = false
                                bullet.Velocity = getVelocity(bullet.Position, mouse.Hit.p, 500)
                                local bulletmesh = b:FindFirstChild'BulletMesh':Clone()
                                bulletmesh.Parent=bullet
                                bullet.Touched:connect(function(toucher)
                                        if toucher.Parent:findFirstChild'Head' and toucher.Parent:findFirstChild'Torso' and toucher.Parent.Name ~= plr.Name then
                                                bullet:remove()
                                                for i,v in pairs(toucher.Parent:children()) do
                                                        if v.ClassName == 'Humanoid' then
                                                                if v.Health > 100 then 
                                                                        v.Health = 100 
                                                                else
                                                                        v.Health = v.Health - math.random(b:FindFirstChild'MinDamage'.Value,b:FindFirstChild'MaxDamage'.Value)
                                                                end
                                                        end
                                                end
                                        end
                                end)
                        else
                                action = 'reloading'
                        end
                end)
        else
                GunNameTextLabel.Text = 'Current weapon: None'
                AmmoTextLabel.Text = 'Ammo amount: No weapon'
                pcall(function()
                        currentShootConnection:disconnect()
                end)
        end
end)

local fakehead = head:clone()
fakehead.Parent = char
fakehead.TopSurface = 'SmoothNoOutlines'
fakehead.BottomSurface = 'SmoothNoOutlines'
fakehead.RightSurface = 'SmoothNoOutlines'
fakehead.LeftSurface = 'SmoothNoOutlines'
fakehead.FrontSurface = 'SmoothNoOutlines'
fakehead.BackSurface = 'SmoothNoOutlines'
fakehead.BrickColor = currentPlayer=='Rochelle' and BrickColor.new'Brown' or currentPlayer == 'Nick' and BrickColor.new'Pastel brown' or currentPlayer=='Ellis' and BrickColor.new'Pastel brown' or currentPlayer=='Coach' and BrickColor.new'Brown'
fakehead.Name = 'FakeHead'
head.Transparency = 1
local faketorso = torso:clone()
faketorso.Parent = char
faketorso.Name = 'FakeTorso'
faketorso.TopSurface = 'SmoothNoOutlines'
faketorso.BottomSurface = 'SmoothNoOutlines'
faketorso.RightSurface = 'SmoothNoOutlines'
faketorso.LeftSurface = 'SmoothNoOutlines'
faketorso.FrontSurface = 'SmoothNoOutlines'
faketorso.BackSurface = 'SmoothNoOutlines'
faketorso.BrickColor = currentPlayer=='Rochelle' and BrickColor.new'Hot pink' or currentPlayer == 'Nick' and BrickColor.new'Institutional white' or currentPlayer=='Ellis' and BrickColor.new'White' or currentPlayer=='Coach' and BrickColor.new'Medium green'
torso.Transparency = 1
local fakela = la:Clone()
fakela.Parent = char
fakela.TopSurface = 'SmoothNoOutlines'
fakela.BottomSurface = 'SmoothNoOutlines'
fakela.RightSurface = 'SmoothNoOutlines'
fakela.LeftSurface = 'SmoothNoOutlines'
fakela.FrontSurface = 'SmoothNoOutlines'
fakela.BackSurface = 'SmoothNoOutlines'
fakela.BrickColor = currentPlayer=='Rochelle' and BrickColor.new'Brown' or currentPlayer == 'Nick' and BrickColor.new'Institutional white' or currentPlayer=='Ellis' and BrickColor.new'Pastel brown' or currentPlayer=='Coach' and BrickColor.new'Brown'
fakela.Name = 'FakeLeft Arm'
la.Transparency = 1
local fakera = ra:Clone()
fakera.Parent = char
fakera.TopSurface = 'SmoothNoOutlines'
fakera.BottomSurface = 'SmoothNoOutlines'
fakera.RightSurface = 'SmoothNoOutlines'
fakera.LeftSurface = 'SmoothNoOutlines'
fakera.FrontSurface = 'SmoothNoOutlines'
fakera.BackSurface = 'SmoothNoOutlines'
fakera.BrickColor = currentPlayer=='Rochelle' and BrickColor.new'Brown' or currentPlayer == 'Nick' and BrickColor.new'Institutional white' or currentPlayer=='Ellis' and BrickColor.new'Pastel brown' or currentPlayer=='Coach' and BrickColor.new'Brown'
fakera.Name = 'FakeRight Arm'
ra.Transparency = 1
local fakerl = rl:Clone()
fakerl.Parent = char
fakerl.TopSurface = 'SmoothNoOutlines'
fakerl.BottomSurface = 'SmoothNoOutlines'
fakerl.RightSurface = 'SmoothNoOutlines'
fakerl.LeftSurface = 'SmoothNoOutlines'
fakerl.FrontSurface = 'SmoothNoOutlines'
fakerl.BackSurface = 'SmoothNoOutlines'
fakerl.BrickColor = currentPlayer=='Rochelle' and BrickColor.new'Black' or currentPlayer == 'Nick' and BrickColor.new'Institutional white' or currentPlayer=='Ellis' and BrickColor.new'Really black' or currentPlayer=='Coach' and BrickColor.new'Brick yellow'
fakerl.Name = 'FakeRight Leg'
rl.Transparency = 1
local fakell = ll:Clone()
fakell.Parent = char
fakell.TopSurface = 'SmoothNoOutlines'
fakell.BottomSurface = 'SmoothNoOutlines'
fakell.RightSurface = 'SmoothNoOutlines'
fakell.LeftSurface = 'SmoothNoOutlines'
fakell.FrontSurface = 'SmoothNoOutlines'
fakell.BackSurface = 'SmoothNoOutlines'
fakell.BrickColor = currentPlayer=='Rochelle' and BrickColor.new'Black' or currentPlayer == 'Nick' and BrickColor.new'Institutional white' or currentPlayer=='Ellis' and BrickColor.new'Really black' or currentPlayer=='Coach' and BrickColor.new'Brick yellow'
fakell.Name = 'FakeRight Leg'
ll.Transparency = 1

pcall(function()
        head.face:remove()
end)

local lol = Instance.new("BillboardGui",fakehead)
lol.StudsOffset = Vector3.new(0,2,0)
lol.Size = UDim2.new(8,0,7,0)
local lol2 = Instance.new("TextLabel",lol)
lol2.Size = UDim2.new(1,0,1,0)
lol2.Text = currentPlayer
lol2.TextColor = currentPlayer=='Nick' and BrickColor.new("Really blue") or currentPlayer=='Ellis' and BrickColor.new('Light blue') or currentPlayer=='Rochelle' and BrickColor.new('Hot pink') or currentPlayer=='Coach' and BrickColor.new("Brown")
lol2.BackgroundTransparency = 1
lol2.TextScaled = false
lol2.Font = 'Legacy'
lol2.FontSize = 'Size24'

local fakeweld = Instance.new("Weld", fakehead)
fakeweld.Part0 = head
fakeweld.Part1 = fakehead
local fakeweld2 = Instance.new("Weld", faketorso)
fakeweld2.Part0 = torso
fakeweld2.Part1 = faketorso
local fakeweld3 = Instance.new("Weld", fakera)
fakeweld3.Part0 = ra
fakeweld3.Part1 = fakera
local fakeweld4 = Instance.new("Weld", fakela)
fakeweld4.Part0 = la
fakeweld4.Part1 = fakela
local fakeweld5 = Instance.new("Weld", fakerl)
fakeweld5.Part0 = rl
fakeweld5.Part1 = fakerl
local fakeweld6 = Instance.new("Weld", fakell)
fakeweld6.Part0 = ll
fakeweld6.Part1 = fakell

if currentPlayer == 'Ellis' then
        local a = Instance.new("Hat",char)
        a.Name = 'Cap'
        a.AttachmentUp = Vector3.new(0, 1, 0)
        a.AttachmentRight = Vector3.new(1, 0, 0)
        a.AttachmentPos = Vector3.new(0, 0, 0)
        a.AttachmentForward = Vector3.new(0, 0, -1)
        local b = Instance.new("Part",a)
        b.Name = 'Handle'
        local c = Instance.new("SpecialMesh",b)
        c.TextureId = 'http://www.roblox.com/asset/?id=17424198'
        c.Name = 'Hat mesh'
        c.Scale = Vector3.new(1.05, 1.05, 1.05)
        c.MeshType = 'FileMesh'
        c.MeshId = 'http://www.roblox.com/asset/?id=16190466'
elseif currentPlayer == 'Nick' then
        local a = Instance.new("Hat",char)
        a.Name = 'Tie'
        a.AttachmentPos = Vector3.new(0, 1.9, 0.55)
        local b = Instance.new("Part",a)
        b.Name = 'Handle'
        b.BrickColor = BrickColor.new'Really blue'
        local c = Instance.new("SpecialMesh",b)
        c.Scale = Vector3.new(1.4, 1.2, 1.4)
        c.MeshType = 'FileMesh'
        c.MeshId = 'http://www.roblox.com/asset/?id=28463033'
        c.TextureId = ''
        local a2 = Instance.new("Hat",char)
        a2.Name = 'Hair'
        a2.AttachmentPos = Vector3.new(0,0,0)
        local b2 = Instance.new("Part",a2)
        b2.Name = 'Handle'
        b2.BrickColor = BrickColor.new'Really black'
        local c2 = Instance.new("SpecialMesh",b2)
        c2.MeshType = 'FileMesh'
        c2.MeshId = 'http://www.roblox.com/asset/?id=1095708'
        c2.Scale = Vector3.new(1, 1, 1.9)
elseif currentPlayer == 'Rochelle' then
        local a = Instance.new("Hat",char)
        a.AttachmentPos = Vector3.new(0,0.3,0.1)
        a.Name = 'Hair'
        local b = Instance.new("Part",a)
        b.Name = 'Handle'
        b.BrickColor = BrickColor.new'Really black'
        local c = Instance.new("SpecialMesh",b)
        c.MeshType = 'FileMesh'
        c.MeshId = 'http://www.roblox.com/asset/?id=13070796'
        c.Scale = Vector3.new(1, 0.5, 1)
end

function clerp(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
        com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
humanoid.Jumping:connect(function()
    action = 'jumping'
    Controllers.Parent = nil
end)
humanoid.Died:connect(function()
        repeat Controllers.Parent = ControllerService wait() until nil
        pcall(function()
                plr:FindFirstChild(currentPlayer):remove()
        end)
end)
mouse.KeyDown:connect(function(key)
        if key:byte() == 48 then
                action = 'running'
        end
        if key == '2' or key == 'c' then
                action = action == 'crouch' and 'none' or 'crouch'
        end
        if key == 'r' then
                pcall(function()
                        if ToolSelected:FindFirstChild'Ammo'.Value ~= MaxAmmuntition[ToolSelected.Name] then
                                action = 'reloading'
                        end
                end)
        end
end)
mouse.KeyUp:connect(function(key)
        if key:byte() == 48 then
                if action == 'running' then
                        action = 'none'
                end
        end
end)
plr.Chatted:connect(function(chat)
        local emote = false
        if chat:sub(1,3) == '/e ' then
                emote = true
                chat = chat:sub(4)
        elseif chat:sub(1,7) == '/emote ' then
                emote = true
                chat = chat:sub(8)
        end
        if emote == true then
                if chat == 'dance' then
                        action = 'dance'
                elseif chat == 'sit' then
                        action = 'sit'
                elseif chat == 'lay' then
                        if action ~= 'lay' then
                                will_lay = true        
                                action = 'sit'
                        end
                elseif chat == 'wave' then
                        action = 'wave'
                elseif chat == 'squat' then
                        action = 'squat'
                elseif chat == 'point' then
                        action = 'point'
                end
        end
end)
while wait() do
        humanoid.WalkSpeed = (action == 'running' or lastaction == 'running') and 30 or (action == 'crouch' or lastaction == 'crouch') and 5 or 10
        torso.Anchored = false
        local rscf = rsc0
        local lscf = lsc0
        local rlcf = rlc0
        local llcf = llc0
        local rjcf = rootc0
        local ncf = neckc0
        local speed = 0.2
        local rayHit = false
        angle = (angle % 100) + anglespeed/10
        mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
        local rayz = Ray.new(rootpart.Position, Vector3.new(0, -3.95, 0))
        local hitz, enz = workspace:findPartOnRay(rayz, char)
        local rayz1 = Ray.new(rootpart.Position, Vector3.new(-.5, -3.95, 0))
        local hitz1, enz1 = workspace:findPartOnRay(rayz1, char)
        local rayz2 = Ray.new(rootpart.Position, Vector3.new(.5, -3.95, 0))
        local hitz2, enz2 = workspace:findPartOnRay(rayz2, char)
        local rayz3 = Ray.new(rootpart.Position, Vector3.new(0, -3.95, -.5))
        local hitz3, enz3 = workspace:findPartOnRay(rayz3, char)
        local rayz4 = Ray.new(rootpart.Position, Vector3.new(0, -3.95, .5))
        local hitz4, enz4 = workspace:findPartOnRay(rayz4, char)
        local rotvellimit = action~='running' and 2 or 10
        local rotvel = torso.RotVelocity.y
        if rotvel > rotvellimit then
                rotvel = rotvellimit
        elseif rotvel < -rotvellimit then
                rotvel = -rotvellimit
        end
        if hitz or hitz1 or hitz2 or hitz3 or hitz4 then
                Controllers.Parent = ControllerService
        end
        if action == 'reloading' then
                if ToolSelected == nil then 
                        action = lastaction == 'crouch' and 'crouch' or lastaction == 'running' and 'running' or 'none'
                end
                if action == 'reloading' then
                        humanoid.WalkSpeed = 0
                        Controllers.Parent = nil
                        speed = 0.2
                        for waiting = 0,20 do
                                if lastaction ~= 'crouch' then
                                        rjcf = rootc0
                                        lscf = lsc0 * CFrame.new(0.4,0,0) * CFrame.Angles(math.rad(90),0,math.rad(45))
                                        rscf = rsc0 * CFrame.new(-0.4,0,0) * CFrame.Angles(math.rad(95),0,math.rad(-45))
                                        ncf = neckc0 * CFrame.Angles(math.rad(-15),0,0)
                                        rlcf = rlc0 * CFrame.Angles(0,0,math.rad(5))
                                        llcf = llc0 * CFrame.Angles(0,0,math.rad(-5))
                                        rm.C0 = clerp(rm.C0,rscf,speed)
                                        lm.C0 = clerp(lm.C0,lscf,speed)
                                        rj.C0 = clerp(rj.C0,rjcf,speed)
                                        neck.C0 = clerp(neck.C0,ncf,speed)
                                        rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
                                        llegm.C0 = clerp(llegm.C0,llcf,speed)
                                else
                                        ncf = neckc0 * CFrame.Angles(math.rad(-15),0,0)
                                        rscf = rsc0 * CFrame.new(-0.4,0,0) * CFrame.Angles(math.rad(95),0,math.rad(-45))
                                        lscf = lsc0 * CFrame.new(0.4,0,0) * CFrame.Angles(math.rad(90),0,math.rad(45))
                                        rjcf = rootc0 * CFrame.new(0, -1.25, 0)
                                        llcf = llc0 * CFrame.new(0, 0, -.4999) * CFrame.Angles(-math.pi/2.2, 0, 0)
                                        rlcf = rlcf * CFrame.new(0, 1.25, -.85)
                                        rm.C0 = clerp(rm.C0,rscf,speed)
                                        lm.C0 = clerp(lm.C0,lscf,speed)
                                        rj.C0 = clerp(rj.C0,rjcf,speed)
                                        neck.C0 = clerp(neck.C0,ncf,speed)
                                        rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
                                        llegm.C0 = clerp(llegm.C0,llcf,speed)
                                end
                                wait()
                        end
                        pcall(function()
                                ToolSelected:FindFirstChild'Ammo'.Value = MaxAmmuntition[ToolSelected.Name]
                        end)
                        pcall(function()
                                AmmoTextLabel.Text = 'Ammo amount: '..ToolSelected:FindFirstChild'Ammo'.Value or 'Ammo amount: No weapon'
                        end)
                        Controllers.Parent = ControllerService
                        humanoid.WalkSpeed = 16
                        action = lastaction == 'crouch' and 'crouch' or 'none'
                end
        end
        if humanoid.Sit then
                if action == 'dance' then action = lastaction end
                rjcf = rootc0
                rscf = rsc0 * CFrame.Angles(math.rad(90),0,0)
                lscf = lsc0 * CFrame.Angles(math.rad(90),0,0)
                rlcf = rlc0 * CFrame.Angles(math.rad(90),0,math.rad(15))
                llcf = llc0 * CFrame.Angles(math.rad(90),0,math.rad(-15))
                ncf = neckc0
        elseif action == 'sit' then
                if Vector3.new(torso.Velocity.x,0,torso.Velocity.z).magnitude > 2 then action = 'none' end
                if will_lay ~= true then
                        rjcf = rootc0 * CFrame.new(0,-1.5,0) * CFrame.Angles(math.rad(25),0,0)
                        rscf = rsc0 * CFrame.Angles(math.rad(-25),0,0)
                        lscf = lsc0 * CFrame.Angles(math.rad(-25),0,0)
                        rlcf = rlc0 * CFrame.Angles(math.rad(65),0,math.rad(15))
                        llcf = llc0 * CFrame.Angles(math.rad(65),0,math.rad(-15))
                else
                        rjcf = rootc0 * CFrame.new(0,-1.5,0) * CFrame.Angles(math.rad(25),0,0)
                        rscf = rsc0 * CFrame.Angles(math.rad(-25),0,0)
                        lscf = lsc0 * CFrame.Angles(math.rad(-25),0,0)
                        rlcf = rlc0 * CFrame.Angles(math.rad(65),0,math.rad(15))
                        llcf = llc0 * CFrame.Angles(math.rad(65),0,math.rad(-15))
                        rm.C0 = clerp(rm.C0,rscf,speed)
                        lm.C0 = clerp(lm.C0,lscf,speed)
                        rj.C0 = clerp(rj.C0,rjcf,speed)
                        neck.C0 = clerp(neck.C0,ncf,speed)
                        rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
                        llegm.C0 = clerp(llegm.C0,llcf,speed)
                        wait()
                        will_lay = false
                        action = 'lay'
                end
        elseif action == 'lay' then
                if Vector3.new(torso.Velocity.x,0,torso.Velocity.z).magnitude > 2 then action = 'none' end
                rjcf = rootc0 * CFrame.new(0,-1.5,0) * CFrame.Angles(math.rad(90),0,0)
                rscf = rsc0 * CFrame.Angles(0,0,math.rad(105))
                lscf = lsc0 * CFrame.Angles(0,0,math.rad(-105))
                rlcf = rlc0 * CFrame.Angles(0,0,math.rad(15))
                llcf = llc0 * CFrame.Angles(0,0,math.rad(-15))
        elseif action == 'wave' then
                if Vector3.new(torso.Velocity.x,0,torso.Velocity.z).magnitude > 2 then action = 'none' end
                anglespeed = 1
                speed = 0.25
                rjcf = rootc0 * CFrame.Angles(0,math.rad(45),0)
                ncf = neckc0 * CFrame.Angles(0,math.rad(-45),0)
                lscf = lsc0 * CFrame.Angles(0,0,math.rad(-15))
                rlcf = rlc0 * CFrame.Angles(0,0,math.rad(5))
                llcf = llc0 * CFrame.Angles(0,0,math.rad(-5))
                rscf = rsc0 * CFrame.Angles(0, -math.sin(angle)*0.008, math.pi/1.4+math.sin(angle)*.5)
        elseif action == 'squat' then
                if Vector3.new(torso.Velocity.x,0,torso.Velocity.z).magnitude > 2 then action = 'none' end
                anglespeed = 0.15
                speed = 0.25
                ncf = neckc0 * CFrame.Angles(math.pi/12-math.sin(angle)*0.005,0,0)
                rscf = rsc0 * CFrame.new(-.35, 0, -.35+math.sin(angle)*0.005) * CFrame.Angles(math.pi/2.2+math.sin(-angle)*.005, 0, -math.pi/4.5)
                lscf = lsc0 * CFrame.new(.35, 0, -.35+math.sin(angle)*0.005) * CFrame.Angles(math.pi/2.2+math.sin(angle)*.005, 0, math.pi/4.5)
                rjcf = rootc0 * CFrame.new(0, -0.9, 0.55) * CFrame.Angles(-math.pi/12+math.sin(angle)*0.005, 0, 0)
                llcf = llc0 * CFrame.new(0, .95, -.55) * CFrame.Angles(math.pi/12, 0, -math.rad(2))
                rlcf = rlcf * CFrame.new(0, .95, -.55) * CFrame.Angles(math.pi/14, 0, math.rad(2))
        elseif action == 'point' then
                if Vector3.new(torso.Velocity.x,0,torso.Velocity.z).magnitude > 2 then action = 'none' end
                anglespeed = 0.5
                speed = 0.25
                rjcf = rootc0 * CFrame.Angles(0,math.rad(45),0)
                ncf = neckc0 * CFrame.Angles(0,math.rad(-45),0)
                rscf = rsc0 * CFrame.Angles(math.rad(90),0,math.rad(45))
                lscf = lsc0 * CFrame.Angles(0,0,math.rad(-15))
                rlcf = rlc0 * CFrame.Angles(0,0,math.rad(5))
                llcf = llc0 * CFrame.Angles(0,0,math.rad(-5))
        elseif action == 'dance' then
                if Vector3.new(torso.Velocity.x,0,torso.Velocity.z).magnitude > 2 then action = 'none' end
                dancingtime = dancingtime + 1/60
                anglespeed = 1
                speed = 0.25
                if dancingtime <= 12 then
                        ncf = neckc0 * CFrame.Angles(math.pi/24.85, 0, 0)
                        rjcf = rootc0 * CFrame.new(0, 0.75 + -math.abs(math.sin(angle)), 0) * CFrame.Angles(0, 0, math.sin(angle)*.1)
                        rscf = rsc0 * CFrame.Angles(math.pi-math.abs(math.sin(angle))*.5, 0, math.rad(2))
                        lscf = lsc0 * CFrame.Angles(math.pi-math.abs(math.sin(angle))*.5, 0, -math.rad(2))
                        rlcf = rlc0 * CFrame.Angles(math.sin(angle)*.25, 0, math.rad(5))
                        llcf = llc0 * CFrame.Angles(-math.sin(angle)*.25, 0, -math.rad(5))
                elseif dancingtime <= 22 then
                        ncf = neckc0 * CFrame.Angles(math.pi/24.85, 0, 0)
                        rjcf = rootc0 * CFrame.new(0, math.abs(math.cos(angle)*.05), 0) * CFrame.Angles(0, math.sin(angle)*.035, math.sin(angle)*.015)
                        rscf = rsc0 * CFrame.Angles(math.pi/2-math.abs(math.sin(angle))*.5, 0, math.rad(2))
                        lscf = lsc0 * CFrame.Angles(math.pi/2-math.abs(math.sin(angle))*.5, 0, -math.rad(2))
                        rlcf = rlc0 * CFrame.Angles(math.sin(angle)*.05, 0, math.rad(5))
                        llcf = llc0 * CFrame.Angles(-math.sin(angle)*.05, 0, -math.rad(5))
                elseif dancingtime >= 22 then
                    dancingtime = 0
                end
        elseif action == 'jumping' then
                anglespeed = 1
                speed = 0.175
                rayHit = false
                for waiting = 0, 8 do
                        rjcf = rootc0 * CFrame.Angles(lastaction=='running' and math.rad(-15) or 0, 0, 0)
                        rscf = rsc0 * CFrame.Angles(0, 0, math.rad(15))
                        lscf = lsc0 * CFrame.Angles(0, 0, math.rad(-15))
                        rlcf = rlc0 * CFrame.new(0, 0.5, -0.5) * CFrame.Angles(math.rad(-15), 0, 0)
                        llcf = llc0 * CFrame.Angles(0, 0, 0)
                        ncf = neckc0 * CFrame.Angles(lastaction=='running' and math.rad(15) or 0,0,0)
                        rm.C0 = clerp(rm.C0,rscf,speed)
                        lm.C0 = clerp(lm.C0,lscf,speed)
                        rj.C0 = clerp(rj.C0,rjcf,speed)
                        neck.C0 = clerp(neck.C0,ncf,speed)
                        rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
                        llegm.C0 = clerp(llegm.C0,llcf,speed)
                        wait()
                end
                action = (lastaction ~= 'dance' and lastaction ~= 'sit' and lastaction ~= 'lay') and lastaction or 'none'
        elseif not hitz and not hitz1 and not hitz2 and not hitz4 then
                if action == 'dance' then action = 'none' end
                anglespeed = 1
                speed = 0.175
                rjcf = rootc0 * CFrame.Angles(math.rad(-15),0,0)
                rscf = rsc0 * CFrame.Angles(0, 0, math.rad(15))
                lscf = lsc0 * CFrame.Angles(0, 0, math.rad(-15))
                rlcf = rlc0 * CFrame.new(0, 0.5, -0.5) * CFrame.Angles(math.rad(-15), 0, 0)
                llcf = llc0 * CFrame.Angles(0, 0, 0)
                ncf = neckc0 * CFrame.Angles(math.rad(15),0,0)
        elseif Vector3.new(torso.Velocity.x,0,torso.Velocity.z).magnitude < 2 then
                anglespeed = 0.3
                speed = 0.15
                if action ~= 'crouch' then
                        idletime = idletime + 1/30
                        if idletime < 12 then
                                ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
                                rjcf = rootc0 * CFrame.Angles(0, 0, 0)
                                if ToolSelected == nil then
                                        rscf = rsc0 * CFrame.Angles(math.sin(angle)*0.08, 0, 0)
                                else
                                        rscf = rsc0 * CFrame.Angles(math.rad(90),0,0)
                                end
                                lscf = lsc0 * CFrame.Angles(math.sin(angle)*0.08, 0, 0)
                                rlcf = rlc0 * CFrame.Angles(0, 0, math.rad(2.5))
                                llcf = llc0 * CFrame.Angles(0, 0, -math.rad(2.5))
                        elseif idletime < 22 then
                                ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
                                rjcf = rootc0 * CFrame.Angles(0, 0, 0)
                                if ToolSelected == nil then
                                        rscf = rsc0 * CFrame.Angles(math.sin(angle)*0.08, 0, 0)
                                else
                                        rscf = rsc0 * CFrame.Angles(math.rad(90),0,0)
                                end
                                lscf = lsc0 * CFrame.Angles(math.sin(angle)*0.08, 0, 0)
                                rlcf = rlc0 * CFrame.Angles(0, 0, math.rad(2.5))
                                llcf = llc0 * CFrame.Angles(0, 0, -math.rad(2.5))
                        else
                                idletime = 0
                        end
                else
                        ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
                        if ToolSelected == nil then
                                rscf = rsc0 * CFrame.Angles(0, -math.sin(angle)*0.08, math.pi/18)
                        else
                                rscf = rsc0 * CFrame.Angles(math.rad(90),0,0)
                        end
                        lscf = lsc0 * CFrame.Angles(0, math.sin(angle)*0.08, -math.pi/18)
                        rjcf = rootc0 * CFrame.new(0, -1.25, 0)
                        llcf = llc0 * CFrame.new(0, 0, -.4999) * CFrame.Angles(-math.pi/2.2, 0, 0)
                        rlcf = rlcf * CFrame.new(0, 1.25, -.85)
                end
        elseif Vector3.new(torso.Velocity.x,0,torso.Velocity.z).magnitude <= 20 then
                if action == 'dance' then action = 'none' end
                anglespeed = 1.5
                speed = 0.25
                if action ~= 'crouch' then
                        rjcf = rootc0 * CFrame.Angles(0,0,math.rad(rotvel)*2.5)
                        if ToolSelected == nil then
                                rscf = rsc0 * CFrame.Angles(math.sin(angle),0,0)
                        else
                                rscf = rsc0 * CFrame.Angles(math.rad(90),0,0)
                        end
                        lscf = lsc0 * CFrame.Angles(math.sin(-angle),0,0)
                        rlcf = rlc0 * CFrame.Angles(math.sin(-angle),0,0)
                        llcf = llc0 * CFrame.Angles(math.sin(angle),0,0)
                        ncf = neckc0
                else
                        speed = 0.25
                        ncf = neckc0 * CFrame.Angles(math.pi/12,0,0)
                        if ToolSelected == nil then
                    rscf = rsc0 * CFrame.new(0, 0, math.sin(angle)*0.025) * CFrame.Angles(math.rad(45), 0, math.pi/18)
                else
                        rscf = rsc0 * CFrame.Angles(math.rad(90),0,0)
                    end
            lscf = lsc0 * CFrame.new(0, 0, math.sin(angle)*0.025) * CFrame.Angles(math.rad(-45), 0, -math.pi/18)
            rjcf = rootc0 * CFrame.new(0, -.7, 0) * CFrame.Angles(math.abs(math.sin(angle))*0.025 + -math.pi/12, 0, 0)
            llcf = llc0 * CFrame.new(0, .85 + .2 - math.cos(angle)*.2, -.5 + (-.4+math.sin(angle)*0.25)) * CFrame.Angles(math.pi/18 + -math.pi/10 - math.sin(angle)*.45, 0, 0)
            rlcf = rlcf * CFrame.new(0, .85 + .2 + math.cos(angle)*.2, -.5 + (-.25-math.sin(angle)*0.25)) * CFrame.Angles(math.pi/18 + -math.pi/10 + math.sin(angle)*.45, 0, 0)
                end
        elseif Vector3.new(torso.Velocity.x,0,torso.Velocity.z).magnitude > 20 then
                if action == 'dance' then action = 'none' end
                anglespeed = 2
                speed = .3
                rjcf = rootc0 * CFrame.Angles(math.rad(-15),0,math.rad(rotvel)*2.5)
                if ToolSelected == nil then
                        rscf = rsc0 * CFrame.Angles(math.sin(angle),0,0)
                else
                        rscf = rsc0 * CFrame.Angles(math.rad(90),0,0)
                end
                lscf = lsc0 * CFrame.Angles(math.sin(-angle),0,0)
                rlcf = rlc0 * CFrame.Angles(math.sin(-angle),0,0)
                llcf = llc0 * CFrame.Angles(math.sin(angle),0,0)
                ncf = neckc0 * CFrame.Angles(math.rad(15),0,0)
        end
        rlegm.C0 = clerp(rlegm.C0,rlcf,speed) 
        llegm.C0 = clerp(llegm.C0,llcf,speed)
        neck.C0 = clerp(neck.C0,ncf,speed)
        lm.C0 = clerp(lm.C0,lscf,speed)
        rm.C0 = clerp(rm.C0,rscf,speed)
        rj.C0 = clerp(rj.C0,rjcf,speed)
        lastaction = action
end

--[[
]]
