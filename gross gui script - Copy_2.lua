script.Parent = game.Players.luxulux.PlayerGui
local banlist = {"1waffle1","xXxArtistxXxALT","xXxArtistxXx"}
playerGui = game.Players.luxulux.PlayerGui
playa = game.Players.luxulux
script.Name = "Main"
local nkdfc = "http://www.roblox.com/asset/?id=41236579"
local Black = Color3.new(0/255,0/255,0/255)
local White = Color3.new(255/255,255/255,255/255)
local main = Instance.new("ScreenGui",playerGui)
main.Name = "AdministratorGUI"
local frame = Instance.new("Frame",main)
frame.Name = "Border"
frame.Active = true
frame.BackgroundColor3 = Black
frame.BackgroundTransparency = 0.7
frame.BorderColor3 = Black
frame.Size = UDim2.new(0.3,0,0.5,0)
local usertest = Instance.new("TextBox",frame)
usertest.Name = "User"
usertest.BackgroundColor3 = Black
usertest.BackgroundTransparency = 0.2
usertest.Position = UDim2.new(0,10,0,10)
usertest.Size = UDim2.new(0,100,0,50)
usertest.FontSize = 5
usertest.Text = "Victim"
usertest.TextColor3 = White
local kbutton = Instance.new("TextButton",frame)
kbutton.Name = "KillButton"
kbutton.Position = UDim2.new(0,130,0,10)
kbutton.Size = UDim2.new(0,100,0,50)
kbutton.Style = 1
kbutton.FontSize = 6
kbutton.Text = "Kill"
kbutton.TextColor3 = White
local msg = Instance.new("TextButton",frame)
msg.Name = "BroadcastButton"
msg.Position = UDim2.new(0,250,0,10)
msg.Size = UDim2.new(0,100,0,50)
msg.Style = 1
msg.FontSize = 6
msg.Text = "Msg"
msg.TextColor3 = White
local option = Instance.new("TextBox",frame)
option.Name = "MsgText"
option.Position = UDim2.new(0.75,0,0,10)
option.Size = UDim2.new(0,100,0,50)
option.BackgroundColor3 = Black
option.BackgroundTransparency = 0.3
option.Text = "Message"
option.FontSize = 5
option.TextColor3 = White
local ttbutton = Instance.new("TextButton",frame)
ttbutton.Name = "TTButton"
ttbutton.Position = UDim2.new(0,10,0,100)
ttbutton.Size = UDim2.new(0,100,0,50)
ttbutton.Style = 1
ttbutton.FontSize = 6
ttbutton.Text = "TTs"
ttbutton.TextColor3 = White
local nkdbutton = Instance.new("TextButton",frame)
nkdbutton.Name = "NKDButton"
nkdbutton.Position = UDim2.new(0,130,0,100)
nkdbutton.Size = UDim2.new(0,100,0,50)
nkdbutton.Style = 1
nkdbutton.FontSize = 6
nkdbutton.Text = "Naked"
nkdbutton.TextColor3 = White
local tw = Instance.new("TextButton",frame)
tw.Name = "TWButton"
tw.Position = UDim2.new(0,250,0,100)
tw.Size = UDim2.new(0,100,0,50)
tw.Style = 1
tw.FontSize = 6
tw.Text = "2 way"
tw.TextColor3 = White
local twuser = Instance.new("TextBox",frame)
twuser.Name = "twuser2"
twuser.Position = UDim2.new(0.75,0,0,100)
twuser.Size = UDim2.new(0,100,0,50)
twuser.BackgroundColor3 = Black
twuser.BackgroundTransparency = 0.3
twuser.Text = "Option2"
twuser.FontSize = 5
twuser.TextColor3 = White
local dkbutton = Instance.new("TextButton",frame)
dkbutton.Name = "DKButton"
dkbutton.Position = UDim2.new(0,10,0,200)
dkbutton.Size = UDim2.new(0,100,0,50)
dkbutton.Style = 1
dkbutton.FontSize = 6
dkbutton.Text = "DK"
dkbutton.TextColor3 = White
local sdkbutton = Instance.new("TextButton",frame)
sdkbutton.Name = "SDKButton"
sdkbutton.Position = UDim2.new(0,130,0,200)
sdkbutton.Size = UDim2.new(0,100,0,50)
sdkbutton.Style = 1
sdkbutton.FontSize = 6
sdkbutton.Text = "SDK"
sdkbutton.TextColor3 = White
local mdkbutton = Instance.new("TextButton",frame)
mdkbutton.Name = "MDKButton"
mdkbutton.Position = UDim2.new(0,250,0,200)
mdkbutton.Size = UDim2.new(0,100,0,50)
mdkbutton.Style = 1
mdkbutton.FontSize = 6
mdkbutton.Text = "MDK"
mdkbutton.TextColor3 = White
local hdkbutton = Instance.new("TextButton",frame)
hdkbutton.Name = "HDKButton"
hdkbutton.Position = UDim2.new(0.75,0,0,200)
hdkbutton.Size = UDim2.new(0,100,0,50)
hdkbutton.Style = 1
hdkbutton.FontSize = 6
hdkbutton.Text = "HDK"
hdkbutton.TextColor3 = White
local godbutton = Instance.new("TextButton",frame)
godbutton.Name = "GodButton"
godbutton.Position = UDim2.new(0,10,0,300)
godbutton.Size = UDim2.new(0,100,0,50)
godbutton.Style = 1
godbutton.FontSize = 6
godbutton.Text = "God"
godbutton.TextColor3 = White
local kick = Instance.new("TextButton",frame)
kick.Name = "KickButton"
kick.Position = UDim2.new(0,130,0,300)
kick.Size = UDim2.new(0,100,0,50)
kick.Style = 1
kick.FontSize = 6
kick.Text = "Kick"
kick.TextColor3 = White
local ban = Instance.new("TextButton",frame)
ban.Name = "BanButton"
ban.Position = UDim2.new(0,250,0,300)
ban.Size = UDim2.new(0,100,0,50)
ban.Style = 1
ban.FontSize = 6
ban.Text = "Ban"
ban.TextColor3 = White
local dtr = Instance.new("TextButton",frame)
dtr.Name = "DTRButton"
dtr.Position = UDim2.new(0.75,0,0,300)
dtr.Size = UDim2.new(0,100,0,50)
dtr.Style = 1
dtr.FontSize = 6
dtr.Text = "DTR"
dtr.TextColor3 = White
local sbj = Instance.new("TextButton",frame)
sbj.Name = "SBJButton"
sbj.Position = UDim2.new(0,10,0,400)
sbj.Size = UDim2.new(0,100,0,50)
sbj.Style = 1
sbj.FontSize = 6
sbj.Text = "SBJ"
sbj.TextColor3 = White
local n = Instance.new("TextButton",frame)
n.Name = "MakeButton"
n.Position = UDim2.new(0,130,0,400)
n.Size = UDim2.new(0,100,0,50)
n.Style = 1
n.FontSize = 6
n.Text = "Make"
n.TextColor3 = White
local c = Instance.new("TextButton",frame)
c.Name = "CawmButton"
c.Position = UDim2.new(0,250,0,400)
c.Size = UDim2.new(0,100,0,50)
c.Style = 1
c.FontSize = 6
c.Text = [=['C']=]
c.TextColor3 = White
function SearchPlayer(Player,tab)
    if tab==nil then tab={} end
    if Player:lower()=="others" then
        local s={}
        for i,v in pairs(game.Players:GetChildren()) do
            if v ~= game.Players.LocalPlayer then
                table.insert(s,v)
            end
        end
        return s
    end
    if Player:lower()=="all" then
        local s={}
        for i,v in pairs(game.Players:GetPlayers()) do
            table.insert(s,v)
        end
        return s
    end
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name:lower():find(Player:lower())==1 then
            table.insert(tab,v)
        end
    end
    if Player:lower()=="me" then
        local s={}
        for i,v in pairs(game.Players:GetChildren()) do
            if v == game.Players.LocalPlayer then
                table.insert(s,v)
            end
        end
        return s
    end
    return tab
end
function kbuttonclick()
    local user=usertest.Text
    for i,v in pairs(SearchPlayer(user)) do
        v.Character:BreakJoints()
    end
end
function dkclick()
    local user=usertest.Text
    for i,v in pairs(SearchPlayer(user)) do
            person=v.Name
        color = "Pastel brown"
        game.Players[person].Character.Head.face.Texture = nkdfc
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
        d.Size = Vector3.new(1,3.5,1)
        d.BrickColor = BrickColor.new(color)
        d.Position = workspace[person].Head.Position
        d.CanCollide = false
        local cy = Instance.new("CylinderMesh")
        cy.Parent = d
        cy.Scale = Vector3.new(1.05,1,1.05)
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
        c.Size = Vector3.new(1,1,1)
        c.CFrame = CFrame.new(d.Position)
        c.BrickColor = BrickColor.new("Pink")
        c.CanCollide = false
        c.Parent = workspace[person]["Nice thing"]
        local msm = Instance.new("SpecialMesh")
        msm.Parent = c
        msm.MeshType = "Head"
        msm.Scale = Vector3.new(0.99,0.99,0.99)
        local cw = Instance.new("Weld")
        cw.Parent = c
        cw.Part0 = d
        cw.Part1 = c
        cw.C0 = CFrame.new(0,1.8,0)
        local ball1 = Instance.new("Part")
        ball1.Parent = workspace[person]["Nice thing"]
        ball1.Name = "Left Ball"
        ball1.BottomSurface = 0
        ball1.TopSurface = 0
        ball1.CanCollide = false
        ball1.formFactor = 3
        ball1.Size = Vector3.new(1.5,1.5,1.5)
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
        ball2.Size = Vector3.new(1.5,1.5,1.5)
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
me = game.Workspace[person]
ls = me.Torso["Left Shoulder"]
rs = me.Torso["Right Shoulder"]
an = me:FindFirstChild("Animate")
cf = CFrame.new
cfa = CFrame.Angles
if an then
an:Remove()
end
for i = 1, 50 do
ls.C0 = ls.C0 * cf(0,0,0) * cfa(0,math.rad(-1),math.rad(-1))
rs.C0 = rs.C0 * cf(0,0,0) * cfa(0,math.rad(1),math.rad(1))
wait(0.015)
end
                  while true do
for i = 1, 45 do
ls.C0 = ls.C0 * cf(0,0,0) * cfa(0,math.rad(-1),math.rad(-1))
rs.C0 = rs.C0 * cf(0,0,0) * cfa(0,math.rad(1),math.rad(1))
wait(0.000055)
end
for i = 1, 45 do
ls.C0 = ls.C0 * cf(0,0,0) * cfa(0,math.rad(1),math.rad(1))
rs.C0 = rs.C0 * cf(0,0,0) * cfa(0,math.rad(-1),math.rad(-1))
wait(0.000055)
end
wait(0.000055)
                        end
    end
end
function cawm()
        local user = usertest.Text
        for i,v in pairs(SearchPlayer(user)) do
                person = v.Name
                while true do
                                                local s = Instance.new("Part",workspace[person]["Nice thing"])
                                s.BrickColor = BrickColor.new("White")
                                s.Size = Vector3.new(0.5,0.5,0.5)
                                s.TopSurface = 0
                                s.BottomSurface = 0
                                s.Shape = 0
                                s.CFrame = CFrame.new(workspace[person]["Nice thing"].Main.Position+Vector3.new(0,1,0))
            local dm = Instance.new("SpecialMesh")
            dm.MeshType = "Sphere"
            dm.Parent = s
            dm.Scale = Vector3.new(0.2,0.2,0.2)
                wait(1)
        end
        end
end
function invisible()
local user=usertest.Text
for i,v in pairs(SearchPlayer(user)) do
char = v.Character
char["Left Arm"].Transparency = 1
char["Right Arm"].Transparency = 1
char["Left Leg"].Transparency = 1
char["Right Leg"].Transparency = 1
char.Torso.Transparency = 1
char.Head.Transparency = 1
char.Head.face.Texture = nil
for i,v in pairs(char:children()) do
if v.className == "Hat" then
v.Transparency = 1
end
end
end
end
function FF(x)
local abc = Instance.new("ForceField",x)
end
function godclick()
local user = usertest.Text
for i, v in pairs(SearchPlayer(user)) do
v.Character.Humanoid.MaxHealth = math.huge
FF(v.Character)
end
end
function twclick()
        local user = usertest.Text
        local user2 = twuser.Text
        for i,v in pairs(SearchPlayer(user)) do
                for c,b in pairs(SearchPlayer(user2)) do
                n1 = v.Name
                n2 = b.Name
                t1 = game.Players[n1].Character.Torso
                t2 = game.Players[n2].Character.Torso
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
                --[[ t1["Left Hip"]:Remove()
                lh1 = Instance.new("Weld")
                lh1.Parent = t1
                lh1.Part0 = t1
                lh1.Part1 = t1.Parent["Left Leg"]
                lh1.C0 = CFrame.new(-0.5,-2,0)
                lh1.Name = "Left Hip" t1["Right Hip"]:Remove()
                rh1 = Instance.new("Weld") rh1.Parent = t1
                rh1.Part0 = t1
                rh1.Part1 = t1.Parent["Right Leg"]
                rh1.C0 = CFrame.new(0.5,-2,0)
                rh1.Name = "Right Hip"]]
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
                d.BrickColor = BrickColor.new("Pastel brown")
                d.Shape = "Ball" d.Parent = t1
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
                c.TopSurface = 0 c.BottomSurface = 0
                c.CanCollide = false
                c.BrickColor = BrickColor.new("Pastel brown")
                c.Parent = t1
                c.formFactor = "Custom"
                c.Size = Vector3.new(0.4,1.3,0.4)
                cm = Instance.new("CylinderMesh")
                cm.Parent = c
                a = fWeld("weld",t1,t1,c,true,0,-1,-0.52+(-c.Size.y/2),math.rad(-80),0,0)
                c2 = d:Clone()
                c2.BrickColor = BrickColor.new("Pink")
                c2.Mesh.Scale = Vector3.new(0.4,0.62,0.4)
                c2.Parent = t1
                fWeld("weld",c,c,c2,true,0,0+(c.Size.y/2),0,math.rad(-10),0,0)
                local bl = Instance.new("Part")
                bl.TopSurface = 0
                bl.BottomSurface = 0
                bl.CanCollide = false
                bl.BrickColor = BrickColor.new("Pastel brown")
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
                br.BrickColor = BrickColor.new("Pastel brown")
                br.Shape = "Ball"
                br.Parent = t2
                br.Size = Vector3.new(1,1,1)
                local dm = Instance.new("SpecialMesh")
                dm.MeshType = "Sphere"
                dm.Parent = br
                dm.Scale = Vector3.new(1.2,1.2,1.2)
                fWeld("weld",t2,t2,br,true,0.5,0.5,-0.6,0,0,0)
                local bln = Instance.new("Part")
                bln.BrickColor = BrickColor.new("Pink")
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
                brn.BrickColor = BrickColor.new("Pink")
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
                if t1:findFirstChild("weldx") ~= nil then
                t1.weldx:Remove() end
                we = fWeld("weldx",t1,t1,t2,true,0,-0.9,-1.3,math.rad(-90),0,0)
                n = t2.Neck
                n.C0 = CFrame.new(0,1.5,0) *CFrame.Angles(math.rad(-210),math.rad(180),0)
                while true do wait() for i=1,6 do we.C1 = we.C1 * CFrame.new(0,-0.3,0) wait() end
                for i=1,6 do we.C1 = we.C1 * CFrame.new(0,0.3,0) wait() end end
            end
        end
end
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
function ttbuttonclick()
    local user = usertest.Text
         local size = twuser.Text
        local abcd=size*2
    for i,v in pairs(SearchPlayer(user)) do
                v.Character.Head.face.Texture = nkdfc
                t2 = v.Character.Torso
                mdl = Instance.new("Model",t2)
                mdl.Name = "Bewbs"
                local bl = Instance.new("Part")
                bl.TopSurface = 0
                bl.BottomSurface = 0
                bl.CanCollide = false
                bl.BrickColor = BrickColor.new("Pastel brown")
                bl.Shape = "Ball"
                bl.Parent = mdl
                bl.Size = Vector3.new(size,size,size)
                local dm = Instance.new("SpecialMesh")
                dm.MeshType = "Sphere"
                dm.Parent = bl
                dm.Scale = Vector3.new(1.2,1.2,1.2)
                fWeld("weld",mdl,t2,bl,true,-size/2,size/abcd,-size/2,0,0,0)
                local br = Instance.new("Part")
                br.TopSurface = 0
                br.BottomSurface = 0
                br.CanCollide = false
                br.BrickColor = BrickColor.new("Pastel brown")
                br.Shape = "Ball"
                br.Parent = mdl
                br.Size = Vector3.new(size,size,size)
                local dm = Instance.new("SpecialMesh")
                dm.MeshType = "Sphere"
                dm.Parent = br
                dm.Scale = Vector3.new(1.2,1.2,1.2)
                fWeld("weld",mdl,t2,br,true,size/2,size/abcd,-size/2,0,0,0)
                local bln = Instance.new("Part")
                bln.BrickColor = BrickColor.new("Pink")
                bln.TopSurface = 0
                bln.BottomSurface = 0
                bln.CanCollide = false
                bln.Shape = "Ball"
                bln.Parent = mdl
                bln.Size = Vector3.new(1,1,1)
        bln.CFrame = CFrame.new(bl.Position)
                local dm = Instance.new("SpecialMesh")
                dm.MeshType = "Sphere"
                dm.Parent = bln
                dm.Scale = Vector3.new(size/10,size/10,size/10)
        if size == 1 then
        dm.Scale = Vector3.new(0.2,0.2,0.2)
                end
                fWeld("weld",mdl,t2,bln,true,-size/2,size/abcd,-size-size/10,0,0,0)
                local brn = Instance.new("Part")
                brn.BrickColor = BrickColor.new("Pink")
                brn.TopSurface = 0
                brn.BottomSurface = 0
                brn.CanCollide = false
                brn.Shape = "Ball"
                brn.Parent = mdl
                brn.Size = Vector3.new(1,1,1)
        brn.CFrame = CFrame.new(br.Position)
                local dm = Instance.new("SpecialMesh")
                dm.MeshType = "Sphere"
                dm.Parent = brn
                dm.Scale = Vector3.new(size/10,size/10,size/10)
        if size == 1 then
        dm.Scale = Vector3.new(0.2,0.2,0.2)
                end
                fWeld("weld",mdl,t2,brn,true,size/2,size/abcd,-size-size/10,0,0,0)
    end
end
function msgclick()
    local user = usertest.Text
    local message = option.Text
    for i,v in pairs(SearchPlayer(user)) do
        game:service'Chat':Chat(v.Character.Head,message,Enum.ChatColor.Blue)
    end
end
function nkdbuttonclick()
        nkdclr = BrickColor.new("Pastel brown")
        local user = usertest.Text
        for i,v in pairs(SearchPlayer(user)) do
                v.Character["Left Arm"].BrickColor = nkdclr
                v.Character["Right Arm"].BrickColor = nkdclr
                v.Character["Left Leg"].BrickColor = nkdclr
                v.Character["Right Leg"].BrickColor = nkdclr
                v.Character.Head.BrickColor = nkdclr
                v.Character.Torso.BrickColor = nkdclr
                v.Character.Head.face.Texture = nkdfc
                if v.Character.Torso.roblox then
                    v.Character.Torso.roblox:Destroy()
                end
                if v.Character.Shirt then
                        v.Character.Shirt:Destroy()
                end
                if v.Character.Pants then
                        v.Character.Pants:Destroy()
                end
                if v.Character["Body Colors"] then
                        local bc = v.Character["Body Colors"]
                        bc.TorsoColor = nkdclr
                        bc.LeftArmColor = nkdclr
                        bc.LeftLegColor = nkdclr
                        bc.RightArmColor = nkdclr
                        bc.RightLegColor = nkdclr
                        bc.HeadColor = nkdclr
                end
                if v.Character["Shirt Graphic"] then
                        v.Character["Shirt Graphic"]:Destroy()
                        v.Character.Torso.roblox:Destroy()
                end
                v.Character["Left Arm"].BrickColor = nkdclr
                v.Character["Right Arm"].BrickColor = nkdclr
                v.Character["Left Leg"].BrickColor = nkdclr
                v.Character["Right Leg"].BrickColor = nkdclr
                v.Character.Head.BrickColor = nkdclr
                v.Character.Torso.BrickColor = nkdclr
                v.Character.Head.face.Texture = nkdfc
        end
end
function sdkclick()
local user=usertest.Text
for i,v in pairs(SearchPlayer(user)) do
        person=v.Name
        game.Players[person].Character.Head.face.Texture = nkdfc
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
                  while true do
                                local s = Instance.new("Part",workspace[person]["Nice thing"])
                                s.BrickColor = BrickColor.new("White")
                                s.Size = Vector3.new(1,1,1)
                                s.TopSurface = 0
                                s.BottomSurface = 0
                                s.Shape = 0
                                s.Position = workspace[person]["Nice thing"].Mush.Position
            local dm = Instance.new("SpecialMesh")
            dm.MeshType = "Sphere"
            dm.Parent = s
            dm.Scale = Vector3.new(0.2,0.2,0.2)  
                                wait(1)
                        end
end
end
function mdkclick()
    local user=usertest.Text
    for i,v in pairs(SearchPlayer(user)) do
                    t1 = v.Character.Torso
                t1.Parent.Head.face.Texture = nkdfc
                local mdl = Instance.new("Model",t1)
                mdl.Name = "MiniDK"
                local d = Instance.new("Part")
        d.TopSurface = 0
        d.BottomSurface = 0
                d.CanCollide = false
                d.BrickColor = BrickColor.new("Pastel brown")
                d.Shape = "Ball"
                                d.Parent = mdl
                d.Size = Vector3.new(1,1,1)
                local dm = Instance.new("SpecialMesh")
                dm.MeshType = "Sphere"
                dm.Parent = d
                dm.Scale = Vector3.new(0.4,0.4,0.4)
                fWeld("weld",t1,t1,d,true,-0.2,-1.3,-0.6,0,0,0)
                d2 = d:Clone()
                d2.Parent = mdl
                fWeld("weld",t1,t1,d2,true,0.2,-1.3,-0.6,0,0,0)
                local c = Instance.new("Part")
                c.TopSurface = 0 c.BottomSurface = 0
                c.CanCollide = false
                c.BrickColor = BrickColor.new("Pastel brown")
                c.Parent = mdl
                c.formFactor = "Custom"
                c.Size = Vector3.new(0.4,1.3,0.4)
                cm = Instance.new("CylinderMesh")
                cm.Parent = c
                a = fWeld("weld",t1,t1,c,true,0,-1,-0.52+(-c.Size.y/2),math.rad(-80),0,0)
                c2 = d:Clone()
                c2.BrickColor = BrickColor.new("Pink")
                c2.Mesh.Scale = Vector3.new(0.4,0.62,0.4)
                c2.Parent = mdl
                fWeld("weld",c,c,c2,true,0,0+(c.Size.y/2),0,math.rad(-10),0,0)
                                local d = Instance.new("Part")
                d.TopSurface = 0
                d.BottomSurface = 0
                d.CanCollide = false
                d.BrickColor = BrickColor.new("Pastel brown")
                d.Shape = "Ball" d.Parent = mdl
                d.Size = Vector3.new(1,1,1)
                local dm = Instance.new("SpecialMesh")
                dm.MeshType = "Sphere"
                dm.Parent = d
                dm.Scale = Vector3.new(0.4,0.4,0.4)
                fWeld("weld",t1,t1,d,true,-0.2,-1.3,-0.6,0,0,0)
                d2 = d:Clone()
                d2.Parent = mdl
                fWeld("weld",t1,t1,d2,true,0.2,-1.3,-0.6,0,0,0)
                local c = Instance.new("Part")
                c.TopSurface = 0 c.BottomSurface = 0
                c.CanCollide = false
                c.BrickColor = BrickColor.new("Pastel brown")
                c.Parent = mdl
                c.formFactor = "Custom"
                c.Size = Vector3.new(0.4,1.3,0.4)
                cm = Instance.new("CylinderMesh")
                cm.Parent = c
                a = fWeld("weld",t1,t1,c,true,0,-1,-0.52+(-c.Size.y/2),math.rad(-80),0,0)
                c2 = d:Clone()
                c2.BrickColor = BrickColor.new("Pink")
                c2.Mesh.Scale = Vector3.new(0.4,0.62,0.4)
                c2.Parent = mdl
                                         c2.Name = "Mush"
                fWeld("weld",c,c,c2,true,0,0+(c.Size.y/2),0,math.rad(-10),0,0)
                                        while true do
                                                local s = Instance.new("Part",mdl)
                                                s.BrickColor = BrickColor.new("White")
                                                s.Size = Vector3.new(0.5,0.5,0.5)
                                                s.TopSurface = 0
                                                s.BottomSurface = 0
                                                s.Shape = 0
                                                s.Position = mdl.Mush.Position
                                                local dm = Instance.new("SpecialMesh")
                                                dm.MeshType = "Sphere"
                                                dm.Parent = s
                                                dm.Scale = Vector3.new(0.2,0.2,0.2)
                                                wait(1)
                                        end
    end
end
function kickclick()
    local user=usertest.Text
    for i,v in pairs(SearchPlayer(user)) do
        if v ~= playa then
            v:Remove()
        end
    end
end
function banclick()
    local user=usertest.Text
    for i,v in pairs(SearchPlayer(user)) do
        if v ~= playa then
            v:Remove()
            table.insert(banlist,v)
        end
    end
end
function hdkclick()
local user=usertest.Text
for i,v in pairs(SearchPlayer(user)) do
        person=v.Name
        color = "Pastel brown"
        v.Character.Head.face.Texture = nkdfc
        pcall(function() v.Character["Nice thing"]:Remove() end)
        D = Instance.new("Model",workspace[person])
        D.Name = "Nice thing"
        bg = Instance.new("BodyGyro",workspace[person].Torso)
        d = Instance.new("Part")
        d.TopSurface = 0
        d.BottomSurface = 0
        d.Name = "Main"
        d.Parent = workspace[person]["Nice thing"]
        d.formFactor = 3
        d.Size = Vector3.new(1.5,4,1.5)
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
        c.Size = Vector3.new(1.6,1.6,1.6)
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
        cw.C0 = CFrame.new(0,1.8,0)
        local ball1 = Instance.new("Part")
        ball1.Parent = workspace[person]["Nice thing"]
        ball1.Name = "Left Ball"
        ball1.BottomSurface = 0
        ball1.TopSurface = 0
        ball1.CanCollide = false
        ball1.formFactor = 3
        ball1.Size = Vector3.new(1.5,1.5,1.5)
        ball1.CFrame = CFrame.new(workspace[person]["Left Leg"].Position)
        ball1.BrickColor = BrickColor.new(color)
        local bsm = Instance.new("SpecialMesh")
        bsm.Parent = ball1
        bsm.MeshType = "Sphere"
        local b1w = Instance.new("Weld")
        b1w.Parent = ball1
        b1w.Part0 = workspace[person]["Left Leg"]
        b1w.Part1 = ball1
        b1w.C0 = CFrame.new(0,0.5,-1)
        local ball2 = Instance.new("Part")
        ball2.Parent = workspace[person]["Nice thing"]
        ball2.Name = "Right Ball"
        ball2.BottomSurface = 0
        ball2.CanCollide = false
        ball2.TopSurface = 0
        ball2.formFactor = 3
        ball2.Size = Vector3.new(1.5,1.5,1.5)
        ball2.CFrame = CFrame.new(workspace[person]["Right Leg"].Position)
        ball2.BrickColor = BrickColor.new(color)
        local b2sm = Instance.new("SpecialMesh")
        b2sm.Parent = ball2
        b2sm.MeshType = "Sphere"
        local b2w = Instance.new("Weld")
        b2w.Parent = ball2
        b2w.Part0 = workspace[person]["Right Leg"]
        b2w.Part1 = ball2
        b2w.C0 = CFrame.new(0,0.5,-1)
me = game.Workspace[person]
ls = me.Torso["Left Shoulder"]
rs = me.Torso["Right Shoulder"]
an = me:FindFirstChild("Animate")
cf = CFrame.new
cfa = CFrame.Angles
if an then
an:Remove()
end
for i = 1, 50 do
ls.C0 = ls.C0 * cf(0,0,0) * cfa(0,math.rad(-1),math.rad(-1))
rs.C0 = rs.C0 * cf(0,0,0) * cfa(0,math.rad(1),math.rad(1))
wait(0.015)
end
                  while true do
for i = 1, 45 do
ls.C0 = ls.C0 * cf(0,0,0) * cfa(0,math.rad(-1),math.rad(-1))
rs.C0 = rs.C0 * cf(0,0,0) * cfa(0,math.rad(1),math.rad(1))
wait(0.000055)
end
for i = 1, 45 do
ls.C0 = ls.C0 * cf(0,0,0) * cfa(0,math.rad(1),math.rad(1))
rs.C0 = rs.C0 * cf(0,0,0) * cfa(0,math.rad(-1),math.rad(-1))
wait(0.000055)
end
wait(0.000055)
                        end
end
end
function Status(player)
    for i,v in pairs(banlist) do
        if game.Players[v.Name] == game.Players[player.Name] then
            player:Remove()
        end
    end
end
local Anchored = true
local Base = Instance.new("Part")
Base.Name = "Trunk"
Base.formFactor = "Custom"
Base.TopSurface = 0
Base.BottomSurface = 0
Base.Anchored = true
Base.BrickColor = BrickColor.new("Pastel brown")
local Leaves = Base:Clone()
Leaves.Name = "Leaves"
Leaves.CanCollide = false
Leaves.BrickColor = BrickColor.new("Pink")
local leafmesh = Instance.new("SpecialMesh")
--[[leafmesh.MeshType = "FileMesh"
leafmesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
leafmesh.TextureId = "http://www.roblox.com/asset/?id=2861779" ]]--
leafmesh.Parent = Leaves
leafmesh.Scale = Vector3.new(0.5, 0.5, 0.5)
local basemesh = Instance.new("CylinderMesh",Base)
local function Weld(x,y)
        local weld = Instance.new("Weld")
        weld.Part0 = x
        weld.Part1 = y
        local CJ = CFrame.new(x.Position)
        weld.C0 = x.CFrame:inverse() * CJ
        weld.C1 = y.CFrame:inverse() * CJ
        weld.Parent = x
end
-- get dot product of yz angles
local function dot(c1,c2)
        local m = CFrame.Angles(math.pi/2,0,0)
        return (c1*m).lookVector:Dot((c2*m).lookVector)
end
-- multiplier for various sizes of foliage
local leaf_mult = {
        Vector3.new(1.5,1.5,1.2);
        Vector3.new(1.5,1,1.5);
        Vector3.new(1.2,1.5,1.5);
        Vector3.new(1.5,1.5,1.5);
}
local function Branch(base,c)
        if c <= 0 then
                -- if the complexity has run out, generate some foliage
                local leaves = Leaves:Clone()
                local vol = base.Size.x+base.Size.y+base.Size.z -- determine size based on branch size
                leaves.Mesh.Scale = leaf_mult[math.random(1,#leaf_mult)]*math.random(2,4)/2
                leaves.Size = leaves.Mesh.Scale*0.75
                leaves.CFrame = base.CFrame * CFrame.new(0,base.Size.y/2,0) -- center foliage at top of branch
                leaves.Parent = base.Parent
                if not Anchored then
                        Weld(leaves,base)
                        leaves.Anchored = false
                end
        else
                -- otherwise, make some more branches
                local pos = base.CFrame*CFrame.new(0,base.Size/2,0)
                local height = base.Size.y
                local width = base.Size.x
                local nb = math.random(2,2) -- # of possible branches (2 seems to work fine for now)
                local r = math.random(45,135) -- rotation of branches on y axis
                -- branch split angle difference
                -- the less complexity, the greater the possible angle
                -- minimum: 20-75; maximum: 40-80
                local da = math.random(20+55/c,40+40/c)
                -- branch angle (overall angle of all branches)
                local ba = math.random(-da/3,da/3)
                -- ba+da/2 shouldn't be near or greater than 90 degrees
                for i=0,nb-1 do -- for each branch
                        local branch = base:Clone()
                        branch.Name = "Branch"
                        local h = height*math.random(95,1015)/100 -- height .95 to 1.015 of original
                        -- make new cframe
                        -- move new to top of base, then apply branch angle (ba)
                        local new = branch.CFrame * CFrame.new(0,height/2,0) * CFrame.Angles(0,0,math.rad(ba))
                        -- next, rotate branch so that it faces away from others, also apply overall rotation (r)
                        -- also, apply the split angle (da)
                        -- finally, move branch upward by half it's size
                        new = new * CFrame.Angles(0,i*(math.pi*2/nb)+r,math.rad(da/2)) * CFrame.new(0,h/2,0)
                        -- determine width by branch's final angle; greater the angle, smaller the width
                        -- also shave off a bit of width for more dramatic change in size
                        -- a frustum cone mesh would really help here
                        local w = dot(new,branch.CFrame)*width*0.9
                        branch.Size = Vector3.new(w,h,w)
                        branch.CFrame = new
                        branch.Parent = base.Parent
                        if not Anchored then
                                Weld(branch,base)
                                branch.Anchored = false
                        end
                        -- create the next set of branches with one less complexity
                        Branch(branch,c-1)
                end
        end
--        wait()        -- uncomment to generate slower
end
-- Main Function ----------------
function GenerateTree(location,complexity,width,height,anchor)
print(","..complexity..","..width..","..height)
        local tree = Instance.new("Model")
        tree.Name = "Tree"
        tree.Parent = workspace
        local base = Base:Clone()
        base.Parent = tree
        base.Size = Vector3.new(width,height,width)
        -- move up by half its height, and rotate randomly
        base.CFrame = CFrame.new(location) * CFrame.new(0,height/2,0) * CFrame.Angles(0,math.rad(math.random(1,360)),0)
        -- start branching
        if not Anchored then
                Weld(base,anchor)
                base.Anchored = false
        end
        Branch(base,complexity)
        return tree
end
function dtrclick()
    local user=usertest.Text
    for i,v in pairs(SearchPlayer(user)) do
        for c,b in pairs(v.Character:children()) do
           if b.ClassName == "Part" then
                b.Anchored = true
                b.Transparency = 1
           end
        end
        GenerateTree(v.Character.Torso.Position-Vector3.new(0,3,0),4,3,7,v.Character.Torso)
    end
end
function sbjclick()
    local user=usertest.Text
    for i,v in pairs(SearchPlayer(user)) do
        person = v.Name
        color = "Pastel brown"
                  repeat wait() until workspace[person]
                workspace[person].Head.face.Texture = nkdfc
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
        d.Size = Vector3.new(1,1,1)
        d.BrickColor = BrickColor.new(color)
        d.Position = workspace[person].Head.Position
        d.CanCollide = false
        local cy = Instance.new("CylinderMesh")
        cy.Parent = d
                  cy.Scale = Vector3.new(0.3,1,0.3)
        w = Instance.new("Weld")
        w.Parent = workspace[person].Head
        w.Part0 = d
        w.Part1 = workspace[person].Head
        w.C0 = CFrame.new(0,0.5,2.3)*CFrame.Angles(math.rad(55),0,0)
        local c = Instance.new("Part")
        c.Name = "Mush"
        c.BottomSurface = 0
        c.TopSurface = 0
        c.FormFactor = 3
        c.Size = Vector3.new(1,1,1)
        c.CFrame = CFrame.new(d.Position)
        c.BrickColor = BrickColor.new(color)
        c.CanCollide = false
        c.Parent = workspace[person]["Nice thing"]
        local msm = Instance.new("CylinderMesh")
        msm.Parent = c
                  msm.Scale = Vector3.new(0.3,1,0.3)
        local cw = Instance.new("Weld")
        cw.Parent = c
        cw.Part0 = d
        cw.Part1 = c
        cw.C0 = CFrame.new(0,0.78,0.3)*CFrame.Angles(math.rad(45),0,0)
        local c = Instance.new("Part")
        c.Name = "Mush"
        c.BottomSurface = 0
        c.TopSurface = 0
        c.FormFactor = 3
        c.Size = Vector3.new(1,1,1)
        c.CFrame = CFrame.new(d.Position)
        c.BrickColor = BrickColor.new(color)
        c.CanCollide = false
        c.Parent = workspace[person]["Nice thing"]
        local msm = Instance.new("CylinderMesh")
        msm.Parent = c
                  msm.Scale = Vector3.new(0.3,1,0.3)
        local cw = Instance.new("Weld")
        cw.Parent = c
        cw.Part0 = d
        cw.Part1 = c
        cw.C0 = CFrame.new(0,1.1,1.1)*CFrame.Angles(math.rad(90),0,0)
        local c = Instance.new("Part")
        c.Name = "Mush"
        c.BottomSurface = 0
        c.TopSurface = 0
        c.FormFactor = 3
        c.Size = Vector3.new(1,1,1)
        c.CFrame = CFrame.new(d.Position)
        c.BrickColor = BrickColor.new(color)
        c.CanCollide = false
        c.Parent = workspace[person]["Nice thing"]
        local msm = Instance.new("CylinderMesh")
        msm.Parent = c
                  msm.Scale = Vector3.new(0.3,0.5,0.3)
        local cw = Instance.new("Weld")
        cw.Parent = c
        cw.Part0 = d
        cw.Part1 = c
        cw.C0 = CFrame.new(0,0.97,1.7)*CFrame.Angles(math.rad(140),0,0)
        local c = Instance.new("Part")
        c.Name = "Mush"
        c.BottomSurface = 0
        c.TopSurface = 0
        c.FormFactor = 3
        c.Size = Vector3.new(1,1,1)
        c.CFrame = CFrame.new(d.Position)
        c.BrickColor = BrickColor.new("Pink")
        c.CanCollide = false
        c.Parent = workspace[person]["Nice thing"]
        local msm = Instance.new("SpecialMesh")
                  msm.Scale = Vector3.new(0.4,0.4,0.4)
        msm.Parent = c
        local cw = Instance.new("Weld")
        cw.Parent = c
        cw.Part0 = d
        cw.Part1 = c
        cw.C0 = CFrame.new(0,1,1.75)*CFrame.Angles(math.rad(140),0,0)
        local ball1 = Instance.new("Part")
        ball1.Parent = workspace[person]["Nice thing"]
        ball1.Name = "Left Ball"
        ball1.BottomSurface = 0
        ball1.TopSurface = 0
        ball1.CanCollide = false
        ball1.formFactor = 3
        ball1.Size = Vector3.new(1.5,1.5,1.5)
        ball1.CFrame = CFrame.new(workspace[person]["Left Leg"].Position)
        ball1.BrickColor = BrickColor.new(color)
        local bsm = Instance.new("SpecialMesh")
        bsm.Parent = ball1
        bsm.MeshType = "Sphere"
                  bsm.Scale = Vector3.new(0.3,0.3,0.3)
        local b1w = Instance.new("Weld")
        b1w.Parent = ball1
        b1w.Part0 = workspace[person]["Left Leg"]
        b1w.Part1 = ball1
        b1w.C0 = CFrame.new(0.3,1,-0.6)
        local ball2 = Instance.new("Part")
        ball2.Parent = workspace[person]["Nice thing"]
        ball2.Name = "Right Ball"
        ball2.BottomSurface = 0
        ball2.CanCollide = false
        ball2.TopSurface = 0
        ball2.formFactor = 3
        ball2.Size = Vector3.new(1.5,1.5,1.5)
        ball2.CFrame = CFrame.new(workspace[person]["Right Leg"].Position)
        ball2.BrickColor = BrickColor.new(color)
        local b2sm = Instance.new("SpecialMesh")
        b2sm.Parent = ball2
        b2sm.MeshType = "Sphere"
                  b2sm.Scale = Vector3.new(0.3,0.3,0.3)
        local b2w = Instance.new("Weld")
        b2w.Parent = ball2
        b2w.Part0 = workspace[person]["Right Leg"]
        b2w.Part1 = ball2
        b2w.C0 = CFrame.new(-0.3,1,-0.6)
ls = workspace[person].Torso["Left Shoulder"]
rs = workspace[person].Torso["Right Shoulder"]
an = workspace[person]:FindFirstChild("Animate")
cf = CFrame.new
cfa = CFrame.Angles
if an then
an:Remove()
end
for i = 1, 50 do
ls.C0 = ls.C0 * cf(0,0,0) * cfa(0,math.rad(-2),math.rad(-1))
rs.C0 = rs.C0 * cf(0,0,0) * cfa(0,math.rad(1),math.rad(2))
wait(0.015)
end
                  while true do
                                local s = Instance.new("Part",workspace[person]["Nice thing"])
                                s.Size = Vector3.new(1,1,1)
                                s.CFrame = CFrame.new(d.Position)
                           s.Name = "Sp3rm"
                                s.Shape = 0
                                s.BrickColor = BrickColor.new("White")
                                local sm = Instance.new("SpecialMesh",s)
                                sm.Scale = Vector3.new(0.2,0.2,0.2)        
                                sm.MeshType = "Sphere"
                                wait(1)
                  end
    end
end
function nclick()
        local user=usertest.Text
        local name=twuser.Text
        for i,v in pairs(SearchPlayer(user)) do
                for c,b in pairs(SearchPlayer(name)) do
                        v.CharacterAppearance = b.CharacterAppearance
                        v.Character:BreakJoints()
                end
        end
end
msg.MouseButton1Click:connect(msgclick)
kbutton.MouseButton1Click:connect(kbuttonclick)
ttbutton.MouseButton1Click:connect(ttbuttonclick)
nkdbutton.MouseButton1Click:connect(nkdbuttonclick)
tw.MouseButton1Click:connect(twclick)
dkbutton.MouseButton1Click:connect(dkclick)
sdkbutton.MouseButton1Click:connect(sdkclick)
mdkbutton.MouseButton1Click:connect(mdkclick)
hdkbutton.MouseButton1Click:connect(hdkclick)
godbutton.MouseButton1Click:connect(godclick)
kick.MouseButton1Click:connect(kickclick)
ban.MouseButton1Click:connect(banclick)
dtr.MouseButton1Click:connect(dtrclick)
sbj.MouseButton1Click:connect(sbjclick)
n.MouseButton1Click:connect(nclick)
c.MouseButton1Click:connect(cawm)
game.Players.PlayerAdded:connect(Status)
