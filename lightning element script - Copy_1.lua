lp=game.Players.LocalPlayer
chr=lp.Character
attacking=false
mouse = game.Players.LocalPlayer:GetMouse()
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
    p0.Position = p1.Position
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end
z=Instance.new("Part",chr)
z.Size=chr.Torso.Size
cloud=Instance.new("SpecialMesh",z)
cloud.MeshId="rbxassetid://1095708"
cloud.Scale=Vector3.new(20,5,20)
z.Transparency=1
Weld(z,chr.Torso,0,20,0,0,0,0,z)
Song = function(Volume,SoundId,Looped,Object)
    sound=Instance.new("Sound")
    sound.Parent=Object
    sound.Volume=Volume
    sound.SoundId="rbxassetid://"..SoundId
    sound.Looped=Looped
    sound:Play()
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
Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency)
    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
    for i=1,Times do 
        local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = Transparency or 0.4 li.BrickColor = BrickColor.new("New Yeller")
        li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(Thickness,Thickness,magz/Times) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
        local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
        if Times == i then 
            local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2)
            li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
        else
            li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p game.Debris:AddItem(li,0.25)
    end
end
Chat(chr.Head,chr.Name.." is using masterepico's lightning magic","New Yeller")
mouse.KeyDown:connect(function(key)
key:lower()
if key == "q" and attacking == false then
    attacking= true
    Chat(chr.Head,"LIGHTNING STRIKE!!!!!!!!!","New Yeller")
    for i=1,4 do
        Lightning(chr.Head.Position,mouse.Hit.p,10,math.random(5,10),math.random(-2.5,2.5),"New Yeller",0.05,0.3)
        explode=Instance.new("Explosion",Workspace)
        explode.Position=mouse.Hit.p
    end
    attacking=false
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key == "e" and attacking == false then
    attacking = true
    Chat(chr.Head,"CLOUD STRIKE!!!!","New Yeller")
    Instance.new("ForceField",chr)
    chr.Torso.Anchored=true
    z.Transparency=0
    for i=1,20 do
        Wait()
        Lightning(z.Position,chr.Torso.Position,10,math.random(5,10),math.random(-2.5,2.5),"New Yeller",0.05,0.3)
        explode=Instance.new("Explosion",chr)
        explode.Position=chr.Torso.Position
    end
    wait(2)
    chr.ForceField:Destroy()
    chr.Torso.Anchored=false
    z.Transparency=1
    attacking=false
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key == "r" and attacking == false then
    Song(math.huge,172949886,true,chr.Head)
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key == "t" and attacking == false then
    Chat(chr.Head,"TELEPORT!","New Yeller")
    wait()
    for i=1,5 do
        Lightning(chr.Torso.Position,mouse.Hit.p,10,math.random(5,10),math.random(-2.5,2.5),"New Yeller",0.05,0.3)
    end
    Wait()
    x=Instance.new("Part",chr)
    x.Transparency=1
    x.Position=mouse.Hit.p
    chr.Torso.CFrame=x.CFrame*CFrame.new(0,5,0)
    x:Destroy()
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key == "y" and attacking == false then
    for i,v in pairs(chr.Head:GetChildren()) do
        if v:IsA("Sound") then
            v:Destroy()
        end
    end
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key == "h" and attacking == false then
    Chat(chr.Head,"HEAL!!!","New Yeller")
    for i=1,10 do
        wait()
        Lightning(z.Position,chr.Torso.Position,10,math.random(5,10),math.random(-2.5,2.5),"New Yeller",0.05,0.3)
        explode=Instance.new("Explosion",chr)
        explode.Position=chr.Torso.Position
        explode.BlastPressure=0
        chr.Humanoid.Health=chr.Humanoid.Health+10
    end
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key == "c" and attacking == false then
    attacking=true
    z.Transparency=0
    Lightning(z.Position,mouse.Hit.p,10,math.random(5,10),math.random(-2.5,2.5),"New Yeller",0.05,0.3)
    explode=Instance.new("Explosion",chr)
    explode.Position=mouse.Hit.p
    z.Transparency=1
    attacking=false
end
end)