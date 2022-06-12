--[[=========================================[DK PLR GUI V1.0 lOCAL SCRIPT BY HEAT507]========================]]--- 
--This is a script that when you put the users name in the box and clcik "dk plr" you will dk them or.. Get a dk and put it all on them
users=game:GetService("Players") -- call the service.
usr=users.LocalPlayer-- local because I dont need you finding out my code -- Its what you can't comprehend.
usrg=usr.PlayerGui --- to reconnect ur joint from the usr
--pcall(function() usr:Remove() end) -- you will unblock this if you cant script
--bannd={"noob" , "noob" , "h4x" , "some cballr"}
--Keeping it a function , so to where it will always be on your plr gui "PlayerAdded"
TheChat=true TheGhost=false TheLag=false -- random distractions
usr.Chatted:connect(function(msg)
if msg=="noban" then 
usr.Character.Parent=workspace
if msg=='nochat' then 
TheChat=false
end 
end end) 
usr.Chatted:connect(function(WhatChat)
if TheChat==true then
Game:GetService("Chat"):Chat(usr.Character:FindFirstChild("Head") , WhatChat, "Blue")
end end) DakGuiInstanceWithANewTypeOfObjectThatControllYouSirs=Instance.new("ScreenGui",usrg)
DakGuiInstanceWithANewTypeOfObjectThatControllYouSirs.Name="NastySQLAdded"
TextBoxForTheDakGuiOneCreated = Instance.new("TextBox" ,DakGuiInstanceWithANewTypeOfObjectThatControllYouSirs) 
TextBoxForTheDakGuiOneCreated.Position = UDim2.new(0,0,0,156) 
TextBoxForTheDakGuiOneCreated.TextColor = BrickColor.new(255,255,255) 
TextBoxForTheDakGuiOneCreated.FontSize = "Size11" 
TextBoxForTheDakGuiOneCreated.Font = "ArialBold" 
--TextBoxForTheDakGuiOneCreated.TextStrokeColor3 = Color3.new(0,0,1) error('Thus is a broken function!'); 
--TextBoxForTheDakGuiOneCreated.TextStrokeTransparency = 0 ;
TextBoxForTheDakGuiOneCreated.Size = UDim2.new(0,156,0,100) 
TextBoxForTheDakGuiOneCreated.Text = "Player Name gose here [FULL NAME]" 
TextBoxForTheDakGuiOneCreated.BackgroundTransparency = 0.8
TextBoxForTheDakGuiOneCreated.BackgroundColor = BrickColor.new("Really Black") 
TextBoxForTheDakGuiOneCreated.BorderColor = BrickColor.new("Black")
TextBoxForTheDakGuiOneCreated.MultiLine = true
 TextButtonNumberOneInTheDakGuiXSDA = Instance.new("TextButton" ,DakGuiInstanceWithANewTypeOfObjectThatControllYouSirs) 
TextButtonNumberOneInTheDakGuiXSDA.Position = UDim2.new(0,68,0,386) 
TextButtonNumberOneInTheDakGuiXSDA.TextColor = BrickColor.new(255,255,255) 
--sd.TextStrokeColor = bcn(8,8,8) --YoGetSuMuKuizALoPusFromGakuza
TextButtonNumberOneInTheDakGuiXSDA.FontSize = "Size11" 
TextButtonNumberOneInTheDakGuiXSDA.Font = "ArialBold" 
TextButtonNumberOneInTheDakGuiXSDA.Size = UDim2.new(0, 56, 0, 100) 
TextButtonNumberOneInTheDakGuiXSDA.Text = "KICK" 
TextButtonNumberOneInTheDakGuiXSDA.BackgroundTransparency = 0 
TextButtonNumberOneInTheDakGuiXSDA.BackgroundColor = BrickColor.new("Really Black") 
TextButtonNumberOneInTheDakGuiXSDA.BorderColor = BrickColor.new("Black") 
TextButtonNumberOneInTheDakGuiXSDA.Style = "RobloxButton"
 TextButtonNumberOneInTheDakGuiXSD = Instance.new("TextButton" ,DakGuiInstanceWithANewTypeOfObjectThatControllYouSirs) 
TextButtonNumberOneInTheDakGuiXSD.Position = UDim2.new(0,0,0,386) 
TextButtonNumberOneInTheDakGuiXSD.TextColor = BrickColor.new(255,255,255) 
--sd.TextStrokeColor = bcn(8,8,8) --YoGetSuMuKuizALoPusFromGakuza
TextButtonNumberOneInTheDakGuiXSD.FontSize = "Size11" 
TextButtonNumberOneInTheDakGuiXSD.Font = "ArialBold" 
TextButtonNumberOneInTheDakGuiXSD.Size = UDim2.new(0, 56, 0, 100) 
TextButtonNumberOneInTheDakGuiXSD.Text = "FF" 
TextButtonNumberOneInTheDakGuiXSD.BackgroundTransparency = 0 
TextButtonNumberOneInTheDakGuiXSD.BackgroundColor = BrickColor.new("Really Black") 
TextButtonNumberOneInTheDakGuiXSD.BorderColor = BrickColor.new("Black") 
TextButtonNumberOneInTheDakGuiXSD.Style = "RobloxButton"
TextButtonNumberOneInTheDakGuiXSFL = Instance.new("TextButton" ,DakGuiInstanceWithANewTypeOfObjectThatControllYouSirs) 
TextButtonNumberOneInTheDakGuiXSFL.Position = UDim2.new(0,0,0,586) 
TextButtonNumberOneInTheDakGuiXSFL.TextColor = BrickColor.new(255,255,255) 
--sd.TextStrokeColor = bcn(8,8,8) --YoGetSuMuKuizALoPusFromGakuza
TextButtonNumberOneInTheDakGuiXSFL.FontSize = "Size11" 
TextButtonNumberOneInTheDakGuiXSFL.Font = "ArialBold" 
TextButtonNumberOneInTheDakGuiXSFL.Size = UDim2.new(0, 56, 0, 100) 
TextButtonNumberOneInTheDakGuiXSFL.Text = "COM" 
TextButtonNumberOneInTheDakGuiXSFL.BackgroundTransparency = 0 
TextButtonNumberOneInTheDakGuiXSFL.BackgroundColor = BrickColor.new("Really Black") 
TextButtonNumberOneInTheDakGuiXSFL.BorderColor = BrickColor.new("Black") 
TextButtonNumberOneInTheDakGuiXSFL.Style = "RobloxButton"
TextButtonNumberOneInTheDakGuiXSF = Instance.new("TextButton" ,DakGuiInstanceWithANewTypeOfObjectThatControllYouSirs) 
TextButtonNumberOneInTheDakGuiXSF.Position = UDim2.new(0,136,0,386) 
TextButtonNumberOneInTheDakGuiXSF.TextColor = BrickColor.new(255,255,255) 
--sd.TextStrokeColor = bcn(8,8,8) --YoGetSuMuKuizALoPusFromGakuza
TextButtonNumberOneInTheDakGuiXSF.FontSize = "Size11" 
TextButtonNumberOneInTheDakGuiXSF.Font = "ArialBold" 
TextButtonNumberOneInTheDakGuiXSF.Size = UDim2.new(0, 56, 0, 100) 
TextButtonNumberOneInTheDakGuiXSF.Text = "S3X" 
TextButtonNumberOneInTheDakGuiXSF.BackgroundTransparency = 0 
TextButtonNumberOneInTheDakGuiXSF.BackgroundColor = BrickColor.new("Really Black") 
TextButtonNumberOneInTheDakGuiXSF.BorderColor = BrickColor.new("Black") 
TextButtonNumberOneInTheDakGuiXSF.Style = "RobloxButton"
TextButtonNumberOneInTheDakGuiXS = Instance.new("TextButton" ,DakGuiInstanceWithANewTypeOfObjectThatControllYouSirs) 
TextButtonNumberOneInTheDakGuiXS.Position = UDim2.new(0,68,0,586) 
TextButtonNumberOneInTheDakGuiXS.TextColor = BrickColor.new(255,255,255) 
--sd.TextStrokeColor = bcn(8,8,8) --YoGetSuMuKuizALoPusFromGakuza
TextButtonNumberOneInTheDakGuiXS.FontSize = "Size11" 
TextButtonNumberOneInTheDakGuiXS.Font = "ArialBold" 
TextButtonNumberOneInTheDakGuiXS.Size = UDim2.new(0, 56, 0, 100) 
TextButtonNumberOneInTheDakGuiXS.Text = "GOD HEALTH" 
TextButtonNumberOneInTheDakGuiXS.BackgroundTransparency = 0 
TextButtonNumberOneInTheDakGuiXS.BackgroundColor = BrickColor.new("Really Black") 
TextButtonNumberOneInTheDakGuiXS.BorderColor = BrickColor.new("Black") 
TextButtonNumberOneInTheDakGuiXS.Style = "RobloxButton"
TextButtonNumberOneInTheDakGuiX = Instance.new("TextButton" ,DakGuiInstanceWithANewTypeOfObjectThatControllYouSirs) 
TextButtonNumberOneInTheDakGuiX.Position = UDim2.new(0,0,0,256) 
TextButtonNumberOneInTheDakGuiX.TextColor = BrickColor.new(255,255,255) 
--sd.TextStrokeColor = bcn(8,8,8) --YoGetSuMuKuizALoPusFromGakuza
TextButtonNumberOneInTheDakGuiX.FontSize = "Size11" 
TextButtonNumberOneInTheDakGuiX.Font = "ArialBold" 
TextButtonNumberOneInTheDakGuiX.Size = UDim2.new(0, 156, 0, 100) 
TextButtonNumberOneInTheDakGuiX.Text = "DK PLR [BIGGA]" 
TextButtonNumberOneInTheDakGuiX.BackgroundTransparency = 0 
TextButtonNumberOneInTheDakGuiX.BackgroundColor = BrickColor.new("Really Black") 
TextButtonNumberOneInTheDakGuiX.BorderColor = BrickColor.new("Black") 
TextButtonNumberOneInTheDakGuiX.Style = "RobloxButton"
TextButtonNumberOneInTheDakGui = Instance.new("TextButton" ,DakGuiInstanceWithANewTypeOfObjectThatControllYouSirs) 
TextButtonNumberOneInTheDakGui.Position = UDim2.new(0,0,0,0) 
TextButtonNumberOneInTheDakGui.TextColor = BrickColor.new(255,255,255) 
--sd.TextStrokeColor = bcn(8,8,8) 
TextButtonNumberOneInTheDakGui.FontSize = "Size11" 
TextButtonNumberOneInTheDakGui.Font = "ArialBold" 
TextButtonNumberOneInTheDakGui.Size = UDim2.new(0, 156, 0, 100) 
TextButtonNumberOneInTheDakGui.Text = "DK PLR" 
TextButtonNumberOneInTheDakGui.BackgroundTransparency = 0 
TextButtonNumberOneInTheDakGui.BackgroundColor = BrickColor.new("Really Black") 
TextButtonNumberOneInTheDakGui.BorderColor = BrickColor.new("Black") 
TextButtonNumberOneInTheDakGui.Style = "RobloxButton"
TextButtonNumberOneInTheDakGui.MouseButton1Up:connect(function()
v=workspace:FindFirstChild(TextBoxForTheDakGuiOneCreated.Text); 
        person=v.Name
        color = "Pastel brown"
        pcall(function() game.Players[person].Character["Nice thing"]:Remove() end)
        D = Instance.new("Model",workspace[person])
        D.Name = "Nice thing"
        bg = Instance.new("BodyGyro",workspace[person].Torso)
        d = Instance.new("Part")
        d.TopSurface = 0
        d.BottomSurface = 0
        d.Name = "Main"
        d.Parent = workspace[person]["Nice thing"]
        d.formFactor = 3
        d.Size = Vector3.new(0.6,2.5,0.6)
        d.BrickColor = BrickColor.new(color)
        d.Position = workspace[person].Head.Position
        d.CanCollide = false
        local cy = Instance.new("CylinderMesh")
        cy.Parent = d
        w = Instance.new("Weld")
        w.Parent = workspace[person].Head
        w.Part0 = d
        w.Part1 = workspace[person].Head
        w.C0 = CFrame.new(0,0.25,2.1)*CFrame.Angles(math.rad(45),0,0)
        local c = Instance.new("Part")
                c.Name = "Mush"
        c.BottomSurface = 0
        c.TopSurface = 0
        c.FormFactor = 3
        c.Size = Vector3.new(0.6,0.6,0.6)
        c.CFrame = CFrame.new(d.Position)
        c.BrickColor = BrickColor.new("Pink")
        c.CanCollide = false
        c.Parent = workspace[person]["Nice thing"]
        local msm = Instance.new("SpecialMesh")
        msm.Parent = c
        msm.MeshType = "Sphere"
        local cw = Instance.new("Weld")
        cw.Parent = c
        cw.Part0 = d
        cw.Part1 = c
        cw.C0 = CFrame.new(0,1.3,0)
        local ball1 = Instance.new("Part")
        ball1.Parent = workspace[person]["Nice thing"]
        ball1.Name = "Left Ball"
        ball1.BottomSurface = 0
        ball1.TopSurface = 0
        ball1.CanCollide = false
        ball1.formFactor = 3
        ball1.Size = Vector3.new(1,1,1)
        ball1.CFrame = CFrame.new(workspace[person]["Left Leg"].Position)
        ball1.BrickColor = BrickColor.new(color)
        local bsm = Instance.new("SpecialMesh")
        bsm.Parent = ball1
        bsm.MeshType = "Sphere"
        local b1w = Instance.new("Weld")
        b1w.Parent = ball1
        b1w.Part0 = workspace[person]["Left Leg"]
        b1w.Part1 = ball1
        b1w.C0 = CFrame.new(0,0.5,-.5)
        local ball2 = Instance.new("Part")
        ball2.Parent = workspace[person]["Nice thing"]
        ball2.Name = "Right Ball"
        ball2.BottomSurface = 0
        ball2.CanCollide = false
        ball2.TopSurface = 0
        ball2.formFactor = 3
        ball2.Size = Vector3.new(1,1,1)
        ball2.CFrame = CFrame.new(workspace[person]["Right Leg"].Position)
        ball2.BrickColor = BrickColor.new(color)
        local b2sm = Instance.new("SpecialMesh")
        b2sm.Parent = ball2
        b2sm.MeshType = "Sphere"
        local b2w = Instance.new("Weld")
        b2w.Parent = ball2
        b2w.Part0 = workspace[person]["Right Leg"]
        b2w.Part1 = ball2
        b2w.C0 = CFrame.new(0,0.5,-.5)
end)
DakGuiComBrick=function()
ComBrick=Instance.new("Part" ,game.Players.LocalPlayer.Character)
ComBrick.Name="ComBrickFromTheDakGuiByUkikarus"
ComBrick.BrickColor=BrickColor.new("White")
ComBrick.FormFactor="Custom"
ComBrick.Size=Vector3.new(0.4,0.4,0.4)
ComBrick.CFrame=CFrame.new(usr.Head.Position)
ComBrick.Transparency=0
end
DakGuiFkPlayer=function() 
 v=workspace:FindFirstChild(TextBoxForTheDakGuiOneCreated.Text); 
n1 = usr.Name
n2 = v.Name



function fWeld(zName,zParent,zPart0,zPart1,zCoco,a,b,c,d,e,f)
local funcw = Instance.new("Weld")
funcw.Name = zName
funcw.Parent = zParent
funcw.Part0 = zPart0
funcw.Part1 = zPart1
if (zCoco == true) then
funcw.C0 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f)
else
funcw.C1 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f)
end
return funcw
end

t1 = workspace[n1].Torso
t2 = workspace[n2].Torso

t2.Parent.Humanoid.PlatformStand = true


t1["Left Shoulder"]:Remove()
ls1 = Instance.new("Weld")
ls1.Parent = t1
ls1.Part0 = t1
ls1.Part1 = t1.Parent["Left Arm"]
ls1.C0 = CFrame.new(-1.5,0,0)
ls1.Name = "Left Shoulder"

t1["Right Shoulder"]:Remove()
rs1 = Instance.new("Weld")
rs1.Parent = t1
rs1.Part0 = t1
rs1.Part1 = t1.Parent["Right Arm"]
rs1.C0 = CFrame.new(1.5,0,0)
rs1.Name = "Right Shoulder"
--[[
t1["Left Hip"]:Remove()
lh1 = Instance.new("Weld")
lh1.Parent = t1
lh1.Part0 = t1
lh1.Part1 = t1.Parent["Left Leg"]
lh1.C0 = CFrame.new(-0.5,-2,0)
lh1.Name = "Left Hip"

t1["Right Hip"]:Remove()
rh1 = Instance.new("Weld")
rh1.Parent = t1
rh1.Part0 = t1
rh1.Part1 = t1.Parent["Right Leg"]
rh1.C0 = CFrame.new(0.5,-2,0)
rh1.Name = "Right Hip"]]
---------------------------------

t2["Left Shoulder"]:Remove()
ls2 = Instance.new("Weld")
ls2.Parent = t2
ls2.Part0 = t2
ls2.Part1 = t2.Parent["Left Arm"]
ls2.C0 = CFrame.new(-1.5,0,0)
ls2.Name = "Left Shoulder"

t2["Right Shoulder"]:Remove()
rs2 = Instance.new("Weld")
rs2.Parent = t2
rs2.Part0 = t2
rs2.Part1 = t2.Parent["Right Arm"]
rs2.C0 = CFrame.new(1.5,0,0)
rs2.Name = "Right Shoulder"

t2["Left Hip"]:Remove()
lh2 = Instance.new("Weld")
lh2.Parent = t2
lh2.Part0 = t2
lh2.Part1 = t2.Parent["Left Leg"]
lh2.C0 = CFrame.new(-0.5,-2,0)
lh2.Name = "Left Hip"

t2["Right Hip"]:Remove()
rh2 = Instance.new("Weld")
rh2.Parent = t2
rh2.Part0 = t2
rh2.Part1 = t2.Parent["Right Leg"]
rh2.C0 = CFrame.new(0.5,-2,0)
rh2.Name = "Right Hip"


local d = Instance.new("Part")
d.TopSurface = 0
d.BottomSurface = 0
d.CanCollide = false
d.BrickColor = BrickColor.new("Reddish brown")
d.Shape = "Ball"
d.Parent = t1
d.Size = Vector3.new(1,1,1)
local dm = Instance.new("SpecialMesh")
dm.MeshType = "Sphere"
dm.Parent = d
dm.Scale = Vector3.new(0.4,0.4,0.4)
fWeld("weld",t1,t1,d,true,-0.2,-1.3,-0.6,0,0,0)
d2 = d:Clone()
d2.Parent = t1
fWeld("weld",t1,t1,d2,true,0.2,-1.3,-0.6,0,0,0)
local c = Instance.new("Part")
c.TopSurface = 0
c.BottomSurface = 0
c.CanCollide = false
c.BrickColor = BrickColor.new("Reddish brown")
c.Parent = t1
c.formFactor = "Custom"
c.Size = Vector3.new(0.4,1.3,0.4)
cm = Instance.new("CylinderMesh")
cm.Parent = c
a = fWeld("weld",t1,t1,c,true,0,-1,-0.52+(-c.Size.y/2),math.rad(-80),0,0)
c2 = d:Clone()
c2.BrickColor = BrickColor.new("Reddish brown") 
c2.Mesh.Scale = Vector3.new(0.4,0.62,0.4)
c2.Parent = t1
fWeld("weld",c,c,c2,true,0,0+(c.Size.y/2),0,math.rad(-10),0,0)

local bl = Instance.new("Part")
bl.TopSurface = 0
bl.BottomSurface = 0
bl.CanCollide = false
bl.BrickColor = BrickColor.new("Reddish brown")
bl.Shape = "Ball"
bl.Parent = t2
bl.Size = Vector3.new(1,1,1)
local dm = Instance.new("SpecialMesh")
dm.MeshType = "Sphere"
dm.Parent = bl
dm.Scale = Vector3.new(1.2,1.2,1.2)
fWeld("weld",t2,t2,bl,true,-0.5,0.5,-0.6,0,0,0)
local br = Instance.new("Part")
br.TopSurface = 0
br.BottomSurface = 0
br.CanCollide = false
br.BrickColor = BrickColor.new("Reddish brown")
br.Shape = "Ball"
br.Parent = t2
br.Size = Vector3.new(1,1,1)
local dm = Instance.new("SpecialMesh")
dm.MeshType = "Sphere"
dm.Parent = br
dm.Scale = Vector3.new(1.2,1.2,1.2)
fWeld("weld",t2,t2,br,true,0.5,0.5,-0.6,0,0,0)
local bln = Instance.new("Part")
bln.TopSurface = 0
bln.BottomSurface = 0
bln.CanCollide = false
bln.Shape = "Ball"
bln.Parent = t2
bln.Size = Vector3.new(1,1,1)
local dm = Instance.new("SpecialMesh")
dm.MeshType = "Sphere"
dm.Parent = bln
dm.Scale = Vector3.new(0.2,0.2,0.2)
fWeld("weld",t2,t2,bln,true,-0.5,0.5,-1.2,0,0,0)
local brn = Instance.new("Part")
brn.TopSurface = 0
brn.BottomSurface = 0
brn.CanCollide = false
brn.Shape = "Ball"
brn.Parent = t2
brn.Size = Vector3.new(1,1,1)
local dm = Instance.new("SpecialMesh")
dm.MeshType = "Sphere"
dm.Parent = brn
dm.Scale = Vector3.new(0.2,0.2,0.2)
fWeld("weld",t2,t2,brn,true,0.5,0.5,-1.2,0,0,0)


lh2.C1 = CFrame.new(0,-1.5,-0.5) *CFrame.Angles(0.9,-0.4,0)
rh2.C1 = CFrame.new(0,-1.5,-0.5) *CFrame.Angles(0.9,0.4,0)

ls2.C1 = CFrame.new(-0.5,-1.3,-0.5) *CFrame.Angles(0.9,-0.4,0)
rs2.C1 = CFrame.new(0.5,-1.3,-0.5) *CFrame.Angles(0.9,0.4,0)

ls1.C1 = CFrame.new(-0.5,0.7,0) *CFrame.Angles(-0.9,-0.4,0)
rs1.C1 = CFrame.new(0.5,0.7,0) *CFrame.Angles(-0.9,0.4,0)

if t1:findFirstChild("weldx") ~= nil then t1.weldx:Remove() end 
we = fWeld("weldx",t1,t1,t2,true,0,-0.9,-1.3,math.rad(-90),0,0)

n = t2.Neck
n.C0 = CFrame.new(0,1.5,0) *CFrame.Angles(math.rad(-210),math.rad(180),0)

while true do
wait()
for i=1,6 do
we.C1 = we.C1 * CFrame.new(0,-0.3,0)
wait()
end
for i=1,6 do
we.C1 = we.C1 * CFrame.new(0,0.3,0)
wait()
end


end
end
DakGuiFk=function()
usr.Character.Humanoid.MaxHealth=math.huge
end
DakGuiKickNEbola=function()
s=Instance.new("ForceField" ,game.Players.LocalPlayer.Character)
end
DakGuiKickPlay=function()
s=game.Players:FindFirstChild(TextBoxForTheDakGuiOneCreated.Text); 
s:Destroy();
end
--YoZuMinGetSutotMazmi
DakGuiButt=function()
v=workspace:FindFirstChild(TextBoxForTheDakGuiOneCreated.Text); 
        person=v.Name
        color = "Black"
        pcall(function() game.Players[person].Character["Nice thing"]:Remove() end)
        D = Instance.new("Model",workspace[person])
        D.Name = "Nice thing"
        bg = Instance.new("BodyGyro",workspace[person].Torso)
        d = Instance.new("Part")
        d.TopSurface = 0
        d.BottomSurface = 0
        d.Name = "Main"
        d.Parent = workspace[person]["Nice thing"]
        d.formFactor = 3
        d.Size = Vector3.new(0.6,3.1,0.6)
        d.BrickColor = BrickColor.new(color)
        d.Position = workspace[person].Head.Position
        d.CanCollide = false
        local cy = Instance.new("CylinderMesh")
        cy.Parent = d
        w = Instance.new("Weld")
        w.Parent = workspace[person].Head
        w.Part0 = d
        w.Part1 = workspace[person].Head
        w.C0 = CFrame.new(0,0.30,2.1)*CFrame.Angles(math.rad(45),0,0)
        local c = Instance.new("Part")
                c.Name = "Mush"
        c.BottomSurface = 0
        c.TopSurface = 0
        c.FormFactor = 3
        c.Size = Vector3.new(0.6,0.6,0.6)
        c.CFrame = CFrame.new(d.Position)
        c.BrickColor = BrickColor.new("Pink")
        c.CanCollide = false
        c.Parent = workspace[person]["Nice thing"]
        local msm = Instance.new("SpecialMesh")
        msm.Parent = c
        msm.MeshType = "Sphere"
        local cw = Instance.new("Weld")
        cw.Parent = c
        cw.Part0 = d
        cw.Part1 = c
        cw.C0 = CFrame.new(0,1.3,0)
        local ball1 = Instance.new("Part")
        ball1.Parent = workspace[person]["Nice thing"]
        ball1.Name = "Left Ball"
        ball1.BottomSurface = 0
        ball1.TopSurface = 0
        ball1.CanCollide = false
        ball1.formFactor = 3
        ball1.Size = Vector3.new(1,1,1)
        ball1.CFrame = CFrame.new(workspace[person]["Left Leg"].Position)
        ball1.BrickColor = BrickColor.new(color)
        local bsm = Instance.new("SpecialMesh")
        bsm.Parent = ball1
        bsm.MeshType = "Sphere"
        local b1w = Instance.new("Weld")
        b1w.Parent = ball1
        b1w.Part0 = workspace[person]["Left Leg"]
        b1w.Part1 = ball1
        b1w.C0 = CFrame.new(0,0.5,-.5)
        local ball2 = Instance.new("Part")
        ball2.Parent = workspace[person]["Nice thing"]
        ball2.Name = "Right Ball"
        ball2.BottomSurface = 0
        ball2.CanCollide = false
        ball2.TopSurface = 0
        ball2.formFactor = 3
        ball2.Size = Vector3.new(1,1,1)
        ball2.CFrame = CFrame.new(workspace[person]["Right Leg"].Position)
        ball2.BrickColor = BrickColor.new(color)
        local b2sm = Instance.new("SpecialMesh")
        b2sm.Parent = ball2
        b2sm.MeshType = "Sphere"
        local b2w = Instance.new("Weld")
        b2w.Parent = ball2
        b2w.Part0 = workspace[person]["Right Leg"]
        b2w.Part1 = ball2
        b2w.C0 = CFrame.new(0,0.5,-.5)
end
TextButtonNumberOneInTheDakGuiXSFL.MouseButton1Up:connect(DakGuiComBrick); 
TextButtonNumberOneInTheDakGuiXSDA.MouseButton1Up:connect(DakGuiKickPlay); 
TextButtonNumberOneInTheDakGuiXSD.MouseButton1Up:connect(DakGuiKickNEbola); 
TextButtonNumberOneInTheDakGuiXSF.MouseButton1Up:connect(DakGuiFkPlayer); 
TextButtonNumberOneInTheDakGuiXS.MouseButton1Up:connect(DakGuiFk); 
TextButtonNumberOneInTheDakGuiX.MouseButton1Up:connect(DakGuiButt); 
Game:GetService("Chat"):Chat(usr.Character:FindFirstChild("Head") , "Loaded.", "Blue")

--mediafire gtfo password