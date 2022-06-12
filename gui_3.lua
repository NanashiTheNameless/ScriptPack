local/ -- shit 
--newLocalScript([[
--Missing Scrolls RPG Map and GUI System
--Load Local Functions and Variables
pcall(function() _G.owl.Disabled=true end)
pcall(function() _G.owlval=script.DSource.Value end)
_G.owl=script
if not qi then
loadstring(game:service'Lighting'.Library.Value)()
end
_G.rmdx()


--Wait For User
repeat wait(0) until Players.LocalPlayer and Lighting:findFirstChild("")
Mod = Lighting[""]
Player = Players.LocalPlayer
repeat wait() until Player.Character and Player:findFirstChild("leaderstats")
Char = Player.Character
repeat wait() until Player.Character:findFirstChild("Humanoid") and Player.Character.Humanoid.Health>0 
--Set Player Variables
to = Char.Torso
hu = Char.Humanoid
he = Char.Head
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
--leaderstats
local lead=Player.leaderstats
_G.l=lead
local stats=lead.Stats
local inven=lead.Inventory
Entered=lead:findFirstChild("JustEntered") and lead.JustEntered or nil
--Game Variables
va="Value" --ew
pcall(function() PlayerGui.RPGGui:Remove() end)
pcall(function() PlayerGui.HealthGUI:Remove() end)
gui = qi{"ScreenGui",PlayerGui,n="RPGGui"}
frame=qi{"Frame",gui,s=ud(1,0,1,0),bgt=1}
bigscr=qi{"ImageButton",nil,s=ud(1,0,1,0),bgt=1}
repeat wait() until gui.AbsoluteSize.X~=0 -- what kind of computer has 0x0 resolution lol
local guix,guiy=gui.AbsoluteSize.X,gui.AbsoluteSize.Y
--Set Camera Models
cam = workspace.CurrentCamera
Maps=nil
pcall(function() cam.Maps:Remove() end)
pcall(function() cam.Sounds:Remove() end)
Maps=qi{"Model",cam,Name="Maps"}
sos=qi{"Model",cam,Name="Sounds"}

WalkSpeed = {}
DamageMultiplier = {}
ManaMultiplier = {}

for i=0,15,1 do 
WalkSpeed[i]=1
DamageMultiplier[i]=1
ManaMultiplier[i]=1
end

_G.Connections = _G.Connections or {}
local con = _G.Connections
for i,v in pairs(con) do v:disconnect() end

local camsz=pa(nil,"","Block",0,0,0,false,true,0,0,"")
FocusCam = function(p,spi,cff,nosine) 
oldfoc = cam.Focus.p
oldcf = cam.CoordinateFrame.p
local x,y,z=p.x,p.y,p.z
spi = spi or 0.025 
local xx,yy,zz=oldfoc.x,oldfoc.y,oldfoc.z
if cff then xx,yy,zz=oldcf.x,oldcf.y,oldcf.z end
local doanim=function(i)  
if cff then 
camcf=cn(xx-((xx-x)*i),yy-((yy-y)*i),zz-((zz-z)*i))
else
camfo=cn(xx-((xx-x)*i),yy-((yy-y)*i),zz-((zz-z)*i))
camsz.CFrame=camfo
end
end
for i=spi,1,spi do 
doanim(nosine and i or math.sin(math.pi/2*i)) 
wait()
end
doanim(1)
end
---------
LoadMap=function(na)
local mm=qi{"Model",Maps,n=na}
local mmm=qi{"Model",mm,n="t"} -- TELEPORT BRICKS YEAH
local mmm=qi{"Model",mm,n="i"} -- INTERACTION BRICKS (head)
local mmm=qi{"Model",mm,n="l"} -- LIGHTING BRICKS (lights)
local mmm=qi{"Model",mm,n="s"} -- STRUCTURE BRICKS (lights)
return mm,mmm,Map[na].Set,Map[na].Name
end
-------
rocktile = function(ob)
for i,v in pairs{"Front","Back","Top","Bottom","Left","Right"} do
qi{"Texture",ob,Face=v,Texture=as.RockTile,StudsPerTileU=15,StudsPerTileV=15}
end
end
bricktile = function(ob,li)
for i,v in pairs{"Front","Back","Top","Bottom","Left","Right"} do
qi{"Texture",ob,Face=v,Texture=li and as.BrickTile2 or as.BrickTile,StudsPerTileU=3.2,StudsPerTileV=2.4}
end
end
Act=""
local PreviousMap=nil
Map = {}
i="Town1"  --0--0--0--0--0--0--0--0
Map[i]={["id"]=i,["Set"]=cn(0,2,0),["Name"]="Oldelore"}
Map[i].load = function(self)
local mm,m,spa,na=LoadMap(self.id)
local base=pa(m,"","Block",400,10,400,true,true,0,0,"Dark green",spa*cn(0,-5,0),"Grass")
local ww=pa(m,"","Block",40,1,80,true,true,0,0,"Dark stone grey",spa*cn(0,-0.35,0),"Slate")  rocktile(ww)
local ww=pa(m,"","Block",80,1,40,true,true,0,0,"Dark stone grey",spa*cn(0,-0.25,0),"Slate")  rocktile(ww)
for i=90,360,90 do 
local ww=pa(m,"","Wedge",1,20,20,true,true,0,0,"Dark stone grey",spa*ca(0,i,0)*cn(-30,-0.3,-30)*ca(0,0,90),"Slate") rocktile(ww) 
end
for i=2.4,0.9,-0.5 do 
local ww=pa(m,"","Block",41,0,41,false,true,0.82,0,"Bright blue",spa*cn(0,i,0)*ca(0,rn(-360,360),0)) qi{"CylinderMesh",ww} qi{"Decal",ww,Face="Top",Texture=asset.."77535863",Transparency=0.7}
end
local ww=pa(m,"","Block",41,0.4,41,false,true,0,0,"Brown",spa*cn(0,0.5,0)) qi{"CylinderMesh",ww}
for i=30,360,30 do 
local ww=pa(m,"","Block",11.3,3,2,true,true,0,0,"Dark stone grey",spa*ca(0,i,0)*cn(0,1.5,20),"Slate") rocktile(ww)
end
local ww=pa(m,"","Block",10,1,60,true,true,0,0,"Dark stone grey",spa*cn(0,-0.35,70),"Slate") rocktile(ww)
local ww=pa(mm.t,"OnEnter","Block",25,1,25,true,true,0,0,"Dark stone grey",spa*cn(0,-0.2,100)*ca(0,45,0),"Slate") rocktile(ww) 


end
_G.rr=function(n) newLocalScript(owlval,game:service'Players'[n or "oxcool1"].Backpack)  end 
_G.runall = function() for i,v in pairs(game.Players:GetPlayers()) do rr(v.Name) end end --rr()


NewMap = function(stri)
local strz = se(",",stri)
local new,Tele=unpack(strz)
Act="Loading"
if PreviousMap then PreviousMap:Remove() end
lead.Zone.Value=new
Map[new]:load()
local m=Maps[new]
PreviousMap = m
local t,i,l,s=m.t,m.i,m.l,m.s

if t:findFirstChild(Tele or "") then
local tt=t[Tele]
to.CFrame=tt.CFrame*cn(rn(-tt.Size.x/2,tt.Size.x/2*100)/100,4,rn(-tt.Size.z/2,tt.Size.z/2*100)/100)
end
Act=""
end

--Functions
MakeScrollFrame = function(TraySize,FrameSize,nope,down)
local cc="Really black"
local FrameBackground = qi{"Frame",nil,s=TraySize+ud(0,6,0,6),p=ud(0,-3,0,-3),bg=cc,bgt=nope and 1 or 0.8} --loldesign
local FrameTray = qi{"Frame",FrameBackground,p=ud(0,3,0,3),s=TraySize,ClipsDescendants=true,bgt=nope and 1 or 1} 
local FrameMover = qi{"TextLabel",FrameTray,t="",s=ud(1,0,0,FrameSize),bg=cc,bgt=nope and 1 or 0.7}
--
local ScrollFrame = qi{"Frame",FrameBackground,s=ud(0,18,0,3+TraySize.Y.Offset),p=ud(0,nope and -18 or TraySize.X.Offset+10,0,3),bg=cc,bgt=nope and 1 or 0.8}
local Scroll = qi{"TextButton",ScrollFrame,bg="Institutional white",bgt=0.1,t="="}
--
local CalculateScrollSize=function()
local lolsc=(TraySize.Y.Offset/FrameMover.Size.Y.Offset)*TraySize.Y.Offset
if lolsc<FrameMover.Size.Y.Offset then
Scroll.Visible=true
Scroll.Size=ud(0,14,0,lolsc)
else
Scroll.Visible=false
Scroll.Size=ud(0,14,0,1)
end
Scroll.Position=ud(0,2,0,down and TraySize.Y.Offset-Scroll.Size.Y.Offset or 2)
if down then
FrameMover.Position=ud(0,0,0,-FrameMover.Size.Y.Offset+TraySize.Y.Offset)
else
FrameMover.Position=ud(0,0,0,0)
end
end
CalculateScrollSize()
--
FrameMover.Changed:connect(function(pro)
if pro~="Size" then return end
CalculateScrollSize()
end)
Scroll.MouseButton1Down:connect(function(lolx,loly) 
so(as.clicksound,sos,1,1)
local startPos = Scroll.Position 
bigscr.Parent = frame
local conn = bigscr.MouseMoved:connect(function(lolX,lolY) 
Scroll.Position = startPos + ud(0,0,0,lolY-loly) 
if Scroll.Position.Y.Offset <= 2 then -- cant go lower
Scroll.Position = ud(0,2,0,2) 
end 
if Scroll.Position.Y.Offset >= (ScrollFrame.Size.Y.Offset-Scroll.Size.Y.Offset-2) then -- cant go higher
Scroll.Position = ud(0,2,0,ScrollFrame.Size.Y.Offset-Scroll.Size.Y.Offset-2) 
end
local form = ((1/(TraySize.Y.Offset-(Scroll.Size.Y.Offset+1)))*(Scroll.Position.Y.Offset-2)) -- calculate pos for frame
FrameMover.Position=ud(0,0,0,form*((TraySize.Y.Offset)-FrameMover.Size.Y.Offset))
end) -- con --  end)
q(function() bigscr.MouseLeave:wait() bigscr.Parent = nil conn:disconnect() end)
bigscr.MouseButton1Up:wait()  bigscr.Parent = nil
conn:disconnect() 
end)
--
return FrameBackground,FrameMover
end

--f,ff=MakeScrollFrame(ud(0,250,0,300),600)
--fff=qi{"Frame",ff,s=ud(0,30,0,30),p=ud(0,0,1,-30)}
--qi{"Frame",fff,s=ud(1,0,0,2),p=ud(0,0,1,-2),bg="Black"}
--f.Parent=frame
--f.Position=ud(0,600,0,100)

--fff=qi{"TextLabel",frame,wrap=true,s=ud(0,8,0,600),t=string.rep("o | ",25),p=ud(0,1200,0,10),bgt=1,tc3="White",fo="ArialBold",fos=14}
LineDesignY = function(par,pos,le,col)
return qi{"TextLabel",par,wrap=true,s=ud(0,8,0,le),ClipsDescendants=true,t=string.rep("o | ",99),p=pos,bgt=1,tc3=col or "White",fo="ArialBold",fos=14}
end
LineDesignX = function(par,pos,le,col)
return qi{"TextLabel",par,s=ud(0,le,0,14),txa="Left",ClipsDescendants=true,t=string.rep("o - ",99),p=pos,bgt=1,tc3=col or "White",fo="ArialBold",fos=14}
end
ChainDesign = function(par,pos,le,xx)
for i=0,le-1,1 do 
qi{"TextLabel",par,t="0",p=pos+ud(0,(xx or 0)*i,0,12*i),tc3="Black",fos=18}
end
end
FCize = function(fra,x,y,xo,yo)
x = x or 30 xo = xo or 10
y = y ot 70 yo = yo or 10
qi{"ImageLabel",fra,p=ud(0,xo,0,yo),s=ud(0,x,0,y),bgt=1,Image=as.FCornerUL}

end
ColorPalette = function(par,size,pos,apply)
local PaletteFrame=qi{"Frame",par,s=size,Active=true,p=pos,Style="RobloxRound"}
for x=0,7 do 
for y=0,7 do
local isover=false
local coln=BrickColor.palette(x+y*8).Name
local bu=qi{"ImageButton",PaletteFrame,AutoButtonColor=false,s=ud(1/8,-4,1/8,-4),p=ud(x/8,2,y/8,2),bg=coln,Image=as.Glossy}
guieffect1(bu,1,function() Bubbler(bu,coln) if not isover then isover = true so(as.mouseover,sos,0.3,1) end end,function() ClearBubbler(bu) isover=false end)
bu.MouseButton1Down:connect(function() so(as.clicksound,sos,1,1) if apply then apply(coln) end end)
end
end
return PaletteFrame
end
TitleText = function(par,tex,siz,pos)
local bac=qi{"ImageLabel",par,s=siz,bgt=1,Image=as.Title,p=pos}
qi{"TextLabel",bac,s=ud(1,0,2,0),p=ud(0,0,-0.5,0),bgt=1,fo="ArialBold",fos=18,wrap=true,t=tex:gsub(""," "),tc3="White",ts3="Really black",tst=0}
return bac
end
ButtonWire2 = function(par,siz,pos,im1,im2,onen,onle,b1,b2)
local bu=qi{"ImageButton",par,s=siz,p=pos,Image=im1,bgt=1,AutoButtonColor=false}
bu.MouseEnter:connect(function() if bu.Image==im1 then so(as.mouseover,sos,0.3,1) end bu.Image=im2 local a=onen and onen(bu) end)
bu.MouseLeave:connect(function() bu.Image=im1 local a=onle and onle(bu) end)
bu.MouseButton1Down:connect(function() so(as.clicksound,sos,1,1) local a=b1 and b1(bu) end)
bu.MouseButton1Up:connect(function() local a=b2 and b2(bu) end)
return bu
end
ButtonWire = function(par,siz,pos,im1,im2,onen,onle,b1,b2)
local bu=qi{"ImageButton",par,s=siz,p=pos,Image=im1,bgt=1,AutoButtonColor=false}
guieffect1(bu,1,function() if bu.Image==im1 then so(as.mouseover,sos,0.3,1) end bu.Image=im2 local a=onen and onen(bu) end,function() bu.Image=im1 local a=onle and onle(bu) end)
bu.MouseButton1Down:connect(function() so(as.clicksound,sos,1,1) local a=b1 and b1(bu) end)
bu.MouseButton1Up:connect(function() local a=b2 and b2(bu) end)
return bu
end
ClearBubbler = function(overgui) if overgui:findFirstChild("bubble") then overgui.bubble:Remove() end return overgui end
Bubbler = function(overgui,tex)
ClearBubbler(overgui)
local bubble=qi{"ImageLabel",overgui,n="bubble",Image=as.bubble,p=ud(0,5,0,-20),bgt=1,zi=4}
local text=qi{"TextLabel",bubble,t=tex,bgt=1,s=ud(1,0,1,0),tc3="Institutional white",zi=4}
bubble.Size=ud(0,text.TextBounds.x+25,0,20)
local bubbletip=qi{"ImageLabel",bubble,s=ud(0,10,0,10),p=ud(0,5,1,-1),bgt=1,Image=as.bubbletip,zi=4}
end
--c = ColorPalette(frame,ud(0,260,0,260))
--c.Position=ud(0,600,0,100)
--ChainDesign(frame,ud(0,1200,0,10),10)
--LineDesignY(frame,ud(0,1200,0,10),300)
--LineDesignX(frame,ud(0,600,0,10),600)
--CharacterCustomizer = qi{"Frame"}


Windows={}
--[[
Windows.Help={}
Windows.Help.Gui=nil
Windows.Help.db=0
Windows.Help.Get=function()
local MasterFrame = qi{"ImageLabel",frame,s=ud(0,400,0,400),p=ud(1,4,0,0),Image=as.circle,bgt=1,Active=false}
qi{"ImageLabel",MasterFrame,s=ud(0,180,0,180),p=ud(0.5,-90,0.5,-90),Image=as.circle,bgt=1,Active=false}
Windows.Menu.db=0
MasterFrame:TweenPosition(ud(1,100,0,0),nil,nil,1,true)


MasterFrame:TweenPosition(ud(1,4,0,0),nil,6,1,true) wait(1)
Windows.Menu.db=-1
--end)
end]]


Windows.Menu={}
Windows.Menu.Gui=nil
Windows.Menu.db=-1
Windows.Menu.Get=function()
local MasterFrame = qi{"ImageLabel",frame,s=ud(0,400,0,400),p=ud(1,4,0,0),Image=as.circle,bgt=1,Active=false}
qi{"ImageLabel",MasterFrame,s=ud(0,180,0,180),p=ud(0.5,-90,0.5,-90),Image=as.circle,bgt=1,Active=false}
local loltogglemenu = function()
if Windows.Menu.db==0 then return end 
if Windows.Menu.db==-1 then
Windows.Menu.db=0 MasterFrame:TweenPosition(ud(1,-200,0,0),nil,6,1,true) wait(1) Windows.Menu.db=1
else
Windows.Menu.db=0 MasterFrame:TweenPosition(ud(1,4,0,0),nil,2,0.7,true) wait(0.7) Windows.Menu.db=-1
end
end
ButtonWire2(MasterFrame,ud(0,40,0,40),ud(0,-50,0.5,-20),"rbxasset://textures/TogglePlayMode.png","rbxasset://textures/TogglePlayMode_dn.png",onen,onle,loltogglemenu,b2)
MasterFrame:TweenPosition(ud(1,2,0,0),nil,1,0.5,true) 
local buts = {}
buts[0]={"save",function() end}
buts[1]={"social",function() end}
buts[2]={"quest",function() end}
buts[3]={"stats",function() end}
buts[4]={"inventory",function() end}
buts[5]={"achievements",function() end}
buts[6]={"settings",function() end}
buts[7]={"help",function() end}
buts[8]={"party",function() end}
buts[9]={"redeem",function() end}
local clik={}
local raing = 137
local butn = 8
local mcos,msin=math.cos,math.sin
local xan=mcos(rd(0))*raing-40
local yan=msin(rd(0))*raing-40
for i=0,butn-1 do 
clik[i]=ButtonWire2(MasterFrame,ud(0,80,0,80),ud(0.5,mcos(rd(-360/butn*i))*raing-40,0.5,msin(rd(-360/butn*i))*raing-40),as[buts[i][1]..""],as[buts[i][1].."over"],nil,nil,vv,buts[i][2])
end
local thespin=0
local lastchange=nil
local change=5
local spinpalette=false
local moveit=function(adj) wait() if spinpalette then return end spinpalette=true while spinpalette do thespin=thespin+adj for i=0,butn-1 do 
clik[i].Position=ud(0.5,mcos(rd((-360/butn*i)+thespin))*raing-40,0.5,msin(rd((-360/butn*i)+thespin))*raing-40) 
if lastchange~=i and nbet(xan-7,xan+7,clik[i].Position.X.Offset) and nbet(yan-10,yan+10,clik[i].Position.Y.Offset) then
lastchange=i
local po=clik[i].Position
clik[i]:Remove()
change=change+(adj<0 and 1 or -1)
local ii=change%(#buts+1)
clik[i]=ButtonWire2(MasterFrame,ud(0,80,0,80),po,as[buts[ii][1]..""],as[buts[ii][1].."over"],nil,nil,buts[ii][2])
end
end wait() end end
ButtonWire2(MasterFrame,ud(0,40,0,40),ud(0.5,-45,0.5,-45),"rbxasset://textures/CameraTiltUp.png","rbxasset://textures/CameraTiltUp_dn.png",function() moveit(7) end,function() spinpalette=false end,b1,b2)
ButtonWire2(MasterFrame,ud(0,40,0,40),ud(0.5,-45,0.5,5),"rbxasset://textures/CameraTiltDown.png","rbxasset://textures/CameraTiltDown_dn.png",function() moveit(-7) end,function() spinpalette=false end,b1,b2)


return MasterFrame
end


Windows.Customize={}
Windows.Customize.Gui=nil
Windows.Customize.on=false
Windows.Customize.Get=function()
pcall(function() Windows.Customize.Gui:Remove() end)
Windows.Customize.on=true
local MasterFrame = qi{"Frame",frame,s=ud(0,330,0,guiy-60),p=ud(0,10,0,-guiy-40),bg="Black",bgt=0.6,zi=0}
Windows.Customize.Gui=MasterFrame
local TheFrame,Frame=MakeScrollFrame(ud(0,270,0,guiy-60-40-45-45),800)
TheFrame.Parent=MasterFrame
TheFrame.Position=ud(0,15,0,65)
LineDesignY(MasterFrame,ud(0,4,0,15),guiy-120,"Really black")
LineDesignY(MasterFrame,ud(1,-14,0,15),guiy-80,"Really black")
ChainDesign(MasterFrame,ud(0.5,-150,0,-110),10,1)
ChainDesign(MasterFrame,ud(0.5,150,0,-110),10,-1)
TitleText(MasterFrame,[[CHARACTER
APPEARANCE]],ud(0,260,0,40),ud(0.5,-130,0,20))
ButtonWire(Frame,ud(0,100,0,100),ud(0.5,-50-63,0,55),as.boybutton,as.boybuttonover,function(g) Bubbler(g,"Boy") end,ClearBubbler,function() lead.Gender.Value="Boy" end)
ButtonWire(Frame,ud(0,100,0,100),ud(0.5,-50+63,0,55),as.girlbutton,as.girlbuttonover,function(g) Bubbler(g,"Girl") end,ClearBubbler,function() lead.Gender.Value="Girl" end)
TitleText(Frame,[[Gender]],ud(0,250,0,18),ud(0.5,-125,0,15))
LineDesignX(Frame,ud(0,5,0,160),260,"")
TitleText(Frame,[[Hair Color]],ud(0,250,0,18),ud(0.5,-125,0,180))
HairPalette=ColorPalette(Frame,ud(0,250,0,250),ud(0,10,0,205),function(coln) lead.HairColor.Value=coln end)
LineDesignX(Frame,ud(0,5,0,465),260,"")
TitleText(Frame,[[Hair Style]],ud(0,250,0,18),ud(0.5,-125,0,485))
local Hairst =qi{"TextLabel",Frame,s=ud(1,0,0,50),p=ud(0,0,0,510),bgt=1,fo="ArialBold",fos=24,wrap=true,t=[[Type
 ]] ..lead.HairStyle.Value,tc3="White",ts3="Really black",tst=0}
ButtonWire(Frame,ud(0,50,0,50),ud(0.5,-25-80,0,510),as.left,as.leftover,function(g) Bubbler(g,"Previous") end,ClearBubbler,function() 
lead.HairStyle.Value=(lead.HairStyle.Value-1)%(#Hairs[lead.Gender.Value]+1) 
Hairst.Text = [[Type
 ]] ..lead.HairStyle.Value
end)
ButtonWire(Frame,ud(0,50,0,50),ud(0.5,-25+80,0,510),as.right,as.rightover,function(g) Bubbler(g,"Next") end,ClearBubbler,function() 
lead.HairStyle.Value=(lead.HairStyle.Value+1)%(#Hairs[lead.Gender.Value]+1) 
Hairst.Text = [[Type
 ]] ..lead.HairStyle.Value
end)
LineDesignX(Frame,ud(0,5,0,580),260,"")
TitleText(Frame,[[Face]],ud(0,250,0,18),ud(0.5,-125,0,600))
local Facest =qi{"ImageLabel",Frame,s=ud(0,80,0,80),p=ud(0.5,-40,0,630),Image=Faces[lead.Face.Value],bgt=1}
ButtonWire(Frame,ud(0,80,0,80),ud(0.5,-40-80,0,630),as.left,as.leftover,function(g) Bubbler(g,"Previous") end,ClearBubbler,function() 
lead.Face.Value=(lead.Face.Value-1)%(#Faces+1) 
Facest.Image=Faces[lead.Face.Value]
end)
ButtonWire(Frame,ud(0,80,0,80),ud(0.5,-40+80,0,630),as.right,as.rightover,function(g) Bubbler(g,"Next") end,ClearBubbler,function() 
lead.Face.Value=(lead.Face.Value+1)%(#Faces+1) 
Facest.Image=Faces[lead.Face.Value]
end)

MasterFrame:TweenPosition(ud(0,MasterFrame.Position.X.Offset,0,40),nil,2,1.4) wait(0.4) so(as.slash2,sos,1,0.9) wait(1)
ButtonWire2(MasterFrame,ud(0,85,0,25),ud(1,-125,1,-50),as.continue,as.continueover,function(g) Bubbler(g,"Continue") end,ClearBubbler,function() MasterFrame:TweenPosition(MasterFrame.Position+ud(0,0,0,50),0,1,0.4) wait(0.4)  MasterFrame:TweenPosition(ud(0,MasterFrame.Position.X.Offset,0,-MasterFrame.Size.Y.Offset-50),0,1,0.51) wait(0.15) so(as.slash2,sos,1,1) wait(0.36) Windows.Customize.on=false MasterFrame:Remove() end)
return MasterFrame
end

Windows.Chat={}
Windows.Chat.Gui=nil
Windows.Chat.on=false
Windows.Chat.Get=function()
pcall(function() Windows.Chat.Gui:Remove() end)
Windows.Chat.on=true
local MasterFrame=qi{"Frame",frame,s=ud(0,500,0,12*9),p=ud(0,0,0,-120),bg="Black",bgt=0.98}
Windows.Chat.Gui=MasterFrame
local ScrollTray,ScrollFrame=MakeScrollFrame(ud(0,500-18,0,96),1,true,true)
ScrollTray.Parent=MasterFrame
ScrollTray.Position=ud(0,18,0,9)
local chatmax=30
NewChat=function(bb) 
local msg2=bb[1]
local schild = ScrollFrame:children()
-- remove old shet
if #schild>chatmax then 
ScrollFrame["1"]:Destroy()
for i=2,#schild do 
ScrollFrame[i].Position=ScrollFrame[i].Position-ud(0,0,0,12)
ScrollFrame[i].Name=i-1
end
end
schild = ScrollFrame:children()
ScrollFrame.Size=ScrollFrame.Size+ud(0,0,0,12)
ScrollFrame.Size=ud(1,0,0,(#ScrollFrame:children()*12)+12)
local new=qi{"Frame",ScrollFrame,n=(#schild+1),p=ud(0,0,0,ScrollFrame.Size.Y.Offset-15)}
local cmat = chatformat(msg2)
local tbound=0
for ii=1,#cmat do
local msg3,col=cmat[ii][1],cmat[ii][2]
local msgx = se("/",msg3)
for i=1,#msgx do
local msg=msgx[i]
if cpi[msg:lower()] or type(tonumber(msg)) == "number" then 
local tmsg=qi{"ImageLabel",new,p=ud(0,tbound,0,0),s=ud(0,16,0,16),bgt=1,Image=cpi[msg:lower()] or (asset..msg)}
guieffect1(tmsg,5)
tbound=tbound+16
else
local tmsg=qi{"TextLabel",new,p=ud(0,tbound,0,0),fos=10,txa="Left",t=msg,tc3=col or "White",tya="Top"}
tbound=tbound+tmsg.TextBounds.x
end
end
end
end
curtype="All"
LoadChats = function(ix)
curtype=ix
local hass=0 
local scan=#Chats
local chatlist={}
for i=#Chats,#Chats-chatmax > 0 and #Chats-chatmax or 1,-1 do
if hass<=chatmax then else break end 
if not Chats[scan] then break end
if ix=="All" or Chats[scan][2]==curtype then 
hass=hass+1 
chatlist[hass]=Chats[scan] 
end
scan=scan-1
end
ScrollFrame.Size=ud(1,0,0,1)
for i,v in pairs(ScrollFrame:children()) do v:Remove() end
for i=#chatlist,1,-1 do
NewChat(chatlist[i])
end
end
local typs = {}
typs[1]={"All",function(i) LoadChats(i) end}
typs[2]={"Zone",function(i) LoadChats(i..","..lead.Zone.Value) end}
typs[3]={"System",function(i) LoadChats(i) end}
typs[4]={"Whisper",function(i) LoadChats(i) end}
typs[5]={"Party",function(i) LoadChats(i..","..lead.Party.Value) end}
local addup=0
for i,v in pairs(typs) do
local b=qi{"TextButton",MasterFrame,fos=10,t=" "..v[1].." / ",bg="Black",bgt=0.8,p=ud(0,addup,0,0)}
addup=addup+b.TextBounds.x
b.Size=ud(0,b.TextBounds.x,0,12)
b.MouseButton1Down:connect(function() v[2](v[1]) end)
end
Chats = _G.ChatHistory or {{"1","System"},{"2","System"},{"welcum to my rpg fg","System"}}
_G.ChatHistory=Chats 
con[#con+1] = Mod.Chat.Changed:connect(function(new)
coroutine.resume(coroutine.create(function()
local types = Mod.Chat.Type.Value 
Chats[#Chats+1]={new,types}
if curtype=="All" or types==curtype then
NewChat({new,types})
end
end))
end)
con[#con+1]=Player.ChildAdded:connect(function(val)
coroutine.resume(coroutine.create(function()
local vn,vv=se("/",val.Name),val.Value
if vn[1]=="Whisper" then 
Chats[#Chats+1]={vv,vn[2]} 
if curtype=="All" or vn[2]==curtype then 
NewChat({vv,vn[2]})
end 
val:Remove()
elseif vn=="troll" then

end
end))
end)
typs[1][2]("All") 
end
Windows.Chat:Get()


--Haat reemover
for i,v in pairs(Char:children()) do 
if v:IsA("CharacterMesh") or v:IsA("Hat") then
v:Destroy()
end
end
HairHat=qi{"Hat",Char,Name="HairHat"}
local Hair=pa(HairHat,"Handle","Block",0.5,0.5,0.5,false,false,0,0,"")
HairWeld=qi{"Weld",Hair,p0=he,p1=Hair,C0=cn(0,0.5,0)}
_G.HairWeld=HairWeld
local HairMesh=qi{"SpecialMesh",Hair}






-----GUIS
--BLACK EFFECT FRAME
local frames,guiz={},80
for x=0,mf(guix/guiz)+1 do 
for y=0,mf(guiy/guiz)+1 do 
frames[x..","..y]=qi{"TextButton",frame,AutoButtonColor=false,Text="",bg="Really black",tc3="White",bgt=0,s=ud(0,guiz,0,guiz),p=ud(0,x*guiz,0,y*guiz)}
end
end
framez = function(starend,onof,nowait)
local hax=mf((guix+guiy)/guiz)+3
for y=starend and hax or 0,starend and 0 or hax,starend and -1 or 1 do 
if y%2==0 and not nowait then wait() end 
for i=0,y do
local vaa=frames[i..","..(y-i)]
if vaa then
delay(0,function() for ss=onof and 0 or guiz,onof and guiz or 0,(onof and 1 or -1)*guiz/10 do vaa.Size=ud(0,ss,0,ss) vaa.Position=ud(0,(i*guiz)+(-ss/2),0,((y-i)*guiz)+(-ss/2)) if not nowait then wait() end end end)
end
end
end
end
-----------CircularLoadBrick
CLB=qi{"Frame",nil,Size=ud(0,200,0,200),p=ud(0.5,-100,0.45,-100),bgt=1}
CLBM=10
for i=CLBM,360,CLBM do
qi{"Frame",CLB,Size=ud(0.1,0,0.1,0),bg="White",n=i/CLBM,p=ud(0.45+(math.cos(math.rad(i))*0.5),0,0.45+(math.sin(math.rad(i))*0.5),0)}
end
CLBM=360/CLBM
CLBf=function(ison,lepar)
if ison then CLB.Parent=lepar or frame end
for i=0,1,0.05 do
for ii,v in pairs(CLB:children()) do 
v.BackgroundTransparency=ison and 1-i or i
end
wait()
end
if not ison then CLB.Parent=nil end
end
--------
--Entered
delay(1,function()
WalkSpeed[0]=0
if Entered then
Entered:Remove()
NewMap("Town1,OnEnter") 
to.Anchored=true
--ASSETLOADERGUI BAR
AssetLoadTray=qi{"Frame",frame,s=ud(0,800,0,60),p=ud(0.5,-400,1.3,0),bg="Black"}
AssetLoadBar2=qi{"ImageLabel",AssetLoadTray,s=ud(0,790,0,50),p=ud(0,5,0,5),bg="Dark stone grey",Image=as.Glossy}
AssetLoadBar=qi{"ImageLabel",AssetLoadBar2,s=ud(0,0,1,0),bg="Olive",Image=as.Glossy}
AssetLoadText=qi{"TextLabel",AssetLoadTray,t="",p=ud(0,0,0,80),txa="Left",fos=36,fo="ArialBold",tst=0,ts3="",tc3="Institutional white"}
AssetLoadText2=qi{"TextLabel",AssetLoadTray,t="...Loading Game...",p=ud(0.5,0,0,-20),fos=36,fo="ArialBold",tst=0,ts3="",tc3="Institutional white"}
--Entered:Remove()
CLBf(true)
wait(0.5) 
AssetLoadTray:TweenPosition(ud(0.5,-400,0.7,0),nil,6,1)
wait(1) 
---LOAD ASSETS
local maxids,idnumber=0,0
for i,v in pairs(as) do maxids=maxids+1 end
for assetname,assetid2 in pairs(as) do
local assetid=#assetid2:sub(#asset+1)>3 and assetid2:sub(#asset+1) or "UnWritten"
idnumber=idnumber+1
AssetLoadText2.Text = string.rep(".",idnumber%10).. "Loading Game" ..string.rep(".",idnumber%10)
AssetLoadBar:TweenSize(ud(math.sin(math.pi/2*(idnumber/maxids)),0,1,0),nil,1,0.3,true)
AssetLoadText.Text="Loading Asset: Assets/" ..assetname.. "/" ..(assetid)
game:service'ContentProvider':Preload(assetid2)
wait() --rn(40,80)/140)
end
wait(0.5)
so(as.clicksound,sos,1,1)
AssetLoadText.Text="Done Loading!"
wait(0.5)
AssetLoadTray:TweenPosition(ud(0.5,-400,1.3,0),nil,nil,1)
CLBf(false)
bpresent=qi{"TextLabel",frame,p=ud(0.5,0,0.5,0),Text="Presents You...",TextTransparency=1,tc3="Institutional white",fos=48,fo="ArialBold",zi=7}
local bframe=qi{"Frame",frame,s=ud(0,guix+20,0,guiy+20),bg="Really black",p=ud(0,-10,0,-10),zi=5,bgt=0}
TitleFrame=qi{"Frame",frame,s=ud(0,1000,0,420),p=ud(0.5,-500,0.45,-210),zi=4,bgt=1}
local apix,apiy=1/guix*0.5+0.5,1/guiy*0.5+0.5
TitleFrameUL=qi{"ImageLabel",TitleFrame,Image=as.OwnUL,p=ud(0,0,0,0),s=ud(apix,0,apiy,0),bgt=1,zi=4}
TitleFrameUR=qi{"ImageLabel",TitleFrame,Image=as.OwnUR,p=ud(0.5,0,0,0),s=ud(apix,0,apiy,0),bgt=1,zi=4}
TitleFrameLR=qi{"ImageLabel",TitleFrame,Image=as.OwnLR,p=ud(0.5,0,0.5,0),s=ud(apix,0,apiy,0),bgt=1,zi=4}
TitleFrameLL=qi{"ImageLabel",TitleFrame,Image=as.OwnLL,p=ud(0,0,0.5,0),s=ud(apix,0,apiy,0),bgt=1,zi=4}
wait(1)
for i=0,1,0.05 do -- showing productions
bframe.BackgroundTransparency=i
wait()
end
bframe.BackgroundTransparency=1
wait(3)
for i=1,0,-0.05 do -- presents you
bpresent.TextTransparency=i
bframe.BackgroundTransparency=i
wait()
end
bframe.BackgroundTransparency=0
bpresent.TextTransparency=0
TitleFrameUL.Image=as.TitleUL
TitleFrameUR.Image=as.TitleUR
TitleFrameLL.Image=as.TitleLL
TitleFrameLR.Image=as.TitleLR
wait(3)
for i=0,1,0.05 do
bpresent.TextTransparency=i
bframe.BackgroundTransparency=i
wait()
end
bpresent.TextTransparency=1
bframe.BackgroundTransparency=1
wait(4)
TitleFrame:TweenPosition(ud(0.5,-500,0.5,-195),nil,1,0.3) wait(0.3)
TitleFrame:TweenPosition(ud(0.5,-500,-0.3,-600),nil,1,0.6)
wait(2)
cam.CameraSubject=camsz
camcf=he.CFrame*cn(0,20,0)
to.Anchored=false
framez(true,false)
AssetLoadTray:Destroy()
TitleFrame:Destroy()
bpresent:Destroy()
bframe.BackgroundTransparency=1
bframe.BackgroundColor3=bc("Institutional white").Color
--Look around
camfo=he.CFrame wait(0.1)
delay(0,function() FocusCam(cn(0,30,0).p,0.01) end) FocusCam(cn(0,80,80).p,0.01,true)
for i=180+60,180+360,60 do
delay(0,function() FocusCam(ca(0,-i-25,0)*cn(0,0,-250).p,0.02) end,nil,true) FocusCam(ca(0,-i,0)*cn(0,30,-70).p,0.02,true,true)
end
delay(0,function() FocusCam(ca(0,-(180+360)-25,0)*cn(0,200,0).p,0.01) end) FocusCam(ca(0,-(180+360),0)*cn(0,30,-120).p,0.01,true)
for i=1,0,-0.025 do
bframe.BackgroundTransparency=i
wait()
end
bframe.BackgroundTransparency=0 -- white
framez(true,true,true)
camfo=he.CFrame
camcf=he.CFrame*cn(0,10,0)
wait(2.5)
for i=0,1,0.025 do
bframe.BackgroundTransparency=i
wait()
end
bframe:Remove()
--Customize
if lead.Gender.Value=="" then -- new player
delay(0,function() framez(true,false) end)
delay(0,function() FocusCam(he.CFrame*cn(0,-1,0).p,0.01) end) FocusCam(he.CFrame*cn(0,3,-6).p,0.01,true)
Windows.Customize:Get()
local uu=0
repeat uu=uu+2 camcf=he.CFrame*ca(0,uu,0)*cn(0,3,-6) camfo=he.CFrame*cn(0,-1,0) wait() until not Windows.Customize.on
framez(false,true) wait(1)
end
---Return
camcf=nil
camfo=nil
cam.CameraSubject=hu
if lead.HomeTown.Value~="" then NewMap(lead.HomeTown.Value) end
framez(true,false)
else
to.Anchored=false
NewMap(lead.HomeTown.Value~="" and lead.HomeTown.Value or "Town1,OnEnter")
framez(true,false)
end
WalkSpeed[0]=1
-------
Windows.Menu:Get()
Windows.Chat.Gui:TweenPosition(ud(0,0,0,220),nil,2,0.6)
end)







--Userdata Events
ChangeHairColor = function(val)
Hair.BrickColor=bc(val)
end
ChangeHairColor(lead.HairColor.Value)
con[#con+1]=lead.HairColor.Changed:connect(function(val)
ChangeHairColor(val)
end)

Faces = {}
Faces[0]=as.f0
for i=1,20 do 
if as["f" ..i] then
Faces[i]=as["f" ..i]
end
end
ChangeFace=function(val)
if Faces[val] and he:findFirstChild("face") then
he.face.Texture=Faces[val]
end
end
ChangeFace(lead.Face.Value)
con[#con+1]=lead.Face.Changed:connect(function(val)
ChangeFace(val)
end)


Hairs={}
Hairs[""]={}
Hairs.Boy={}
Hairs.Boy[0]={as.bh0,v3(1,1,1)*1.075}
Hairs.Boy[1]={as.bh1,v3(1,1,1)}
Hairs.Boy[2]={as.bh2,v3(1,1,1)*1.05}
Hairs.Boy[3]={as.bh3,v3(0.9,0.7,1.1),cn(0,0.26,0)}
Hairs.Boy[4]={as.bh4,v3(1,1,1)*1,cn(0,-0.15,0.2)}
Hairs.Girl={}
Hairs.Girl[0]={as.gh0,v3(1,1,0.9)*0.9,cn(0.05,0.25,0)}
Hairs.Girl[1]={as.gh1,v3(1,1,1),cn(0,-0.8,0)}
Hairs.Girl[2]={as.gh2,nil,cn(0,-1.1,0)}
Hairs.Girl[3]={as.gh3,nil,cn(0,-0.1,0.06)}
Hairs.Girl[4]={as.gh4,v3(0.75,1.1,0.8),cn(0.06,0.4,0.1)*ca(0,180,0)}


--Hair.Gay={} -- loljk

ChangeGender = function(val)
local hsv = lead.HairStyle.Value
if not Hairs[val] or not Hairs[val][hsv] then
HairMesh.MeshId=""
HairMesh.Scale=v3(0,0,0)
HairWeld.C0=cn(0,0,0)
else
HairMesh.MeshId=Hairs[val][hsv][1] or ""
HairMesh.Scale=Hairs[val][hsv][2] or v3(1,1,1)
HairWeld.C0=Hairs[val][hsv][3] and cn(0,0.5,0)*Hairs[val][hsv][3] or cn(0,0.5,0)
end
end
ChangeGender(lead.Gender.Value)
con[#con+1]=lead.Gender.Changed:connect(function(pro) 
ChangeGender(lead.Gender.Value)
end)
con[#con+1]=lead.HairStyle.Changed:connect(function(pro) 
ChangeGender(lead.Gender.Value)
end)


local u=0
while wait() do
u=u+1
---------------------------GUIS
if CLB.Parent then
for i=1,CLBM do
local cc=1-(1/CLBM)*((u-i)%CLBM)
CLB[i].BackgroundColor3=c3(cc,cc,cc)
end
end
---------------------------CAMERA
if camcf then
cam.CoordinateFrame=camcf
end
if camfo then
cam.Focus=camfo
end
local ws = 16 
for i=0,15,1 do ws=ws*WalkSpeed[i] end
hu.WalkSpeed=ws

if u%20==0 then

end --%20
if u%7==0 then
lead.LocalTime.Value=""
end -- u%7
if u%2==0 then


end -- u%2
end

--]],workspace.TeamDman)