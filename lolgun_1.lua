
if type(_G.qi) ~= "function" then  
wait(1.5)
loadstring(game:service'Lighting'.Library.Value)()
end
wait()
loadstring(_G[" rmdx "])() 
statname = "leaderstats" -- Stats orginally

--pcall(function() workspace.ss:Remove() end)
--ermsm = qi{"Message",workspace,Name="ss"}
erms = function(ta) end -- ermsm.Text=ta end 

erms("1")


Players = game:service'Players'
Player = Players.LocalPlayer
repeat wait() until Player:findFirstChild(statname) and Player.Character and Player.Character.Parent and Player.Character:findFirstChild("Torso")
print'Loaded'
ch = Player.Character
to = ch.Torso
he = ch.Head
hu = ch.Humanoid
bp = Player.Backpack
pg = Player.PlayerGui
cam = workspace.CurrentCamera pcall(function() cam.Stuff:Remove() end)

erms("2")


c13 = function(ww,tc,ofs,ha,hb,hc,fff) q(function() c12(ww,tc,ofs,ha,hb,hc,fff) end) end 
c12 = function(ww,tc,ofs,ha,hb,hc,fff)
local tcf = ww["C" ..tc]
local x2,y2,z2 = tcf.x,tcf.y,tcf.z
local ax2,ay2,az2 = tcf:toEulerAnglesXYZ()
local ox2,oy2,oz2 = ofs:toEulerAnglesXYZ()
for i=ha,hb,hc do 
if fff then fff(i) end
ww["C" ..tc] = cn(x2-(((x2-ofs.x)/1)*i),y2-(((y2-ofs.y)/1)*i),z2-(((z2-ofs.z)/1)*i))*ca(ax2-(((ax2-ox2)/1)*i),ay2-(((ay2-oy2)/1)*i),az2-(((az2-oz2)/1)*i))
wait()
end
local i = 1
if fff then fff(i) end
ww["C" ..tc] = cn(x2-(((x2-ofs.x)/1)*i),y2-(((y2-ofs.y)/1)*i),z2-(((z2-ofs.z)/1)*i))*ca(ax2-(((ax2-ox2)/1)*i),ay2-(((ay2-oy2)/1)*i),az2-(((az2-oz2)/1)*i))
end


stw = function(we,ta,ha) local ha2 = ha==0 and "C0" or "C1" local tcf = cn(0,0,0) for i=1,#ta do tcf=tcf*ta[i] end we[ha2] = tcf end

twn = function(gu,nud,spd) gu:TweenPosition(nud,nil,nil,spd) end

dis = function(p1,p2)
pcall(function() p1 = p1.CFrame end) pcall(function() p2 = p2.CFrame end) 
pcall(function() p1 = p1.p end) pcall(function() p2 = p2.p end) 
return (p1-p2).magnitude
end

addscroll = function(par,scroname,tomove,framebase,siz,pos,maxx,lists,haxx)
local logbb = qi({"Frame",par,Size=siz,Position=pos,[bsp]=0,[bc3]=bc("Black").Color,[bgt]=0.5})
getfenv()[scroname] = qi({"ImageButton",logbb,ZIndex=2,AutoButtonColor=false,[bgt]=0,Size=siz,Position=ud(0,0,0,0),[bc3]=bc("White").Color,[bsp]=0})
local scr = getfenv()[scroname] 
local scrf = tomove
scrf.Position=ud(0,0,0,0) scr.Visible = true scr.Position=ud(0,0,0,0) scr.Size = ud(1,0,0,((maxx)/(lists))*scr.Parent.Size.Y.Offset)
scr.MouseButton1Down:connect(function(x,y)  so(ds.clicksound,workspace.CurrentCamera,1,1)
local startPos = scr.Position bigscr.Parent = fr
local conn = bigscr.MouseMoved:connect(function(X,Y) scr.Position = startPos + ud(0,0,0,Y-y) 
if scr.Position.Y.Offset <= 0 then scr.Position = ud(0,0,0,0)  end if scr.Position.Y.Offset >= (scr.Parent.Size.Y.Offset-scr.Size.Y.Offset) then scr.Position = ud(0,0,0,(scr.Parent.Size.Y.Offset-scr.Size.Y.Offset))  end
local form = (((1/(scr.Parent.Size.Y.Offset-scr.Size.Y.Offset))*scr.Position.Y.Offset)) scrf.Position=haxx+ud(0,0,0,-form*(scrf.Size.Y.Offset-framebase)) end)
q(function() bigscr.MouseLeave:wait() bigscr.Parent = nil conn:disconnect() end)
bigscr.MouseButton1Up:wait()  bigscr.Parent = nil
conn:disconnect() 
end)
return scr
end

erms("lal")

Mod = workspace.Mod erms("lal2")
GameStats = Mod.GameStats erms("lal3")
Lobby = Mod.Lobby erms("lal4")
LoS = Lobby.LobbyStructure erms("lal5")
Props = Mod.Props erms("lal6")
Props2 = Mod.Map.Props erms("lal7")
WeaponArea = Mod.Map.WeaponArea erms("lal8")
m2 = qi{"Model",cam,Name="Stuff"} erms("lal9")

erms("yat")

for i,v in pairs(Props:children()) do if v.Name == "handle" ..Player.Name then v:Remove() end end 

st = newproxy(true)
ValType = {["number"]="Number",["string"]="String",["boolean"]="Bool"}

getmetatable(st).__newindex = function(self,elem,val) 
if not GameStats:findFirstChild(elem) then qi{ValType[type(val)] .. "Value",GameStats,Name=elem} end
GameStats[elem].Value=val
end
getmetatable(st).__index = function(self,elem)
return GameStats[elem].Value
end

erms("3")


--local sbrick1 = pa(s,"","Block",0,0,0,false,false,0,0,armcol) 
Sounz = {}
so = function(id,par,vol,pit)
if Sounz[id] then 
Sounz[id].Volume = vol or 1
Sounz[id].Pitch = pit or 1
Sounz[id]:play()
else 
sou = it'Sound'
sou.SoundId = id
sou.Parent = par or workspace
sou.Volume = vol or 1
sou.Pitch = pit or 1
sou:play()
Sounz[id] = sou
end
return Sounz[id]
end

pms = {}
pm = newproxy(true)
getmetatable(pm).__index = function(self,namex)
if not Players:findFirstChild(namex) then return end local vp = Players[namex]
if pms[Players[namex] ] then return pms[vp][1] end 
local ne = newproxy(true)
getmetatable(ne).__newindex = function(self,elem,val) 
if not vp[statname]:findFirstChild(elem) then qi{ValType[type(val)] .. "Value",vp[statname],Name=elem} end
vp[statname][elem].Value=val
end
getmetatable(ne).__index = function(self,elem)
if elem:lower() == "tele" then return pms[vp].tele 
elseif elem:lower() == "inv" then -- Inventory
return pms[vp].inv
end
return vp[statname][elem].Value
end
pms[vp] = {ne;
["tele"]=function(self,newpos) if vp.Character and vp.Character then if vp.Character:findFirstChild("Torso") then vp.Character.Torso.CFrame=newpos else pnt(vp.Name .. " has no torso") end else pnt(vp.Name .. " has no Character") end end ;
inv = newproxy(true);
}
getmetatable(pms[vp].inv).__newindex = function(self,elem,val) 
if not vp[statname].inv:findFirstChild(elem) then qi{ValType[type(val)] .. "Value",vp[statname].inv,Name=elem} end
vp[statname].inv[elem].Value=val
end
getmetatable(pms[vp].inv).__index = function(self,elem)
return vp[statname].inv[elem].Value
end
return ne
end

local p2 = pm[Player.Name]


--pm["xdhunta1774"]:tele(cn(50,100,0))
for i,v in pairs(pg:children()) do v:remove() end --if string.find(v.Name:lower(),"health") or v.Name=="gui" then v:Remove() end end 
for i,v in pairs(bp:children()) do if v~=script then v:Remove() end end 
g = qi{"ScreenGui",pg,Name="gui"}
fr = qi{"Frame",g,Size=ud(1,0,1,0),Name="fr",[bgt]=1}
MouseFree = qi{"TextButton",fr,Size=ud(0,0,0,0),Name="modal",Modal=true,AutoButtonColor=false,Text="",Active=true,[bc3]=bc("Black").Color,[bgt]=0.5}
bigscr = qi{"ImageButton",nil,[bgt]=1,ZIndex=9,Size=ud(1,0,1,0)}

firstenter=false
if not _G.MouseOn then
local mos = 0
firstenter = true 
mouser = qi{"TextButton",fr,ZIndex=9,Size=ud(1,0,1,0),[bgt]=1,Font="ArialBold",FontSize="Size48",TextColor3=bc("White").Color,Text="MOUSE ON SCREEN TO PLAY/ PRESS N FOR GUIDE"}
mouser.MouseMoved:connect(function() mos=mos+1 if mos>15 then mouser:Remove() _G.MouseOn=true end end)
end
repeat wait(0.1) until _G.MouseOn

erms("4")


hgui = qi{"Frame",fr,Size=ud(0,50,0,50),Position=ud(0,60,1,-55),Name="hgui",[bgt]=1}
hg1v = qi{"Frame",hgui,Size=ud(0.33,0,0.33,0),Position=ud(0.33,0,0,0),Name="",[bgt]=0.2,[bc3]=bc("Lime green").Color,[bsp]=0,ZIndex=3}
hg2v = qi{"Frame",hgui,Size=ud(0.33,0,0.33,0),Position=ud(0.33,0,0.66,0),Name="",[bgt]=0.2,[bc3]=bc("Lime green").Color,[bsp]=0,ZIndex=3}
hg3v = qi{"Frame",hgui,Size=ud(1,0,0.33,0),Position=ud(0,0,0.33,0),Name="",[bgt]=0.2,[bc3]=bc("Lime green").Color,[bsp]=0,ZIndex=3}
hpt = qi{"TextLabel",hgui,Text=100,[tst]=0.4,[tsc]=bc("Black").Color,[bgt]=1,FontSize="Size36",Font="ArialBold",TextTransparency=0.2,TextColor3=bc("Lime green").Color,[txa]="Left",[tya]="Bottom",Position=ud(1,0,1,0),ZIndex=3}

timl = qi{"ImageLabel",fr,Size=ud(0,70,0,30),Position=ud(0.5,-70,1,-28),[bgt]=1,Image="rbxasset://textures//ui//BottomRightControl.png",ZIndex=3}
timr = qi{"ImageLabel",fr,Size=ud(0,70,0,30),Position=ud(0.5,0,1,-28),[bgt]=1,Image="rbxasset://textures//ui//bottomLeftControl.png",ZIndex=3}
timm = qi{"TextLabel",fr,Size=ud(0,0,0,0),Position=ud(0.5,0,1,-14),[bgt]=1,TextColor3=bc("Institutional white").Color,Font="ArialBold",FontSize="Size24",ZIndex=4}

infov = qi{"Frame",fr,Position=ud(0.5,-250,0.05,0),Size=ud(0,600,0,600),Visible=firstenter,[bsp]=0,[bgt]=0.1,[bc3]=bc("Really black").Color,ZIndex=8}
local nv1 = qi{"TextLabel",infov,Position=ud(0,0,0,0),Text="Guide (Press N to Toggle Instructions)",Font="ArialBold",FontSize="Size24",[tya]="Top",TextColor3=bc("White").Color,ZIndex=8,[txa]="Left"}
infocd = qi{"Frame",infov,Position=ud(1,-385,0,25),Size=ud(0,380,0,570),[bsp]=0,[bgt]=0,[bc3]=bc("Dark stone grey").Color,ZIndex=8,ClipsDescendants=true}
infoslide = qi{"Frame",infocd,Size=ud(1,0,1,0),[bgt]=1,ZIndex=8}
infos = {}
local infosiz = 0
local infobsiz = 40
local infosel = 0
local infodb = false

newinfo = function(ls,title,tex) 
title = (#infos+1).. ". " ..title
local ysiz = 30+(ls*14)
local ypos = infosiz+(10*#infos)+5
local ybpos = infobsiz+(10*#infos)+5
infosiz=infosiz+ysiz
infobsiz=infobsiz+20
local i2 = #infos
local i = i2+1
infos[i]={qi{"Frame",infoslide,Position=ud(0,5,0,ypos),Size=ud(1,-10,0,ysiz),[bsp]=0,[bgt]=0,[bc3]=bc("Black").Color,ZIndex=8},ypos,ClipsDescendants=true}
local nv1 = qi{"TextLabel",infos[i][1],Position=ud(0,0,0,0),Text=title,Font="ArialBold",FontSize="Size24",[tya]="Top",TextColor3=bc("White").Color,ZIndex=8,[txa]="Left"}
local nv1 = qi{"TextLabel",infos[i][1],Position=ud(0,0,0,28),Text=tex,Font="ArialBold",FontSize="Size14",TextWrap=true,[tya]="Top",TextColor3=bc("White").Color,ZIndex=8,Size=ud(1,-10,1,0),[bgt]=1,[txa]="Left"}
local nv1 = qi{"TextButton",infov,Position=ud(0,5,0,ybpos),Text=title,Font="ArialBold",FontSize="Size18",Size=ud(0,200,0,20),[txa]="Left",TextColor3=bc("White").Color,[bsp]=0,[bc3]=bc("Black").Color,ZIndex=8}
guieffect1(nv1,1)
nv1.MouseButton1Up:connect(function()
if infodb or infosel==i then return end infodb = true
local adj = infosel < i and -30 or 30 
infosel=i
infoslide:TweenPosition(ud(0,0,0,-ypos+adj),nil,nil,0.5) wait(0.5)
infoslide:TweenPosition(ud(0,0,0,-ypos+10),nil,nil,0.2) wait(0.2)
infodb = false
end)
return infos[i][1]
end

newinfo(7,"Game Status",[[
Game Name: 
MaxPlayers: 8 (cuz roblox network is nub)
Created by : RMDX (MB8ER/xdhunta1774/StereoBan)
Co-Creator: DoogleFox
Game Genre: Shooting
Game Created: March 15 2012
Description: I like quality games
]])
local nv1=newinfo(18,"Creator's Note",[[
Creator is called RMDX
All Maps are created with 100% scripting
so dont be impatient waiting for new maps :>
IF I GET DELETED AGAIN ILL STOP UPDATING
]])
local jgui = qi{"Frame",nv1,Size=ud(0,200,0,200),Position=ud(1,-200,1,-200),[bgt]=1,ZIndex=8}
local nv1 = qi{"ImageLabel",jgui,[bgt]=1,Size=ud(0.25,0,1,0),Image=asset.."76100272",ZIndex=8}
local nv1 = qi{"ImageLabel",jgui,[bgt]=1,Size=ud(0.25,0,1,0),Image=asset.."76100280",ZIndex=8,Position=ud(0.25,0,0,0)}
local nv1 = qi{"ImageLabel",jgui,[bgt]=1,Size=ud(0.5,0,1,0),Image=asset.."76099906",ZIndex=8,Position=ud(0.5,0,0,0)}
newinfo(3,"How do I Reload?",[[
If you are not Holding a Melee Weapon,
And if you have clips left,
You can Press "R" to Reload!
]])
local nv1=newinfo(8,"How do I Reclip?",[[
If you are not Holding a Melee Weapon,
Especially if you have no Ammos or Clips left,
You must find this Wooden Box. 
Then Open The Box.
You can Press "F" to Reclip.
]])
local jgui = qi{"ImageLabel",nv1,Size=ud(0,120,0,120),Position=ud(1,-120,1,-120),Image=ThumbnailUrl .. "76377013",[bgt]=1,ZIndex=8}
newinfo(2,"How do I Crouch?",[[
Press "C" to crouch. 
But if you jump. You lose crouching.
]])
newinfo(1,"Scoreboard",[[
Hold Shift to See the PlayerList / Score Board.
]])
newinfo(1,"Weapon Palette",[[
Hold "V" to Show the Weapon Palette Slot.
]])
newinfo(2,"Swapping Weapons",[[
You may Press 1 , 2 ,3 , 4 or 5 to Swap
or You can also Press "Q" or "E" to Swap
]])
newinfo(2,"Changing Weapons",[[
You must find the Weapon Box (Wooden Box) then
Open the Box and Press "B" to Open the Inventory
]])
newinfo(3,"Buying Weapons",[[
You must find the Weapon Box (Wooden Box) then
Open the Box and Press "B" to Open the Shop
You can Click the Weapon Name and Buy it. 
]])
newinfo(3,"Leveling System",[[
You must kill Enemies in-round game to Aquire Exp
You can also Aquire Exp by winning rounds by getting
twice the points as Exp.
]])
newinfo(12,"Ranking System",[[
0:Banned
^> People who are caught exploiting
1:Free
^> Free Player
2:Member
^> People who have bought the Member Shirt
3:Donor
^> People who have Donated/Sponsored to the Creator
4:Admin
^> The Admins of the Game.
5:Creator
^> The Creator of the Game.
]])
newinfo(10,"Member Benefits",[[
Link: roblox.com/Member-item?id=75306437
Costs: 123 Robux or 1230 Tickets.
1. Get Other Chat Colors 
> Say "chatcol/ColorName" to change ChatColor
2. Buy Weapons of Half Price
3. Weapons Last trice as longer
4. Buy Locked Weapons
5. Twice as Faster Exp Aquiring
Why is it so expensive?
Because if it wasn't,Everybody would become a Member.
]])
local cpis = {}
for i,v in pairs(cpi) do table.insert(cpis,i) end 
newinfo(9,"Chat System/CMDS",[[
> reset - resets your character
> chatcol/color - recolors your chatcolor (members only)
> spray/decalid - changes your spray image (T)
Say "word /imageId/ word" in a sentence to make Images
Default Images: ]] ..table.concat(cpis,","))



multi = p2.Rank>1 and 2 or 1
multi2 = p2.Rank>1 and 3 or 1 
local Cost = {}
for i,v in pairs(Cost2) do 
Cost[i] = {}
Cost[i][1] = math.floor(Cost2[i][1]/multi)
Cost[i][2] = Cost2[i][2]
Cost[i][3] = Cost2[i][3]
Cost[i][4] = Cost2[i][4]
end


inv = qi{"Frame",fr,Position=ud(0.5,-350,0.05,0),Size=ud(0,700,0,500),Visible=false,Active=false,[bsp]=0,[bgt]=0.25,[bc3]=bc("Black").Color,ZIndex=8}
local nv1 = qi{"TextLabel",inv,Text="Inventory/Shop",TextColor3=bc("White").Color,Position=ud(0,5,0,10),Font="ArialBold",FontSize="Size24",[tst]=0,ZIndex=8,[tsc]=bc("Really black").Color,[txa]="Left"}
local nv1 = qi{"TextLabel",inv,Text="Press B to Exit This Window",TextColor3=bc("White").Color,Position=ud(0,5,1,-18),Font="ArialBold",FontSize="Size14",[tst]=0,ZIndex=8,[txa]="Left",[tya]="Top"}
invv = qi{"Frame",inv,Position=ud(0,5,0,40),Size=ud(0,220,0,450),Active=false,[bsp]=0,[bgt]=1,ZIndex=8}
invab = qi{"Frame",inv,Position=ud(0,230+110,0,450),Visible=false,Active=false,[bsp]=0,[bgt]=1,ZIndex=8}
invabb=qi{"TextButton",invab,Text="Buy Ammos",[bc3]=bc("Black").Color,TextColor3=bc("White").Color,Position=ud(0,0,0,0),Size=ud(0,130,0,20),Font="ArialBold",FontSize="Size24",ZIndex=8,[bsp]=0}
invabt=qi{"TextBox",invab,Text="1",[bc3]=bc("Black").Color,TextColor3=bc("White").Color,Position=ud(0,-110,0,0),Size=ud(0,100,0,20),Font="ArialBold",FontSize="Size24",ZIndex=8,[bsp]=0}

invpoi=qi{"TextButton",inv,Text="Points:",[bgt]=1,TextColor3=bc("White").Color,Position=ud(0,230,0,20),Size=ud(0,80,0,30),Font="ArialBold",FontSize="Size24",ZIndex=8,[bsp]=0,[txa]="Left"}
invtim=qi{"TextButton",inv,Text="Time Left:",[bgt]=1,Visible=false,TextColor3=bc("White").Color,Position=ud(0,230,0,270),Size=ud(0,80,0,30),Font="ArialBold",FontSize="Size24",ZIndex=8,[bsp]=0,[txa]="Left"}
invsel=qi{"TextButton",inv,Text="Selected:",[bgt]=1,TextColor3=bc("White").Color,Position=ud(0,230,0,300),Size=ud(0,80,0,30),Font="ArialBold",FontSize="Size24",ZIndex=8,[bsp]=0,[txa]="Left"}
invcos=qi{"TextButton",inv,Text="Costs:",[bgt]=1,TextColor3=bc("White").Color,Position=ud(0,230,0,330),Size=ud(0,80,0,30),Font="ArialBold",FontSize="Size24",ZIndex=8,[bsp]=0,[txa]="Left"}
invcos2=qi{"TextButton",inv,Text="Cost per bullet:",[bgt]=1,TextColor3=bc("White").Color,Position=ud(0,230,0,360),Size=ud(0,80,0,30),Font="ArialBold",FontSize="Size24",ZIndex=8,[bsp]=0,[txa]="Left"}
invcos3=qi{"TextButton",inv,Text="Total Cost:",[bgt]=1,TextColor3=bc("White").Color,Position=ud(0,230,0,470),Size=ud(0,80,0,30),Font="ArialBold",FontSize="Size12",ZIndex=8,[bsp]=0,[txa]="Left"}


invb=qi{"TextButton",inv,Visible=false,Text="Buy",[bc3]=bc("Black").Color,TextColor3=bc("White").Color,Position=ud(0,310,0,400),Size=ud(0,80,0,30),Font="ArialBold",FontSize="Size24",ZIndex=8,[bsp]=0}
inve=qi{"TextButton",inv,Visible=false,Text="Equip",[bc3]=bc("Black").Color,TextColor3=bc("White").Color,Position=ud(0,230,0,400),Size=ud(0,80,0,30),Font="ArialBold",FontSize="Size24",ZIndex=8,[bsp]=0}

invamount=0
invabt.Changed:connect(function(prop) if prop == "Text" then invamount = tonumber(invabt.Text) or 1 invamount=math.floor(invamount) if invamount<1 then invamount=1 SMsg("I c wut u did dar","Really red") end invabt.Text=invamount invcos3.Text = "Total Cost: " ..Cost[invs][2]*invamount end end)
invabb.MouseButton1Up:connect(function()
if not Cost[invs] then return end
local tot = Cost[invs][2]*invamount
if tot > p2.Points then SMsg("You need more " ..(tot-p2.Points).. " Points.","Really red") return end 
p2.Points=p2.Points-tot
p2.inv[invs]=p2.inv[invs]+invamount
SMsg("-" ..tot.. " Points (" ..p2.Points.. ")","Olive")
SMsg("+" ..invamount.. " " ..invs.. " Ammos (" ..p2.inv[invs].. ")","Olive")
updateinv(lastinvupdate)
invload(invi)
end)


invb.MouseButton1Up:connect(function()
if not Cost[invs] then return end
if Cost[invs][1] > p2.Points then SMsg("You need more " ..(Cost[invs][1]-p2.Points).. " Points.","Really red") return end 
local wiprank = Cost[invs][3]
if wiprank and p2.Rank==1 then SMsg("This weapon is " ..therankname[wiprank].. " Only!","Really red") return end
p2.Points=math.floor((p2.Points-Cost[invs][1])*1000)/1000
p2.inv["x" ..invs]=mf(st.tick+(weptime*multi2))
SMsg("-" ..Cost[invs][1].. " Points (" ..p2.Points.. ")","Olive")
SMsg(invs.. " Succesfully bought","Olive")
updateinv(lastinvupdate)
invload(invi)
end)

Switch = function()
if St.Swapping then return end
--return ammos
local ogn = awep[invi]
if wep[invi][ogn] and wep[invi][ogn].Reclip then  p2.inv[ogn]=p2.inv[ogn]+(amz[invi].a+amz[invi].ma)
SMsg("+" ..(amz[invi].a+amz[invi].ma).. " " ..ogn.. " Ammos. (" ..p2.inv[ogn].. ")","Olive")
end
--
awep[invi] = invs
if wep[invi][invs].Reclip then
local maxes = wep[invi][invs].MaxAmmo*wep[invi][invs].MaxClip
maxes = p2.inv[invs] >= maxes and maxes or p2.inv[invs]
p2.inv[invs]=p2.inv[invs]-maxes
SMsg("-" ..maxes.. " " ..invs.. " Ammos. (" ..p2.inv[invs].. ")","Olive")
amz[invi].a = 0
amz[invi].ma = maxes
else
amz[invi].a = 0
amz[invi].ma = 0
end
updateinv(lastinvupdate)
invload(invi)
Swap(invi)
_G.cs = awep
end
inve.MouseButton1Up:connect(function()
Switch()
end)

lastinvupdate = 1
updateinv = function(i)
lastinvupdate=i
if invl[i][1] == "" then return end 
invs = invl[i][1]
invsel.Text = "Selected: " ..invs
invcos.Text = "Costs: " ..(Cost[invs][1] or "--")
invcos2.Text = "Costs per bullet/use: " ..(Cost[invs][2] or "--")
invcos3.Text = "Total Cost: " ..Cost[invs][2]*invamount 
invab.Visible=wep[invi][invs].Reclip and true or false -- < , doesnt, > ,does
invb.Visible=p2.inv["x" ..invs]<st.tick and true or false
invtim.Visible=p2.inv["x" ..invs]>st.tick and true or false
inve.Visible=p2.inv["x" ..invs]>st.tick and true or false
end
invl = {} -- list
for i=1,20 do 
local nv1=qi{"TextButton",invv,[bc3]=bc("Really black").Color,TextColor3=bc("White").Color,Position=ud(0,0,0,(i-1)*15),Size=ud(0,220,0,15),Font="ArialBold",FontSize="Size14",[bgt]=0.4,ZIndex=8,[bsp]=0,[txa]="Left"}
local nv2=qi{"TextLabel",invv,TextColor3=bc("White").Color,Position=ud(0,0,0,(i-1)*15),Size=ud(0,220,0,15),Font="ArialBold",FontSize="Size14",[bgt]=1,ZIndex=8,[bsp]=0,[txa]="Right"}
invl[i] = {"",nv1,nv2}
nv1.MouseButton1Up:connect(function()
updateinv(i)
end)
nv1.MouseButton2Up:connect(function()
updateinv(i)
if p2.inv["x" ..invs]<st.tick then return end 
Switch()
end)
end
invi = nil -- i select
invs = "" -- wpn select
for i=1,5 do 
if i==5 then
local nv1 = qi{"TextButton",inv,[bc3]=bc("Dark stone grey").Color,Text="?",TextColor3=bc("White").Color,Position=ud(0,5+((220/5)*(i-1)),0,20),Size=ud(0,220/5,0,20),Font="ArialBold",FontSize="Size24",ZIndex=8,[bsp]=0}
nv1.MouseButton1Up:connect(function() invload(tonumber(nv1.Text)) end)
local co=0
--stuff
for i=20,co+1,-1 do 
invl[i][1]=""
invl[i][2].Visible=false
invl[i][3].Visible=false
end
else
local nv1 = qi{"TextButton",inv,[bc3]=bc("Dark stone grey").Color,Text=i,TextColor3=bc("White").Color,Position=ud(0,5+((220/5)*(i-1)),0,20),Size=ud(0,220/5,0,20),Font="ArialBold",FontSize="Size24",ZIndex=8,[bsp]=0}
nv1.MouseButton1Up:connect(function() invload(tonumber(nv1.Text)) end)
end
invload = function(xi)
invi = xi
local co = 0
for i,v in pairs(wep[invi]) do 
co = co +1
invl[co][1]=i
invl[co][2].Text=i
invl[co][2].TextColor3= bc(p2.inv["x" ..i]>st.tick and "White" or "Dark stone grey").Color
invl[co][3].Text=wep[xi][i].Reclip and "x " ..p2.inv[i] or "---"
invl[co][3].TextColor3= invl[co][2].TextColor3
invl[co][2].Visible=true
invl[co][3].Visible=true
end
for i=20,co+1,-1 do 
invl[i][1]=""
invl[i][2].Visible=false
invl[i][3].Visible=false
end
end
end

hurt1 = qi{"Frame",fr,Size=ud(1,0,1,0),Active=false,[bgt]=1,[bc3]=bc("Really red").Color,ZIndex=4}
hurt2 = qi{"ImageLabel",fr,Size=ud(5,0,5,0),Position=ud(-2.5,0,-2.5,0),Active=false,[bgt]=1,Image=asset.."34854607",ZIndex=5}

oldhealth=1/0
hu.HealthChanged:connect(function()
if oldhealth>hu.Health then
hurt1.Transparency=0.5
local ad = 0.25
hurt2.Size=ud(1+ad,0,1+ad,0)
hurt2.Position=ud(-ad/2,0,-ad/2,0)
end
end)

gmed = qi{"ImageLabel",fr,Position=ud(0.5,-400,0.75,0),Size=ud(0,800,0,40),Visible=false,Active=false,[bsp]=0,[bgt]=0,[bc3]=bc("Dark stone grey").Color,Image=asset.."48965808"}
gmedbar = qi{"ImageLabel",gmed,Position=ud(0,2,0,2),Size=ud(1,-4,1,-4),[bsp]=0,[bgt]=0,[bc3]=bc("Bright red").Color,Image=asset.."48965808"}
gmedperc = qi{"TextLabel",gmed,Size=ud(1,0,1,0),[bgt]=1,Font="ArialBold",FontSize="Size36",TextColor3=bc("White").Color}
gmedt = qi{"TextLabel",gmed,Size=ud(1,0,1,0),Position=ud(0,0,-1,0),[bgt]=1,Font="ArialBold",FontSize="Size36",TextColor3=bc("White").Color}


local specting = 0
spectate = qi{"TextButton",fr,Visible=false,Position=ud(0.5,-50,0.48,0),Size=ud(0,100,0,40),Text="Spectate",[bc3]=bc("Black").Color,Font="ArialBold",FontSize="Size24",TextColor3=bc("White").Color}
guieffect1(spectate,1)
spectate.MouseButton1Up:connect(function()
local ii=-1
for i,v in pairs(game:service'Players':GetPlayers()) do 
if v:findFirstChild("leaderstats") and v.Character and v.Character:findFirstChild("Humanoid") and v.Character.Humanoid.Health>0 then
ii=ii+1
local nv1 = qi{"TextButton",spectate,Position=ud(1,0,0,ii*26),Size=ud(0,200,0,26),Text=v.Name,[bc3]=bc("Black").Color,Font="ArialBold",FontSize="Size18",TextColor3=bc("White").Color}
guieffect1(nv1,1)
nv1.MouseButton1Down:connect(function()
if v:findFirstChild("leaderstats") and v.Character and v.Character:findFirstChild("Humanoid") and v.Character.Humanoid.Health>0 then
local kiv = v.Character.Head
specting=specting+1
cam.CameraSubject = v.Character.Humanoid
else
nv1:Remove()
end
end)
end
end
end)






lboard = qi{"Frame",fr,Position=ud(0.5,-500,0.05,0),Size=ud(0,1000,0,400),Visible=false,Active=false,BorderColor3=bc("Lime green").Color,[bgt]=0.5,[bc3]=bc("Black").Color,ZIndex=4}
 local tepos = ud(0,5,0,10)
local n1v1 = qi{"TextLabel",lboard,Text="Name",TextColor3=bc("White").Color,Position=tepos,Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
tepos = tepos+ud(0,135,0,0)
local n2v1 = qi{"TextLabel",lboard,Text="Rank",TextColor3=bc("White").Color,Position=tepos,Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
tepos = tepos+ud(0,90,0,0)
local n3v1 = qi{"TextLabel",lboard,Text="Level",TextColor3=bc("White").Color,Position=tepos,Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
tepos = tepos+ud(0,90,0,0)
local n4v1 = qi{"TextLabel",lboard,Text="Points",TextColor3=bc("White").Color,Position=tepos,Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
tepos = tepos+ud(0,135,0,0)
local n5v1 = qi{"TextLabel",lboard,Text="Team",TextColor3=bc("White").Color,Position=tepos,Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
tepos = tepos+ud(0,60,0,0)
local n6v1 = qi{"TextLabel",lboard,Text="Kills",TextColor3=bc("White").Color,Position=tepos,Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
tepos = tepos+ud(0,90,0,0)
local n7v1 = qi{"TextLabel",lboard,Text="Deaths",TextColor3=bc("White").Color,Position=tepos,Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
tepos = tepos+ud(0,90,0,0)
local n8v1 = qi{"TextLabel",lboard,Text="Round Kills",TextColor3=bc("White").Color,Position=tepos,Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
tepos = tepos+ud(0,90,0,0)
local n9v1 = qi{"TextLabel",lboard,Text="Spray",TextColor3=bc("White").Color,Position=tepos,Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}


maxp = 8
for i=1,maxp do 
local nv1=qi{"Frame",lboard,Name=i,[bgt]=1,Size=ud(1,0,1,0),Visible=false}
qi{"TextLabel",nv1,Name="name",TextColor3=bc("White").Color,Position=n1v1.Position+ud(0,0,0,20*i),Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
qi{"TextLabel",nv1,Name="Rank",TextColor3=bc("White").Color,Position=n2v1.Position+ud(0,0,0,20*i),Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
qi{"TextLabel",nv1,Name="Level",TextColor3=bc("White").Color,Position=n3v1.Position+ud(0,0,0,20*i),Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
qi{"TextLabel",nv1,Name="Points",TextColor3=bc("White").Color,Position=n4v1.Position+ud(0,0,0,20*i),Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
qi{"TextLabel",nv1,Name="Team",TextColor3=bc("White").Color,Position=n5v1.Position+ud(0,0,0,20*i),Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
qi{"TextLabel",nv1,Name="Kills",TextColor3=bc("White").Color,Position=n6v1.Position+ud(0,0,0,20*i),Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
qi{"TextLabel",nv1,Name="Deaths",TextColor3=bc("White").Color,Position=n7v1.Position+ud(0,0,0,20*i),Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
qi{"TextLabel",nv1,Name="Kills2",TextColor3=bc("White").Color,Position=n8v1.Position+ud(0,0,0,20*i),Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",ZIndex=4}
local spra=qi{"ImageLabel",nv1,Name="Spray",Position=n9v1.Position+ud(0,0,0,20*i-10),[bgt]=0.8,Size=ud(0,20,0,20),ZIndex=4}
guieffect1(spra,5)
end

servertime = qi{"TextLabel",lboard,Text="",TextColor3=bc("White").Color,Position=ud(0,125,1,-54),Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",[tya]="Top",ZIndex=4}
roundt = qi{"TextLabel",lboard,Text="",TextColor3=bc("White").Color,Position=ud(0,5,1,-54),Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",[tya]="Top",ZIndex=4}
mapname = qi{"TextLabel",lboard,Text="",TextColor3=bc("White").Color,Position=ud(0,5,1,-36),Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",[tya]="Top",ZIndex=4}
modename = qi{"TextLabel",lboard,Text="",TextColor3=bc("White").Color,Position=ud(0,5,1,-18),Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color,[txa]="Left",[tya]="Top",ZIndex=4}


modegui = qi{"Frame",fr,[bgt]=1,Size=ud(1,0,1,0)}
for i=1,10 do 
local new = qi{"Frame",modegui,[bgt]=1,Size=ud(1,0,1,0),Visible=false,Active=false,Name=i}
end
local nv1 = qi{"TextLabel",modegui[1],Name="t1",TextColor3=bc(teamcol[1]).Color,Position=ud(0.5,-160-60,1,-30),Size=ud(0,120,0,30),Font="ArialBold",FontSize="Size14",TextWrap=true,[tya]="Top",ZIndex=3,[bgt]=1,[tst]=0,[tsc]=bc("Black").Color}
local nv1 = qi{"TextLabel",modegui[1],Name="t2",TextColor3=bc(teamcol[2]).Color,Position=ud(0.5,160-60,1,-30),Size=ud(0,120,0,30),Font="ArialBold",FontSize="Size14",TextWrap=true,[tya]="Top",ZIndex=3,[bgt]=1,[tst]=0,[tsc]=bc("Black").Color}
local nv1 = qi{"TextLabel",modegui[2],Name="t1",TextColor3=bc(teamcol[1]).Color,Position=ud(0.5,-160-60,1,-30),Size=ud(0,120,0,30),Font="ArialBold",FontSize="Size14",TextWrap=true,[tya]="Top",ZIndex=3,[bgt]=1,[tst]=0,[tsc]=bc("Black").Color}
local nv1 = qi{"TextLabel",modegui[2],Name="t2",TextColor3=bc(teamcol[2]).Color,Position=ud(0.5,160-60,1,-30),Size=ud(0,120,0,30),Font="ArialBold",FontSize="Size14",TextWrap=true,[tya]="Top",ZIndex=3,[bgt]=1,[tst]=0,[tsc]=bc("Black").Color}
local nv1 = qi{"TextLabel",modegui[3],Name="t1",TextColor3=bc(teamcol[1]).Color,Position=ud(0.5,-160-60,1,-30),Size=ud(0,120,0,30),Font="ArialBold",FontSize="Size14",TextWrap=true,[tya]="Top",ZIndex=3,[bgt]=1,[tst]=0,[tsc]=bc("Black").Color}
local nv1 = qi{"TextLabel",modegui[3],Name="t2",TextColor3=bc(teamcol[2]).Color,Position=ud(0.5,160-60,1,-30),Size=ud(0,120,0,30),Font="ArialBold",FontSize="Size14",TextWrap=true,[tya]="Top",ZIndex=3,[bgt]=1,[tst]=0,[tsc]=bc("Black").Color}

local nv2 = qi{"ImageLabel",modegui[4],Name="j4",Position=ud(0.5,-400,0.1,0),Size=ud(0,800,0,40),Active=false,[bsp]=0,[bgt]=0,[bc3]=bc("Dark stone grey").Color,Image=asset.."48965808"}
local nv1 = qi{"ImageLabel",nv2,Name="bar",Position=ud(0,2,0,2),Size=ud(1,-4,1,-4),[bsp]=0,[bgt]=0,[bc3]=bc("Bright red").Color,Image=asset.."48965808"}
local nv1 = qi{"TextLabel",nv2,Name="health",Size=ud(1,0,1,0),[bgt]=1,Font="ArialBold",FontSize="Size36",TextColor3=bc("White").Color}
local nv1 = qi{"TextLabel",nv2,Name="juger",Size=ud(1,0,1,0),Position=ud(0,0,-1,0),[bgt]=1,Font="ArialBold",FontSize="Size36",TextColor3=bc("White").Color}


cfm = 5
cft = 20
cf = qi{"Frame",fr,Size=ud(0,800,0,cfm*cft),Position=ud(0,10,0,15),Name="cf",ClipsDescendants=true,[bgt]=1}
Chatf = qi({"Frame",cf,ClipsDescendants=true,Size=ud(1,20,0,0),Position=ud(0,10,0,0),[bgt]=1,Active=false,[bc3]=bc("Black").Color,[bsp]=0})
addscroll(cf,"Chats",Chatf,cfm*cft,ud(0,10,0,cfm*cft),ud(1,-800,0,0),cfm,1,ud(0,10,0,0))


mfm = 10
mft = 14
mf2 = qi{"Frame",fr,Size=ud(0,450,0,mfm*mft),Position=ud(0,10,1,-230+10),Name="mf2",ClipsDescendants=true,[bgt]=1}
Msgf = qi({"Frame",mf2,ClipsDescendants=true,Size=ud(1,20,0,0),Position=ud(0,10,0,0),[bgt]=1,Active=false,[bc3]=bc("Black").Color,[bsp]=0})
addscroll(mf2,"Msgs",Msgf,mfm*mft,ud(0,10,0,mfm*mft),ud(1,-450,0,0),mfm,1,ud(0,10,0,0))

wait(0.5)
absx,absy = g.AbsoluteSize.X,g.AbsoluteSize.Y
local vv1 = 680 local vv2 = vv1/2
scope = qi{"Frame",fr,Size=ud(1,0,1,0),Visible=false,Active=false,[bgt]=1} 
local ww = qi{"Frame",scope,Size=ud(0,absx,0,(absy-vv1)/2),[bc3]=bc("Really black").Color,[bsp]=0}
local ww = qi{"Frame",scope,Size=ud(0,absx,0,(absy-vv1)/2),Position=ud(0,0,0,absy-((absy-vv1)/2)),[bc3]=bc("Really black").Color,[bsp]=0}
local ww = qi{"Frame",scope,Size=ud(0,(absx/2)-vv2,0,absy),ZIndex=2,[bc3]=bc("Really black").Color,[bsp]=0}
local ww = qi{"Frame",scope,Size=ud(0,(absx/2)-vv2,0,absy),Position=ud(0,absx-((absx/2)-vv2),0,0),[bc3]=bc("Really black").Color,[bsp]=0}
local ww = qi{"ImageLabel",scope,Size=ud(0,vv1+4,0,vv1+4),Position=ud(0,(absx/2)-vv2-4,0,(absy-vv1)/2-4),[bc3]=bc("White").Color,[bgt]=0.85,Image=asset .. "74406638",[bsp]=0}
local ww = qi{"Frame",scope,Size=ud(0,absx/2,0,4),Position=ud(0,-30,0.5,-2),[bc3]=bc("Really black").Color,[bsp]=0}
local ww = qi{"Frame",scope,Size=ud(0,absx/2,0,4),Position=ud(0.5,30,0.5,-2),[bc3]=bc("Really black").Color,[bsp]=0}
local ww = qi{"Frame",scope,Size=ud(0,4,0,absy/2),Position=ud(0.5,-2,0,-30),[bc3]=bc("Really black").Color,[bsp]=0}
local ww = qi{"Frame",scope,Size=ud(0,4,0,absy/2),Position=ud(0.5,-2,0.5,30),[bc3]=bc("Really black").Color,[bsp]=0}



csize = 22
cran = 2
chran ={}
chran[1] = 0 -- velocity accuracy

croco = "White"
x1 = qi{"Frame",fr,Size=ud(0,csize,0,4),Name="ch",[bsp]=0,[bc3]=bc(croco).Color,ZIndex=10}
x2 = qi{"Frame",fr,Size=ud(0,csize,0,4),Name="ch",[bsp]=0,[bc3]=bc(croco).Color,ZIndex=10}
y1 = qi{"Frame",fr,Size=ud(0,4,0,csize),Name="ch",[bsp]=0,[bc3]=bc(croco).Color,ZIndex=10}
y2 = qi{"Frame",fr,Size=ud(0,4,0,csize),Name="ch",[bsp]=0,[bc3]=bc(croco).Color,ZIndex=10}
for i,v in pairs({x1,x2,y1,y2}) do
qi{"Frame",v,Size=ud(1,8,1,8),Position=ud(0,-4,0,-4),Name="hitmsg",[bsp]=0,[bc3]=bc("Really red").Color,Transparency=1}
end

gum = qi{"TextLabel",fr,Text="36",FontSize="Size36",Font="ArialBold",[txa]="Left",Position=ud(1,-60,1,-70),TextColor3=bc("Black").Color,ZIndex=3}
gua = qi{"TextLabel",fr,Text="36",FontSize="Size24",Font="ArialBold",[txa]="Right",Position=ud(1,-55,1,-50),TextColor3=bc("Black").Color,ZIndex=3}
gun = qi{"TextLabel",fr,Text="36",FontSize="Size24",Font="ArialBold",[txa]="Right",Position=ud(1,-55,1,-50+20),TextColor3=bc("Black").Color,ZIndex=3}
gud = qi{"Frame",fr,Position=ud(-1,0,-1,0),ZIndex=3,[bgt]=0.3,[bsp]=0}


wtabg = qi{"TextLabel",fr,Visible=false,Size=ud(0.6,0,0,70),Position=ud(0.2,0,0,-2),[bgt]=1,Text=""}
wtab = {}
for i=1,5 do 
wtab[i]= qi{"TextLabel",wtabg,Font="ArialBold",FontSize="Size18",Text="c:",Size=ud(0.2,-2,1,-2),Position=ud((0.2)*(i-1),1,0,1),[bgt]=0.5,TextWrap=true,[bc3]=bc("Lime green").Color,[bsp]=0}
end

hitmsg = qi{"TextLabel",fr,TextTransparency=1,Text="Hit!",FontSize="Size18",Position=ud(0.5,0,0.5,-85),TextColor3=bc("Really black").Color}



desc1 = qi{"TextLabel",nil,Font="ArialBold",FontSize="Size12",[bsp]=0,[tya]="Top",[txa]="Left",TextColor3=bc("White").Color,[bc3]=bc("Black").Color,[bgt]=0.8}
desc2 = qi{"TextLabel",nil,[bsp]=0,[tya]="Top",[txa]="Left",TextColor3=bc("White").Color,[bc3]=bc("Black").Color,[bgt]=0.8}

bbg = qi{"BillboardGui",nil,Size=ud(0,20,0,20),Active=true} --StudsOffset = Vector3.new(0,5,0)
bbgt = qi{"TextLabel",bbg,Text="36",FontSize="Size18",Font="ArialBold",TextColor3=bc("White").Color,[tst]=0,[tsc]=bc("Black").Color}


g321g = qi{"Frame",fr,Size=ud(0,340,0,340),Position=ud(0.5,-170,0.5,-170),ClipsDescendants=true,Transparency=1,Visible=false}
gg321 = qi{"Frame",g321g,Size=ud(1,0,1,0),Position=ud(0,0,0,0),Transparency=1}
g321 = {}
for i=0,3 do 
g321[i] = qi{"ImageLabel",gg321,Size=ud(1,0,1,0),Position=ud(0,0,0,(340*i)),Image=(i~=0 and ds["UT" ..i] or ds.UTgo),Transparency=1}
end

gtmw = qi{"Frame",fr,Size=ud(0,800,0,200),Position=ud(0.5,-800/2,0.325,-100),ClipsDescendants=true,Transparency=1,Visible=false}
ggtmw = qi{"ImageLabel",gtmw,Size=ud(1,0,1,0),Position=ud(0,0,0,-300),Transparency=1,Image=ds.UT1w}

gsw = qi{"Frame",fr,Size=ud(0,700,0,200),Position=ud(0.5,-700/2,0.60,-100),ClipsDescendants=true,Transparency=1,Visible=false}
ggsw = qi{"ImageLabel",gsw,Size=ud(1,0,1,0),Position=ud(0,0,0,300),Transparency=1,Image=ds.UTyw}

gmmw = qi{"Frame",fr,Size=ud(0,700,0,200),Position=ud(0.5,-350,0.2,0),ClipsDescendants=true,Transparency=1,Visible=false}
gmw = qi{"TextLabel",gmmw,Size=ud(1,0,1,0),Position=ud(0,0,0,300),[bgt]=1,Font="ArialBold",FontSize="Size48",TextColor3=bc("Institutional white").Color,TextWrap=true}


Spray = function()
local ima = asset .. p2.Spray 
local bhit,bpos=ray(he.Position,mous.hit.p - (cn(he.Position,mous.hit.p)*cn(0,0,-1)).p,Props2) 
if (bhit and bhit.Parent~=ch and bhit.Parent.Parent~=ch) and bpos and bhit.Anchored and (bpos - he.Position).magnitude < 15 and bhit.Parent:findFirstChild("Humanoid") == nil and bhit.Parent.Parent:findFirstChild("Humanoid")==nil  then
BulletHole(bpos,bhit,5,ima,Props2)
else
SMsg("Spray Failed!","Really red")
end
end

guiwin = function(win)
ggsw.Image = (p2.Team==tonumber(win)) and ds.UTyw or ds.UTyl
ggtmw.Image = ds["UT" ..win.. "w"]
ggsw:TweenPosition(ud(0,0,0,-20),nil,nil,0.5) 
ggtmw:TweenPosition(ud(0,0,0,20),nil,nil,0.5) wait(0.5) 
ggsw:TweenPosition(ud(0,0,0,0),nil,nil,0.3) 
ggtmw:TweenPosition(ud(0,0,0,0),nil,nil,0.3) wait(0.3)
wait(7)
ggsw:TweenPosition(ud(0,0,0,-20),nil,nil,0.5) 
ggtmw:TweenPosition(ud(0,0,0,20),nil,nil,0.5) wait(0.5) 
ggsw:TweenPosition(ud(0,0,0,300),nil,nil,0.3) 
ggtmw:TweenPosition(ud(0,0,0,-300),nil,nil,0.3) wait(0.3)
end

--c/t=workspace.Mod.GameStats.Map t.Value=0 wait() t.Value=1
Mod.GameStats.Map.Changed:connect(function(pr) 
local ma = Mod.GameStats.Map.Value if ma==0 then return end
local mo = Mod.GameStats.Mode.Value
gmmw.Visible=true
gmw.Text = "Map: " ..Maps[ma][1].. [[ 
Mode: ]] ..Modes[mo][1]
gmw:TweenPosition(ud(0,0,0,-20),nil,nil,0.5) wait(0.5) 
gmw:TweenPosition(ud(0,0,0,0),nil,nil,0.3) wait(0.3)
wait(3)
gmw.Text = ModeDesc[mo]
wait(7)
gmw:TweenPosition(ud(0,0,0,-20),nil,nil,0.5) wait(0.5) 
gmw:TweenPosition(ud(0,0,0,300),nil,nil,0.3) wait(0.3)
gmmw.Visible=false
end)

--c/t=workspace.Mod.GameStats.win t.Value="" wait() t.Value = "1"
Mod.GameStats.win.Changed:connect(function(pr) 
local win = Mod.GameStats.win.Value
gtmw.Visible=true 
gsw.Visible=true
if win == "1" then
guiwin(win)
elseif win == "2" then
guiwin(win)
elseif win == "n" then
ggsw.Image = ds.UTnw
ggsw:TweenPosition(ud(0,0,0,-20),nil,nil,0.5) wait(0.5) 
ggsw:TweenPosition(ud(0,0,0,0),nil,nil,0.3) wait(0.3)
wait(7)
ggsw:TweenPosition(ud(0,0,0,-20),nil,nil,0.5) wait(0.5) 
ggsw:TweenPosition(ud(0,0,0,300),nil,nil,0.3) wait(0.3)
elseif win ~= "" then
ggsw.Image = string.find(win,Player.Name) and ds.UTyw or ds.UTyl
ggsw:TweenPosition(ud(0,0,0,-20),nil,nil,0.5) wait(0.5) 
ggsw:TweenPosition(ud(0,0,0,0),nil,nil,0.3) wait(0.3)
wait(7)
ggsw:TweenPosition(ud(0,0,0,-20),nil,nil,0.5) wait(0.5) 
ggsw:TweenPosition(ud(0,0,0,300),nil,nil,0.3) wait(0.3)
end
gtmw.Visible=false 
gsw.Visible=false
end)

--c/t=workspace.Mod.GameStats.Time t.Value = 4 wait() t.Value=10
Mod.GameStats.Time.Changed:connect(function(pr)
local tim = Mod.GameStats.Time.Value
if tim == 3 and not st.Fire and st.Condition=="Playing" then
g321g.Visible=true
gg321.Position = ud(0,0,0,-340*4)
for i=3,0,-1 do 
gg321:TweenPosition(ud(0,0,0,(-340*(i))+25),nil,nil,0.4) wait(0.4) so(asset..("15666462"),m2,1,i==0 and 1.5 or 1)
gg321:TweenPosition(ud(0,0,0,(-340*(i))),nil,nil,0.2) wait(0.2)
wait(0.4)
end
gg321:TweenPosition(ud(0,0,0,(-340*(-1))),nil,nil,0.4) wait(0.4)
g321g.Visible=false
elseif tim == 10 and st.Condition == "Playing" and st.Fire then
for i=10,1,-1 do 
if st.Time < 1 then break end 
so(asset..("15666462"),m2,0.3,1.5)
timm.TextColor3=bc(i%2==0 and "White" or "Bright red").Color
wait(1)
end
timm.TextColor3=bc("White").Color
end
end)

HitMsg = function(headz)
hitmsg.TextTransparency = 0.2 
hitmsg.Text = headz==1 and "Head Shot!" or "Hit!"
for i,v in pairs({x1,x2,y1,y2}) do
v.hitmsg[bgt] = 0.1
end
end

SButtons = qi{"Model",m2,Name="SButtons"} 
MArms = qi{"Model",m2,Name="Arms"} 
Sbox = qi{"Model",g,Name="Sbox"}
sbox1 = qi{"SelectionBox",Sbox,Color=bc("White")}
SLid = qi{"Model",m2,Name="SLid"}

AddLid = function(wp)
local m22 = qi{"Model",SLid,Name=wp.Parent.Name}
local base = wp.BoxBase
local lid = wp.BoxSide:Clone() lid.Parent = m22 lid.Name="Lid"
lid.Size = v3(10,0.1,5) lid.CFrame=base.CFrame*cn(0,1.3,0)
local tt = pa(m22,"weparea", "Block", 10.2,3.5,5.2, false,true,1,0,"")  tt.CFrame = base.CFrame 
local lidval=qi{"NumberValue",tt,Name="Stat",Value=0}
lidval.Changed:connect(function(prop) if lidval.Value==1 then for i=0,60,3 do lid.CFrame=base.CFrame*cn(0,1.3,2.5)*ca(rd(i),0,0)*cn(0,0,-2.5) wait() end lidval.Value=2 end end)
wp.Changed:connect(function(pro) wait(0.1) if not wp or not wp.Parent then tt:Remove() lid:Remove() end end)
end



AddLid(LoS.WeaponBox)
for i,v in pairs(Mod.Map.WeaponArea:children()) do 
if v.Name=="WeaponBox" then
AddLid(v)
end
end
Mod.Map.WeaponArea.ChildAdded:connect(function(v) wait(0.5)
if v.Name=="WeaponBox" then
AddLid(v)
end
end)

Reload = function(wee,nw)
St.a="Reload"
if amz[cwep].a == wee.MaxAmmo then
SMsg("You are fully reloaded already!","Bright red") wait(0.3)
elseif amz[cwep].ma == 0 then
SMsg("You have no clips left!","Bright red") wait(0.3)
else
local use = wee.Stats
St.ArmAiming = false
lw.C0=use[1] lw.C1=use[2] rw.C0=use[3] rw.C1=use[4]
wee:Reload(cwep,wee.MaxAmmo,nw)
St.ArmAiming = true
end
St.a="None"
end

nwb = nil -- nearest weapon box (inventory/shop)

bin = qi{"Tool",nil,Name=""} qi{"Part",bin,Name="Handle",Size=v3(0,0,0)}
w = {}
Button = false
bin.Equipped:connect(function(mouse) 
mous = mouse
mouse.Icon = asset .. "58334502" -- remove icon, crosshair is made out of 4 guis
bin:Remove() -- Activate :3
mouse.Button1Down:connect(function() 
Button = true
local mt = mouse.Target
local nw = awep[cwep]
local wee = wep[cwep][nw]
local use = wee.Stats
--weapon box lid opener
if mt and mt.Name == "weparea" and dis(to,mt) < 10 and mt.Stat.Value==0 then
mt.Stat.Value=1
end
if mt and mt.Name=="bomb" and mt.Parent.Name=="Bomb" and mt.Parent.User.Value=="" and dis(to,mt)<12 and St.a=="None" then
St.a="Bomb"
BombFunc(mt.Parent) wait(0.5)
St.a="None" return
end
if mt and mt.Name:sub(1,4) == "flag" and dis(to,mt)<10 and St.a=="None" then 
St.a="Flag"
FlagFunc(mt) wait(0.5)
St.a="None" return 
end
if mt and (mt.Name == "weparea" or string.find(mt.Name:lower(),"sponsor")) and dis(to,mt) < 16 then return end
--Melee anim -meanim
if p2.ongame and st.Fire and st.Condition == "Playing" and St.a=="None" and amz[cwep].db<tick() and not wep[cwep][nw].Reload then 
St.a="Fire" 
St.ArmAiming = false
--lw.C0=use[1] lw.C1=use[2] rw.C0=use[3] rw.C1=use[4]
wep[cwep][nw].func() 
St.ArmAiming = true 
St.a="None"
--if St.a=="Delay" or St.a=="Fire" or St.a=="Fire2" then St.a = "None" end
end
--Gun anim
if p2.ongame and st.Fire and St.a=="None" and wep[cwep][nw].Reload and amz[cwep].a==0 then Reload(wee,nw) return end
if p2.ongame and st.Fire and st.Condition == "Playing" and St.a=="None" and  amz[cwep].db<tick() and wep[cwep][nw].Reload and amz[cwep].a>0 then St.a="Fire" wep[cwep][nw].func(cwep,nw) if St.a=="Delay" or St.a=="Fire" then St.a = "None" end return end
-- Sponsor
if mt and mt.Name=="SponsorButton" and mt:findFirstChild("id") and SButtons[mt.id.Value].Friction==0 then SButtons[mt.id.Value].Friction=1 end


end) ---

mouse.Button1Up:connect(function() Button=false end)

mouse.KeyDown:connect(function(k) w[k:lower()] = false 
local acwep = awep[cwep]
local mt = mouse.Target
local nw = awep[cwep] local wee = wep[cwep][nw]
for i=1,5 do 
if k == tostring(i) then
wtab[i].Size=ud(0.2,-2,1.3,-2)
end
end
if k == "m" then
if St.MouseFree then St.MouseFree=false else St.MouseFree=true end
elseif k == "n" then
if infov.Visible then St.MouseFree=false infov.Visible = false else St.MouseFree=true infov.Visible = true end
elseif k =="t" and St.a=="None" then St.a="Spray" Spray() wait(1) St.a="None"
elseif k =="b" then
if St.a=="None" and (mt and mt.Name=="weparea" and mt.Stat.Value==2 and dis(to,mt) < 8) then 
St.a="Inventory" St.MouseFree=true
inv.Visible = true nwb = mt Spd[1]=0
elseif inv.Visible then St.a="None"
inv.Visible = false Spd[1]=1 St.MouseFree=false
end
elseif k == "e" then
local uwep for i=cwep,cwep+4,1 do local ii = i%5==0 and 5 or i%5 if awep[ii]~=""  and ii~=cwep then uwep=ii break end  end if not uwep then return end if St.a=="None" or St.a=="Delay" then Swap(uwep) end
elseif k == "q" then
local uwep for i=cwep,cwep-4,-1 do local ii = i%5==0 and 5 or i%5 if awep[ii]~=""  and ii~=cwep then uwep=ii break end  end if not uwep then return end if St.a=="None" or St.a=="Delay" then Swap(uwep) end
elseif k == "0" then
lboard.Visible = true
elseif k == "v" then
wtabg.Visible = true
elseif k == "z" and ZoomWeapon[acwep] and St.a=="None" then 
Scope(true)
elseif k == "c" and not hu.Jump and not St.Crouch then
Crouch(true)
if awep[cwep] == "Mortar" then
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Dark stone grey") table.insert(stands,ww)
qi{"Weld",ww,Part0=to,Part1=ww,C0=cn(1.75,-1.7,0.35)*ca(rd(0),rd(10),0)} qi{"SpecialMesh",ww,MeshId=asset .. "6547801",Scale=v3(1.6,3.25,1.6)*0.05}
end
to["Neck"].C0 = to["Neck"].C0*cn(0,-1.25,0)
tw2.C0=cn(0,-1.25,0)
lh.C0 = cn(-1,0.25,-1)*ca(0,rd(-90),0)
rh.C0 = cn(1,-1.25,-0.5)*ca(rd(-90),rd(90),0) 
elseif k == "r" and St.a=="None" and wee.Reload then 
Reload(wee,nw)
elseif k == "f" and St.a=="None" and wee.Reclip and mt and ((mt.Name=="weparea" and mt.Stat.Value==2) or mt.Name=="ammopile") and dis(to,mt) < 8  then
St.a="Reclip" 
if amz[cwep].ma+amz[cwep].a  >= wee.MaxAmmo*wee.MaxClip then 
SMsg("You have Enough Ammos!","Bright red") wait(0.6)
else
local use = wee.Stats
St.ArmAiming = false
lw.C0=use[1] lw.C1=use[2] rw.C0=use[3] rw.C1=use[4]
wee:Reclip(cwep,wee.MaxAmmo*wee.MaxClip,nw)
St.ArmAiming = true
end
St.a="None"

end
end)
mouse.KeyUp:connect(function(k) w[k:lower()] = true
local acwep = awep[cwep]
for i=1,5 do 
if k == tostring(i) then
wtab[i].Size=ud(0.2,-2,1,-2)
if St.a=="None" or St.a=="Delay" then Swap(i) end
end
end
if k == "v" then 
wtabg.Visible = false
elseif k == "0" then
lboard.Visible = false
elseif k == "c" and St.Crouch then
Crouch(false)
elseif k == "z" and ZoomWeapon[acwep] then 
Scope(false)
end
end)


mouse.Move:connect(function() 
local mt = mouse.Target



end)

end)
-----Stat Variables
pcall(function() ch.Suit:Remove() end) pcall(function() ch.Head2:Remove() end) 
pcall(function() to.lh2:Remove() end) pcall(function() to.rh2:Remove() end)
suit = qi{"Model",ch,Name="Suit"}
clearclass(ch,"Hat")
local he2 = he:Clone() he2.Name = "Head2" he2.Parent = ch he2.face.Face="Front" he.face.Face="Bottom"
sneck = qi{"Weld",he2,Part0=to,Part1=he2,C0=cn(0,1.5,0)}
he.Transparency=1 he2.Transparency=0


tbgc = {} -- mouse facing table
Spd = {} -- walkspeed table
Def = {} -- def table

St = {}
St.Crosshair = true
St.Swapping=false
St.MouseFree=firstenter
St.a = "None"
St.Crouch = false
St.Scoping = false
St.ArmAiming = true
St.Accuracy=0
St.CamShakes = 0
St.Shake=1/0
u = 0.1

p2.def=1
p2.ShowStat=true

FirePower=nil
cam.CameraSubject = hu


hu.Died:connect(function() wait()
St.a = "Dead"
inv.Visible=false
p2.Deaths=p2.Deaths+1
_G.as = amz
if ongamez[st.Mode] then p2.ongame=false end
pcall(function() flag.Transparency = 1 end) -- anti ctf glitch?...
end)

--  c/pa(workspace,"","Block",3,3,3,true,true,0,0,"Black").CFrame=cn(0,3,0)
--  c/v=qi{"ObjectValue",nil,Name="Killer",Value=workspace.DoogleFox.Humanoid} v.Parent=workspace.xdhunta1774
ch.ChildAdded:connect(function(ki)
if ki:IsA("ObjectValue") and ki.Name == "Killer" then
local kiv = ki.Value.Parent.Head
Player.CameraMode=0
cam.CameraSubject=kiv
hepos = he.Position
for i=0,0.75,0.025 do 
cam.CoordinateFrame = cn(hepos:Lerp(kiv.Position+v3(0,3,0),i))
cam.Focus = kiv.CFrame
wait()
end
for i=0.75,1,0.01 do 
cam.CoordinateFrame = cn(hepos:Lerp(kiv.Position+v3(0,3,0),i))
cam.Focus = kiv.CFrame
wait()
end
cam.CameraSubject = ki.Value
elseif ki.Name=="CamShake" then
local css = ki.Value ki:Remove()
for i=1,35 do 
cam.CoordinateFrame=cam.CoordinateFrame*cn(rn(-1,1)/(css),rn(-1,1)/(css),0)
wait(0.04)
end
end
end)

lh,rh = to["Left Hip"],to["Right Hip"]

pcall(function() newt=ch.Torso2 end)
to2 = qi{"Part",ch,Name="Torso2",formFactor="Custom",Size=v3(2,2,1)}
tw2 = qi{"Weld",to2,Name="tweld",Part0=to,Part1=to2}
to.Transparency=1

lh.Part0=to2 rh.Part0=to2

pcall(function() newt:Remove() end)

--twep = table list of weapon type names
--awep table of list of weapon names equipped
--cwep int number of current weapon type equipped
--wep = information


stands = {}


twep = {"Primary","Secondary","Triary","Misc","Mode"}
aawep = {}
aawep[1] = "Pistol"
aawep[2] = "Shotgun"
aawep[3] = ""
aawep[4] = ""
aawep[5] = ""
awep = _G.cs or aawep -- the weapons slotted in
_G.cs = awep

cwep = 1 -- current equipped weapon or else other if there is nothing equipped on 1

wep = {} -- this contains the 6 types of weapon tables
aamz = {}
--how it works:
--wep[type].WeaponName.Property=property
-- propertys: Damage, db(debounce/reload)
for i=1,5 do wep[i]={} aamz[i] = {} aamz[i].a = 0 aamz[i].ma = 0 aamz[i].db=tick()  end 
aamz[1].ma = 48
aamz[2].ma = 40
amz = _G.as or aamz
_G.as = amz

pcall(function() to.lw:Remove() end) 
pcall(function() to.rw:Remove() end) 

handles = {} -- pieces of weapon meshes currently equipped / to be used on weapon swap

la0 = {cn(-1.5,0.5,0)}
ra0 = {cn(1.5,0.5,0)}
la1 = {cn(0,0.5,0)}
ra1 = {cn(0,0.5,0)}

la = ch["Left Arm"]
ra = ch["Right Arm"]
lw = qi{"Weld",to,Name="lw",Part0=to2,Part1=la}
rw = qi{"Weld",to,Name="rw",Part0=to2,Part1=ra}

local armcol = "Pastel brown"
local fla= pa(MArms,"","Block",0,0,0,false,false,0,0,armcol) 
qi{"Weld",fla,Part0=la,Part1=fla,C0=cn(0,0,0.08)} qi{"SpecialMesh",fla,MeshId=ds.LeftArm} 
local fra= pa(MArms,"","Block",0,0,0,false,false,0,0,armcol) 
qi{"Weld",fra,Part0=ra,Part1=fra,C0=cn(0,0,0.08)} qi{"SpecialMesh",fra,MeshId=ds.RightArm} 

pcall(function() ch.Health:Remove() end)
pcall(function() ch.clipper:Remove() end)
local clipper= pa(ch,"clipper","Block",0.5,1,0.75,false,false,0,0,"Black") 
qi{"Weld",clipper,Part0=ch["Left Leg"],Part1=clipper,C0=cn(-0.75,0.5,0)} 


for i,z in pairs(Props:children()) do if z.Name == Player.Name .. "prop" or z.Name == "ammo" .. Player.Name then z:Remove() end end 

lastdb = 0.1
gdb = function(waitz)
St.a = "Delay"
amz[cwep].db = tick()+(waitz/1)
lastdb = waitz/1
end

St.ScopeLimit = 3
cam.FieldOfView=70
Scope = function(onof) 
if onof then
local bhit,bpos=ray(he.Position,mous.hit.p - (cn(he.Position,mous.hit.p)*cn(0,0,-1)).p,Props2)
local lim = (bpos-he.Position).magnitude 
St.ScopeLimit= lim<4 and lim or 3
St.Scoping = onof
Spd[6] = 0.25
cam.FieldOfView=20
else
St.Scoping = onof
Spd[6] = 1
cam.FieldOfView=70
end
end

Crouch = function(doc)
if lh and rh then
if doc then
St.Crouch=true Spd[4]=awep[cwep]~="Mortar" and 0.4 or 0.1
else
St.Crouch=false Spd[4]=1
for i,v in pairs(stands) do v:Remove() stands[i]=nil end
lh.C0 = cn(-1,-1,0)*ca(0,rd(-90),0)
rh.C0 = cn(1,-1,0)*ca(0,rd(90),0)
to["Neck"].C0 = to["Neck"].C0*cn(0,1.25,0)
tw2.C0=cn(0,0,0)
end
end
end

novels = {}
novel = function(ob)
table.insert(novels,ob)
end


dlays = {}
dlayid = -5000
dlay = function(ta,fu,tiem,lt1)
local lt = lt1 or 1
dlays[dlayid] = {tick(),ta,fu,tiem,lt,0}
dlayid=dlayid+1
end

DmgRange = function(pos,rr2,dmg,velo,uses,ownerz)
local rr = rr2/2
local bpb = pos
pcall(function() bpb=bpb.Position end)
pcall(function() bpb=bpb.p end) --name,dmg,hit,uses,ownerz
GetRegion(bpb-v3(rr,rr,rr),bpb+v3(rr,rr,rr),function(v) Dmg(v.Name,dmg,nil,uses,ownerz) if velo then v.Torso.Velocity=v3(0,0,0) local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(bpb,v.Torso.Position+v3(0,2,0)).lookVector*velo}) de(bpp,0.13) end end,
function(hit) 
SpecialHit(hit,dmg)
if hit.Name == "Barrel" or hit.Name == "Crate" then hit.Anchored = false
hit.Velocity = cn(pos,hit.Position).lookVector*45
end
end,true) 
end

exm = function(sti,par,coll)
local par = par or sti
for i=1,3 do 
GlowMesh(false,"Sphere",par,v3(rn(10,20),rn(10,20),rn(10,20)),coll or 'New Yeller',sti.CFrame*cn(rn(-3,3),rn(-3,3),rn(-3,3))*ca(rd(rn(-360,360)),rd(rn(-360,360)),rd(rn(-360,360))),0.1,1,0.1)
end
end

pcall(function()ch.flag:Remove() end)
local flag = pa(ch,"flag","Block",0,0,0,false,false,1,0,"") 
local flagw = qi{"Weld",flag,Part0=to,Part1=flag,C0=cn(0,0,1)*ca(0,0,rd(45))}
local flagt=qi{"SpecialMesh",flag,MeshId=ds.Flag} 



FlagFunc = function(mt)
local ti = tonumber(mt.Parent.Name:sub(5))
local yti = p2.Team
local flt = flag.Transparency
local mtt = mt.Transparency
local perc = 0
local spi = 1 -- speed 
--u hav no flag,enem has flag,not ur team
if flt==1 and mtt==0 and yti~=ti then -- take flag
SMsg("Taking Enemy Flag!..","Olive")
gmed.Visible=true
Spd[7]=0
gmedt.Text = "Taking Enemy Flag..."
while Button and perc<100 and hu.Health>0 do 
perc=perc+spi
gmedperc.Text = perc .. "%"
gmedbar.Size = ud((1/100)*perc,-4,1,-4)
wait()
end
Spd[7]=1
gmed.Visible=false
local scc = (perc>=100 and mt.Transparency==0) and 1 or 0 -- to check if someone was first to take
if scc==1 then
mt.Take.Value=hu
flag.Transparency=0
SMsg("You have taken The Enemy Flag!","Olive")
SMsg("Return the Flag to your Base!!","Olive")
else
SMsg("Flag Take Failed!","Really red")
end
--you have flag,your team flag visible,your team check
elseif flt==0 and mtt==0 and yti==ti then -- take flag
SMsg("Capturing Enemy Flag!..","Olive")
gmed.Visible=true
Spd[7]=0
gmedt.Text = "Capturing Enemy Flag..."
while Button and perc<100 and hu.Health>0 do 
perc=perc+spi
gmedperc.Text = perc .. "%"
gmedbar.Size = ud((1/100)*perc,-4,1,-4)
wait()
end
Spd[7]=1
gmed.Visible=false
local scc = (perc>=100 and mt.Transparency==0) and 1 or 0 -- cant capture if your flag is taken too
if scc==1 then
mt.Capture.Value=hu
flag.Transparency=1
SMsg("You have Captured the Enemy's Flag!","Olive")
else
SMsg("Flag Capture Failed!","Really red")
end
else
SMsg("Flag Capture/Take Failed!","Really red")
end
end

BombFunc = function(Bomb)
local bomb = Bomb.bomb
local user = Bomb.User
local status = Bomb.Status
if user.Value~="" then SMsg("Bomb function Fail!","Really red") end
local perc = 0
--FUSE
if p2.Team==1 and status.Value=="calm" then
user.Value = Player.Name
Spd[7]=0
gmed.Visible=true
gmedt.Text = "Activating Bomb Fuse!!"
while Button and perc<100 and hu.Health>0 do 
perc=perc+0.3
gmedperc.Text = math.floor(perc) .. "%"
gmedbar.Size = ud((1/100)*perc,-4,1,-4)
wait()
end
gmed.Visible=false
local scc = perc>=100 and 1 or 0
if scc==1 then
bomb.Transparency=0
status.Value = "fused"
SMsg("You have Activate The Bomb Fuse!","Olive")
else
SMsg("Fuse Activation Failed!","Really red")
end
Spd[7]=1
user.Value="" 
end
--DEFUSE
if p2.Team==2 and status.Value=="fused" then
user.Value = Player.Name
Spd[7]=0
gmed.Visible=true
gmedt.Text = "Deactivating Bomb Fuse!!"
while Button and perc<100 and hu.Health>0 do 
perc=perc+0.3
gmedperc.Text = math.floor(perc) .. "%"
gmedbar.Size = ud((1/100)*perc,-4,1,-4)
wait()
end
gmed.Visible=false
local scc = perc>=100 and 1 or 0
if scc==1 then
status.Value = "defused"
SMsg("You have Deactivated The Bomb Fuse!","Olive")
else
SMsg("Fuse Deactivation Failed!","Really red")
end
Spd[7]=1
user.Value="" 
end
end

C4Boom = function(dro)
if dro.Transparency==1 then return end
so(ds.Explode1,dro,0.9,1)
local gpos,ghit = FindGround(dro.CFrame) 
if gpos and ghit then BulletHole(gpos.p,ghit,20,ds.Gradient1,Props2)  end
exm(dro,Props2)
dro.Transparency=1 de(dro,2)
DmgRange(dro,20,45,60,"C4",Player.Name) -- who hits the c4 owns the c4 :p
end
MineBoom = function(dro)
if dro.Transparency==1 then return end
so(ds.Explode1,dro,0.9,1)
exm(dro,Props2)
local gpos,ghit = FindGround(dro.CFrame) 
if gpos and ghit then BulletHole(gpos.p,ghit,16,ds.Gradient1,Props2)  end
dro.Transparency=1 de(dro,2)
DmgRange(dro,16,60,60,"Mine",dro.Name:sub(5))
end
GasolineBoom = function(dro)
local dropos = dro.Position
local ra = 24
local ownzor = dro.Parent.Name:sub(9)
dro.Parent.Name="fGasoline"
so(ds.Explode1,dro,0.9,1)
DmgRange(dro,ra/1.4,5,40,"Gasoline",ownzor) 
local gpos,ghit = FindGround(dro.CFrame) 
if gpos and ghit then BulletHole(gpos.p,ghit,ra,ds.Gradient1,Props2)  end
dro.Anchored = true dro.Transparency=1 
for i,v in pairs(dro.Parent:children()) do if v~=dro then v:Remove() end end
dlay({dro,ra,4,nil,"Gasoline",ownzor},DmgRange,0.5,22)
for x=-1,1,2 do 
for z=-1,1,2 do 
local bb = dro:Clone() bb.Parent = dro.Parent bb.Transparency=1 bb.Anchored=true bb.Size=v3(0,0,0) bb.CFrame = cn(dropos)*cn(ra/4*x,0,ra/4*z)
local fia = qi{"Sound",bb,SoundId=ds.Flame,Looped=true,Pitch=1.15} fia:play() qi{"Fire",bb,Size=ra} 
end
end

de(dro.Parent,13)
end

DropGasoline = function()
local mm = qi{"Model",Props,Name="Gasoline" ..Player.Name}
local h1 = handles[1]:Clone() h1.Size=h1.Mesh.Scale/5 h1.Mesh.Scale=v3(1,1,1) h1.CanCollide=true h1.Parent=mm h1.CFrame=handles[1].CFrame h1.Name="pGasoline"
local h2 = handles[2]:Clone() h2.Size=h2.Mesh.Scale/5 h2.Mesh.Scale=v3(1,1,1) h2.CanCollide=true h2.Parent=mm h2.CFrame=handles[2].CFrame h2.Name="pGasoline"
local h3 = handles[3]:Clone() h3.Size=h3.Mesh.Scale/5 h3.Mesh.Scale=v3(1,1,1) h3.CanCollide=true h3.Parent=mm h3.CFrame=handles[3].CFrame h3.Name="pGasoline"
local h4 = handles[4]:Clone() h4.Size=h4.Mesh.Scale/5 h4.Mesh.Scale=v3(1,1,1) h4.CanCollide=true h4.Parent=mm h4.CFrame=handles[4].CFrame h4.Name="pGasoline"
qi{"Weld",h2,Part0=h1,Part1=h2,C0=cn(0.5,1.5,0)*ca(0,rd(-90),0)}
qi{"Weld",h3,Part0=h1,Part1=h3,C0=cn(-0.5,1.5,0)}
qi{"Weld",h4,Part0=h1,Part1=h4,C0=cn(-0.5,2.1,0)}
end
DropMine = function(sta)
local dro = sta:Clone()
dro.Name = "Mine" ..Player.Name
dro.Parent = Props
dro.Size=v3(3.2,1,3.2)
dro.CFrame = sta.CFrame*cn(0,-0.1,-1.2)
dro.Friction=2
dro.Elasticity=2
dro.CanCollide=true 
dro.Velocity=dro.CFrame.lookVector*12
novel(dro)
dro.Touched:connect(function(hit)
if dro.Transparency~=1 and Players:findFirstChild(hit.Parent.Name) and Players[hit.Parent.Name]:findFirstChild("leaderstats") then 
MineBoom(dro)
end
end)
end

DropExplosive = function(sta)
local dro = sta:Clone()
dro.Name = "Explosive" ..Player.Name
dro.Parent = Props
dro.Size=v3(2,5,2)
dro.CFrame = sta.CFrame
dro.Friction=2
dro.Elasticity=2
dro.CanCollide=true 
novel(dro)
end

AddCover = function()
local perc = 0
gmed.Visible=true
Spd[7]=0
gmedt.Text = "Assembling Crate Cover..."
local thebox = pa(Props,"Cover2","Block",4.5,0.1,4.5,false,true,0,0,"Brown") 
for i,v in pairs({"Top","Bottom","Left","Right","Back","Front"}) do qi{"Decal",thebox,Name=v,Texture=asset .. "2062752",Face=v} end
qi{"BlockMesh",thebox,Bevel=0.42}
local theboxc = to.CFrame*cn(0,-2.7,-4)
thebox.CFrame = theboxc
while Button and perc<100 do 
perc=perc+3
gmedperc.Text = perc .. "%"
gmedbar.Size = ud((1/100)*perc,-4,1,-4)
thebox.Size=v3(4.5,(4.5/100)*perc,4.5)
thebox.CFrame=theboxc*cn(0,(4.5/200)*perc,0)
wait()
end
Spd[7]=1
gmed.Visible=false
local scc = perc>=100 and true or false
if scc then
thebox.Name="Cover"
SMsg("Cover Assembled!","Olive")
else
thebox:Destroy()
SMsg("Cover Assembling Fail!","Really red")
end
return scc
end
MedkitFunc = function()
if hu.Health==hu.MaxHealth then SMsg("Fully healed Already!","Really red") return end
local perc = 0
gmed.Visible=true
Spd[7]=0
gmedt.Text = "Healing..."
while Button and perc<100 do 
perc=perc+2
gmedperc.Text = perc .. "%"
gmedbar.Size = ud((1/100)*perc,-4,1,-4)
wait()
end
Spd[7]=1
gmed.Visible=false
local scc = perc>=100 and true or false
if scc then
hu.Health=hu.Health+80
SMsg("+80 Heal!","Olive")
else
SMsg("Heal Failed!","Really red")
end
return scc
end


-- bullet cleaner
for i,v in pairs(Props2:children()) do 
if v.Name == "bullet" .. Player.Name then v:Remove() end
end

--- falldown,smokesize,range
exwep = {["rpg3"]={0.75,nil,5},["rpg2"]={0,25,14},["rpg"]={0.18,25,12},["mortar"]={0.1,15,22},["molotov"]={0.7,nil,18},["grenade3"]={0.7,nil,23},["grenade"]={0.65,nil,16},["grenade2"]={0.7},["tele"]={0.55}}
bulletid = -5000
bullets = {}
FireBullet = function(spa,dmg,spd,ran,bty,siz,rang2,tmm)
local rang = rang2 or 1
local sc = siz or 1
local bb= pa(Props2,"ammo" .. Player.Name,"Block",0.5,0.5,0.5,true,true,0,0,p2.Team~=0 and teamcol[p2.Team] or (p2.Color == "White" and "Black" or p2.Color)) 
if bty == "bullet" then bb.Name = "bullet" ..Player.Name bbm= qi{"CylinderMesh",bb,Scale=v3(0.2,2,0.2)*2*sc}
elseif exwep[bty] and (bty =="rpg" or bty=="mortar" or bty == "rpg2" or bty=="rpg3") then bbm= qi{"SpecialMesh",bb,MeshType="Sphere",Scale=v3(0.6,1.2,0.6)*2*sc} if exwep[bty][2] then qi{"Smoke",bb,RiseVelocity=-exwep[bty][2],Size=6,Opacity=0.8,Color=bc("Dark stone grey").Color} end
elseif exwep[bty] and bty~="rpg" and bty~="mortar" and bty ~= "rpg2" and bty~="rpg3" then bbm=tmm:Clone() bbm.Parent=bb
end 
--St.Accuracy = 0.1
local shak = ca(rd(rn(-St.Accuracy,St.Accuracy)/42)*rang,0,rd(rn(-St.Accuracy,St.Accuracy)/42)*rang)
bb.CFrame=spa*shak*cn(0,2,0)
local nb = {}
nb.spa = spa nb.dmg = dmg nb.spd = spd nb.ran = ran nb.bty = bty nb.sc = sc nb.bb = bb nb.rang = rang
nb.bhit = nil nb.bpos = v3(0,-500,0) nb.reach=false nb.loop = 0 nb.bbm = bbm
bullets[tostring(bulletid)] = nb
bulletid=bulletid+1
end


amm = function(i)
amz[cwep].a=amz[cwep].a-i
end

calcreload = function(i,ma,lal)
local need = ma-amz[i].a
if need < 1 or amz[i].ma < 1 then  return end
if amz[i].ma >= (lal or need) then 
amz[i].ma=amz[i].ma-(lal or need)
amz[i].a=amz[i].a+(lal or need)
elseif amz[i].ma < need and not lal then
amz[i].a = amz[i].a+amz[i].ma
amz[i].ma = 0
else
print"::"
end
end

calcreclip = function(i,ma,wn)
local tots = amz[i].ma+amz[i].a 
if tots >= ma then 
SMsg("You have Enough Ammos!","Bright red")
elseif p2.inv[wn] < 1 then SMsg("Not enough Ammos in Inventory!","Bright red")
else
local need = (ma-tots) 
if need > p2.inv[wn] then need = p2.inv[wn] end 
amz[i].ma = amz[i].ma+need 
p2.inv[wn] = p2.inv[wn]-need
SMsg("-" ..need.. " " ..wn.. " Ammos. (" ..p2.inv[wn].. ")","Olive")
end
invload(invi)
end

local clip = pa(nil,Player.Name .. "prop","Block",0.2,0.8,0.35,false,false,0,0,teamcol[p2.Team]) 
mdb = {}

--

SpecialHit = function(hit,dmg)
if hit.Name:sub(1,9) == "Explosive" and hit.Transparency~=1 then 
dlay({hit},C4Boom,0.35)
elseif hit.Name:sub(1,4) == "Mine" and hit.Transparency~=1 then
dlay({hit},MineBoom,0.35)
elseif hit and hit.Parent.Name:sub(1,8) == "Gasoline" then dlay({hit},GasolineBoom,0.8) 
elseif hit.Name == "core" and hit.Parent.Name == "BaseCore" and hit.Parent.own.Value~=p2.Team then  
local bcore = hit.Parent
bcore.Health.Value=bcore.Health.Value-dmg
if bcore.Health.Value<0 then bcore.Health.Value=0 end 
bcore.g.t.Text ="Team " ..bcore.own.Value.. [[ 
Health: ]] ..bcore.Health.Value .. "/" ..bcore.MaxHealth.Value
elseif hit.Name == "crystal" and hit.Parent.Name=="CrystalPoint" and hit.Parent.own.Value~=p2.Team then
local bcc = hit.Parent
bcc.Health.Value=bcc.Health.Value-dmg
if bcc.Health.Value<0 then bcc.Health.Value=0 end 
if bcc.Health.Value==0 then bcc.own.Value=p2.Team bcc.Health.Value=bcc.MaxHealth.Value hit.BrickColor=bc(teamcol[p2.Team]) end 
bcc.g.t.TextColor3 = bcc.own.Value==0 and bc("White").Color or bc(teamcol[bcc.own.Value]).Color
local hakk ="Team " ..bcc.own.Value
if bcc.own.Value==0 then hakk="Free!" end
bcc.g.t.Text =hakk.. [[ 
Health: ]] ..bcc.Health.Value .. "/" ..bcc.MaxHealth.Value
end
end

local fallkill = true

Dmg = function(name,dmg,hit,uses,ownerz)
local headz = (hit and hit.Name:sub(1,4)=="Head") and 1 or 0
local ownz = ownerz or Player.Name
pcall(function()
if game:service'Players'[name].Character:findFirstChild("wgff") then return end -- anti spawn kill
if to.Position.y<-100 and name==Player.Name then -- fall kill
local ndmg = script.dmg:Clone()
ndmg.Target.Value = name
ndmg.Owner.Value = name
ndmg.Use.Value = "Falling"
ndmg.Dmg.Value = 100000
ndmg.Parent = Props2
else
--real kill
if name==Player.Name or Ntkill[st.Mode] or (Nkill[st.Mode] and pm[Player.Name].Team ~= pm[name].Team) then
HitMsg(headz)
local dmg = headz==1 and dmg*1.3 or dmg
if ownz==name then dmg = math.floor(dmg/3.333333) end
dmg = dmg/pm[name].def
SMsg(name .. " -" ..(dmg).. " DMG!","White")
local ndmg = script.dmg:Clone()
ndmg.Target.Value = name
ndmg.Owner.Value = ownz
ndmg.Use.Value = uses or awep[cwep] 
ndmg.Dmg.Value = dmg
ndmg.Parent = Props2
end
end -- if suicide
end)
end






wepp = Props
wepn = "handle" ..Player.Name

j = 1
np = "Pistol"
wep[j][np] = {}
wep[j][np].MaxClip = 4
wep[j][np].MaxAmmo = 12
wep[j][np].func = function(i,wn) St.CamShakes=wep[i][wn].Stats[7][1] St.Shake=wep[i][wn].Stats[7][2] so(ds.Fire,to,0.7,1) FireBullet(cn(handles[1].CFrame*cn(0,0.5,0).p,mous.hit.p)*ca(rd(-90),0,0),15,18,25,"bullet",1) FirePower.Transparency=0.2   amm(1)  gdb(0.35) end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(48),0)*cn(-0.4,0,0.6),ra0[1],ra1[1]*ca(rd(-90),rd(-25),0)*cn(0.3,0,0.6),{1,1},25,{4,210},1.1}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(-0.1,-1.25,-0.2)*ca(rd(180),0,rd(-22))} qi{"SpecialMesh",ww,MeshId=asset .. "72012879",TextureId=asset .. "72012859",Scale=v3(1,1,1)*2}
FirePower= pa(wepp,wepn,"Block",0,0,0,false,false,1,0.125,"New Yeller")
qi{"Weld",FirePower,Part0=ww,Part1=FirePower,C0=cn(0,1.25,0.4)} qi{"SpecialMesh",FirePower,MeshId=ds.Crown,Scale=v3(0.2,1,0.2)}
end
wep[j][np].Reload = function(self,i,ma,na,mis,rel) 
c12(lw,1,la1[1],0.1,1,u) 
wait(.1) 
mis2 = nil
clip.Parent = Props 
clip.Anchored = false 
local wel = qi{"Weld",clip,Part0=la,Part1=clip,C0=cn(0.2,-1.4,0)}
if mis then mis2=mis:Clone() mis2.Parent=clip end 
wait(.1) 
c12(lw,1,la1[1]*ca(rd(-110),rd(48),0)*cn(-0.65,0,0.6),0.1,1,u) 
if not rel then so(ds.Reload,to,1,1) end 
calcreload(i,ma)
clip.Parent = nil clip.Anchored = true 
wel:Remove() 
if mis then mis2:Remove() end
mis2 = nil
end
wep[j][np].Reclip = function(self,i,ma,wn) Spd[3]=0
c12(lw,1,la1[1]*ca(rd(-40),rd(-10),0)*cn(0,0,1),0.1,1,u) 
clip.Parent = Props clip.Anchored = false local wel = qi{"Weld",clip,Part0=la,Part1=clip,C0=cn(0.2,-1.4,0)}
c12(lw,1,la1[1],0.1,1,u)
calcreclip(i,ma,wn)
clip.Parent = nil clip.Anchored = true wel:Remove() wait(.15) Spd[3]=1
c12(lw,1,la1[1]*ca(rd(-90),rd(48),0)*cn(-0.4,0,0.6),0.1,1,u) 
end
np = "Dual"
wep[j][np] = {}
wep[j][np].MaxClip = 5
wep[j][np].MaxAmmo = 24
wep[j][np].func = function(i,wn) local x = FirePower.Weld.Part0==handles[1] and 2 or 1 FirePower.Weld.Part0=handles[x] St.CamShakes=wep[i][wn].Stats[7][1] St.Shake=wep[i][wn].Stats[7][2] so(ds.Fire,to,0.7,1) FireBullet(cn(handles[x].CFrame*cn(0,0.5,0).p,mous.hit.p)*ca(rd(-90),0,0),13,18,25,"bullet",1) FirePower.Transparency=0.2   amm(1)  gdb(FirePower.Weld.Part0==handles[1] and 0.31 or 0.09) end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(8),0)*cn(-0.1,0,0),ra0[1],ra1[1]*ca(rd(-90),rd(-8),0)*cn(0.1,0,0),{1,1},30,{4,180},0.95}
wep[j][np].Swap = function(self,i) local x = 0
for i,v in pairs({la,ra}) do x=x+1
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"") handles[x] = ww 
qi{"Weld",ww,Part0=v,Part1=ww,C0=cn(0,-1.25,-0.12)*ca(rd(180),0,0)} qi{"SpecialMesh",ww,MeshId=asset .. "72012879",TextureId=asset .. "72012859",Scale=v3(1,1,1)*2}
end
FirePower= pa(wepp,wepn,"Block",0,0,0,false,false,1,0.125,"New Yeller")
qi{"Weld",FirePower,Part0=handles[1],Part1=FirePower,C0=cn(0,1.25,0.4)} qi{"SpecialMesh",FirePower,MeshId=ds.Crown,Scale=v3(0.2,1,0.2)}
end
wep[j][np].Reload = wep[1].Pistol.Reload
wep[j][np].Reclip = wep[1].Pistol.Reclip
np = "Uzi"
wep[j][np] = {}
wep[j][np].MaxClip = 4
wep[j][np].MaxAmmo = 32
wep[j][np].func = function(i,wn) while Button and amz[i].a>0 do local x = FirePower.Weld.Part0==handles[1] and 2 or 1 FirePower.Weld.Part0=handles[x] St.CamShakes=wep[i][wn].Stats[7][1] St.Shake=wep[i][wn].Stats[7][2] so(ds.Fire,to,0.7,1.4) FireBullet(cn(handles[x].CFrame*cn(0,0.5,0.5).p,mous.hit.p)*ca(rd(-90),0,0),8,18,25,"bullet",1) FirePower.Transparency=0.2 amm(1) wait(0.135) end  gdb(0.5) end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(8),0)*cn(-0.1,0,0),ra0[1],ra1[1]*ca(rd(-90),rd(-8),0)*cn(0.1,0,0),{1,1},30,{4,180},0.95}
wep[j][np].Swap = function(self,i) local x = 0
for i,v in pairs({la,ra}) do x=x+1
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"") handles[x] = ww 
qi{"Weld",ww,Part0=v,Part1=ww,C0=cn(0,-1.25,-0.2)*ca(rd(180),rd(i==1 and 80 or -80),0)} qi{"SpecialMesh",ww,MeshId=asset .. "72012794",TextureId=asset .. "72012761",Scale=v3(1,1,1)*0.6}
end
FirePower= pa(wepp,wepn,"Block",0,0,0,false,false,1,0.125,"New Yeller")
qi{"Weld",FirePower,Part0=handles[1],Part1=FirePower,C0=cn(0,1.25,0.5)} qi{"SpecialMesh",FirePower,MeshId=ds.Crown,Scale=v3(0.2,1,0.2)}
end
wep[j][np].Reload = wep[1].Pistol.Reload
wep[j][np].Reclip = wep[1].Pistol.Reclip
np = "Knife"
wep[j][np] = {}
wep[j][np].func = function(i,wn) 
q(function() c12(rw,0,ra0[1]*ca(0,rd(-70),0),0.1,1,u*1.2)  end) -- ready slash
c12(rw,1,ra1[1]*ca(rd(-90),rd(-10),rd(90)),0.1,1,u*1.2,function(i) tbgc[1] = ca(0,rd(-70*i),0) end)  wait() 
so(ds.Slash,to,1,1) St.a="Slash"
c12(rw,0,cn(0.5,0.5,-1)*ca(0,rd(80),0),0.1,1,u*1.2,function(i) tbgc[1] = ca(0,rd(-70+(140*i)),0) end) wait() -- slash
q(function() c12(rw,0,ra0[1],0.1,1,u*1.5)  end) --return
c12(rw,1,ra1[1]*ca(rd(-90),rd(14),rd(20)),0.1,1,u*1.5,function(i) tbgc[1] = ca(0,rd(70+(-70*i)),0) end)
gdb(0.6)
end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(35),rd(22),0)*cn(-0.1,0,0),ra0[1],ra1[1]*ca(rd(-90),rd(14),rd(20)),{1,1},30,{4,180},1.1}
wep[j][np].Swap = function(self,i)
local ww= pa(wepp,wepn,"Block",0.7,0.7,3,false,false,0,0.125,"") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0,-1.7,-0.8)*ca(rd(135),0,rd(-90))} qi{"SpecialMesh",ww,MeshId=asset .. "10469496",TextureId=asset .. "10469599",Scale=v3(1,1.5,1)*1.25}
ww.Touched:connect(function(hit) if hit.Parent:findFirstChild("Humanoid") == nil or St.a~="Slash" or (mdb[hit.Parent.Name] and tick()-mdb[hit.Parent.Name] < 0.5) then SpecialHit(hit,28) return end 
mdb[hit.Parent.Name] = tick()
Dmg(hit.Parent.Name,28)
end)
end
np = "Katana"
wep[j][np] = {}
wep[j][np].func = function(i,wn) 
q(function() c12(rw,0,ra0[1]*ca(0,rd(-70),0),0.1,1,u*1.2)  end) -- ready slash
c12(rw,1,ra1[1]*ca(rd(-90),rd(-10),rd(90)),0.1,1,u*1.2,function(i) tbgc[1] = ca(0,rd(-70*i),0) end)  wait() 
so(ds.Slash,to,1,1) St.a="Slash"
c12(rw,0,cn(0.5,0.5,-1)*ca(0,rd(80),0),0.1,1,u*1.2,function(i) tbgc[1] = ca(0,rd(-70+(140*i)),0) end) wait() -- slash
q(function() c12(rw,0,ra0[1],0.1,1,u*1.5)  end) --return
c12(rw,1,ra1[1]*ca(rd(-90),rd(14),rd(20)),0.1,1,u*1.5,function(i) tbgc[1] = ca(0,rd(70+(-70*i)),0) end)
gdb(0.32)
end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(35),rd(22),0)*cn(-0.1,0,0),ra0[1],ra1[1]*ca(rd(-90),rd(14),rd(20)),{1,1},30,{4,180},1.1}
wep[j][np].Swap = function(self,i)
local ww= pa(wepp,wepn,"Block",0.7,0.7,5,false,false,0,0.125,"") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0,-1.9,-1.25)*ca(rd(150),0,rd(-90))} qi{"SpecialMesh",ww,MeshId=asset .. "11442510",TextureId=asset .. "11442524",Scale=v3(1,1,1)*1.5}
ww.Touched:connect(function(hit) if hit.Parent:findFirstChild("Humanoid") == nil or St.a~="Slash" or (mdb[hit.Parent.Name] and tick()-mdb[hit.Parent.Name] < 0.5) then SpecialHit(hit,36) return end 
mdb[hit.Parent.Name] = tick()
Dmg(hit.Parent.Name,36)
end)
end
np = "Shield"
wep[j][np] = {}
wep[j][np].func = function(i,wn) 
q(function() c12(rw,0,ra0[1]*cn(-0.8,0,-1),0.1,1,u*1)  end) -- ready slash
c12(rw,1,ra1[1]*ca(0,rd(-90),rd(90)),0.1,1,u*1)  wait() 
St.a="Shield"
local hc = 1
Def[4]=10
while hc>0 and Button do hc=hc-0.018 wait() end
gdb(3)
Def[4]=1
St.a="Deshield"
q(function() c12(rw,0,ra0[1],0.1,1,u*1)  end) --return
c12(rw,1,ra1[1]*ca(0,0,rd(-25)),0.1,1,u*1)
end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(35),rd(22),0)*cn(-0.1,0,0),ra0[1],ra1[1]*ca(0,0,rd(-25)),{1,1},30,{4,180},1.1}
wep[j][np].Swap = function(self,i)
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0,"") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0.6,-0.4,0)*ca(0,rd(90),0)} qi{"SpecialMesh",ww,Scale=v3(1,1,1)*2.6,MeshId=asset.."75521015",TextureId=asset.."75521030"}
end
j = 2 ------------------
np = "Shotgun"
wep[j][np] = {}
wep[j][np].MaxClip = 5
wep[j][np].MaxAmmo = 8
wep[j][np].func = function(i,wn) St.CamShakes=wep[i][wn].Stats[7][1] St.Shake=wep[i][wn].Stats[7][2] so(asset .. "2697294",to,0.7,1) for i=1,5 do FireBullet(cn(handles[1].CFrame*cn(0,0.5,0).p,mous.hit.p)*ca(rd(-90),0,0),9,12,7,"bullet",1,2.25) FirePower.Transparency=0.2 end  amm(1)  gdb(0.72) end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(48),0)*cn(-0.4,0,0.6),ra0[1],ra1[1]*ca(rd(-90),rd(-25),0)*cn(0.3,0,0.6),{1,1},40,{3,180},0.85}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Dark stone grey") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0.2,-1.8,-0.25)*ca(rd(180),0,rd(-22))} qi{"SpecialMesh",ww,MeshId=asset.."71947462",TextureId=asset.."71947415",Scale=v3(1,1,1)*1.3}
FirePower= pa(wepp,wepn,"Block",0,0,0,false,false,1,0.125,"New Yeller")
qi{"Weld",FirePower,Part0=ww,Part1=FirePower,C0=cn(0,2.5,0.4)*ca(rd(0),0,0)} qi{"SpecialMesh",FirePower,MeshId=ds.Crown,Scale=v3(0.2,1,0.2)}
end
wep[j][np].Reload = function(self,i,ma,na,spii) 
local spi = spii or 1
while not w.r and amz[i].ma > 0 and amz[i].a < ma do 
c12(lw,1,la1[1],0.1,1,u*1.8*spi) 
clip.Parent = Props clip.Anchored = false local wel = qi{"Weld",clip,Part0=la,Part1=clip,C0=cn(0.2,-1.4,0)}
c12(lw,1,la1[1]*ca(rd(-90),rd(48),0)*cn(-0.4,0,0.6),0.1,1,u*1.8*spi) 
so(asset .. "2697295",to,0.7,1) calcreload(i,ma,1)
clip.Parent = nil clip.Anchored = true wel:Remove() wait()
local wn = awep[cwep]
c12(lw,1,wep[cwep][wn].Stats[2],0.1,1,u*8*spi) 
end
end
wep[j][np].Reclip = wep[1].Pistol.Reclip
np = "Assault"
wep[j][np] = {}
wep[j][np].MaxClip = 5
wep[j][np].MaxAmmo = 42
wep[j][np].func = function(i,wn) while amz[i].a > 0 and Button do St.CamShakes=wep[i][wn].Stats[7][1] St.Shake=wep[i][wn].Stats[7][2] so(asset .. "2691586",to,0.3,1.4) FireBullet(cn(handles[1].CFrame.p,mous.hit.p)*ca(rd(-90),0,0),8,15,25,"bullet",1) FirePower.Transparency=0.2  amm(1) wait(0.125) end gdb(0.7) end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(48),0)*cn(-0.4,0,0.6),ra0[1],ra1[1]*ca(rd(-90),rd(-25),0)*cn(0.3,0,0.6),{1,1},20,{2,200},0.8}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0.15,-1.7,-0.2)*ca(rd(180),0,rd(-25))} qi{"SpecialMesh",ww,MeshId=asset .. "72012671",TextureId=asset .. "72012605",Scale=v3(1,1,1)*1.4}
FirePower= pa(wepp,wepn,"Block",0,0,0,false,false,1,0.125,"New Yeller")
qi{"Weld",FirePower,Part0=ww,Part1=FirePower,C0=cn(0,2.95,0.2)} qi{"SpecialMesh",FirePower,MeshId=ds.Crown,Scale=v3(0.2,1,0.2)}
end
wep[j][np].Reload = wep[1].Pistol.Reload
wep[j][np].Reclip = wep[1].Pistol.Reclip
np = "Sniper"
wep[j][np] = {}
wep[j][np].MaxClip = 8
wep[j][np].MaxAmmo = 2
wep[j][np].func = function(i,wn)  St.CamShakes=wep[i][wn].Stats[7][1] St.Shake=wep[i][wn].Stats[7][2] so(asset .. "10209875",to,1,0.7) FireBullet(cn(handles[1].CFrame*cn(0,0,0).p,mous.hit.p)*ca(rd(-90),0,0),52,25,25,"bullet",1) FirePower.Transparency=0.1  amm(1) gdb(2.5) end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(48),0)*cn(-0.4,0,0.6),ra0[1],ra1[1]*ca(rd(-90),rd(-25),0)*cn(0.3,0,0.6),{1,1},6,{5,25},0.8}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0,-1.45,-0.5)*ca(rd(180),0,rd(-22))} qi{"SpecialMesh",ww,MeshId=asset .. "72012972",TextureId=asset .. "72012935",Scale=v3(2,2,2)*0.6}
FirePower= pa(wepp,wepn,"Block",0,0,0,false,false,1,0.125,"New Yeller")
qi{"Weld",FirePower,Part0=ww,Part1=FirePower,C0=cn(0,2.5,0.25)} qi{"SpecialMesh",FirePower,MeshId=ds.Crown,Scale=v3(0.2,1,0.2)}
end
wep[j][np].Reload = function(self,i,ma,na) wep[2].Shotgun:Reload(i,ma,na,0.5)  end
wep[j][np].Reclip = wep[1].Pistol.Reclip
np = "VIPSniper"
wep[j][np] = {}
wep[j][np].MaxClip = 4
wep[j][np].MaxAmmo = 5
wep[j][np].func = function(i,wn)  St.CamShakes=wep[i][wn].Stats[7][1] St.Shake=wep[i][wn].Stats[7][2] so(asset .. "10209875",to,1,0.7) FireBullet(cn(handles[1].CFrame*cn(0,0,0).p,mous.hit.p)*ca(rd(-90),0,0),80,40,30,"bullet",1) FirePower.Transparency=0.1  amm(1) gdb(1.8) end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(58),0)*cn(-0.4,0,0.6),ra0[1],ra1[1]*ca(rd(-90),rd(-15),0)*cn(0.3,0,0.6),{1,1},6,{4,50},1}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0.15,-1.8,-0.5)*ca(rd(180),0,rd(-10))} qi{"SpecialMesh",ww,MeshId=asset .. "72012972",TextureId=asset .. "72012935",Scale=v3(2,2,2.15)*0.9}
FirePower= pa(wepp,wepn,"Block",0,0,0,false,false,1,0.125,"New Yeller")
qi{"Weld",FirePower,Part0=ww,Part1=FirePower,C0=cn(0,3,0.25)} qi{"SpecialMesh",FirePower,MeshId=ds.Crown,Scale=v3(0.2,1,0.2)}
end
wep[j][np].Reload = function(self,i,ma,na) wep[2].Shotgun:Reload(i,ma,na,0.5)  end
wep[j][np].Reclip = wep[1].Pistol.Reclip
j = 3 ------------------
np = "Flamethrower"
wep[j][np] = {}
wep[j][np].MaxClip = 4
wep[j][np].MaxAmmo = 35
fthrower = qi{"Sound",to,Name="flamethrower",SoundId=ds.Flame,Volume=1}
wep[j][np].func = function(i,wn) handles[2].Fire.Enabled=true handles[2].sm.Enabled=true  fthrower.Looped=true fthrower:play() while Button and amz[i].a>0 do DmgRange(handles[2].CFrame*cn(0,-6.5,0),12,4,nil)  amm(1) wait(0.11) end gdb(0.5) handles[2].Fire.Enabled=false handles[2].sm.Enabled=false fthrower.Looped=false fthrower:Stop() end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(58),0)*cn(-0.4,0,0.6),ra0[1],ra1[1]*ca(rd(-90),rd(-15),0)*cn(0.3,0,0.6),{1,1},30,{99,99},1}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0.15,-2,-0.1)*ca(rd(270),rd(-10),rd(0))} 
qi{"SpecialMesh",ww,MeshId=asset .. "33798955",TextureId=asset .. "34678136",Scale=v3(1,1,1)*1.5}
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,1,0,"Black") handles[2] = ww 
qi{"Fire",ww,Heat=-25,Size=14,Enabled=false}
qi{"Smoke",ww,RiseVelocity=-25,Size=6,Color=bc("Black").Color,Opacity=0.25,Enabled=false,Name="sm"}
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0,-5,0)} 
end
wep[j][np].Reload = wep[1].Pistol.Reload
wep[j][np].Reclip = wep[1].Pistol.Reclip
np = "Minigun"
wep[j][np] = {}
wep[j][np].MaxClip = 4
wep[j][np].MaxAmmo = 60
stmini1 = qi{"Sound",to,Name="minigun",SoundId=asset.."10209780",Volume=0.4}
stmini2 = qi{"Sound",to,Name="minigun",SoundId=asset.."10209776",Volume=0.4}
wep[j][np].func = function(i,wn) so(asset .. "10209788",to,0.7,1) wait(0.6) stmini1.Looped=true stmini2.Looped=true stmini1:play() stmini2:play() while amz[i].a > 0 and Button do St.CamShakes=wep[i][wn].Stats[7][1] St.Shake=wep[i][wn].Stats[7][2] FireBullet(cn(handles[1].CFrame*cn(rn(-2,2)/4,rn(-3,1)/4,-3).p,mous.hit.p)*ca(rd(-90),0,0),5,15,25,"bullet",1) FirePower.Transparency=0.2  amm(1) wait(0.06) end stmini1.Looped=false stmini2.Looped=false stmini2:Stop() so(asset .. "10209786",to,0.8,1) gdb(1.75) end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(48),0)*cn(-0.4,0,0.6),ra0[1],ra1[1]*ca(rd(-90),rd(-25),0)*cn(0.3,0,0.6),{1,1},40,{2,120},0.7}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0.15,-2.4,0.2)*ca(rd(-90),rd(-22),0)} qi{"SpecialMesh",ww,MeshId=asset .. "2806162",Scale=v3(1,1,1)}
FirePower= pa(wepp,wepn,"Block",0,0,0,false,false,1,0.125,"New Yeller")
qi{"Weld",FirePower,Part0=ww,Part1=FirePower,C0=cn(0,-0.5,-4.35)*ca(rd(-90),0,0)} qi{"SpecialMesh",FirePower,MeshId=ds.Crown,Scale=v3(0.5,2.5,0.5)}
end
wep[j][np].Reload = wep[1].Pistol.Reload
wep[j][np].Reclip = wep[1].Pistol.Reclip
np = "Rpg"
wep[j][np] = {}
wep[j][np].MaxClip = 15
wep[j][np].MaxAmmo = 1
wep[j][np].func = function(i,wn) St.CamShakes=wep[i][wn].Stats[7][1] St.Shake=wep[i][wn].Stats[7][2] RocketWoosh=so(asset .. "12222132 ",to,1,1) FireBullet(cn(he.CFrame*cn(0,0,-4).p,mous.hit.p)*ca(rd(-90),0,0),64,3.32,80,"rpg",1) FirePower.Transparency=0.2  amm(1) gdb(3) end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(60),0)*cn(-0.7,0,0.8),ra0[1],ra1[1]*ca(rd(-90),rd(0),0)*cn(0.3,0,0.6),{1,1},40,{20,250},0.7}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(-0.25,-1,-0.5)*ca(rd(-90),rd(-90),0)} qi{"SpecialMesh",ww,MeshId=asset .. "1030777",TextureId=asset .. "1030776",Scale=v3(1,1,1)}
qi{"Weld",FirePower,Part0=ww,Part1=FirePower,C0=cn(-3,0.2,0)*ca(0,0,rd(90))} qi{"SpecialMesh",FirePower,MeshId=ds.Crown,Scale=v3(0.5,2.5,0.5)}
end
wep[j][np].Reload = wep[1].Pistol.Reload
wep[j][np].Reclip = wep[1].Pistol.Reclip
np = "Tri-Rpg"
wep[j][np] = {}
wep[j][np].MaxClip = 15
wep[j][np].MaxAmmo = 1
wep[j][np].func = function(i,wn) St.CamShakes=wep[i][wn].Stats[7][1] St.Shake=wep[i][wn].Stats[7][2] RocketWoosh=so(asset .. "12222132 ",to,1,1) for i=-1,1 do delay(i==-1 and 0 or (i==0 and 0.15 or 0.3),function() FireBullet(cn(he.CFrame*cn(0,0,-4).p,mous.hit.p)*ca(rd(-90),rd(i*1.3),0)*cn(i*0.4,0,i==0 and 0.4 or -0.4),35,3.55,100,"rpg",1) end) end FirePower.Transparency=0.2  amm(1) gdb(5) end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(60),0)*cn(-0.7,0,0.8),ra0[1],ra1[1]*ca(rd(-90),rd(0),0)*cn(0.3,0,0.6),{1,1},35,{20,250},0.7}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(-0.25,-1,-0.5)*ca(rd(-90),rd(-90),0)} qi{"SpecialMesh",ww,MeshId=asset .. "1030777",TextureId=asset .. "1030776",Scale=v3(1,1,1)}
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[2] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0.25,-1,-0.5)*ca(rd(-90),rd(-90),0)} qi{"SpecialMesh",ww,MeshId=asset .. "1030777",TextureId=asset .. "1030776",Scale=v3(1,1,1)}
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[3] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0,-1,-1)*ca(rd(-90),rd(-90),0)} qi{"SpecialMesh",ww,MeshId=asset .. "1030777",TextureId=asset .. "1030776",Scale=v3(1,1,1)}
FirePower= pa(wepp,wepn,"Block",0,0,0,false,false,1,0.125,"New Yeller")
qi{"Weld",FirePower,Part0=ww,Part1=FirePower,C0=cn(-3,0.2,0)*ca(0,0,rd(90))} qi{"SpecialMesh",FirePower,MeshId=ds.Crown,Scale=v3(0.5,2.5,0.5)}
end
wep[j][np].Reload = wep[1].Pistol.Reload
wep[j][np].Reclip = wep[1].Pistol.Reclip
np = "AG-Rpg"
wep[j][np] = {}
wep[j][np].MaxClip = 15
wep[j][np].MaxAmmo = 1
wep[j][np].func = function(i,wn) St.CamShakes=wep[i][wn].Stats[7][1] St.Shake=wep[i][wn].Stats[7][2] RocketWoosh=so(asset .. "12222132 ",to,1,1) FireBullet(cn(he.CFrame*cn(0,0,-4).p,mous.hit.p)*ca(rd(-90),0,0),68,4,80,"rpg2",1) FirePower.Transparency=0.2  amm(1) gdb(3) end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(60),0)*cn(-0.7,0,0.8),ra0[1],ra1[1]*ca(rd(-90),rd(0),0)*cn(0.3,0,0.6),{1,1},35,{20,250},0.7}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(-0.25,-1,-0.5)*ca(rd(-90),rd(-90),0)} qi{"SpecialMesh",ww,MeshId=asset .. "1030777",TextureId=asset .. "1030776",Scale=v3(1,1,1)}
FirePower= pa(wepp,wepn,"Block",0,0,0,false,false,1,0.125,"New Yeller")
qi{"Weld",FirePower,Part0=ww,Part1=FirePower,C0=cn(-3,0.2,0)*ca(0,0,rd(90))} qi{"SpecialMesh",FirePower,MeshId=ds.Crown,Scale=v3(0.5,2.5,0.5)}
end
wep[j][np].Reload = wep[1].Pistol.Reload
wep[j][np].Reclip = wep[1].Pistol.Reclip
np = "GrenadeLauncher"
wep[j][np] = {}
wep[j][np].MaxClip = 8
wep[j][np].MaxAmmo = 3
wep[j][np].func = function(i,wn) St.CamShakes=wep[i][wn].Stats[7][1] St.Shake=wep[i][wn].Stats[7][2] FireBullet(cn(he.CFrame*cn(0,0,-4).p,mous.hit.p)*ca(rd(-90),0,0),32,2.5,100,"rpg3",1) FirePower.Transparency=0.2 amm(1) gdb(1.2) end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(50),0)*cn(-0.7,0,0.8),ra0[1],ra1[1]*ca(rd(-90),rd(-10),0)*cn(0.3,0,0.6),{1,1},40,{20,250},0.7}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0.3,-1.5,-0.5)*ca(rd(-90),rd(-100),0)*ca(rd(-90),0,0)}  qi{"SpecialMesh",ww,MeshId="rbxasset://fonts/rocketlauncher.mesh", TextureId="rbxasset://textures/rocketlaunchertex.png",Scale=v3(0.7,1.2,1.2)}
local www= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[2] = www 
qi{"Weld",www,Part0=ww,Part1=www,C0=cn(-0.5,0.2,0)*ca(0,0,rd(90))}  qi{"CylinderMesh",www,Scale=v3(1.7,1,1.7)*5}
FirePower= pa(wepp,wepn,"Block",0,0,0,false,false,1,0.125,"New Yeller")
qi{"Weld",FirePower,Part0=ww,Part1=FirePower,C0=cn(-3,0.2,0)*ca(0,0,rd(90))} qi{"SpecialMesh",FirePower,MeshId=ds.Crown,Scale=v3(0.5,2.5,0.5)}
end
wep[j][np].Reload = function(self,i,ma,na) wep[2].Shotgun:Reload(i,ma,na,0.5)  end
wep[j][np].Reclip = wep[1].Pistol.Reclip
np = "Mortar"
wep[j][np] = {}
wep[j][np].MaxClip = 12
wep[j][np].MaxAmmo = 1
wep[j][np].func = function(i,wn) if not St.Crouch then SMsg("You must be crouched to fire!","Really red") wait(0.4) return end St.CamShakes=wep[i][wn].Stats[7][1] St.Shake=wep[i][wn].Stats[7][2] RocketWoosh=so(asset .. "12222132 ",to,1,1) FireBullet(cn(he.CFrame*cn(0,0,-5).p,mous.hit.p)*ca(rd(-90),0,0),76,6,100,"mortar",1) FirePower.Transparency=0.2  amm(1) gdb(2.8) end
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(70),0)*cn(-1,0,0.8),ra0[1],ra1[1]*ca(rd(-90),rd(10),0)*cn(0.3,0,0.6),{1,1},40,{20,100},0.65}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0.45,0.25,-0.5)*ca(rd(-90),rd(-70),0)} qi{"SpecialMesh",ww,MeshId="rbxasset://fonts/rocketlauncher.mesh", TextureId="rbxasset://textures/rocketlaunchertex.png",Scale=v3(0.8,1,1)}
FirePower= pa(wepp,wepn,"Block",0,0,0,false,false,1,0.125,"New Yeller")
qi{"Weld",FirePower,Part0=ww,Part1=FirePower,C0=cn(-6,0,0)*ca(0,0,rd(90))} qi{"SpecialMesh",FirePower,MeshId=ds.Crown,Scale=v3(0.75,4,0.75)}
end
wep[j][np].Reload = wep[1].Pistol.Reload
wep[j][np].Reclip = wep[1].Pistol.Reclip
j = 4 ------------------------
np = "Gasoline"
wep[j][np] = {}
wep[j][np].MaxClip = 10
wep[j][np].MaxAmmo = 1
wep[j][np].Stats={la0[1],la1[1]*ca(rd(30),rd(0),0),ra0[1],ra1[1]*ca(rd(-90),rd(-10),0),{1,1},10,{0,0},1.1}
wep[j][np].Swap = function(self,i) 
local cc = "Bright red"
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0,cc) handles[1] = ww qi{"BlockMesh",ww,Scale=v3(2,2,1)*5}
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0,-1.25,0)*ca(rd(-90),0,0)} 
local ww2= pa(wepp,wepn,"Wedge",0,0,0,false,false,0,0,cc) handles[2] = ww2 qi{"SpecialMesh",ww2,MeshType="Wedge",Scale=v3(1,1,1)*5}
qi{"Weld",ww2,Part0=ww,Part1=ww2,C0=cn(0.5,1.5,0)*ca(0,rd(-90),0)}
local ww3= pa(wepp,wepn,"Block",0,0,0,false,false,0,0,cc) handles[3] = ww3 qi{"BlockMesh",ww3,Scale=v3(1,1,1)*5}
qi{"Weld",ww3,Part0=ww,Part1=ww3,C0=cn(-0.5,1.5,0)}
local ww4= pa(wepp,wepn,"Block",0,0,0,false,false,0,0,"Black") handles[4] = ww4 qi{"CylinderMesh",ww4,Scale=v3(0.8,0.2,0.8)*5}
qi{"Weld",ww4,Part0=ww,Part1=ww4,C0=cn(-0.5,2.1,0)}
for h=1,4 do handles[h].Transparency=amz[cwep].a>0 and 0 or 1 end
end
wep[j][np].Reload = function(v1,v2,v3,v4) wep[1].Pistol.Reload(v1,v2,v3,v4,nil,1) for h=1,4 do handles[h].Transparency=amz[cwep].a>0 and 0 or 1 end  end
wep[j][np].Reclip = wep[1].Pistol.Reclip
wep[j][np].func = function(i,wn) 
amm(1) DropGasoline() so(ds.Slash,to,1,1) for h=1,4 do handles[h].Transparency=1 end 
end
np = "Adrenaline"
wep[j][np] = {}
wep[j][np].MaxClip = 3
wep[j][np].MaxAmmo = 1
wep[j][np].Stats={la0[1],la1[1]*ca(rd(30),rd(0),0),ra0[1],ra1[1]*ca(rd(-90),rd(-10),0),{1,1},10,{0,0},1.1}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"White") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0,-1.25,0)*ca(rd(-90),0,0)} qi{"SpecialMesh",ww,MeshId=ds.Spike,Scale=v3(0.25,3,0.25)}
end
wep[j][np].Reload = function(v1,v2,v3,v4) wep[1].Pistol.Reload(v1,v2,v3,v4,handles[1].Mesh,1) end
wep[j][np].Reclip = wep[1].Pistol.Reclip
wep[j][np].func = function(i,wn) 
if Spd[8]==1.5 then SMsg("Already on Adrenaline Mode!","Really red") return end
St.ArmAiming=false
q(function() c12(rw,0,cn(1.5,0.5,-0.75),0.1,1,u*0.65)  end) -- bite
c12(rw,1,ra1[1]*ca(rd(-170),rd(0),rd(-90)),0.1,1,u*0.65)  wait(0.22) 
amm(1) handles[1].Transparency=1 
SMsg("Adrenaline Rush for 20 seconds!","Olive")
Spd[8]=1.5
dlay({},function() Spd[8]=1 end,20)
q(function() c12(rw,0,wep[i][wn].Stats[3],0.1,1,u)  end) -- back
c12(rw,1,wep[i][wn].Stats[4],0.1,1,u)  
St.ArmAiming=true
end
np = "ZBomb"
wep[j][np] = {}
wep[j][np].MaxClip = 15
wep[j][np].MaxAmmo = 1
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-77),rd(18),0),ra0[1],ra1[1]*ca(rd(-77),rd(-18),0),{1,1},100,{0,0},1.1}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(-0.88,-1.6,0)*ca(rd(180),0,0)} qi{"SpecialMesh",ww,MeshId="rbxasset://fonts/timebomb.mesh", TextureId="rbxasset://textures/bombtex.png",Scale=v3(1,1,1)}
end
wep[j][np].Reload = function(v1,v2,v3,v4) wep[1].Pistol.Reload(v1,v2,v3,v4,handles[1].Mesh,1) end
wep[j][np].Reclip = wep[1].Pistol.Reclip
wep[j][np].func = function(i,wn) 
St.ArmAiming=false
q(function() c12(lw,0,wep[i][wn].Stats[1],0.1,1,u) end) 
q(function() c12(lw,1,wep[i][wn].Stats[2]*ca(rd(-90),0,0),0.1,1,u) end)
q(function() c12(rw,0,wep[i][wn].Stats[3],0.1,1,u) end) 
c12(rw,1,wep[i][wn].Stats[4]*ca(rd(-90),0,0),0.1,1,u)   wait(0.2)
amm(1) FireBullet(cn(he.CFrame*cn(0,0,-5).p,mous.hit.p)*ca(rd(-90),0,0),15,5,100,"grenade3",1,nil,handles[1].Mesh) so(ds.Slash,to,1,1)
q(function() c12(lw,0,wep[i][wn].Stats[1],0.1,1,u) end) -- back
q(function() c12(lw,1,wep[i][wn].Stats[2],0.1,1,u) end)
q(function() c12(rw,0,wep[i][wn].Stats[3],0.1,1,u) end) -- back
c12(rw,1,wep[i][wn].Stats[4],0.1,1,u)  
St.ArmAiming=true gdb(2)
end
np = "Translocator"
wep[j][np] = {}
wep[j][np].MaxClip = 6
wep[j][np].MaxAmmo = 1
wep[j][np].Stats={la0[1],la1[1]*ca(rd(30),rd(0),0),ra0[1],ra1[1]*ca(rd(-90),rd(-10),0),{1,1},100,{0,0},1.1}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0,-1.25,0)*ca(rd(180),0,0)} qi{"SpecialMesh",ww,MeshId=asset.."34795798", TextureId=asset.."34914385",Scale=v3(1,1,1)}
end
wep[j][np].Reload = function(v1,v2,v3,v4) wep[1].Pistol.Reload(v1,v2,v3,v4,handles[1].Mesh,1) end
wep[j][np].Reclip = wep[1].Pistol.Reclip
wep[j][np].func = function(i,wn) 
St.ArmAiming=false
q(function() c12(rw,0,cn(1.5,0.5,-0.75),0.1,1,u*0.65)  end) -- bite
c12(rw,1,ra1[1]*ca(rd(-160),rd(0),rd(-70)),0.1,1,u*0.65)  wait(0.22) 
q(function() c12(rw,0,cn(1.5,0.5,0.3),0.1,1,u*0.65)  end) -- throw
c12(rw,1,ra1[1]*ca(rd(-180),rd(0),rd(0)),0.1,1,u*0.8)  
amm(1) FireBullet(cn(he.CFrame*cn(0,0,-5).p,mous.hit.p)*ca(rd(-90),0,0),80,5,100,"tele",1,nil,handles[1].Mesh) so(ds.Slash,to,1,1)
q(function() c12(rw,0,wep[i][wn].Stats[3],0.1,1,u)  end) -- back
c12(rw,1,wep[i][wn].Stats[4],0.1,1,u)  
St.ArmAiming=true gdb(12)
end
np = "Grenade"
wep[j][np] = {}
wep[j][np].MaxClip = 20
wep[j][np].MaxAmmo = 1
wep[j][np].Stats={la0[1],la1[1]*ca(rd(30),rd(0),0),ra0[1],ra1[1]*ca(rd(-90),rd(-10),0),{1,1},100,{0,0},1.1}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0,-1.25,0)*ca(rd(180),0,0)} qi{"SpecialMesh",ww,MeshId=asset.."73838973", TextureId=asset.."73838990",Scale=v3(1.3,1.3,1.6)}
end
wep[j][np].Reload = function(v1,v2,v3,v4) wep[1].Pistol.Reload(v1,v2,v3,v4,handles[1].Mesh,1) end
wep[j][np].Reclip = wep[1].Pistol.Reclip
wep[j][np].func = function(i,wn) 
St.ArmAiming=false
q(function() c12(rw,0,cn(1.5,0.5,-0.75),0.1,1,u*0.65)  end) -- bite
c12(rw,1,ra1[1]*ca(rd(-160),rd(0),rd(-70)),0.1,1,u*0.65)  wait(0.22) 
q(function() c12(rw,0,cn(1.5,0.5,0.3),0.1,1,u*0.65)  end) -- throw
c12(rw,1,ra1[1]*ca(rd(-180),rd(0),rd(0)),0.1,1,u*0.8)  
amm(1) FireBullet(cn(he.CFrame*cn(0,0,-5).p,mous.hit.p)*ca(rd(-90),0,0),80,5,100,"grenade",1,nil,handles[1].Mesh) so(ds.Slash,to,1,1)
q(function() c12(rw,0,wep[i][wn].Stats[3],0.1,1,u)  end) -- back
c12(rw,1,wep[i][wn].Stats[4],0.1,1,u)  
St.ArmAiming=true gdb(2)
end
np = "SmokeBomb"
wep[j][np] = {}
wep[j][np].MaxClip = 20
wep[j][np].MaxAmmo = 1
wep[j][np].Stats={la0[1],la1[1]*ca(rd(30),rd(0),0),ra0[1],ra1[1]*ca(rd(-90),rd(-10),0),{1,1},100,{0,0},1.1}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0.125,"Black") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0,-1.25,0)*ca(rd(180),0,0)} qi{"SpecialMesh",ww,MeshId=asset.."40825991", TextureId=asset.."40825717",Scale=v3(1.3,1.3,1.6)}
end
wep[j][np].Reload = function(v1,v2,v3,v4) wep[1].Pistol.Reload(v1,v2,v3,v4,handles[1].Mesh,1,handles[1].Mesh) end
wep[j][np].Reclip = wep[1].Pistol.Reclip
wep[j][np].func = function(i,wn) 
St.ArmAiming=false
q(function() c12(rw,0,cn(1.5,0.5,-0.75),0.1,1,u*0.65)  end) -- bite
c12(rw,1,ra1[1]*ca(rd(-160),rd(0),rd(-70)),0.1,1,u*0.65)  wait(0.22) 
q(function() c12(rw,0,cn(1.5,0.5,0.3),0.1,1,u*0.65)  end) -- throw
c12(rw,1,ra1[1]*ca(rd(-180),rd(0),rd(0)),0.1,1,u*0.8)  
amm(1) FireBullet(cn(he.CFrame*cn(0,0,-5).p,mous.hit.p)*ca(rd(-90),0,0),0,5,100,"grenade2",1,nil,handles[1].Mesh) so(ds.Slash,to,1,1)
q(function() c12(rw,0,wep[i][wn].Stats[3],0.1,1,u)  end) -- back
c12(rw,1,wep[i][wn].Stats[4],0.1,1,u)  
St.ArmAiming=true gdb(2)
end
np = "C4"
wep[j][np] = {}
wep[j][np].MaxClip = 15
wep[j][np].MaxAmmo = 1
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(-10),0),ra0[1],ra1[1]*ca(rd(-90),rd(30),0),{1,1},10,{1,1},1.1}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0,"Brown") handles[1] = ww qi{"SpecialMesh",ww,MeshId=asset.."74322628",TextureId=asset .. "74322630",Scale=v3(1,1.6,1)*2.5}
qi{"Weld",ww,Part0=ra,Part1=ww,C0=ca(0,0,rd(-30))*cn(-1.5,-1.8,0.3)*ca(rd(0),rd(180),rd(90))} 
end
wep[j][np].Reload = function(v1,v2,v3,v4) wep[1].Pistol.Reload(v1,v2,v3,v4,handles[1].Mesh,1) end
wep[j][np].Reclip = wep[1].Pistol.Reclip
wep[j][np].func = function(i,wn) 
DropExplosive(handles[1])
amm(1) so(ds.Slash,to,1,1)
end
np = "Molotov"
wep[j][np] = {}
wep[j][np].MaxClip = 10
wep[j][np].MaxAmmo = 1
wep[j][np].Stats={la0[1],la1[1]*ca(rd(30),rd(0),0),ra0[1],ra1[1]*ca(rd(-90),rd(-10),0),{1,1},100,{0,0},1.1}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0.1,0,"Bright red") handles[1] = ww 
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(0,-1.25,0)*ca(rd(-90),0,0)} qi{"SpecialMesh",ww,MeshId=asset.."29690481",TextureId=asset .. "29690498",Scale=v3(1,1,1)*1.4}
end
wep[j][np].Reload = function(v1,v2,v3,v4) wep[1].Pistol.Reload(v1,v2,v3,v4,handles[1].Mesh,1) end
wep[j][np].Reclip = wep[1].Pistol.Reclip
wep[j][np].func = function(i,wn) 
St.ArmAiming=false
q(function() c12(rw,0,cn(1.5,0.5,0.3),0.1,1,u*0.65)  end) -- throw
c12(rw,1,ra1[1]*ca(rd(-180),rd(0),rd(0)),0.1,1,u*0.8)  
amm(1) FireBullet(cn(he.CFrame*cn(0,0,-5).p,mous.hit.p)*ca(rd(-90),0,0),35,5,100,"molotov",1,nil,handles[1].Mesh) so(ds.Slash,to,1,1)
q(function() c12(rw,0,wep[i][wn].Stats[3],0.1,1,u)  end) -- back
c12(rw,1,wep[i][wn].Stats[4],0.1,1,u)  gdb(3.3)
St.ArmAiming=true
end
np = "Cover"
wep[j][np] = {}
wep[j][np].MaxClip = 4
wep[j][np].MaxAmmo = 1
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(15),0),ra0[1],ra1[1]*ca(rd(-90),rd(-15),0),{1,1},10,{1,1},1.1}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0,"Brown") handles[1] = ww qi{"BlockMesh",ww,Scale=v3(3,3,0.5)*5}
qi{"Weld",ww,Part0=ra,Part1=ww,C0=ca(0,0,rd(15))*cn(-1.4,-1.4,0.3)*ca(rd(-90),rd(0),rd(0))} 
end
wep[j][np].Reload = function(v1,v2,v3,v4) wep[1].Pistol.Reload(v1,v2,v3,v4,nil,1) end
wep[j][np].Reclip = wep[1].Pistol.Reclip
wep[j][np].func = function(i,wn) 
amm(1) local suc = AddCover() if not suc then amm(-1) end gdb(5)
end
np = "Mine"
wep[j][np] = {}
wep[j][np].MaxClip = 15
wep[j][np].MaxAmmo = 1
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(15),0),ra0[1],ra1[1]*ca(rd(-90),rd(-15),0),{1,1},10,{1,1},1.1}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0,"Brown") handles[1] = ww qi{"SpecialMesh",ww,MeshId=asset.."28511843",TextureId=asset .. "28512114",Scale=v3(3,3,3)}
qi{"Weld",ww,Part0=ra,Part1=ww,C0=ca(0,0,rd(15))*cn(-1.4,-1.65,-0.2)*ca(rd(-90),rd(0),rd(0))} 
end
wep[j][np].Reload = function(v1,v2,v3,v4) wep[1].Pistol.Reload(v1,v2,v3,v4,handles[1].Mesh,1) end
wep[j][np].Reclip = wep[1].Pistol.Reclip
wep[j][np].func = function(i,wn) 
DropMine(handles[1])
amm(1) so(ds.Slash,to,1,1)
end
np = "Medkit"
wep[j][np] = {}
wep[j][np].MaxClip = 1
wep[j][np].MaxAmmo = 1
wep[j][np].Stats={la0[1],la1[1]*ca(rd(-90),rd(5),0),ra0[1],ra1[1]*ca(rd(-90),rd(-5),0),{1,1},10,{1,1},1.1}
wep[j][np].Swap = function(self,i) 
local ww= pa(wepp,wepn,"Block",0,0,0,false,false,0,0,"Bright red") handles[1] = ww qi{"SpecialMesh",ww,Scale=v3(1,1,1)*1.35,MeshId=asset.."45021509",TextureId=asset.."45021236"}
qi{"Weld",ww,Part0=ra,Part1=ww,C0=cn(-1.2,-1.7,0.2)*ca(rd(-65),0,0)} 
end
wep[j][np].Reload = function(v1,v2,v3,v4) wep[1].Pistol.Reload(v1,v2,v3,v4,handles[1],1) end
wep[j][np].Reclip = wep[1].Pistol.Reclip
wep[j][np].func = function(i,wn) 
local success = MedkitFunc()
if success then amm(1) end
end


_G.c = function() Players.LocalPlayer.CameraMode=0 end

--for i=1,4 do local use = awep[i] if wep[i][use] and wep[i][use].MaxAmmo then amz[i].ma=wep[i][use].MaxAmmo*wep[i][use].MaxClip end end

packs = {}
for i=1,4 do 
pcall(function() ch["pack" ..i]:Remove() end) 
packs[i] = qi{"Model",ch,Name="pack" ..i}
end


ll = ch["Left Leg"]
rl = ch["Right Leg"]


bps = {}
--1
bps.Uzi = {rl,cn(0.6,0.5,0.15)*ca(rd(180),0,0)}
bps.Pistol = {rl,cn(0.6,0.5,0)*ca(rd(180),0,0)}
bps.Dual = bps.Pistol
bps.Knife = {rl,cn(0.5,0.5,0)*ca(rd(30),0,rd(90))}
bps.Katana = bps.Knife
--2
bps.Sniper = {to2,cn(0,0.4,0.52)*ca(0,0,rd(140))*ca(0,rd(90),0)}
bps.VIPSniper = bps.Sniper
bps.Shotgun = {to2,cn(0,0.4,0.52)*ca(0,0,rd(140))*ca(0,rd(90),0)}
bps.Assault = {to2,cn(0,0.4,0.52)*ca(0,0,rd(140))*ca(0,rd(90),0)}
--3
bps.Mortar = {to2,cn(0,0.4,0.7)*ca(0,0,rd(140))}
bps.Rpg = bps.Mortar
bps["AG-Rpg"] = bps.Mortar
bps["Tri-Rpg"] = bps.Mortar
bps["GrenadeLauncher"] = bps.Mortar
bps.Minigun = {to2,cn(-0.3,0.4,1.3)*ca(0,rd(90),0)*ca(rd(-140),0,0)}
bps.Flamethrower = {to2,cn(-0.3,0.4,0.9)*ca(0,rd(90),0)*ca(rd(-140),0,rd(180))}
--4
bps.Grenade = {ll,cn(0,0.2,0.75)*ca(rd(-90),0,0)}
bps.SmokeBomb = bps.Grenade
bps.Translocator = bps.Grenade
bps.Molotov = {ll,cn(0,0.45,0.7)*ca(0,0,0)}



Swap = function(i,ani) 
if awep[i] == "" then return end 
St.Swapping = true
ogn = awep[cwep]
ngn = awep[i]
Scope(false)
if SMsg then SMsg("Switching to " ..awep[i].. ".","Olive") end
St.a = "Swapping"
pcall(function() FirePower:Remove() end)
if not ani then
St.ArmAiming = false
--lw.C0=la0[1] lw.C1=la1[1]*ca(rd(-90),0,0) 
--rw.C0=ra0[1] rw.C1=ra1[1]*ca(rd(-90),0,0)
c12(rw,1,ra1[1]*ca(rd(45),0,0),0.1,1,u*2) 
end
xhandle = nil
for x,v in pairs(handles) do if bps[ogn] and x==1 and cwep < 5 and cwep~=i then xhandle=handles[x] else handles[x]:Destroy() end end handles = {} 
--weapon backpack
if i<5 then for i,v in pairs(packs[i]:children()) do v:Remove() end end -- remove upcoming weapon's backpack
if xhandle then
xhandle.Transparency=0
xhandle.Parent = packs[cwep] 
for i,v in pairs(xhandle:children()) do if v:IsA("Weld") then v:Remove() end end -- remove welds
qi{"Weld",xhandle,Part0=bps[ogn][1],Part1=xhandle,C0=bps[ogn][2]}
end
---
cwep=i --- :O
local nw = awep[i] p2.Use = twep[i] p2.Equip = awep[i] 
wep[i][nw]:Swap(i)
chran[2]=wep[i][nw].Stats[6]
Spd[5]=wep[i][nw].Stats[8]
if not ani then
q(function() c12(rw,1,wep[i][nw].Stats[4],0.1,1,u*2) end)
c12(rw,0,wep[i][nw].Stats[3],0.1,1,u*2)
St.ArmAiming = true
end
St.a="None"
St.Swapping=false
end

for i=5,1,-1 do 
Swap(i,1)
end
invload(1) -- load for inventory




for i,v in pairs(Mod.SponsorButtons:children()) do 
local v1bb = pa(SButtons,v:findFirstChild("id") and v.id.Value or "NaN","Block",0,0,0,true,true,0,0,"Bright red") v1bb.CFrame=v.CFrame qi{"CylinderMesh",v1bb,Scale=v3(2,0.7,2)*5} 
v1bb.Friction=0 v1bb.Changed:connect(function(prop) if prop == "Friction" and v1bb.Friction==1 then for r=-1,1,2 do for h=1,5 do v1bb.CFrame=v1bb.CFrame*cn(0,-0.085*r,0) wait() end wait() end v1bb.Friction=0 end end)
end


hgui.MouseEnter:connect(function() desc2.Parent = hgui desc2.Size = ud(0,140,0,10) desc2.Position = ud(1,0,0,0) desc2.Text = "Health " .. mf(hu.Health) .. "/" .. mf(hu.MaxHealth)  end)
hgui.MouseLeave:connect(function() if desc2.Parent==hgui then desc2.Parent=nil end end)

if not _G.cha then _G.cha = {} end

Chatf.Position=ud(0,10,0,0) 

if not _G.con then _G.con = {} _G.conid=0 end
for i,v in pairs(_G.con) do v:disconnect() _G.con[i]=nil end
newcon = function(con)
_G.con[_G.conid]=con
_G.conid=_G.conid+0.02
end


Msgf.Position=ud(0,10,0,0) 

Chats.Visible = false
Msgs.Visible = false
MSC = GameStats.Msg
GSC = GameStats.Chats
GSCF=function(thev,col,hax) so(ds.clicksound,m2,0.25,1)
local msg = thev
if type(msg)~="string" then  msg = msg.Value end
if #msg > 100 then msg = msg:sub(1,100) end
if not col then table.insert(_G.cha,{msg,thev.Color.Value.Name}) end
msg = se("/",msg)
----- CHATS
for i,v in pairs(Chatf:children()) do v.Position=v.Position+ud(0,0,0,cft) end 
local newtext=qi{"Frame",Chatf,Name=#Chatf:children()+1,ZIndex=3,Size=ud(1,0,0,cft),Position=ud(0,0,0,0),[bgt]=1}
local binds = 0
for i=1,#msg,1 do 
local msgi = msg[i]
if cpi[msgi:lower()] or type(tonumber(msgi)) == "number" then 
local nv1=qi{"ImageButton",newtext,ZIndex=3,Size=ud(0,26,0,26),Position=ud(0,binds+1,0,-3),[bgt]=1,Image=cpi[msgi:lower()] or (asset .. msgi)}
guieffect1(nv1,4)
binds=binds+26 
else
local nv1=qi{"TextLabel",newtext,ZIndex=3,Size=ud(0,0,0,cft),Position=ud(0,binds,0,0),Font="ArialBold",[tst]=0,[tsc]=bc("Really black").Color,FontSize="Size14",Text=msgi,TextColor3=col and bc(col).Color or thev.Color.Value.Color,[txa]="Left",[bgt]=1}
binds=binds+(nv1.TextBounds.x*1.02)
end
end
Chatf.Size=Chatf.Size+ud(0,0,0,cft) 
local thetick = tick()
newtext.MouseEnter:connect(function() desc2.Parent = newtext desc2.Size = ud(0,120,0,cft) desc2.Position = ud(1,-120,0,0) desc2.Text = mf(tick()-thetick) .. " seconds ago" end)
newtext.MouseLeave:connect(function() if desc2.Parent==newtext then desc2.Parent=nil end end)
if cfm >= #Chatf:children() then Chats.Visible = false  else 
Chats.Visible = true Chats.Position=ud(0,0,0,0) Chats.Size = ud(0,10,0,((cfm)/(#Chatf:children()))*(cfm*cft)) end

Chatf.Position=Chatf.Position-ud(0,0,0,cft) for i=1,4 do if not hax then wait() end Chatf.Position=Chatf.Position+ud(0,0,0,5) end
end
newcon(GSC.Changed:connect(function() GSCF(GSC) end))
Player[statname].Chat.Changed:connect(function() GSCF(Player[statname].Chat) end)
MSCF = function(thev) 
----MSGS
for i,v in pairs(Msgf:children()) do v.Position=v.Position+ud(0,0,0,mft) end 
local newtext=qi{"TextLabel",Msgf,ZIndex=3,FontSize="Size14",Font="ArialBold",Size=ud(1,0,0,mft),Position=ud(0,0,0,0),Text=thev.Value,TextColor3=thev.Color.Value.Color,[txa]="Left",[tst]=0,[tsc]=bc("Really black").Color,[bgt]=1}
Msgf.Size=Msgf.Size+ud(0,0,0,mft) 
local thetick = tick()
newtext.MouseEnter:connect(function() desc2.Parent = newtext desc2.Size = ud(0,120,0,mft) desc2.Position = ud(1,-120,0,0) desc2.Text = mf(tick()-thetick) .. " seconds ago" end)
newtext.MouseLeave:connect(function() if desc2.Parent==newtext then desc2.Parent=nil end end)
if mfm >= #Msgf:children() then Msgs.Visible = false else 
Msgs.Visible = true Msgs.Position=ud(0,0,0,0) Msgs.Size = ud(0,10,0,((mfm)/(#Msgf:children()))*(mfm*mft)) end

Msgf.Position=Msgf.Position-ud(0,0,0,mft) for i=1,4 do wait() Msgf.Position=Msgf.Position+ud(0,0,0,i~=4 and 4 or 2) end
end
MSC.Changed:connect(function() MSCF(MSC) end)
Player[statname].Msg.Changed:connect(function() MSCF(Player[statname].Msg) end)

for i=#_G.cha-12,#_G.cha,1 do 
if type(_G.cha[i])=="table" then 
GSCF(_G.cha[i][1],_G.cha[i][2],true)
end
end

Player.CameraMode=0
Player.CameraMode=1

SMsg = function(so,co)
local coo = co or "Black" Player[statname].Msg.Color.Value =  bc(coo) Player[statname].Msg.Value = so .. string.rep(" ",rn(1,5))

end

for i=1,25 do Def[i]=1 Spd[i]=1 tbgc[i]=ca(0,0,0) if not chran[i] then chran[i]=0 end end

Overstat = {}
CreateStat = function()
local newstat = qi{"BillboardGui",m2,Active=true,Size=ud(0,20,0,20),StudsOffset=v3(0,3,0)}
local tex = qi{"TextLabel",newstat,ZIndex=10,[tya]="Bottom",[txa]="Center",Name="tx",[bgt]=1,Size=ud(0,300,0,0),Position=ud(0,-150,0,0),TextWrap=true,Font="ArialBold",FontSize="Size14",[tst]=0,[tsc]=bc("Black").Color}
return newstat
end

zneck = 0
yneck = 1.25

minut3 = function(tim) 
local sec = tostring(tim%60)
local minu = tostring(math.floor((tim%3600)/60))
local hour = tostring(math.floor(tim/3600))  --math.floor((tim%86400)/3600))
if #sec == 1 then sec = "0" ..sec end
if #minu == 1 then minu = "0" ..minu end
if #hour == 1 then hour = "0" ..hour end
return hour.. ":" ..minu.. ":" ..sec
end

minut2 = function(tim) 
local sec = tostring(tim%60)
local minu = tostring(math.floor((tim%3600)/60))
local hour = tostring(math.floor((tim%86400)/3600))
local day = tostring(math.floor((tim%(86400*365))/86400))
if #sec == 1 then sec = "0" ..sec end
if #minu == 1 then minu = "0" ..minu end
if #hour == 1 then hour = "0" ..hour end
if #day == 1 then day = "0" ..day end
return day .. ":" ..hour.. ":" ..minu.. ":" ..sec
end

minut = function(tim)
local sec = tostring(math.floor(tim%60))
local minu = tostring(math.floor(tim/60))
if #sec == 1 then sec = "0" ..sec end
if #minu == 1 then minu = "0" ..minu end
return minu .. ":" ..sec
end

for i=1,5 do 
if awep[i] ~= "" then
local nw = awep[i] 
local wee = wep[i][nw] 
if wee.Reclip then
calcreclip(i,wee.MaxAmmo*wee.MaxClip,nw)
end 
end
end

wss=0
wait(0.1)
bin.Parent = ch
p2.def=1
wait(0.6)
local u = 0
while true do 
wait()
u = u + 1
chran[3] = St.Crouch and -12 or 0
if lh and rh then
lh.MaxVelocity = St.Crouch and 0.035 or 0.1
rh.MaxVelocity = St.Crouch and 0.035 or 0.1
end

erms("1")
local nw = awep[cwep]
if handles[1] then
handles[1].Transparency = (visihandle[nw] and amz[cwep].a < 1) and 1 or (nw=="Gasoline" and handles[1].Transparency or 0)
if handles[1]:findFirstChild("Decal") then
handles[1].Decal.Transparency = (visihandle[nw] and amz[cwep].a < 1) and 1 or 0
end
end

erms("2")

local theran = 0 for i=1,#chran do theran=theran+chran[i] end 
theran = theran<1 and 1 or theran
St.Accuracy=theran 

local nw = awep[cwep] local wee = wep[cwep][nw]

erms("3")

local defs = 1 for i=1,#Def do defs=defs*Def[i] end
p2.def=defs

local spid = p2.Speed*st.AllSpeed for i=1,#Spd do spid = spid*Spd[i] end hu.WalkSpeed = spid
p2.Use = twep[cwep]
p2.Use = awep[cwep]
p2.Anim = St.a
hpt.Text = mf(hu.Health)
gum.Text = wee.MaxClip and amz[cwep].ma or "--"
gua.Text = wee.MaxAmmo and amz[cwep].a or "--"
gun.Text = awep[cwep]
local ggdb = amz[cwep].db-tick() if ggdb < 0 then ggdb = 0 end
gud.Size = ud(0,(160/lastdb)*ggdb,0,14)
gud.Position = ud(1,-60-gud.Size.X.Offset,1,-16)
gud[bc3] = c3(1,1-((1/lastdb)*ggdb),0)
if mf(to.Velocity.magnitude)-1 > wss then wss=wss+2.5 elseif  mf(to.Velocity.magnitude) < wss then wss=wss-2.5 end 
wss = wss < 20 and wss or 20 wss =wss
chran[1] = st.Condition=="Playing" and wss*2 or 0
if St.MouseFree then
MouseFree.Visible = true
else
MouseFree.Visible = false
end

erms("4")

if mous then
local mt = mous.Target

if to:findFirstChild("Neck") then
if St.CamShakes > 0 then
St.CamShakes = St.CamShakes-1
to["Neck"].C0 = cn(0,tw2.C0.y,St.Scoping and -St.ScopeLimit or 0)*cn(0,yneck,St.CamShakes/10+zneck)*ca(rd(90),rd(180),0)
cam.CoordinateFrame=cam.CoordinateFrame*cn(rn(-1,1)/(St.Shake*3),rn(-1,1)/(St.Shake*3),0)
else
to["Neck"].C0 = cn(0,tw2.C0.y,St.Scoping and -St.ScopeLimit or 0)*cn(0,yneck,zneck)*ca(rd(90),rd(180),0)
end
end -- neck

erms("5")
-- Mouse Hoverin
local lidvalstat = {[0]="Click to Open Weapon box","Opening Box...","Press F To Reclip and B to Open Inventory/Shop"}
if mt then
if mt.Name=="SponsorPic" and mt:findFirstChild("desc") and dis(to,mt) < 20 then 
desc1.Parent = fr sbox1.Adornee=mt desc1.Size = ud(0,220,0,80) desc1.Position = ud(0,mous.X,0,mous.Y-80) desc1.Text = mt.desc.Value
elseif mt.Name=="SponsorButton" and mt:findFirstChild("id") and dis(to,mt) < 20 then
desc1.Parent = fr sbox1.Adornee=nil  desc1.Size = ud(0,160,0,15)  desc1.Position = ud(0,mous.X-80,0,mous.Y+60) desc1.Text = "Teleport to this place"
elseif mt.Name == "weparea" and dis(to,mt) <40 then
desc1.Parent = nil sbox1.Adornee = nil bbg.Parent = mt bbg.StudsOffset=v3(0,2,0) bbg.Adornee=mt bbgt.Text=lidvalstat[mt.Stat.Value]
elseif mt.Name:sub(1,4) == "flag" and dis(to,mt) <10 then
desc1.Parent = nil sbox1.Adornee = nil bbg.Parent = m2 bbg.StudsOffset=v3(0,3,0) bbg.Adornee=mt 
bbgt.Text=p2.Team==tonumber(mt.Parent.Name:sub(5)) and (mt.Transparency==0 and "Your Team's Flag" or "Your Team's Flag has been taken!") or (mt.Transparency==0 and "Enemy Flag! TAKE!" or "The Enemy Flag has already been taken!")
elseif mt.Name == "bomb" and mt.Parent.Name=="Bomb" and dis(to,mt) <12 then
desc1.Parent = nil sbox1.Adornee = nil bbg.Parent = m2 bbg.StudsOffset=v3(0,3,0) bbg.Adornee=mt 
local loltex1 = {["calm"]="The bomb hasn't been fused yet!",["fused"]="The Bomb has been fused!",["defused"]="The Bomb has been defused!"}
bbgt.Text=loltex1[mt.Parent.Status.Value]
else
bbg.Parent = nil
bbgt.Text = ""
bbg.Adornee=nil
desc1.Parent=nil
sbox1.Adornee=nil
end end --hover
---
end---mouse


erms("6")
local rots1 = -math.deg((to.Position - mous.hit.p).unit.y) 
rots1 = rots1 < 90 and rots1 or 90 
rots1 = rots1 > -90 and rots1 or -90 
zneck =(rots1-25)/140

if u%2==0 then 
sneck.C0=cn(0,tw2.C0.y,0)*cn(0,0.9,0)*ca(rd(rots1),0,0)*cn(0,0.6,0) 

local use = awep[cwep]
local use = wep[cwep][use].Stats
if St.ArmAiming and type(use[5])=="table" then
lw.C0=use[1]
lw.C1=use[2]
rw.C0=use[3]
rw.C1=use[4]
lw.C1=use[5][1]==1 and lw.C1*ca(rd(-rots1 > 40 and 40 or -rots1),0,0) or lw.C1
rw.C1=use[5][2]==1 and rw.C1*ca(rd(-rots1 > 40 and 40 or -rots1),0,0) or rw.C1

end

end

erms("7")

if St.Crosshair then --not St.MouseFree then
x1.Visible=true x2.Visible=true y1.Visible=true y2.Visible = true
x1.Position=ud(0,mous.X+(csize/2)+cran+theran-2,0,mous.Y-3)
x2.Position=ud(0,mous.X-(csize)-(cran*2)-theran-3,0,mous.Y-3)
y1.Position=ud(0,mous.X-3,0,mous.Y+(csize/2)+cran+theran-2)
y2.Position=ud(0,mous.X-3,0,mous.Y-(csize)-(cran*2)-theran-3)
end
local tbga = ca(0,0,0) for i=1,#tbgc do tbga=tbga*tbgc[i] end
to.CFrame = cn(to.Position,v3(mous.Hit.p.x,to.Position.y,mous.Hit.p.z))*tbga

erms("8")


if FirePower and FirePower.Transparency<1 and FirePower:findFirstChild("Weld") then
FirePower.Weld.C0=FirePower.Weld.C0*ca(0,rd(15),0)
FirePower.Transparency=FirePower.Transparency+0.2
end

if hitmsg.TextTransparency<1 then
hitmsg.TextTransparency=hitmsg.TextTransparency+0.2
end
if x1.hitmsg[bgt]<1 then
for i,v in pairs({x1,x2,y1,y2}) do
v.hitmsg[bgt]=v.hitmsg[bgt]+0.067
end
end

erms("8")

for i,v in pairs(Players:GetPlayers()) do
if v ~= Player and v:findFirstChild(statname) and v.Character and v.Character.Parent and v.Character:findFirstChild("Torso") then
if Overstat[v.Name] then else
Overstat[v.Name] = CreateStat() 
end
local thegui = Overstat[v.Name] 
if v:findFirstChild(statname) and pm[v.Name].ShowStat and v.Character:findFirstChild("Humanoid") and (St.Scoping or dis(v.Character.Torso,cam.CoordinateFrame) < 65) and thegui:findFirstChild("tx") then -- and bhit and bhit.Parent==v.Character then -- show
thegui.Parent = m2
thegui.Adornee = v.Character.Torso
local trut = (pm[v.Name].Team~=0 and pm[v.Name].Team==p2.Team)
local trut1,trut2
trut1 = pm[v.Name].Team==0 and "Neutral" or (trut and "Team" or "Enemy")
trut2 = pm[v.Name].Team == 0 and "White" or (trut and "Lime green" or "Bright red")
if st.Condition ~= "Playing" then trut=true end
thegui.tx.Text = v.Name .. [[ 
]] .. mf(v.Character.Humanoid.Health) .. "/" ..mf(v.Character.Humanoid.MaxHealth) .. [[ 
]] .. trut1
thegui.tx.TextColor3 = bc(trut2).Color
else -- hide
thegui.Adornee = nil
thegui.Parent=nil
end -- range check
end -- v~=player qi
end -- loop end

erms("9")

if wtabg.Visible then
for i=1,#wtab do 
local nw = awep[i]
local use = wep[i][nw]
wtab[i].Text = nw == "" and "None" or nw
if nw ~= "" and use.Reclip then
wtab[i].Text = wtab[i].Text .. [[ 
]] ..amz[i].a .. " / " ..amz[i].ma
else
wtab[i].Text = wtab[i].Text .. [[ 
 -- / -- ]]
end
end
end


erms("10")


for xx,nb in pairs(bullets) do 
local bb = nb.bb
nb.loop=nb.loop+1
local spd2 = nb.spd
nb.bhit,nb.bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-1,0)).p,Props2)
if (nb.bhit and nb.bhit.Parent~=ch and nb.bhit.Parent.Parent~=ch and nb.bhit.Transparency~=1 and (nb.bhit.Parent:findFirstChild("Humanoid") or nb.bhit.CanCollide)) and nb.bpos and (nb.bpos - bb.Position).magnitude < spd2  then nb.reach=true end
bb.CFrame=bb.CFrame*cn(0,spd2,0)*ca(-rd(exwep[nb.bty] and exwep[nb.bty][1] or 0.07),0,0)


if nb.reach then 
bb.CFrame=bb.CFrame*cn(0,-spd2,0)
bb.CFrame=bb.CFrame*cn(0,(nb.bpos-bb.Position).magnitude,0)

if nb.bhit and nb.bhit.Parent:findFirstChild("Humanoid") then 
local bty = nb.bty
local dmg = nb.dmg
local vic = nb.bhit.Parent
local vhu = vic.Humanoid
if bty == "bullet" then  Dmg(vic.Name,dmg,nb.bhit) end

end

SpecialHit(nb.bhit,nb.dmg)

-- explosive bullit dmg
if nb.bhit and nb.bhit.Anchored then -- bullet hole / grenades are not bullets!
if exwep[nb.bty] and exwep[nb.bty][3] and string.find(nb.bty,"gren") ==nil then BulletHole(nb.bpos,nb.bhit,exwep[nb.bty][3]*nb.sc,ds.Gradient1,Props2) elseif nb.bty=="bullet" then BulletHole(nb.bpos,nb.bhit,1*nb.sc,nil,Props2) end
end 
if exwep[nb.bty] and nb.bty == "molotov" then so(ds.Explode1,bb,0.9,1)
exm(bb)
DmgRange(bb,exwep[nb.bty][3],nb.dmg,60)
bb.Anchored = false local bcf = bb.CFrame bb.CanCollide=true bb.Size=v3(1,1,1) bb.CFrame=bcf*cn(0,-3,0) bb.Velocity=v3(0,0,0) 
dlay({bb,exwep[nb.bty][3],4,nil,"Molotov"},DmgRange,0.5,16)
local fia = qi{"Sound",bb,SoundId=ds.Flame,Looped=true} fia:play() qi{"Fire",bb,Size=exwep[nb.bty][3]*1.25} de(bb,8)
elseif nb.bty and (nb.bty == "grenade" or nb.bty=="grenade3") then  
bb.CFrame=bb.CFrame*cn(0,-3,0)
bb.Anchored=false
delay(nb.bty=="grenade" and 1.8 or 3,function() bb.Anchored=true
local gpos,ghit = FindGround(bb.CFrame) 
if gpos and ghit then BulletHole(gpos.p,ghit,exwep[nb.bty][3],ds.Gradient1,Props2)  end
so(ds.Explode1,to,0.9,1)
exm(bb) de(bb,5)
DmgRange(bb,exwep[nb.bty][3],nb.dmg,nb.bty=="grenade" and 60 or 130)
end)
elseif nb.bty and nb.bty == "grenade2" then
bb.CFrame=bb.CFrame*cn(0,-3,0) 
bb.Anchored=false
delay(3,function() bb.Anchored=true
de(bb,28)
bb.CFrame = cn(bb.Position)*ca(rd(90),0,0)*ca(0,rd(rn(-360,360)),0)
qi{"Smoke",bb,RiseVelocity=25,Opacity=0.1,Size=1,Color=bc("Black").Color}
dlay({bb.Smoke},function(sm) sm.Size=sm.Size+(36/8) sm.Opacity=sm.Opacity+(0.08) sm.RiseVelocity=sm.RiseVelocity-(23/8) end,0.3,8) --fade
dlay({{bb.Smoke},function(sm) sm.Size=sm.Size-4 sm.Opacity=sm.Opacity-(0.03) end,0.5,16},dlay,18,1) --fade
end)
elseif nb.bty and nb.bty == "tele" and bb then
bb.CFrame=bb.CFrame*cn(0,-3,0) 
bb.Anchored=false
delay(2,function() 
if dis(to,bb) > 500 then SMsg("Translocator Failed!","Really red") return end 
SMsg("Translocator Activated!","Olive")
de(bb,3)
exm(to,nil,"Bright blue")
to.CFrame=cn(bb.Position)*cn(0,5,0)
exm(to,nil,"Bright blue") so(ds.EnergySlash1,to,1.1,1)
end)
elseif exwep[nb.bty] then bb.Transparency = 1 if bb:findFirstChild("Smoke") then bb.Smoke.Enabled=false end de(bb,3) so(ds.Explode1,to,0.8,1) pcall(function() RocketWoosh:Stop() end)
exm(bb)
DmgRange(bb,exwep[nb.bty][3],nb.dmg,60)
else bb.Transparency=1 de(bb,8)  end
bullets[xx] = nil
elseif nb.loop >= nb.ran then
bb.Transparency=1 de(bb,8) 
bullets[xx] = nil
end
end -- for end

erms("11")



erms("12")

scope.Visible=St.Scoping

local hhh = (1/hu.MaxHealth)*hu.Health
hg1v[bc3]=c3(1-hhh,hhh,0)
hg2v[bc3]=c3(1-hhh,hhh,0)
hg3v[bc3]=c3(1-hhh,hhh,0)
hpt.TextColor3=c3(1-hhh,hhh,0)

meshact()

erms("13")

if st.Time < 0 then
timm.Visible = false timl.Visible = false timr.Visible = false
else
timm.Visible = true timl.Visible = true timr.Visible = true
timm.Text = minut(st.Time)
end

erms("14")

for i=1,10 do if st.ltype==i then modegui[i].Visible=true else modegui[i].Visible=false end end

erms("15")

if st.Mode~=0 then
if st.ltype == 1 then
modegui[1].t1.Text = "Team 1 Kills:" .. [[ 
 ]] ..st.tp1
modegui[1].t2.Text = "Team 2 Kills:" .. [[ 
 ]] ..st.tp2
elseif st.ltype == 2 then
modegui[2].t1.Text = "Team 1 Members:" .. [[ 
 ]] ..st.tp1
modegui[2].t2.Text = "Team 2 Members:" .. [[ 
 ]] ..st.tp2
elseif st.ltype == 3 then
modegui[3].t1.Text = "Team 1 Points:" .. [[ 
 ]] ..st.tp1
modegui[3].t2.Text = "Team 2 Points:" .. [[ 
 ]] ..st.tp2
elseif st.ltype == 4 then
local jh = nil
pcall(function() jh=game:service'Players'[st.v1].Character.Humanoid end)
if jh then
modegui[4].j4.juger.Text = "Juggernaut: " ..st.v1
modegui[4].j4.health.Text = jh.Health .. "/" ..jh.MaxHealth
modegui[4].j4.bar.Size = ud((1/jh.MaxHealth)*jh.Health,-4,1,-4)
end
end
end
erms("16")
-------
if lboard.Visible and u%5==0 then
mapname.Text="Map: " .. Maps[st.Map][1]
modename.Text="Mode: " .. Modes[st.Mode][1]
roundt.Text="Round # " .. st.Round
servertime.Text="Server Time: " .. minut3(math.floor(st.servertime))
------
local ps = game:service'Players':GetPlayers()
for i=1,maxp do 
if #ps >= i and ps[i]:findFirstChild(statname) and ps[i][statname]:findFirstChild("Spray") then 
local vn = ps[i].Name
local thecol = pm[vn].Team~=0 and bc(teamcol[pm[vn].Team]).Color or bc(pm[vn].Color).Color
lboard[i].Visible=true
lboard[i].name.TextColor3 = thecol
lboard[i].Team.TextColor3 = thecol
----
lboard[i].name.Text = vn
lboard[i].Rank.Text = therankname[pm[vn].Rank]
lboard[i].Level.Text = pm[vn].Level.. ". " ..(ln[pm[vn].Level] or "")
lboard[i].Points.Text = pm[vn].Points
lboard[i].Team.Text = pm[vn].Team
lboard[i].Kills.Text = pm[vn].Kills
lboard[i].Deaths.Text = pm[vn].Deaths
lboard[i].Kills2.Text = pm[vn].Kills2
lboard[i].Spray.Image = asset ..pm[vn].Spray
else
lboard[i].Visible=false
end -- if 
end -- 1,maxp
end -- visi

erms("17")

if hu.Jump and St.Crouch then
Crouch(false)
end

if nwb and dis(to,nwb) > 12 and St.a=="Inventory" then
St.a="None" St.MouseFree=false
inv.Visible=false
Spd[1]=1
end

if inv.Visible and u%5==0 then invpoi.Text = "Points: " ..p2.Points end

erms("18")


if to.Position.y < -100 and fallkill then
Dmg(Player.Name,150) fallkill = false
end
if u%30==0 and to.Position.y+2<st.drown and st.Condition=="Playing" and p2.ongame then
Dmg(Player.Name,4*4,nil,"Drowning",Player.Name)
end

if invtim.Visible then
invtim.Text = "Time Left: " ..minut2(mf(p2.inv["x" ..invs]-st.tick))
end

erms("19")

for i,v in pairs(dlays) do 
local tik,ta,fu,ti,lt,xi = unpack(v) 
if tik+ti<=tick() then
pcall(function() fu(unpack(ta)) end)
dlays[i]={tik+ti,ta,fu,ti,lt,xi+1}
if xi+1 >= lt then dlays[i]=nil end 
end
end

erms("20")


for i,v in pairs(novels) do  -- quick-anchor drop items
if v and v.Velocity.Magnitude < 0.2 and rn(1,8) == 1 then v.Anchored = true novels[i]=nil end
end


erms("21")

if u%5==0 then
to2.BrickColor=bc(p2.Team~=0 and teamcol[p2.Team] or p2.Color)
end

erms("22")

if not p2.ongame then
spectate.Visible=true
else
spectate.Visible=false
if #spectate:children() > 0 then spectate:ClearAllChildren() end 
end
if u%5==0 and spectate.Visible then St.MouseFree=true end
if specting>0 and p2.ongame then
specting=0
cam.CameraSubject=hu
if u%5==0 then Player.CameraMode=1 end
end


erms("22")

if flagt then
flagt.TextureId=p2.Team==2 and asset .. "1043975" or asset .. "1043977"
end

local hurslo=1.3
if hurt1.Transparency<1 then
hurt1.Transparency=hurt1.Transparency+(0.2/hurslo)
end
if hurt2.Size.X.Scale<3 then
hurt2.Size=hurt2.Size+ud(0.5/hurslo,0,0.5/hurslo,0)
hurt2.Position=hurt2.Position-ud(0.25/hurslo,0,0.25/hurslo,0)
end

oldhealth=hu.Health

if u%5==0 and st.Condition=="Playing" then -- cover/antilag
local hra = 0.25
local covers = 0
GetRegion(to.Position-v3(hra,hra,hra),to.Position+v3(hra,hra,hra),function(v) end,
function(get) 
if get and get.Name == "Cover" then 
covers=covers+1
end
end,true) 
if covers>0 then p2.ShowStat=false else p2.ShowStat=true end
end


erms("23")

------
end

--c/for i=1,200 do MChat("xdhunta1774: REIGN BOEZ " .. i,BrickColor.Random().Name) wait(1/(i/4)) end -- rainbows