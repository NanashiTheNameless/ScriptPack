lp=game.Players.LocalPlayer
chr=lp.Character
attacking=false
stealth=false
nova=false
vanish=false
mouse = game.Players.LocalPlayer:GetMouse()
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
    p0.Position = p1.Position
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end
function Chat(Object,Text,Color)
local Color = BrickColor.new(Color)
pcall(function()Object:findFirstChild("AtlasText"):Destroy()end)
local G = Instance.new("BillboardGui",Object)
G.Name = "AtlasText"
G.Adornee = Object
G.Size = UDim2.new(3.5,0,2.5,0)
G.AlwaysOnTop = false
G.StudsOffset = Vector3.new(0,3,0)
local Frame = Instance.new("Frame")
Frame.Parent = G
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundTransparency = 1
local Txt = Instance.new("TextLabel",Frame)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = Text
Txt.TextScaled = true
Txt.TextWrapped = true
Txt.Font = "SourceSansBold"
Txt.TextColor = Color
Txt.BackgroundTransparency = 1
Txt.ZIndex = 2
Game:GetService("Debris"):AddItem(G,3)
end
galacta=Instance.new("Model",chr)
galacta.Name="Galacta"
hilt=Instance.new("Part",chr.Galacta)
hilt.FormFactor="Custom"
hilt.Size=Vector3.new(0.2,0.2,0.2)
hilt.CanCollide=false
hilt.BrickColor=BrickColor.new("White")
hiltmesh=Instance.new("CylinderMesh",hilt)
hiltmesh.Scale=Vector3.new(2.5,10,2.5)
Weld(hilt,chr['Right Arm'],0,-1,0,4.7,5,0,hilt)
ring=Instance.new("Part",chr.Galacta)
ring.FormFactor="Custom"
ring.Size=Vector3.new(0.2,0.2,0.2)
ring.CanCollide=false
ring.BrickColor=BrickColor.new("Navy blue")
ringmesh=Instance.new("SpecialMesh",ring)
ringmesh.MeshId="rbxassetid://3270017"
ringmesh.Scale=Vector3.new(1,1,1)
Weld(ring,hilt,0,0.9,0,4.7,0,0,ring)
spike=Instance.new("Part",chr.Galacta)
spike.FormFactor="Custom"
spike.Size=Vector3.new(0.2,0.2,0.2)
spike.CanCollide=false
spike.BrickColor=BrickColor.new("Hot pink")
spikemesh=Instance.new("SpecialMesh",spike)
spikemesh.MeshId="rbxassetid://1033714"
spikemesh.Scale=Vector3.new(0.5,5,0.5)
Weld(spike,hilt,0,2.7,0,0,4.7,0,spike)


mouse.KeyDown:connect(function(key)
key:lower()
if key == "e" and attacking == false then
    attacking=true
    chr.Humanoid.MaxHealth=math.huge
    attacking=false
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key =="q" and attacking == false then
    attacking = true
    chr.Humanoid.MaxHealth=100
    attacking=false
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key == "b" and attacking == false then
    attacking = true
    Instance.new("ForceField",chr)
    z=Instance.new("Explosion",chr)
    z.Position = chr.Torso.Position
    wait(5)
    attacking = false
    chr.ForceField:Destroy()
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key == "h" and attacking == false then
    chr.Humanoid.Health=chr.Humanoid.MaxHealth
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key == "z" and attacking == false then
    attacking = true
    x=Instance.new("Part",chr)
    x.Size=Vector3.new(5,5,5)
    x.CanCollide=false
    x.Transparency=1
    Weld(x,chr.Torso,0,0,0,0,0,0,x)
    x.Touched:connect(function(hit)
    if hit.Parent:FindFirstChild("Humanoid") then
    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(25)
    end
end)
wait(5)
x:Destroy()
attacking = false
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key == "x" and stealth == false then
    stealth=true
    for i,v in pairs(chr:GetChildren()) do
        if v:IsA("Hat") then
            v.Handle.Transparency=1
        end
    end
    for i,v in pairs(chr:GetChildren()) do
        if v:IsA("Part") then
            v.Transparency=1
        end
    end
    for i,v in pairs(chr.Galacta:GetChildren()) do
        if v:IsA("Part") then
            v.Transparency=1
        end
    end
    chr.Head.face.Texture="0"
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key == "c" and stealth == true then
    for i,v in pairs(chr:GetChildren()) do
        if v:IsA("Hat") then
            v.Handle.Transparency=0
        end
    end
    for i,v in pairs(chr:GetChildren()) do
        if v:IsA("Part") then
            v.Transparency=0
        end
    end
    chr.HumanoidRootPart.Transparency=1
    for i,v in pairs(chr.Galacta:GetChildren()) do
        if v:IsA("Part") then
            v.Transparency=0
        end
    end
    chr.Head.face.Texture="rbxassetid://7317691"
    stealth=false
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key == "v" and attacking == false then
    for i,v in pairs(Workspace:GetChildren()) do
        if v:IsA("Model") then
            v:BreakJoints()
        end
    end
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key == "r" and attacking == false then
    for i = 1,100 do
        e=Instance.new("Explosion",chr)
        e.Position = mouse.Hit.p
    end
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key =="f" and nova == false and attacking == false and vanish == false then
    vanish=true
    nova=true
    attacking=true
    stealth=true
    for i,v in pairs(chr.Galacta:GetChildren()) do
        if v:IsA("Part") then
            v.Transparency=1
        end
    end
    Chat(chr.Head,"DISSAPEAR!","Hot pink")
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key =="g" and nova == true and stealth == true and vanish == true and attacking == true then
    vanish=false
    stealth=false
    attacking=false
    nova=false
    for i,v in pairs(chr.Galacta:GetChildren()) do
        if v:IsA("Part") then 
            v.Transparency=0
        end
    end
    Chat(chr.Head,"REAPPEAR!","Hot pink")
end
end)