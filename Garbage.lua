-- leaked by CLarramore
-- This is edited sooooo  Fuck you whoever edited this

do 
    function GetDiscoColor(hue)
        hue=hue/4
    local section = hue % 1 * 3
    local secondary = 0.5 * math.pi * (section % 1)
        local thing
    if section < 1 then
        thing=Color3.new(1, 1 - math.cos(secondary), 1 - math.sin(secondary))
    elseif section < 2 then
        thing=Color3.new(1 - math.sin(secondary), 1, 1 - math.cos(secondary))
    else
        thing=Color3.new(1 - math.cos(secondary), 1 - math.sin(secondary), 1)
    end
        return thing
end
function VertexRainbow()
        return Vector3.new(math.random(),math.random(),math.random())
        end
local plr = game.Players.LocalPlayer
local chr = plr.Character
local maus = plr:GetMouse()
local PGui=plr.PlayerGui
local lleg = chr["Left Leg"]
local rleg = chr["Right Leg"]
local larm = chr["Left Arm"]
local rarm = chr["Right Arm"]
local hed = chr.Head
local rutprt = chr.HumanoidRootPart
local torso = chr.Torso
local otheranims=false
local swimming=false
chr.Animate.Disabled=true
local fldb={['w']=false,['a']=false,['s']=false,['d']=false}
local RunSpeed=80
local WlkSpeed=16
local SwimSpeed=14
local SwimDashSpeed=1000
local anim = "Idling"
local lastanim = "Idling"
local flying=false
local val = 0
local syne = 0
local num = 0
local runtime = 0
local TackleCD=false
local currentdecalid=1
local crouching=false
local bboxout=false
local ltout=false
local standing=false
local throwcd=false
local displaying=false
local imageType="Custom"
local pseudohead=hed:Clone()
for i,x in pairs(pseudohead:GetChildren()) do if not x.ClassName:find('Mesh') then x:Destroy() end end
pseudohead.Name='PseudoHead'
pseudohead.Parent=chr.Head
local pseudoweld=Instance.new('Weld',torso)
pseudoweld.Part0=hed
pseudoweld.Name='PseudoHeadWeld'
pseudoweld.Part1=pseudohead
hed.Transparency=1
for i,x in pairs(chr:GetChildren()) do
if x:IsA'Hat' then x:destroy'' end end
for i,x in pairs(chr:GetChildren()) do
for a,v in pairs(x:GetChildren()) do
if v:IsA'CharacterMesh' then v:destroy''
end
end
end
local     alldecals={"387418012","339886198","339302474","339302316","339303212","339302607","339302826","339303065","339303400","150037981","167241003","235558077","265452635","260161937","242814125","230417107","252230874","231949998","229222676","181607551","231953209","123431503","184905165","172755711","161494218","292791711","205912841","68953525","180163702","123385234","138847283","159127645","172511645","210175195","206539362","192486406","96613287","131764585","168427244","128595009","96687581","171590601","172329151","72116648","221557708","214883980"}

local decals={"387418012","235558078","339302317","339303401","265452690","339303066","339302827","242814126","181607552"}
local musics={"142594142","202020876"}
local currentsound=1
local     GarbageTypes={{"Grapes","16940906","16940893",Vector3.new(.8,.8,.8),"284627310"},{"Lightbulb","1376459","1376456",Vector3.new(1,1,1),"235040768"},{"Turkey","13073626","13073598",Vector3.new(2,2,2),"284627310"},{"JuiceBottle","57219451","57219520",Vector3.new(1.75,1.75,1.75),"235040768"},{"Can","10470609","10470600",Vector3.new(1,1,1),"284627310"},{"dunno     lol","55304507","55304460",Vector3.new(1,1,1),"235040768"},{"Burger","16646125","16432575",Vector3.new(1.1,1.1,1.1),"284627310"},{"Candy","38160912","38161977",Vector3.new(1.15,1.15,1.15),"154162195"},{"Sandwich","12510164","12509672",Vector3.new(2.5,2.5,2.5),"284627310"}}
coroutine.wrap(function()
for i,x in pairs(hed:GetChildren()) do if x:IsA('Sound') then x:Destroy() end end end)()
function Lerp(a, b, i)
local com1 = {a.X, a.Y, a.Z, a:toEulerAnglesXYZ()}
local com2 = {b.X, b.Y, b.Z, b:toEulerAnglesXYZ()}
local calx = com1[1] + (com2[1] - com1[1]) * i
local caly = com1[2] + (com2[2] - com1[2]) * i
local calz = com1[3] + (com2[3] - com1[3]) * i
local cala = com1[4] + (com2[4] - com1[4]) * i
local calb = com1[5] + (com2[5] - com1[5]) * i
local calc = com1[6] + (com2[6] - com1[6]) * i
return CFrame.new(calx, caly, calz) * CFrame.Angles(cala, calb, calc)
end
function TwnSingleNumber(s,f,m)
local wot=s+(f-s)*m
return wot
end
function TwnVector3(q,w,e)
local begin={q.x,q.y,q.z}
local ending={w.x,w.y,w.z}
local bgx=begin[1]+(ending[1]-begin[1])*e
local bgy=begin[2]+(ending[2]-begin[2])*e
local bgz=begin[3]+(ending[3]-begin[3])*e
return Vector3.new(bgx,bgy,bgz)
end
newWeld = function(wld, wp0, wp1, wc0x, wc0y, wc0z)
wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
newWeld(law, torso, larm, -1.5, 0.5, 0)
newWeld(raw, torso, rarm, 1.5, 0.5, 0)
newWeld(llw, torso, lleg, -.5, -2, 0)
newWeld(rlw, torso, rleg, .5, -2, 0)
newWeld(hw, torso, hed, 0, 1.5, 0)
local rutwald=Instance.new('Weld',rutprt)
rutwald.Part0=rutprt
rutwald.Part1=torso
rutprt.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),0,0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),0,0)
rleg.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)
lleg.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)



local bvelo=Instance.new('BodyVelocity',rutprt)
bvelo.maxForce=Vector3.new(0,0,0)



local kan=Instance.new('Model',chr)
kan.Name="true can"
local cen=Instance.new('Model',kan)
cen.Name='no'
local can=Instance.new('Model',cen)
can.Name="i cri"
local base=Instance.new('Part',can)
base.formFactor=3
base.TopSurface=10
base.BottomSurface=10
base.LeftSurface=10
base.RightSurface=10
base.FrontSurface=10
base.BackSurface=10
base.Locked=true
base.CanCollide=true
base.Anchored=false
base.BrickColor=BrickColor.new('Fossil')
base.Name='Can'
base.Size=Vector3.new(3,3.5,3)
base.Material='Metal'
local canm=Instance.new("CylinderMesh",base)
local base2=Instance.new('Part',can)
base2.formFactor=3
base2.TopSurface=10
base2.BottomSurface=10
base2.LeftSurface=10
base2.RightSurface=10
base2.FrontSurface=10
base2.BackSurface=10
base2.Locked=true
base2.CanCollide=false
base2.Anchored=false
base2.BrickColor=BrickColor.new('Really black')
base2.Name='InnerCan'
base2.Size=Vector3.new(2.8,.2,2.8)
base2.Material='SmoothPlastic'
local lid=Instance.new('Part',can)
local canm2=Instance.new("CylinderMesh",base2)
lid.Name='Lid'
lid.formFactor=3
lid.TopSurface=10
lid.BottomSurface=10
lid.LeftSurface=10
lid.RightSurface=10
lid.BackSurface=10
lid.FrontSurface=10
lid.CanCollide=true
lid.Anchored=false
lid.Locked=true
lid.Size=Vector3.new(3,3,.2)
local heli1=Instance.new('Part',can)
heli1.formFactor=3
heli1.TopSurface=10
heli1.BottomSurface=10
heli1.LeftSurface=10
heli1.RightSurface=10
heli1.FrontSurface=10
heli1.BackSurface=10
heli1.Locked=true
heli1.CanCollide=true
heli1.Anchored=false
heli1.BrickColor=BrickColor.new('Dark stone grey')
heli1.Name='Can'
heli1.Size=Vector3.new(.1,3,.1)
heli1.Material='Metal'
local helim1=Instance.new("CylinderMesh",heli1)
helim1.Scale=Vector3.new(.5,1,.5)
local heli2=Instance.new('Part',can)
heli2.formFactor=3
heli2.TopSurface=10
heli2.BottomSurface=10
heli2.LeftSurface=10
heli2.RightSurface=10
heli2.FrontSurface=10
heli2.BackSurface=10
heli2.Locked=true
heli2.CanCollide=true
heli2.Anchored=false
heli2.BrickColor=BrickColor.new('Dark stone grey')
heli2.Name='Can'
heli2.Size=Vector3.new(.1,.1,2.9)
heli2.Material='Metal'
local helim2=Instance.new("BlockMesh",heli2)
helim2.Scale=Vector3.new(.5,.1,1)
local heli3=Instance.new('Part',can)
heli3.formFactor=3
heli3.TopSurface=10
heli3.BottomSurface=10
heli3.LeftSurface=10
heli3.RightSurface=10
heli3.FrontSurface=10
heli3.BackSurface=10
heli3.Locked=true
heli3.CanCollide=true
heli3.Anchored=false
heli3.BrickColor=BrickColor.new('Dark stone grey')
heli3.Name='Can'
heli3.Size=Vector3.new(.1,.1,2.9)
heli3.Material='Metal'
local helim3=Instance.new("BlockMesh",heli3)
helim3.Scale=Vector3.new(.5,.1,1)
local hits=Instance.new('Sound',lid)
hits.Name='hit'
hits.SoundId="http://www.roblox.com/asset?id=138259748"
hits.Volume=.3
hits.Pitch=.9
local opens=Instance.new('Sound',lid)
opens.Name='Open'
opens.Volume=.225
opens.Pitch=.9
opens.SoundId="http://www.roblox.com/asset?id=144467622"
local lidm=Instance.new('SpecialMesh',lid)
lidm.Scale=Vector3.new(1.8,1.8,3)
lidm.TextureId="http://www.roblox.com/asset/?id=75521030"
lidm.MeshId="http://www.roblox.com/asset/?id=75521015"

coroutine.resume(coroutine.create(function()
        while wait() do
                lidm.VertexColor=VertexRainbow()
        end
        end))
local waifu=Instance.new('Part',can)
waifu.Name='cri cri'
waifu.formFactor=3
waifu.TopSurface=10
waifu.BottomSurface=10
waifu.LeftSurface=10
waifu.RightSurface=10
waifu.BackSurface=10
waifu.FrontSurface=10
waifu.CanCollide=false
waifu.Anchored=false
waifu.Transparency=1
waifu.Locked=true
waifu.Size=Vector3.new(2,.2,2)
local img=Instance.new('Decal',waifu)
img.Texture="http://www.roblox.com/asset?id="..alldecals[math.random(1,#alldecals)]
img.Face='Top'
local bbox=Instance.new('Part',can)
bbox.Name='boombox'
bbox.formFactor=3
bbox.TopSurface=10
bbox.BottomSurface=10
bbox.LeftSurface=10
bbox.RightSurface=10
bbox.BackSurface=10
bbox.FrontSurface=10
bbox.CanCollide=false
bbox.Anchored=false
bbox.Transparency=0
bbox.Locked=true
bbox.Size=Vector3.new(2,2,1)
local bbms=Instance.new('SpecialMesh',bbox)
bbms.MeshId="http://www.roblox.com/asset?id=319536754"
bbms.TextureId="http://www.roblox.com/asset?id=319536704"
local bulb=Instance.new('Part',can)
bulb.Name='lightbulb'
bulb.formFactor=3
bulb.TopSurface=10
bulb.BottomSurface=10
bulb.LeftSurface=10
bulb.RightSurface=10
bulb.BackSurface=10
bulb.FrontSurface=10
bulb.CanCollide=false
bulb.Anchored=false
bulb.Transparency=.4
bulb.Locked=true
bulb.Size=Vector3.new(.8,1,.8)
local lt=Instance.new('PointLight',bulb)
lt.Range=16
lt.Color=BrickColor.new('New Yeller').Color
lt.Enabled=false
lt.Shadows=true

local blbms=Instance.new('SpecialMesh',bulb)
blbms.MeshId="http://www.roblox.com/asset?id=1376459"
blbms.TextureId="http://www.roblox.com/asset?id=1376456"
local canWeld=Instance.new('Weld',torso)
canWeld.Part0=torso
canWeld.Part1=base
canWeld.C1=CFrame.new(0,-.5,0)
canWeld.C0=CFrame.new(0,0,0)
local canWeld2=Instance.new('Weld',base2)
canWeld2.Part0=base
canWeld2.Part1=base2
canWeld2.C1=CFrame.new(0,-1.66,0)
canWeld2.C0=CFrame.new(0,0,0)
local lidWeld=Instance.new('Weld',base)
lidWeld.Part0=base
lidWeld.Part1=lid
lidWeld.C1=CFrame.new(0,0,-1.8)*CFrame.Angles(math.rad(90),math.rad(90),0)
local girlWeld=Instance.new('Weld',base)
girlWeld.Part0=base
girlWeld.Part1=waifu
girlWeld.C1=CFrame.new(0,-.65,-.5)*CFrame.Angles(math.rad(90),0,0)
local bbweld=Instance.new('Weld',base)
bbweld.Part0=base
bbweld.Part1=bbox
bbweld.C1=CFrame.new(0,-.5,0)
local blbweld=Instance.new('Weld',base)
blbweld.Part0=base
blbweld.Part1=bulb
blbweld.C1=CFrame.new(0,-.5,0)
local heliweld1=Instance.new('Weld',base)
heliweld1.Part0=base
heliweld1.Part1=heli1
heliweld1.C1=CFrame.new(0,0,0)
local heliweld2=Instance.new('Weld',heli1)
heliweld2.Part0=heli1
heliweld2.Part1=heli2
heliweld2.C1=CFrame.new(0,-1.475,0)
local heliweld3=Instance.new('Weld',heli1)
heliweld3.Part0=heli1
heliweld3.Part1=heli3
heliweld3.C1=CFrame.new(0,-1.475,0)*CFrame.Angles(0,math.pi/2,0)
local helilt=Instance.new('PointLight',heli1)
helilt.Enabled=false
helilt.Brightness=1
helilt.Range=16
helilt.Color=BrickColor.new("Dark green").Color
local music=Instance.new('Sound',hed)
music.Name='ok music'
music.Volume=1
music.Pitch=1
music.SoundId="http://www.roblox.com/asset?id="..musics[math.random(1,#musics)]
music.Looped=true
local helisn=Instance.new('Sound',heli1)
helisn.SoundId="http://www.roblox.com/asset?id=131503030"
helisn.Volume=.1
helisn.Pitch=2
helisn.Looped=true






local gui=Instance.new('ScreenGui',plr.PlayerGui)
gui.Name='you make me cri'
local topFrame=Instance.new('Frame',gui)
topFrame.Name='TopFrame'
topFrame.Size=UDim2.new(1,0,1,0)
topFrame.BorderSizePixel=0
topFrame.BackgroundTransparency=1
local choiceFrame=Instance.new('Frame',topFrame)
choiceFrame.Size=UDim2.new(.4,0,.05,0)
choiceFrame.Draggable=true
choiceFrame.BackgroundTransparency=.7
choiceFrame.Position=UDim2.new(.3,0,.775,0)
choiceFrame.BackgroundColor3=Color3.new(.2,.2,.2)
choiceFrame.BorderColor3=Color3.new(0,0,0)
local innerFrame=Instance.new('Frame',choiceFrame)
innerFrame.Size=UDim2.new(.5,0,1,0)
innerFrame.Draggable=true
innerFrame.BackgroundTransparency=.9
innerFrame.Position=UDim2.new(0,0,0,0)
innerFrame.BackgroundColor3=Color3.new(.2,.2,.2)
innerFrame.BorderColor3=Color3.new(0,0,0)
local innerFrame2=Instance.new('Frame',choiceFrame)
innerFrame2.Visible=true
innerFrame2.Size=UDim2.new(.5,0,1,0)
innerFrame2.Draggable=false
innerFrame2.BackgroundTransparency=.5
innerFrame2.Position=UDim2.new(0,0,1,1)
innerFrame2.BackgroundColor3=Color3.new(.2,.2,.2)
innerFrame2.BorderColor3=Color3.new(0,0,0)
local imageID=Instance.new('TextBox',innerFrame2)
imageID.Size=UDim2.new(.8,0,.7,0)
imageID.Position=UDim2.new(.1,0,.15,0)
imageID.BackgroundTransparency=.7
imageID.Visible=true
imageID.Text="Image ID"
imageID.TextScaled=true
imageID.TextStrokeTransparency=0
imageID.TextStrokeColor3=Color3.new(.1,.1,.1)
imageID.TextColor3=Color3.new(.7,.7,.7)
imageID.BackgroundColor3=Color3.new(.2,.2,.2)
imageID.BorderColor3=Color3.new(0,0,0)
imageID.FocusLost:connect(function(ent)
if ent then
img.Texture="http://www.roblox.com/asset?id="..imageID.Text-1
end
end)
local bt1=Instance.new('TextButton',innerFrame)
bt1.Draggable=false
bt1.BackgroundTransparency=.9
bt1.BackgroundColor3=Color3.new(.2,.2,.2)
bt1.Size=UDim2.new(.5,0,1,0)
bt1.Text="Custom"
bt1.TextStrokeTransparency=0
bt1.TextColor3=Color3.new(.7,.7,.7)
bt1.TextScaled=true
bt1.TextStrokeColor3=Color3.new(.1,.1,.1)
bt1.Font="SourceSans"
bt1.MouseButton1Click:connect(function()
if imageType=='Table' then
imageType="Custom"
innerFrame2.Visible=true
imageID.Visible=true
end
end)
local bt2=Instance.new('TextButton',innerFrame)
bt2.Draggable=false
bt2.BackgroundTransparency=.9
bt2.BackgroundColor3=Color3.new(.1,.1,.1)
bt2.Size=UDim2.new(.5,0,1,0)
bt2.Position=UDim2.new(.5,0,0,0)
bt2.Text="Table"
bt2.TextStrokeTransparency=0
bt2.TextColor3=Color3.new(.7,.7,.7)
bt2.TextScaled=true
bt2.TextStrokeColor3=Color3.new(.1,.1,.1)
bt2.Font="SourceSans"
bt2.MouseButton1Click:connect(function()
if imageType~='Table' then
imageType="Table"
imageID.Visible=false
innerFrame2.Visible=false
img.Texture="http://www.roblox.com/asset?id="..decals[currentdecalid]-1
end
end)

local innerFrame3=Instance.new('Frame',choiceFrame)
innerFrame3.Size=UDim2.new(.5,0,1,0)
innerFrame3.Position=UDim2.new(.5,0,0,0)
innerFrame3.Draggable=true
innerFrame3.BackgroundTransparency=.9
innerFrame3.BackgroundColor3=Color3.new(.2,.2,.2)
innerFrame3.BorderColor3=Color3.new(0,0,0)
local innerFrame4=Instance.new('Frame',choiceFrame)
innerFrame4.Size=UDim2.new(.5,0,1,0)
innerFrame4.Draggable=false
innerFrame4.BackgroundTransparency=.5
innerFrame4.Position=UDim2.new(.5,0,1,1)
innerFrame4.BackgroundColor3=Color3.new(.2,.2,.2)
innerFrame4.BorderColor3=Color3.new(0,0,0)
local musicID=Instance.new('TextBox',innerFrame4)
musicID.Size=UDim2.new(.8,0,.7,0)
musicID.Position=UDim2.new(.1,0,.15,0)
musicID.BackgroundTransparency=.7
musicID.Visible=true
musicID.Text="Music ID"
musicID.TextScaled=true
musicID.TextStrokeTransparency=0
musicID.TextStrokeColor3=Color3.new(.1,.1,.1)
musicID.TextColor3=Color3.new(.7,.7,.7)
musicID.BackgroundColor3=Color3.new(.2,.2,.2)
musicID.BorderColor3=Color3.new(0,0,0)
musicID.FocusLost:connect(function(ent)
if ent then
music.SoundId="http://www.roblox.com/asset?id="..musicID.Text
end
end)
local bt3=Instance.new('TextButton',innerFrame3)
bt3.Draggable=false
bt3.BackgroundTransparency=.9
bt3.BackgroundColor3=Color3.new(.2,.2,.2)
bt3.Size=UDim2.new(.5,0,1,0)
bt3.Text="Play"
bt3.TextStrokeTransparency=0
bt3.TextColor3=Color3.new(.7,.7,.7)
bt3.TextScaled=true
bt3.TextStrokeColor3=Color3.new(.1,.1,.1)
bt3.Font="SourceSans"
bt3.MouseButton1Click:connect(function()
if not music.IsPlaying then
musicID.Visible=false
music:play''
innerFrame4.Visible=false
end
end)
local bt4=Instance.new('TextButton',innerFrame3)
bt4.Draggable=false
bt4.BackgroundTransparency=.9
bt4.BackgroundColor3=Color3.new(.1,.1,.1)
bt4.Size=UDim2.new(.5,0,1,0)
bt4.Position=UDim2.new(.5,0,0,0)
bt4.Text="Stop"
bt4.TextStrokeTransparency=0
bt4.TextColor3=Color3.new(.7,.7,.7)
bt4.TextScaled=true
bt4.TextStrokeColor3=Color3.new(.1,.1,.1)
bt4.Font="SourceSans"
bt4.MouseButton1Click:connect(function()
if music.IsPlaying then
music:stop''
musicID.Visible=true
innerFrame4.Visible=true
end
end)


maus.KeyDown:connect(function(kei)
if string.byte(kei)==48 and not otheranims then
runnin=true
end
if kei=='x' and crouching and not opencd and not displaying then
opens:play''
opencd=true
bboxout=true
end
if kei=='w' then fldb.w=true end
if kei=='a' then fldb.a=true end
if kei=='s' then fldb.s=true end
if kei=='d' then fldb.d=true end
if string.byte(kei)==50 then
if otheranims and crouching then crouching=false otheranims=false if opencd then opencd=false bboxout=false ltout=false end
elseif not otheranims and not crouching then
otheranims=true
crouching=true
chr.Humanoid.WalkSpeed=WlkSpeed*.75
end
end
if kei=='r' and not displaying then
if not heli and not opencd and not displaying and crouching then
opencd=true
heli=true
crouching=false
flying=true
helisn:play''
helilt.Enabled=true
helim2.Scale=Vector3.new(.5,.15,2)
helim3.Scale=Vector3.new(.5,.15,2)
chr.Humanoid.WalkSpeed=WlkSpeed
bvelo.maxForce=Vector3.new(0,1/0,0)
bvelo.velocity=Vector3.new(0,0,0)
elseif heli and opencd then
heli=false
helilt.Enabled=false
opencd=false
flying=false
helim2.Scale=Vector3.new(.5,.1,1)
helim3.Scale=Vector3.new(.5,.1,1)
helisn:stop''
chr.Humanoid.WalkSpeed=WlkSpeed*.75
crouching=true
bvelo.maxForce=Vector3.new(0,0,0)
end
end
if kei=='q' then
bvelo.velocity=Vector3.new(0,-25,0)
end
if kei=='e' then
bvelo.velocity=Vector3.new(0,20,0)
end
if kei=='z' and not opencd then
displaying=true
end
if kei=='k' and not opencd and crouching and not displaying then
opencd=true
opens:play''
chr.Humanoid.WalkSpeed=0
local grbg=Instance.new('Part',workspace)
grbg.Name="bomb"
grbg.formFactor=3
grbg.CFrame=base.CFrame*CFrame.new(0,5,0)
grbg.TopSurface=10
grbg.BottomSurface=10
grbg.LeftSurface=10
grbg.RightSurface=10
grbg.BackSurface=10
grbg.FrontSurface=10
grbg.CanCollide=false
grbg.Anchored=false
grbg.Anchored=false
grbg.Transparency=0
grbg.Shape='Ball'
grbg.BrickColor=BrickColor.new('Really black')
grbg.Locked=true
grbg.Size=Vector3.new(.8,.8,.8)
grbg.Velocity=Vector3.new(0,100,0)
grbg.Touched:connect(function(tch)
if tch and tch.Parent then
local expl=Instance.new('Explosion',workspace)
expl.Position=grbg.Position
expl.BlastPressure=1111111
expl.BlastRadius=22
grbg:destroy''
end
end)
wait'1'
opencd=false
chr.Humanoid.WalkSpeed=WlkSpeed*.75
end
game:service'Debris':AddItem(grbg,5)
if kei=='c' and not opencd and crouching and not displaying then
opens:play''
opencd=true
lt.Enabled=true
ltout=true
end
end)
maus.KeyUp:connect(function(kei)
if string.byte(kei)==48 and not otheranims then
runnin=false
end
if kei=='w' then fldb.w=false end
if kei=='a' then fldb.a=false end
if kei=='s' then fldb.s=false end
if kei=='d' then fldb.d=false end
if kei=='x' and bboxout and opencd then
bboxout=false
opencd=false
end
if kei=='q' then
bvelo.velocity=Vector3.new(0,0,0)
end
if kei=='e' then
bvelo.velocity=Vector3.new(0,0,0)
end
if kei=='z' then
displaying=false
if imageType=="Table" then
currentdecalid=currentdecalid+1
if currentdecalid>#decals then currentdecalid=1 end
img.Texture="http://www.roblox.com/asset?id="..decals[currentdecalid]-1
end
end
if kei=='j' and crouching and otheranims and not displaying and not opencd and anim=='Crouching' then
crouching=false
anim='SuperJump'
local bv=Instance.new('BodyVelocity',rutprt)
bv.maxForce=Vector3.new(0,1/0,0)
bv.velocity=Vector3.new(0,300,0)
game:service'Debris':AddItem(bv,.5)
wait'1'
chr.Humanoid.Jump=true
if anim=='SuperJump' then
otheranims=false
end
end
if kei=='v' and crouching and otheranims and not displaying then
if not opencd then
local rei=Ray.new(lid.CFrame.p,(lid.CFrame.p-(lid.CFrame*CFrame.new(0,0,-1)).p).unit*2)
local hit,hitpos=workspace:FindPartOnRay(rei,chr)
if hit and hit.Parent then
opencd=true
if hit.Parent:IsA'Model' then
for   i,x in pairs(hit.Parent:GetChildren()) do if x:IsA'Humanoid' then   x.Sit=true x.Health=x.Health-(15*(x.MaxHealth/100)) hits:play'' end end
if hit.Parent:findFirstChild('Torso') then
local asd=Instance.new('BodyVelocity',hit.Parent.Torso)
asd.velocity=((rutprt.CFrame*CFrame.new(0,4,1).p-rutprt.CFrame.p).unit*222)
game:service'Debris':AddItem(asd,.4)
end
end
wait'.5'
opencd=false
end
end
end
if kei=='c' and opencd and ltout then
opencd=false
ltout=false
lt.Enabled=false
end
end)

local nskn = NumberSequenceKeypoint.new
maus.Button1Down:connect(function()
if runnin and not otheranims and (rutprt.Velocity*Vector3.new(1,0,1)).magnitude>RunSpeed-5 and not TackleCD then
otheranims=true
TackleCD=true
anim="Tackle"
chr.Humanoid.WalkSpeed=0
local bv=Instance.new('BodyVelocity',base)
bv.Name='git gud'
bv.maxForce=Vector3.new(1/0,0,1/0)
bv.velocity=((rutprt.CFrame*CFrame.new(0,0,-3)).p-rutprt.CFrame.p).unit*(RunSpeed+(22*(RunSpeed/100)))
wait'1'
bv:destroy''
otheranims=false
wait'2'
TackleCD=false
end
if not throwcd and crouching and otheranims and not opencd and not displaying then
opencd=true
throwcd=true
opens:play''
local grb=GarbageTypes[math.random(1,#GarbageTypes)]
local grbg=Instance.new('Part',workspace)
grbg.Name=grb[1]
grbg.formFactor=3
grbg.CFrame=base.CFrame*CFrame.new(0,4.5,-2)*CFrame.Angles(math.rad(math.random(1,180)),math.rad(math.random(1,180)),math.rad(math.random(1,180)))
grbg.TopSurface=10
grbg.BottomSurface=10
grbg.LeftSurface=10
grbg.RightSurface=10
grbg.BackSurface=10
grbg.FrontSurface=10
grbg.CanCollide=false
grbg.Anchored=false
grbg.Anchored=false
grbg.Transparency=0
grbg.Locked=true
grbg.Size=Vector3.new(.8,.8,.8)
local emitter=Instance.new("ParticleEmitter",grbg)
emitter.Rate=111
 
emitter.Acceleration=Vector3.new(0,5,0)
emitter.Lifetime=NumberRange.new(2)
--emitter.EmissionDirection="Back"

emitter.VelocitySpread=11
emitter.Enabled=true
emitter.Rotation=NumberRange.new(-15,15)
emitter.RotSpeed=NumberRange.new(-25,25)
emitter.Texture="http://www.roblox.com/asset?id="..alldecals[math.random(1,#alldecals)]
emitter.Size = NumberSequence.new({
        nskn(0    , 1 , 0);
        nskn(0.123, .85  , 0);
        nskn(0.154, .7 , 0);
        nskn(0.208, .55 , 0);
        nskn(0.357, .4 , 0);
        nskn(0.555, .25 , 0);
        nskn(0.725, .1, 0);
        nskn(0.905, 0, 0);
        nskn(1    , 0, 0);
})
emitter.Transparency=NumberSequence.new({nskn(0,0,0),nskn(.1,.1,0),nskn(.2,.2,0),nskn(.3,.3,0),nskn(.4,.4,0),nskn(.5,.5,0),nskn(.6,.6,0),nskn(.7,7,0),nskn(.8,.8,0),nskn(.9,.9,0),nskn(1,1,0)})
local hitsnd=Instance.new('Sound',grbg)
hitsnd.Volume=1
hitsnd.Pitch=1
hitsnd.SoundId="http://www.roblox.com/asset?id=144467617"
local hitsnd2=Instance.new('Sound',grbg)
hitsnd2.Volume=.5
hitsnd2.Pitch=1.05
hitsnd2.SoundId="http://www.roblox.com/asset?id="..grb[5]
local magn=(maus.Hit.p-(base.CFrame*CFrame.new(0,4.5,-2)).p).magnitude
grbg.Velocity=((maus.Hit.p-(base.CFrame*CFrame.new(0,4.5,-2)).p).unit*(magn*1.25))+Vector3.new(0,72.5,0)
local firsthit=true
local ms=Instance.new('SpecialMesh',grbg)
ms.MeshId="http://www.roblox.com/asset?id="..grb[2]
ms.TextureId="http://www.roblox.com/asset?id="..grb[3]
ms.Scale=grb[4]
grbg.Touched:connect(function(hit)
if hit and hit.Parent and hit:IsA'Part' and hit.CanCollide and hit.Transparency<1 and firsthit then
firsthit=false
hitsnd:play''
hitsnd2:play''
grbg.Anchored=true
grbg.Transparency=1
game:service'Debris':AddItem(grbg,2)
local expl=Instance.new('Part',workspace)
expl.Name=grb[1]
expl.formFactor=3
expl.CFrame=CFrame.new(grbg.CFrame.x,grbg.CFrame.y,grbg.CFrame.z)
expl.TopSurface=10
expl.BottomSurface=10
expl.LeftSurface=10
expl.RightSurface=10
expl.BackSurface=10
expl.FrontSurface=10
expl.CanCollide=false
expl.Anchored=true
expl.Transparency=1
expl.Locked=true
expl.Size=Vector3.new(.2,.2,.2)
local emitr=Instance.new("ParticleEmitter",expl)
emitr.Rate=333
emitr.Speed=NumberRange.new(35,40)
emitr.Acceleration=Vector3.new(0,-30,0)
emitr.Lifetime=NumberRange.new(.5)
emitr.EmissionDirection="Top"
emitr.Transparency=NumberSequence.new({nskn(0,0,0),nskn(.1,.1,0),nskn(.2,.2,0),nskn(.3,.3,0),nskn(.4,.4,0),nskn(.5,.5,0),nskn(.6,.6,0),nskn(.7,7,0),nskn(.8,.8,0),nskn(.9,.9,0),nskn(1,1,0)})

emitr.VelocitySpread=120
emitr.Enabled=true
emitr.Rotation=NumberRange.new(-15,15)
emitr.RotSpeed=NumberRange.new(-25,25)
emitr.Texture=emitter.Texture
emitr.Size = NumberSequence.new({
        nskn(0    , 2 , 0);
        nskn(0.123, 1.75  , 0);
        nskn(0.154, 1.5 , 0);
        nskn(0.208, 1.25 , 0);
        nskn(0.357, 1 , 0);
        nskn(0.555, .75 , 0);
        nskn(0.725, .5, 0);
        nskn(0.905, .25, 0);
        nskn(1    , 0, 0);
})
emitter.Rate=0
for i,x in pairs(workspace:GetChildren()) do
if x:IsA'Model' and x:findFirstChild("Humanoid") and x:findFirstChild("Torso") and x:findFirstChild("Head") then
if (x.Torso.Position-expl.Position).magnitude<=12 and x~=chr then
x:breakJoints''
end
end
end
wait'.2'
emitr.Rate=0
game:service'Debris':AddItem(expl,1)
end
end)
wait'.2'
opencd=false
wait'.6'
throwcd=false
end






end)




lid.Touched:connect(function(hit)
if otheranims==true and anim=="Tackle" or anim=='SuperJump' and not hitdb and not hit.Parent:IsA'Hat' and hit.Name~='Base' then
if anim=='SuperJump' then otheranims=false chr.Humanoid.Jump=true end
hitdb=true
if hit and hit.Parent then
if hit.Parent:IsA'Model' then
for i,x in pairs(hit.Parent:GetChildren()) do if x:IsA'Humanoid' then hit.Parent:breakJoints'' hits:play'' end end
if hit.Parent.Parent then
for i,x in pairs(hit.Parent.Parent:GetChildren()) do if x:IsA'Humanoid' then hit.Parent.Parent:breakJoints'' hits:play'' end end
end
end
end
wait'.8' hitdb=false
end
end)


game:service'RunService'.RenderStepped:connect(function()
if   chr:findFirstChild("Humanoid") and rarm:findFirstChild("Weld") and   larm:findFirstChild("Weld") and hed:findFirstChild("Weld") and   lleg:findFirstChild("Weld") and rleg:findFirstChild("Weld") and   rutprt:findFirstChild("Weld") then
if anim~=lastanim then
runtime=0
end
lastanim=anim
chr.Humanoid.CameraOffset=(rutprt.CFrame:toObjectSpace(waifu.CFrame)).p+Vector3.new(0,-1.25,0)
syne=syne+.95
if not otheranims and not swimming then
if   (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 1 and not   chr.Humanoid.Jump then-- and torso.Velocity.y<5 and   torso.Velocity.y>-5
anim="Idling"
elseif   (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 and   (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude < RunSpeed-10 and   not chr.Humanoid.Jump then-- and torso.Velocity.y<5 and   torso.Velocity.y>-5
anim="Walking"
elseif   (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > RunSpeed-10 and   not chr.Humanoid.Jump then-- and torso.Velocity.y<5 and   torso.Velocity.y>-5
anim="Sprinting"
elseif torso.Velocity.y>5 and chr.Humanoid.Jump then
anim='Jumping'
elseif (torso.Velocity.y < -5) and chr.Humanoid.Jump then
anim='Falling'
end
end
if otheranims and crouching and not swimming and not flying then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 1 then
anim="Crouching"
elseif (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 then
anim="Sneaking"
end
end

if otheranims and flying and not swimming and not crouching then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 1 then
anim="FlyIdle"
heliweld1.C0=CFrame.new(0,3.25,0)*CFrame.Angles(0,syne,0)
elseif (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 then
anim="FlyForward"
heliweld1.C0=CFrame.new(0,3.25,0)*CFrame.Angles(0,syne,0)
end
else
heliweld1.C0=CFrame.new(0,0,0)
end

if anim=="Idling" then
idlesineinc=35
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.475+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(0,0,math.rad(20)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.475+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(0,0,math.rad(-20)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.9-math.cos(syne/idlesineinc)/20,(math.cos(syne/idlesineinc)/35))*CFrame.Angles(-(math.cos(syne/idlesineinc)/35),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9-math.cos(syne/idlesineinc)/20,(math.cos(syne/idlesineinc)/35))*CFrame.Angles(-(math.cos(syne/idlesineinc)/35),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/idlesineinc)/50,0)*CFrame.Angles(math.cos(syne/idlesineinc)/40,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/idlesineinc)/20,0)*CFrame.Angles(math.cos(syne/idlesineinc)/35+math.rad(0),math.rad(0),math.rad(0)),.1)
canWeld.C0=Lerp(canWeld.C0,CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.05)
end

if anim=="Walking" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525+math.cos(syne/15)/25,0)*CFrame.Angles(math.cos(syne/6)/1.25,math.rad(5),-(math.cos(syne/6.75)/15)+math.rad(27)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525+math.cos(syne/15)/25,0)*CFrame.Angles(-(math.cos(syne/6)/1.25),0,-(math.cos(syne/6.75)/15)-math.rad(27)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.9-math.cos(syne/6)/10,-(math.cos(syne/6)/1.125))*CFrame.Angles(math.cos(syne/6)/1.125,0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9-math.cos(syne/6)/10,math.cos(syne/6)/1.125)*CFrame.Angles(-(math.cos(syne/6)/1.125),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/20)/50,0)*CFrame.Angles(-math.cos(syne/3)/20,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/3.375)/20,math.cos(syne/3)/5)*CFrame.Angles(math.cos(syne/3)/20+math.rad(-3.5),math.cos(syne/6)/10,-math.cos(syne/6)/30+math.sin(rutprt.RotVelocity.y/2)/7.5),.1)
canWeld.C0=Lerp(canWeld.C0,CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.05)
end

if anim=="Sprinting" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(-55),0,math.rad(32.5)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(-55),0,math.rad(-32.5)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.6-math.cos(syne/4)/4,-(math.cos(syne/4)*2)-math.rad(10))*CFrame.Angles(math.cos(syne/4)*2+math.rad(10),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.6-math.cos(syne/4)/4,math.cos(syne/4)*2-math.rad(10))*CFrame.Angles(-(math.cos(syne/4)*2)+math.rad(10),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.55+math.cos(syne/20)/50,0)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(20),0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.3+math.cos(syne/2.5)/15,math.cos(syne/2.5))*CFrame.Angles(math.cos(syne/2.5)/10+math.rad(-25),math.cos(syne/2.5)/10,math.cos(syne/4)/20+math.sin(rutprt.RotVelocity.y/2)/4),.1)
canWeld.C0=Lerp(canWeld.C0,CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.05)
end

if anim=="Jumping" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(50)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-50)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.4,0)*CFrame.Angles(math.rad(-17.5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.1,-.1)*CFrame.Angles(math.rad(-17.5),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/20)/50,0)*CFrame.Angles(math.cos(syne/20)/40,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/20)/20,0)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.1)
canWeld.C0=Lerp(canWeld.C0,CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.05)
end

if anim=="Tackle" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(50)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-50)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.4,0)*CFrame.Angles(math.rad(-17.5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.4,0)*CFrame.Angles(math.rad(-17.5),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.cos(syne/20)/40,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),.1)
canWeld.C0=Lerp(canWeld.C0,CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.05)
end

if anim=="Falling" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(70)),.035)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-70)),.035)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.2,0)*CFrame.Angles(math.rad(-14),0,math.rad(-2.5)),.035)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9,0)*CFrame.Angles(math.rad(0),0,math.rad(2.5)),.035)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,-.3)*CFrame.Angles(math.rad(-40),0,0),.035)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/20)/20,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.035)
canWeld.C0=Lerp(canWeld.C0,CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.05)
end

if anim=="SuperJump" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.4,.525,0)*CFrame.Angles(math.rad(175),0,math.rad(10)),.15)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.4,.525,0)*CFrame.Angles(math.rad(175),0,math.rad(-10)),.15)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.5,0)*CFrame.Angles(math.rad(-17.5),0,math.rad(-2.5)),.15)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.5,0)*CFrame.Angles(math.rad(-17.5),0,math.rad(2.5)),.15)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(0,0,0),.15)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-3,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
canWeld.C0=Lerp(canWeld.C0,CFrame.new(0,3,0)*CFrame.Angles(0,0,0),.15)
end

if anim=="Crouching" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(0,.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(0,.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.5,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.5,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(0,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-1.75,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
canWeld.C0=Lerp(canWeld.C0,CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.05)
end

if anim=="Sneaking" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(0,.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(0,.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-.8-math.cos(syne/6)/8,-(math.cos(syne/6)/1.75))*CFrame.Angles(math.cos(syne/6)/1.75,0,math.rad(-2.5)),.15)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-.8-math.cos(syne/6)/8,math.cos(syne/6)/1.75)*CFrame.Angles(-(math.cos(syne/6)/1.75),0,math.rad(2.5)),.15)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(0,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-1.2,0)*CFrame.Angles(math.rad(-5),math.rad(0),math.cos(syne/6)/20),.1)
canWeld.C0=Lerp(canWeld.C0,CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.05)
end

if anim=="FlyIdle" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(0,.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(0,.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.5,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.5,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(0,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-1.75-math.cos(syne/17.5),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.05)
canWeld.C0=Lerp(canWeld.C0,CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.05)
end
if anim=="FlyForward" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(0,.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(0,.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.5,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.5,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(0,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-1.75-math.cos(syne/17.5),0)*CFrame.Angles(math.rad(-12),math.rad(0),math.rad(0)),.05)
canWeld.C0=Lerp(canWeld.C0,CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.05)
end

if opencd and otheranims then
lidWeld.C0=Lerp(lidWeld.C0,CFrame.new(0,3,-1)*CFrame.Angles(math.rad(85),math.rad(0),math.rad(0)),.222)
music.Volume=TwnSingleNumber(music.Volume,.7,.025)
elseif not opencd and not displaying then
music.Volume=TwnSingleNumber(music.Volume,.025,.05)
elseif not opencd and displaying then
music.Volume=TwnSingleNumber(music.Volume,.325,.05)
end
if bboxout then
bbweld.C0=Lerp(bbweld.C0,CFrame.new(0,1.9,.2)*CFrame.Angles(math.rad(15),math.rad(0),math.rad(0)),.222)
else
bbweld.C0=Lerp(bbweld.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.075)
end
if ltout then
blbweld.C0=Lerp(blbweld.C0,CFrame.new(0,1.7,-.7)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.222)
lt.Range=TwnSingleNumber(lt.Range,16,.1)
else
blbweld.C0=Lerp(blbweld.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.075)
lt.Range=0
end
if displaying then
girlWeld.C0=Lerp(girlWeld.C0,CFrame.new(0,2.2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.075)
lidWeld.C0=Lerp(lidWeld.C0,CFrame.new(0,.15,.75)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.15)
else
girlWeld.C0=Lerp(girlWeld.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
lidWeld.C0=Lerp(lidWeld.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.075)
end
if runnin and not otheranims and not swimming then
chr.Humanoid.WalkSpeed=RunSpeed
elseif not runnin and not otheranims and not swimming then
chr.Humanoid.WalkSpeed=WlkSpeed
end
end
end)
end
do
        player = owner or game:GetService("Players").LocalPlayer

chatted = false


a = Instance.new("BillboardGui", player.Character:FindFirstChild("Head"))
a.ExtentsOffset = Vector3.new(1,0,0)
a.Size = UDim2.new(1,0,1,0)
a.AlwaysOnTop = true
a.Enabled = true
b =  Instance.new("ImageLabel", a)
b.BackgroundTransparency = 1
b.BorderSizePixel = 0
b.Image = "http://www.roblox.com/asset/?id=243503908"
b.ImageTransparency = 0.1
b.Position = UDim2.new(0.2,0,0.05,0)
b.Size = UDim2.new(5,0,1.2,0)
b.Visible = false
c = Instance.new("TextLabel", b)
c.BackgroundTransparency = 1
c.BorderSizePixel = 0
c.Position = UDim2.new(0.1,0,0)
c.Size = UDim2.new(0.5,0,0.4,0)
c.ZIndex = 2
c.Font = "SourceSans"
c.FontSize = "Size18"
c.Text = player.Name..":"
c.TextColor3 = Color3.new(255/255,255/255,255/255)
c.TextXAlignment = "Left"
c.TextYAlignment = "Center"
d = Instance.new("TextLabel", b)
d.BackgroundTransparency = 1
d.BorderSizePixel = 0
d.Position = UDim2.new(0.1,0,0.4,0)
d.Size = UDim2.new(0.9,0,0.6,0)
d.ZIndex = 2
d.Font = "SourceSans"
d.FontSize = "Size18"
d.Text = ""
d.TextColor3 = Color3.new(255/255,255/255,255/255)
d.TextXAlignment = "Left"
d.TextYAlignment = "Top"
d.TextWrapped = true


function message(message)	
repeat wait() until chatted == false
chatted = true
b.Visible = true	
if string.find(message,"-r") ~=nil then
for i=1,string.len(message),1 do
d.TextColor3 = Color3.new(math.random(1,255)/255,math.random(1,255)/255,math.random(1,255)/255)	
d.Text = string.sub(message,1,i)
wait(0.1)	
end
elseif string.find(message,"-b") ~=nil then
for i=1,string.len(message),1 do	
d.Text = string.sub(string.byte(message),1,i)
wait(0.05)	
end
else
for i=1,string.len(message),1 do	
d.Text = string.sub(message,1,i)
wait(0.05)	
end
end
wait(2)
if string.find(message,"-t") ~=nil then
b.Visible = true
else
b.Visible = false
d.TextColor3  = Color3.new(255/255,255/255,255/255)			
end
chatted = false
end




player.Chatted:connect(message)
end
-- ~Clarramore 2016