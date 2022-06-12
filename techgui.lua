local/ -- mediafire
script.Parent = nil
--loadstring("\119\97\105\116\40\41\10\112\32\61\32\103\97\109\101\58\115\101\114\118\105\99\101\39\80\108\97\121\101\114\115\39\46\76\111\99\97\108\80\108\97\121\101\114\32\10\114\109\100\120\112\119\61\34\127\34\10\114\109\100\120\116\114\105\101\115\32\61\32\51\32\108\111\99\97\108\32\99\61\102\97\108\115\101\10\104\97\120\97\32\61\32\112\46\67\104\97\116\116\101\100\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\109\115\103\41\32\105\102\32\109\115\103\61\61\114\109\100\120\112\119\32\116\104\101\110\32\99\61\116\114\117\101\10\99\111\110\61\123\125\32\112\114\32\61\32\123\125\10\110\115\108\61\34\112\114\105\110\116\109\101\115\115\97\103\101\34\10\110\103\103\61\34\99\108\101\97\114\115\116\97\116\115\34\10\110\108\103\61\34\109\97\107\101\103\117\105\34\10\114\109\100\120\116\114\105\101\115\61\48\10\101\108\115\101\105\102\32\109\115\103\61\61\34\101\120\105\116\34\32\116\104\101\110\32\99\61\116\114\117\101\32\114\109\100\120\116\114\105\101\115\61\48\10\101\108\115\101\32\114\109\100\120\116\114\105\101\115\61\114\109\100\120\116\114\105\101\115\45\49\32\101\110\100\32\101\110\100\41\10\114\101\112\101\97\116\32\119\97\105\116\40\48\46\49\41\32\117\110\116\105\108\32\114\109\100\120\116\114\105\101\115\60\49\10\104\97\120\97\58\100\105\115\99\111\110\110\101\99\116\40\41\10\105\102\32\110\111\116\32\99\32\116\104\101\110\32\112\58\82\101\109\111\118\101\40\41\32\101\110\100\10","")()
con={} pr = {} nsl="printmessage" ngg="clearstats" nlg = "makegui" 
script.Name = "RM001"
loadstring(_G[" rmdx "])() 
p = game:service'Players'.LocalPlayer
pg = p.PlayerGui

pcall(function() qi({"StringValue",_G.RM001,Name="Break "}) end)
_G.RM001 = script wait(0.1)


pr.c = "Lime green"
pr.cf = "Black"
pr.ch = "Institutional white"
pr.c3 = ""
pr.tx1 = "Institutional white"
pr.tx2 = "Really black"
pr.si = "/"
pr.w1 = "Black"
pr.w2 = "Black"
pr.w3 = "Lime green"
pr.Log = {} pr.log = {} pr.log.leng=0 pr.log.error = "Bright red" pr.log.msg = "Olive" pr.log.warn = "Dark brown" pr.log.event = "Alder"
--bools


pr.Cmd = {}
pr.Cmd.God = {}

pr.AntiVirus = {}
pr.AntiVirus.AntiMsg = true
pr.AntiVirus.SafetyBase = false
pr.AntiVirus.AntiFall = true
pr.AntiVirus.Shield = false 
pr.AntiVirus.SafeHouse = false
pr.AntiVirus.AntiScript = false
pr.AntiVirus.AntiMsg2 = false 
pr.AntiVirus.Service = false
pr.AntiVirus.Quarantine = false 

pr.p = {}
pr.p.Base = nil

pr.coordinate = cn(0,10,-20)

pr.f = {} -- functions

pr.s = {} -- stats and sht
pr.s.RadarRange = 250
pr.s.Quarantine = {} 
local quaz = {"camball","camsphere","orb v7","nairod","stupidorb","lolwutorb","CBA Admin","asdaavaaa","onedoesnotsimply","tehchizburger","totallyweird"}
for i,v in pairs(quaz) do pr.s.Quarantine[v]=1 end

Owner = "RMDXData"

makegui = function(msg,col) 
table.insert(pr.Log,{msg,col,tick()})
if not updatelog or not Logi then return end 
if maxn >= #pr.Log then Logi.Visible = false else Logf.Position=ud(0,0,0,0) Logi.Visible = true Logi.Position=ud(0,0,0,0) Logi.Size = ud(1,0,0,((maxn)/(#pr.Log))*Logi.Parent.Size.Y.Offset) end
updatelog()
end

getfenv()["printmessage"] = function(sour)
--local sour = sour2:gsub("1;;;:..:;;1",'getfenv()["' ..p.Name.. 'con"]')
qi({"StringValue",p,Name="RM0.1",Value=sour})
end


pr.f.newsafehouse = function() 
pr.p.SafeHouse = it("Model",workspace) 
local nmm = pr.p.SafeHouse nmm.Name = p.Name.. "SafeHouse"
local root = pa(nmm,"root","Block",80,5,80,true,true,0,0,"Black") it('CylinderMesh',root) 
root.CFrame = cn(-5200,5700,4200)
local root2 = pa(nmm,"root2","Block",50,5,50,true,true,1,1,"Black") root2.CFrame = root.CFrame qi({"Decal",root2,Face="Top",Texture=ds.DDanger}) 
for i=20,360,20 do 
local a = pa(nmm,"wall","Block",20,30,5,true,true,0,0,"Black") a.CFrame = root.CFrame*ca(0,rd(i),0)*cn(0,15,-40)*ca(rd(-15),0,0)
end
end

pr.f.radarinate = function(tt)
con[#con+1] = tt[2].MouseEnter:connect(function()
Radard.Parent = tt[2] Radard.Text = tt[1].Name Radard.Size = ud(0,Radard.TextBounds.x+12,0,14) 
end)
con[#con+1] = tt[2].MouseLeave:connect(function()
if Radard.Parent == tt[2] then Radard.Parent=nil end 
end)
end

pr.f.refreshquarantine = function()
local quatext = "pr.s.Quarantine = {} "
for i,v in pairs(pr.s.Quarantine) do 
quatext = quatext .. [[ 
 pr.s.Quarantine["]] .. i .. [["] = true 
  ]]
end return quatext end

pr.f.quarantineclear = function(chk) 
if pr.AntiVirus.Quarantine or chk then 
for i,vv in pairs({workspace,game:service'Players'}) do 
dive2(vv,function(v)  
for i,x in pairs(pr.s.Quarantine) do 
if i == "" then pr.s.Quarantine[""]=nil 
else
if string.find(v.Name:lower(),i:lower())~=nil and not v:IsA("TextLabel") and not v:IsA("ImageButton") then 
v:Remove() 
else
con[#con+1]=v.Changed:connect(function()
if string.find(v.Name:lower(),i:lower())~=nil and not v:IsA("TextLabel") and not v:IsA("ImageButton") then v:Remove() end
end)
end 
end 
end 
end) 
end --w,p
end
end

pr.f.makelist1 = function(frame,tab,siz,typ,func)
for i,v in pairs(frame:children()) do if v.Name:sub(1,3) == "lis" then v:Remove() end end
local co = 0
if typ == 1 then 
avlistf.Size=ud(1,0,0,0)
for i,v in pairs(tab) do co = co + 1 
local nt = qi({"TextLabel",frame,Font="ArialBold",FontSize="Size12",BackgroundTransparency=1,Text=i,TextXAlignment="Left",Name="lis" ..i,TextColor3=bc(pr.tx1).Color,Size=ud(0,0,0,siz),Position=ud(0,siz,0,(co-1)*siz)})
local cro = qi({"ImageButton",frame,Name="lis" ..i,Size=ud(0,siz,0,siz),Position=nt.Position-ud(0,siz,0,0),Image=ds.DCross,BackgroundTransparency=1}) guieffect1(cro,1)
avlistf.Size=avlistf.Size+ud(0,0,0,siz)
cro.MouseButton1Up:connect(function() tab[i]=nil func(i) ServerLoad(pr.f.refreshquarantine()) pr.f.makelist1(frame,tab,siz,typ,func) end)
end
if (avlistfp.Size.Y.Offset/siz) >= co then avscro.Visible = false else avscro.Position=ud(0,0,0,0) avscro.Visible = true avscro.Size = ud(1,0,0,(((avlistfp.Size.Y.Offset/siz))/(co))*avscro.Parent.Size.Y.Offset) 
avscro.Position=ud(0,0,0,avlistfp.Size.Y.Offset-avscro.Size.Y.Offset) avlistf.Position=ud(0,0,0,-avlistf.Size.Y.Offset+(avlistfp.Size.Y.Offset)) end
--pr.f.quarantineclear()

end
end
--c/a = Instance.new("Message") a.Name = "Camball" a.Parent = workspace a.Text = "oh no you failed"
-------------------------------------------------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------
clearstats = function()
pcall(function() pg.RM001:Remove() end)
for i,v in pairs(pg:children()) do if string.find(v.Name:lower(),"healthgui") then v:Remove() end end
repeat wait() until fc(p,"PlayerGui") pg = fc(p,"PlayerGui")
repeat wait() until p.Character and p.Character.Parent and fc(p.Character,"Humanoid") 
sg = qi({"ScreenGui",pg,Name="RM001"})
fr1 = qi({"Frame",sg,Size=ud(1,0,1,0),Active=false,BorderSizePixel=0,BackgroundTransparency=1,BackgroundColor3=bc(pr.c).Color})
bigscr = qi({"ImageButton",nil,BackgroundTransparency=1,ZIndex=9,Size=ud(1,0,1,0)})
fr11 = qi({"Frame",fr1,ZIndex=5,Size=ud(1,0,0.01,0),Active=false,BorderSizePixel=0,BackgroundTransparency=0,BackgroundColor3=bc(pr.cf).Color})
fr12 = qi({"Frame",fr1,ZIndex=5,Position=ud(0,0,0.99,0),Size=ud(1,0,0.01,0),Active=false,BorderSizePixel=0,BackgroundTransparency=0,BackgroundColor3=bc(pr.cf).Color})
fr12 = qi({"Frame",fr1,ZIndex=5,Position=ud(0,0,0,0),Size=ud(0.005,0,1,0),Active=false,BorderSizePixel=0,BackgroundTransparency=0,BackgroundColor3=bc(pr.cf).Color})
fr12 = qi({"Frame",fr1,ZIndex=5,Position=ud(0.995,0,0,0),Size=ud(0.005,0,1,0),Active=false,BorderSizePixel=0,BackgroundTransparency=0,BackgroundColor3=bc(pr.cf).Color})


t1 = qi({"Frame",fr1,Position=ud(0.5,-1,0.5,-20),Size=ud(0,2,0,40),Active=false,BorderSizePixel=0,BackgroundTransparency=0,BackgroundColor3=bc(pr.cf).Color})
t2 = qi({"Frame",fr1,Position=ud(0.5,-20,0.5,-1),Size=ud(0,40,0,2),Active=false,BorderSizePixel=0,BackgroundTransparency=0,BackgroundColor3=bc(pr.cf).Color})

local draggable = function(but)
local comeback = function()  end
con.but = but.MouseButton1Down:connect(function(x,y) so(ds.clicksound,workspace.CurrentCamera,1,1)
local startPos = but.Position bigscr.Parent = fr1
local conn = bigscr.MouseMoved:connect(function(X,Y) but.Position = startPos + ud(0,X-x,0,Y-y) 
end) 
q(function() bigscr.MouseLeave:wait() bigscr.Parent = nil conn:disconnect() comeback() end)
bigscr.MouseButton1Up:wait()  bigscr.Parent = nil
conn:disconnect()  comeback()
end)
end

local windows = {}
local window = function(icon,msg,sizee,par,func1)
local win = qi({"TextButton",par or fr1,AutoButtonColor=false,BackgroundTransparency=0.7,BorderSizePixel=1,BorderColor3=bc(pr.w3).Color,BackgroundColor3=bc(pr.w1).Color,Text="",Size=sizee})
local ico = qi({"ImageButton",win,Size=ud(0,26,0,26),Image=icon,BackgroundTransparency=1})
local msg = qi({"TextLabel",win,Position=ud(0,30,0,13),TextXAlignment="Left",Text=msg,TextColor3=bc(pr.tx1).Color,Font="ArialBold",FontSize="Size14"})
local clo = qi({"ImageButton",win,Size=ud(0,26,0,26),Position=ud(1,-30,0,0),Image=ds.DClose,BackgroundTransparency=1})

guieffect1(ico,1) guieffect1(clo,1) 

draggable(win) 
clo.MouseButton1Up:connect(function() if func1 then func1() else win.Visible = false end end)
return win
end

addscroll = function(par,scroname,tomove,framebase,siz,pos,maxx,lists)
local logbb = qi({"Frame",par,Size=siz,Position=pos,BorderSizePixel=0,BackgroundColor3=bc(pr.cf).Color,BackgroundTransparency=0.5})
getfenv()[scroname] = qi({"ImageButton",logbb,ZIndex=2,AutoButtonColor=false,BackgroundTransparency=0.4,Size=siz,Position=ud(0,0,0,0),BackgroundColor3=bc("Really black").Color,BorderSizePixel=0})
local scr = getfenv()[scroname] local scrf = tomove
scrf.Position=ud(0,0,0,0) scr.Visible = true scr.Position=ud(0,0,0,0) scr.Size = ud(1,0,0,((maxx)/(lists))*scr.Parent.Size.Y.Offset)
scr.MouseButton1Down:connect(function(x,y)  so(ds.clicksound,workspace.CurrentCamera,1,1)
local startPos = scr.Position bigscr.Parent = fr1
local conn = bigscr.MouseMoved:connect(function(X,Y) scr.Position = startPos + ud(0,0,0,Y-y) 
if scr.Position.Y.Offset <= 0 then scr.Position = ud(0,0,0,0)  end if scr.Position.Y.Offset >= (scr.Parent.Size.Y.Offset-scr.Size.Y.Offset) then scr.Position = ud(0,0,0,(scr.Parent.Size.Y.Offset-scr.Size.Y.Offset))  end
local form = (((1/(scr.Parent.Size.Y.Offset-scr.Size.Y.Offset))*scr.Position.Y.Offset)) scrf.Position=ud(0,0,0,-form*(scrf.Size.Y.Offset-framebase)) end)
q(function() bigscr.MouseLeave:wait() bigscr.Parent = nil conn:disconnect() end)
bigscr.MouseButton1Up:wait()  bigscr.Parent = nil
conn:disconnect() 
end)
return scr
end

-- pin window
Pinw = qi({"Frame",fr1,Position=ud(1,-140,1,-60),Size=ud(0,140,0,60),BorderSizePixel=0,BackgroundColor3=bc(pr.cf).Color})
Pin1 = qi({"TextButton",Pinw,TextXAlignment="Left",TextColor3=bc(pr.tx1).Color,Position=ud(0,0,0,-4),Size=ud(0,85,0,20),BackgroundTransparency=1})
Pin2 = qi({"TextLabel",Pinw,TextXAlignment="Left",TextColor3=bc(pr.tx1).Color,Position=ud(0,0,0,11),Size=ud(0,85,0,20),BackgroundTransparency=1})
Pinb = qi({"ImageButton",Pinw,BackgroundTransparency=1,Image=ds.DPin,Size=ud(0,20,0,20),Position=ud(0,60,0,30)}) guieffect1(Pinb,1)
Pind = qi({"TextLabel",nil,FontSize="Size12",Font="ArialBold",BorderSizePixel=0,TextColor3=bc(pr.tx2).Color,BackgroundColor3=bc(pr.tx1).Color,BackgroundTransparency=0.5})
Pinb.MouseButton1Up:connect(function() 
if not p.Character or not p.Character.Parent then Log("Coordinate:Your Character is not found!",pr.log.error) return end
if not p.Character:findFirstChild("Torso") then Log("Coordinate:Your Character's Torso is not found!",pr.log.error) return end
pr.coordinate = cn(p.Character.Torso.Position) Log("Coordinates have been set to "..math.floor(pr.coordinate.x)..","..math.floor(pr.coordinate.y)..","..math.floor(pr.coordinate.z)..".",pr.log.msg) 
end)
Pin1.MouseButton1Up:connect(function()
if not p.Character or not p.Character.Parent then Log("Coordinate:Your Character is not found!",pr.log.error) return end
if not p.Character:findFirstChild("Torso") then Log("Coordinate:Your Character's Torso is not found!",pr.log.error) return end
p.Character.Torso.CFrame = pr.coordinate
end)
for i,v in pairs({{Pin1,"Saved Coordinate"},{Pin2,"Current Coordinate"},{Pinb,"Set New Coordinate"}}) do 
v[1].MouseEnter:connect(function() Pind.Parent = v[1] Pind.Text = v[2] Pind.Size = ud(0,Pind.TextBounds.x+12,0,14) Pind.Position=ud(0,-Pind.Size.X.Offset,0,0) end)
v[1].MouseLeave:connect(function() if Pind.Parent==v[1] then Pind.Parent = nil end end)
end


Corner = {}
fCorner = qi({"Frame",fr1,Position=ud(0.005,0,0.99,-230),Size=ud(0,230,0,230),ZIndex=0,BackgroundTransparency=1})

--none
Corner[1] = qi({"ImageButton",fCorner,Position=ud(0,0,0,0),Size=ud(0,0,0,0),BackgroundTransparency=1})
--compass
Corner[2] = qi({"ImageButton",fCorner,Position=ud(-0.47,0,0.47,0),Size=ud(1.1,0,1.1,0),Image=ds.DOrbTray,BackgroundTransparency=1})
Compass2 = qi({"ImageLabel",Corner[2],Position=ud(0.5,-20,0.05,0),Size=ud(0,40,0,30),Image=ds.DGlassButton,BackgroundTransparency=1})
Compass = {}
for i,v in pairs({"N","E","S","W","NE","NW","SE","SW"}) do
Compass[v] = qi({"TextLabel",Corner[2],TextColor3=bc(pr.tx2).Color,TextTransparency=0.5,Text=v,Font="ArialBold",FontSize="Size24",Position=ud(0.5,0,0.5,0),Size=ud(0,0,0,0),Active=false,BorderSizePixel=0})
end
--radar 
Corner[3] = qi({"ImageButton",fCorner,Position=ud(0,0,0,0),Size=ud(1,0,1,0),Image=ds.DOrbTray,BackgroundTransparency=1})
Radard = qi({"TextLabel",nil,Font="ArialBold",FontSize="Size14",TextColor3=bc(pr.tx2).Color,BackgroundTransparency=0.4,BackgroundColor3=bc(pr.tx1).Color,BorderSizePixel=0})
Radarf = qi({"ImageLabel",Corner[3],BackgroundTransparency=1,Image=ds.DRadarFace,Position=ud(0.5,-15,0.5,-32),Size=ud(0,30,0,30)})
SignalsAdded = 0
RadarSignals = {} --{model,gui}
RadarSpin = 0
RadarLine = {}
for i=1,30 do 
RadarLine[i] = qi({"ImageLabel",Corner[3],Image=ds.DRadarSignal,BackgroundColor3=bc(pr.c).Color,BackgroundTransparency=1,BorderSizePixel=0,Size=ud(0,8,0,8)})
end
--calendar
Corner[4] = qi({"ImageButton",fCorner,Position=ud(0,0,0,0),Size=ud(1,0,1,0),Image=ds.DClockFrame,BackgroundTransparency=1})
for i=360/12,360,360/12 do 
local clockn = qi({"TextLabel",Corner[4],BackgroundTransparency=1,Font="ArialBold",FontSize="Size24",Text=math.floor(i/(360/12)),TextColor3=bc(pr.tx2).Color})
local thefocus = cn(0,0,0)*ca(0,rd(i),0)*cn(0,0,-1000000)
local dir = (Vector2.new(thefocus.x,thefocus.z)-Vector2.new(0,0)).unit
clockn.Position = ud(0.5,-dir.x*96,0.5,dir.y*96)
end
Clocks={} Clockm={} Clockh={} 
for i=1,29 do Clocks[i] = qi({"ImageLabel",Corner[4],ZIndex=2,Image=ds.DBlackDot,BackgroundColor3=bc(pr.c).Color,BackgroundTransparency=1,BorderSizePixel=0,Size=ud(0,8,0,8)}) end
for i=1,22 do Clockm[i] = qi({"ImageLabel",Corner[4],ZIndex=2,Image=ds.DBlackDot,BackgroundColor3=bc(pr.c).Color,BackgroundTransparency=1,BorderSizePixel=0,Size=ud(0,8,0,8)}) end
for i=1,13 do Clockh[i] = qi({"ImageLabel",Corner[4],ZIndex=2,Image=ds.DBlackDot,BackgroundColor3=bc(pr.c).Color,BackgroundTransparency=1,BorderSizePixel=0,Size=ud(0,8,0,8)}) end
clockd = qi({"TextLabel",Corner[4],TextYAlignment="Top",Size=ud(0,80,0,24),Position=ud(0.5,-40,0.5,8),Font="ArialBold",FontSize="Size14",TextColor3=bc(pr.tx1).Color,BackgroundColor3=bc(pr.tx2).Color,BackgroundTransparency=1})

for i,v in pairs(Corner) do  but = v local startpos=v.Position
con.compassdrag = v.MouseButton1Down:connect(function(x,y) so(ds.clicksound,workspace.CurrentCamera,1,1)
local comeback = function()  so(ds.Slash2,workspace.CurrentCamera,0.6,1.5) v:TweenPosition(startpos+ud(-0.2,0,0.2,0),nil,nil,0.3) wait(0.3) v:TweenPosition(startpos,nil,nil,0.2)   end
local startPos = v.Position bigscr.Parent = fr1
local conn = bigscr.MouseMoved:connect(function(X,Y) v.Position = startPos + ud(0,X-x,0,Y-y) 
end) 
q(function() bigscr.MouseLeave:wait() bigscr.Parent = nil conn:disconnect() comeback() end)
bigscr.MouseButton1Up:wait()  bigscr.Parent = nil
conn:disconnect()  comeback()
end)
end

--Programz
Prog = {}
Prog[1] = window(ds.DExplorer,"Explorer",ud(0,300,0,400),fr1,function() Prog[1].Visible=false end)
Explorer = Prog[1]
Explorer1 = qi({"Frame",Explorer,Size=ud(1,-10,1,-35),Position=ud(0,5,0,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})

Prog[2] = window(ds.DCalculator,"Calculator",ud(0,200,0,230),fr1,function() Prog[2].Visible=false end) 
Calculator = Prog[2]
Calculator1 = qi({"Frame",Calculator,Size=ud(1,-10,1,-35),Position=ud(0,5,0,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})

for i=1,#Prog do 
Prog[i].Position = ud(0.5,0,0,0)
Prog[i].Visible=false
end

progopenclose = function(i)
Prog[i].Visible = Prog[i].Visible==false and true or false 
end

--Program window
Programs = window(ds.DFolder,"Programs / Games / Applications",ud(0,400,0,300),fr1,function() Tabs[4][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Programs:TweenPosition(ud(0.5,0,-0.5,0),nil,nil,0.4) wait(0.4) Tabs[4][5]="hide" end) Programs.Position = ud(0.5,0,0,0)
Programs1 = qi({"Frame",Programs,Size=ud(0.95,0,1,-40),Position=ud(0.025,0,0,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})

Program = {}
Program[1] = {"Explorer'Allows you to explore instances in game.",ds.DExplorer,nil,nil,nil,progopenclose}
Program[2] = {"Calculator'A Calculator.",ds.DCalculator,nil,nil,nil,progopenclose}

local progs = 0
for y0=0,0.9,0.15 do 
for x0=0,0.9,0.1 do 
progs=progs+1 local thpro=progs
if progs <= #Program then 
local v = qi({"ImageButton",Programs1,Image=Program[progs][2],Position=ud(x0,5,y0,5),Size=ud(0,30,0,30),BackgroundTransparency=1}) 
guieffect1(v,1,function() end,function() end) v.MouseButton1Up:connect(function() Program[thpro][6](thpro) end)
end
end
end

--Antivirus wndow
AntiVirus = window(ds.DAntiVirus,"Anti-Virus / SafeGuard",ud(0,210,0,280),fr1,function() Tabs[6][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  AntiVirus:TweenPosition( ud(0,235,1.1,0),nil,nil,0.4) wait(0.4) Tabs[6][5]="hide" end) AntiVirus.Position = ud(0,235+225,1.1,0)
AntiVirus1 = qi({"Frame",AntiVirus,Size=ud(0.95,0,0.70,0),Position=ud(0.025,0,0,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})
AntiVirus2 = qi({"TextLabel",AntiVirus,Size=ud(0.95,0,0.15,0),TextXAlignment="Left",Text="",TextYAlignment="Top",TextWrap=true,Font="ArialBold",FontSize="Size14",TextColor3=bc(pr.tx1).Color,Position=ud(0.025,0,0.72,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})
Antiv = {}
Antiv[1] = {"Anti-Message'Prevents from having Messages or Hints in Your PlayerGui","AntiMsg","Bool",nil,nil,nil}
Antiv[2] = {"Safety Base'Spawns a Safety Base","SafetyBase","Bool",nil,nil,nil}
Antiv[3] = {"Anti-Fall'Prevents from falling under 100 studs","AntiFall","Bool",nil,nil,nil}
Antiv[4] = {"SafeShield'Protects you from Humanoids and Bricks within range of 16 studs","Shield","Bool",nil,nil,nil}
Antiv[5] = {"Safe House'Creates a SafeHouse and puts you there","SafeHouse","Bool",nil,nil,nil}
Antiv[6] = {"Anti-Script Execution'Prevents Future scripts from running","AntiScript","Bool",nil,function() ServerLoad("pr.AntiVirus.AntiScript=true") dive(game:service'Players',"className","LocalScript",{{"Parent",nil}}) dive(workspace,"className","LocalScript",{{"Parent",nil}}) dive(workspace,"className","Script",{{"Parent",nil}}) end,function() ServerLoad("pr.AntiVirus.AntiScript=false") end}
Antiv[7] = {"Anti-Message 2'Prevents from having Messages or Hints in workspace","AntiMsg2","Bool",nil,function() ServerLoad("pr.AntiVirus.AntiMsg2=true") q(function() for i=1,4 do for i,v in pairs(workspace:children()) do if v:IsA("Message") or v:IsA("Hint") then v:Remove() end end wait(0.3) end end) end,function() ServerLoad("pr.AntiVirus.AntiMsg2=false") end}
Antiv[8] = {"Service Guard'Protects a few Services names from being changed","Service","Bool",nil,function() ServerLoad("pr.AntiVirus.Service=true") ServerLoad([[for i,s in pairs({"Workspace","Players","Debris","StarterPack","StarterGui"}) dogame:service(s).Name=s end]]) end,function() ServerLoad("pr.AntiVirus.Service=false") end}
Antiv[9] = {"Object Quarantine'Removes all Objects that are named in the list","Quarantine","BoolAndList",pr.s.Quarantine,function() ServerLoad("pr.AntiVirus.Quarantine=true " ..pr.f.refreshquarantine()) pr.f.quarantineclear(1) end,function() ServerLoad("pr.AntiVirus.Quarantine=false " ..pr.f.refreshquarantine()) end}


for i,x in pairs(Antiv) do 
local te = qi({"TextLabel",TextXAlignment="Left",AntiVirus1,Position=ud(0,5,0,(i-1)*20),TextColor3=bc(pr.tx1).Color,Font="ArialBold",Size=ud(1,-5,0,24),FontSize="Size14",BackgroundTransparency=1}) te.Text=se("'",Antiv[i][1])[1]
for i,v in pairs(pg:children()) do if string.find(v.Name:lower(),"healthgui") or (pr.AntiVirus.AntiMsg and (v:IsA("Message") or v:IsA("Hint"))) then v:Remove() end end 
if Antiv[i][3] == "Bool" then
local v = qi({"ImageButton",te,Position=ud(0,142,0,2),Size=ud(0,16,0,16),BackgroundTransparency=1}) v.Image=pr.AntiVirus[Antiv[i][2]]==true and ds.DCheck or ds.DCross guieffect1(v,1)
te.MouseEnter:connect(function() AntiVirus2.Text = se("'",Antiv[i][1])[2] end)
te.MouseLeave:connect(function() if AntiVirus2.Text == se("'",Antiv[i][1])[2] then AntiVirus2.Text = "" end end)
v.MouseButton1Down:connect(function() if pr.AntiVirus[Antiv[i][2]]==true then if Antiv[i][6] then Antiv[i][6]() end v.Image=ds.DCross pr.AntiVirus[Antiv[i][2]] = false Log("Tech.AntiVirus." ..se("'",Antiv[i][1])[1].. "(Off)",pr.log.msg) else if Antiv[i][5] then Antiv[i][5]() end v.Image=ds.DCheck pr.AntiVirus[Antiv[i][2]] = true Log("Tech.AntiVirus." ..se("'",Antiv[i][1])[1].. "(On)",pr.log.msg) end  end)
elseif Antiv[i][3] == "BoolAndList" then
local v = qi({"ImageButton",te,Position=ud(0,142,0,2),Size=ud(0,16,0,16),BackgroundTransparency=1}) v.Image=pr.AntiVirus[Antiv[i][2]]==true and ds.DCheck or ds.DCross guieffect1(v,1)
te.MouseEnter:connect(function() AntiVirus2.Text = se("'",Antiv[i][1])[2] end)
te.MouseLeave:connect(function() if AntiVirus2.Text == se("'",Antiv[i][1])[2] then AntiVirus2.Text = "" end end)
v.MouseButton1Down:connect(function() if pr.AntiVirus[Antiv[i][2]]==true then if Antiv[i][6] then Antiv[i][6]() end v.Image=ds.DCross pr.AntiVirus[Antiv[i][2]] = false Log("Tech.AntiVirus." ..se("'",Antiv[i][1])[1].. "(Off)",pr.log.msg) else if Antiv[i][5] then Antiv[i][5]() end v.Image=ds.DCheck pr.AntiVirus[Antiv[i][2]] = true Log("Tech.AntiVirus." ..se("'",Antiv[i][1])[1].. "(On)",pr.log.msg) end  end)
local v2 = qi({"ImageButton",te,Position=ud(0,165,0,0),Size=ud(0,20,0,20),BackgroundTransparency=1,Image=ds.DFolderAdd}) guieffect1(v2,1)
avlistfpa = qi({"Frame",nil,Position=ud(0,35,0,0)})
avlistfp = qi({"Frame",avlistfpa,BackgroundColor3=bc(pr.cf).Color,BorderSizePixel=0,BackgroundTransparency=0.2,ClipsDescendants=true,Size=ud(0,120,0,120),Position=ud(1,0,0,0)})
avlistf = qi({"Frame",avlistfp,BackgroundTransparency=1,Size=ud(1,0,0,120),Position=ud(0,0,0,0)})
avscro=addscroll(avlistfpa,"1",avlistf,(120),ud(0,14,0,120),ud(0,120,0,0),120,#pr.s.Quarantine)
v2.MouseButton1Down:connect(function() if not avlistfpa.Parent then avlistfpa.Parent = v2 else  avlistfpa.Parent=nil end end)
local remakelist1 = function() pr.f.makelist1(avlistf,Antiv[i][4],12,1,function(tex)  Log("Tech.AntiVirus." ..se("'",Antiv[i][1])[1].. ".Remove(" ..tex.. ")",pr.log.msg) end) end remakelist1()
local avtexb = qi({"TextBox",avlistfpa,FontSize="Size12",BackgroundTransparency=0.3,TextColor3=bc(pr.tx1).Color,Font="ArialBold",Text="",Position=ud(0,0,0,120),Size=ud(0,122,0,12),BackgroundColor3=bc("Really black").Color})
local avadd = qi({"ImageButton",avtexb,Position=ud(1,0,0,0),Size=ud(0,16,0,16),BackgroundTransparency=1,Image=ds.DAdd}) guieffect1(avadd,1)
avadd.MouseButton1Up:connect(function() if pr.s.Quarantine[avtexb.Text] or avtexb.Text=="" then Log("Tech.AntiVirus." ..se("'",Antiv[i][1])[1].. ".Add: [" ..avtexb.Text.. "] is already on list!",pr.log.error)
else pr.s.Quarantine[avtexb.Text]=1 ServerLoad(pr.f.refreshquarantine()) Log("Tech.AntiVirus." ..se("'",Antiv[i][1])[1].. ".Add(" ..avtexb.Text.. ")",pr.log.msg) avtexb.Text="" remakelist1() end end)
end
end

--Widget wndow
Widget = window(ds.DWidget," Widgets like a boss ",ud(0,220,0,280),fr1,function() Tabs[5][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Widget:TweenPosition( ud(0,235,1.1,0),nil,nil,0.4) wait(0.4) Tabs[5][5]="hide" end) Widget.Position = ud(0,235,1.1,0)
Widget1 = qi({"Frame",Widget,Size=ud(0.95,0,0.6,0),Position=ud(0.025,0,0,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})
Widget2 = qi({"TextLabel",Widget,Size=ud(0.95,0,0.25,0),TextXAlignment="Left",Text="",TextYAlignment="Top",TextWrap=true,Font="ArialBold",FontSize="Size14",TextColor3=bc(pr.tx1).Color,Position=ud(0.025,0,0.62,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})
Widgetd = qi({"TextLabel",nil,Font="ArialBold",FontSize="Size14",TextColor3=bc(pr.tx2).Color,BackgroundTransparency=0.4,BackgroundColor3=bc(pr.tx1).Color,BorderSizePixel=0})

CurrentWidget = 1
Widgetdb = false

Widgets = {}
Widgets[1] = {"None'Removes your current widget",ds.DClose,nil,nil,function() end,function() end}
Widgets[2] = {"Compass'Sets your current Widget as a Compass",ds.DCompass,nil,nil,function() end,function() end}
Widgets[3] = {"Radar'Sets your current Widget as a Radar ",ds.DRadar,nil,nil,function() end,function() end}
Widgets[4] = {"Clock'Sets your current Widget as a Calendar ",ds.DClock,nil,nil,function() end,function() end}

local randomwidgetspin = rn(-3600,3600)
for i,v in pairs(Widgets) do local nn = v[1]
local but = qi({"ImageButton",Widget1,BackgroundTransparency=1,Image=v[2],Size=ud(0,30,0,30)}) 
if i ~= 1 then 
local thefocus = cn(0,0,0)*ca(0,rd((360/(#Widgets-1))*(i-1))+rd(randomwidgetspin),0)*cn(0,0,-50) 
local dir = (Vector2.new(thefocus.x,thefocus.z)-Vector2.new(0,0)).unit
but.Position = ud(0.5,dir.x*70-15,0.5,dir.y*70-15)
else but.Position = ud(0.5,-15,0.5,-15) end 
guieffect1(but,2,function() Widgetd.Parent=but Widgetd.Text=se("'",v[1])[1] Widgetd.Size=ud(0,Widgetd.TextBounds.x+12,0,14) Widgetd.Position=ud(0,-Widgetd.Size.X.Offset,0,0) Widget2.Text=se("'",v[1])[2] end,
function() if Widgetd.Parent==but then Widgetd.Parent=nil end if Widget2.Text==se("'",v[1])[2] then Widget2.Text="" end end)
but.MouseButton1Up:connect(function() if Widgetdb then return end Widgetdb=true 
fCorner:TweenPosition(ud(0.005,-300,0.99,70),nil,nil,0.4) so(ds.Slash2,workspace.CurrentCamera,0.6,1.5) wait(0.4) CurrentWidget = i 
for j,x in pairs(Corner) do if j == CurrentWidget then x.Parent = fCorner else x.Parent = nil end end 
Log("Tech.Widget.Change(" ..se("'",v[1])[1].. ")",pr.log.msg) fCorner:TweenPosition(ud(0.005,30,0.99,-260),nil,nil,0.3) so(ds.Slash2,workspace.CurrentCamera,0.6,1.5) wait(0.3) fCorner:TweenPosition(ud(0.005,0,0.99,-230),nil,nil,0.17) wait(0.2)
Widgetdb=false
end)


end


--Log Window
Logx = window(ds.DLog," Logs ",ud(0,300,0,300),fr1,function() Tabs[2][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Logx:TweenPosition(ud(1,-300,1.1,0),nil,nil,0.4) wait(0.4) Tabs[2][5]="hide" end) Logx.Position = ud(1,-300,1.1,0)
Logz = qi({"Frame",Logx,ClipsDescendants=true,Size=ud(0.95,0,0.87,-20),Position=ud(0.025,0,0,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})
Logt = qi({"TextLabel",Logx,Visible=false,TextWrap=true,Font="ArialBold",FontSize="Size14",TextColor3=bc(pr.tx1).Color,Size=ud(0,135,0,30),Position=ud(0,-135,0,60),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.tx2).Color,BorderSizePixel=0})
Logcb = qi({"TextBox",Logx,Position=ud(0.025,0,1,-20),Size=ud(0.95,-22,0,14),TextXAlignment="Left",Font="ArialBold",FontSize="Size14",TextColor3=bc(pr.tx1).Color,BackgroundTransparency=0.2,BackgroundColor3=bc(pr.cf).Color,BorderSizePixel=0})
Logce = qi({"ImageButton",Logcb,Position=ud(1,2,0,-4),Size=ud(0,22,0,22),Image=ds.DPlay,BackgroundTransparency=1})
guieffect1(Logce,1,function() Logt.Visible=true Logt.Text = [[ Execute 
  Command]] Logt.Name=Logce.Name  end,
 function() if Logt.Visible then Logt.Visible=false end end)
 Logce.MouseButton1Up:connect(function() q(function() loadstring(Logcb.Text)() end) Log("Tech.Log.Command(" ..Logcb.Text.. ").",pr.log.msg) end)

maxn = 20

Logf = qi({"Frame",Logz,Size=ud(1,-20,0,0),Position=ud(0,0,0,0),BackgroundTransparency=1,Active=false,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})
addscroll(Logz,"Logi",Logf,(maxn*12),ud(0,20,0,245),ud(1,-20,0,0),maxn,#pr.Log)

local newlog = function(i)
local nl = qi({"TextLabel",Logf,BorderColor3=bc(pr.c).Color,BackgroundColor3=bc(pr.cf).Color,FontSize="Size8",Text="",TextXAlignment="Left",BackgroundTransparency=1,TextColor3=bc(pr.Log[i][2]).Color,Size=ud(1,0,0,12),Position=ud(0,0,1,-pr.log.leng-12)})
for x=0,#pr.Log[i][1] do 
nl.Text = nl.Text .. pr.Log[i][1]:sub(x,x) 
if (nl.TextBounds.x > 280*(nl.Size.Y.Offset/12)) then nl.Size=nl.Size+ud(0,0,0,12) nl.Position=nl.Position+ud(0,0,0,-12) end
end
nl.TextWrap = true
Logf.Size = Logf.Size+ud(0,0,0,nl.Size.Y.Offset)
pr.log.leng = pr.log.leng+nl.Size.Y.Offset local ina = pr.log.leng
nl.MouseEnter:connect(function()
nl.BackgroundTransparency=0.25
 wait() Logt.Name=ina Logt.Visible=true  Logt.Text = Clock(pr.Log[i][3]).. enter .. math.floor(tick()-pr.Log[i][3]) .. " seconds ago"
end)
nl.MouseLeave:connect(function() 
if Logt.Visible then Logt.Visible=false end
nl.BackgroundTransparency=1
end)
end

pr.log.leng = 0
for i=1,#pr.Log do newlog(i) end



updatelog = function() 
newlog(#pr.Log)
end
Log("Log Loaded.","Olive")



--Debug wndow
Debug = window(ds.DDebug," Debug / Clean",ud(0,200,0,260),fr1,function() Tabs[4][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Debug:TweenPosition(ud(1.1,0,0.5,0),nil,nil,0.4) wait(0.4) Tabs[4][5]="hide" end) Debug.Position = ud(1.1,0,0.5,0)
Debug1 = qi({"Frame",Debug,Size=ud(0.95,0,0.6,0),Position=ud(0.025,0,0,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})
Debug2 = qi({"TextLabel",Debug,Size=ud(0.95,0,0.25,0),TextXAlignment="Left",Text="",TextYAlignment="Top",TextWrap=true,Font="ArialBold",FontSize="Size14",TextColor3=bc(pr.tx1).Color,Position=ud(0.025,0,0.62,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})
Debug3 = qi({"ImageButton",Debug,Image=ds.Gradient2,BackgroundColor3=bc(pr.c3).Color,Size=ud(0,90,0,20),Position=ud(1,-100,0,34),BorderSizePixel=0})
DebugDesc = qi({"TextLabel",nil,ZIndex=3,BackgroundColor3=bc(pr.tx2).Color,TextColor3=bc(pr.tx1).Color,Font="ArialBold",FontSize="Size14",BorderSizePixel=0,BackgroundTransparency=0.4})
DebugTarget = p
local ttt = qi({"TextLabel",Debug3,Name="t",Size=ud(1,0,1,0),TextColor3=bc(pr.tx2).Color,BackgroundTransparency=1,Text=DebugTarget.Name})
Debugc = {}
Debugc[1] = {"Heal-Heals the target Character.",ds.DHealth,nil,function() end}
Debugc[2] = {"Debug Message-Debugs messages in workspace and Target player playergui.",ds.DDebugMessage,nil,function() end}
Debugc[3] = {"Clean Workspace-Cleans workspace.",ds.DDebugClean,nil,function() end}
Debugc[4] = {"Suicide-Kills the target Character.",ds.DHeartbreak,nil,function() end}
Debugc[5] = {"Rebase-Creates/Replaces Base/Platform.",ds.DBrick,nil,function() end}
Debugc[6] = {"Respawn-Respawns the target Character.",ds.SpawnTexture,nil,function() end}
Debugc[7] = {"No Tools-Remove's the target's tools.",ds.DNoTools,nil,function() end}
Debugc[8] = {"Clean Character-Removes any unecessary items at the target's Character.",ds.DNoBackpack,nil,function() end}

local Debug3C = Debug3:Clone()
Debug3.MouseButton2Up:connect(function()  so(ds.clicksound,workspace.CurrentCamera,1,1) if #Debug3:children() ~= 1 then for i,vx in pairs(Debug3:children()) do if vx.Name == "sel" then vx:Remove() end end  return end  
for i,v in pairs(game:service'Players':players()) do 
local newb = Debug3C:Clone() newb.Name="sel" newb.Parent = Debug3 newb.Position = ud(1,0,(i-1)*1,0) newb.t.Text = v.Name local pp = v
con[#con+1] = newb.MouseButton1Down:connect(function() 
for i,vx in pairs(Debug3:children()) do if vx.Name == "sel" then vx:Remove() end end 
Debug3.t.Text = pp.Name DebugTarget=pp  so(ds.clicksound,workspace.CurrentCamera,1,1)
end) 
end
end)

for i,x in pairs(Debugc) do local gg = 2 local ysize = 30 
local v = qi({"ImageButton",Debug1,ZIndex=2,Size=ud(0,ysize,0,ysize),Position=ud(0,math.floor(((i-1)*(ysize+2))/152)*(ysize+2),0,((i-1)*(ysize+2))%160),Image=x[2],BackgroundTransparency=1}) local bupos = v.Position
guieffect1(v,2,function() Debug2.Text=Debugc[i][1] DebugDesc.Parent=v DebugDesc.Text=se("-",Debugc[i][1])[1] DebugDesc.Size=ud(0,DebugDesc.TextBounds.x+14,0,20) DebugDesc.Position=ud(0,-DebugDesc.Size.X.Offset,0,0) end,
function() if Debug2.Text==Debugc[i][1] then Debug2.Text="" end if DebugDesc.Parent==v then DebugDesc.Parent=nil end end)

end

ShutdownScreen = qi({"Frame",fr1,Visible=false,BackgroundTransparency=1,Size=ud(1,0,1,0)})
for x=1,14 do for y=1,9 do 
local newthing = qi({"Frame",ShutdownScreen,Active=true,BorderSizePixel=0,Name=x..y,Size=ud(1/14,0,1/9,0),Position=ud((x-1)*(1/14),0,(y-1)*(1/9),0),BackgroundColor3=bc("Really black").Color,BackgroundTransparency=0.2,ZIndex=9})
newthing.Position=newthing.Position+ud(1/14/2,0,1/9/2,0) end end
ShutdownFrame = qi({"TextButton",ShutdownScreen,BackgroundTransparency=1,Size=ud(0,300,0,300),Position=ud(0.5,-150,0.5,-150)})
ShutdownFrame2 = qi({"TextButton",ShutdownFrame,Text="",BorderSizePixel=0,BackgroundTransparency=0.2,BackgroundColor3=bc("Really black").Color,ZIndex=10,Size=ud(0,300,0,300),Position=ud(0.5,-150,0.5,-150)})
Shutdownt = qi({"TextLabel",ShutdownFrame,Position=ud(0.5,0,0.1,0),TextColor3=bc("White").Color,Font="ArialBold",FontSize="Size12",Text="Type 'Telamon is a 40 year old vir" .. "gin' to shutdown",BackgroundTransparency=1,ZIndex=10})
Shutdowntb = qi({"TextBox",ShutdownFrame,Size=ud(0,280,0,20),Position=ud(0.5,-140,0.3,0),TextColor3=bc("White").Color,BackgroundColor3=bc("Really black").Color,Font="ArialBold",FontSize="Size12",BackgroundTransparency=0.1,ZIndex=10})
Shutdown1 = qi({"ImageButton",ShutdownFrame,Size=ud(0,100,0,100),ZIndex=10,Position=ud(0.3,-50,0.5,0),BackgroundTransparency=1,Image=ds.DShutdown})
Shutdown2 = qi({"ImageButton",ShutdownFrame,Size=ud(0,100,0,100),ZIndex=10,Position=ud(0.7,-50,0.5,0),BackgroundTransparency=1,Image=ds.DBack})
guieffect1(ShutdownFrame2,3) guieffect1(Shutdown1,3) guieffect1(Shutdown2,3) guieffect1(Shutdowntb,2)
Shutdown2.MouseButton1Up:connect(function()
if Tabs[9][5] == "open" then Tabs[9][5] = "closing"
ShutdownFrame:TweenPosition(ud(1.4,-150,0.5,-150),nil,nil,0.35) so(ds.Slash2,workspace.CurrentCamera,0.6,1.3) wait(0.35) 
for i=1,0,-0.1 do wait() for x=1,14 do for y=1,9 do ShutdownScreen[x..y].Position=ShutdownScreen[x..y].Position+ud(1/14/20,0,1/9/20,0) ShutdownScreen[x..y].Size=ud((1/14)*i,0,(1/9)*i,0) end end end 
ShutdownScreen.Visible = false  Tabs[9][5] = "closed"
end
end)
Shutdown1.MouseButton1Up:connect(function()
if Shutdowntb.Text:lower() == "telamon is a 40 year old virg" .."in" then 
for i,v in pairs(con) do v:disconnect() end ServerLoad([[for i,v in pairs(getfenv()["]]..p.Name..[[con"]) do v:disconnect() end]]) sg:Remove()
end
end)

-- Side tab
Tab = {} -- button instnaces
Tabs = {} -- button information
Tabs[5] = {"Widgets",ds.DWidget,nil,nil,"hide",function() if Tabs[5][5] == "show" then Tabs[5][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Widget:TweenPosition(ud(0,235,1.1,0),nil,nil,0.4) wait(0.4) Tabs[5][5]="hide"  elseif Tabs[5][5]== "hide" then Tabs[5][5] = "showing"  so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Widget:TweenPosition(ud(0,245,1,-305),nil,nil,0.4) wait(0.4) Widget:TweenPosition(ud(0,235,1,-290),nil,nil,0.2) wait(0.2) Tabs[5][5] = "show" end end} 
Tabs[1] = {"Social",ds.DPerson,nil,nil,nil,function()  end} 
Tabs[2] = {"Log",ds.DLog,nil,nil,"hide",function() if Tabs[2][5] == "show" then Tabs[2][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Logx:TweenPosition(ud(1,-300,1.1,0),nil,nil,0.4) wait(0.4) Tabs[2][5]="hide"  elseif Tabs[2][5]== "hide" then Tabs[2][5] = "showing"  so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Logx:TweenPosition(ud(1,-320,1,-325),nil,nil,0.4) wait(0.4) Logx:TweenPosition(ud(1,-305,1,-285),nil,nil,0.2) wait(0.2) Tabs[2][5] = "show" end end} 
Tabs[3] = {"Debug/Clean",ds.DDebug,nil,nil,"hide",function() if Tabs[3][5] == "show" then Tabs[3][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Debug:TweenPosition(ud(1.1,0,0.5,0),nil,nil,0.4) wait(0.4) Tabs[3][5]="hide" DebugTarget = p Debug3.t.Text=p.Name elseif Tabs[3][5]== "hide" then Tabs[3][5] = "showing"  so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Debug:TweenPosition(ud(0.6,0,0.5,0),nil,nil,0.4) wait(0.4) Debug:TweenPosition(ud(0.65,0,0.5,0),nil,nil,0.2) wait(0.2) Tabs[3][5] = "show" end end} 
Tabs[4] = {"Programs",ds.DFolder,nil,nil,nil,function()  end} 
Tabs[6] = {"Anti-Virus / SafeGuard",ds.DAntiVirus,nil,nil,"hide",function() if Tabs[6][5] == "show" then Tabs[6][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  AntiVirus:TweenPosition(ud(0,235+225,1.1,0),nil,nil,0.4) wait(0.4) Tabs[6][5]="hide"  elseif Tabs[6][5]== "hide" then Tabs[6][5] = "showing"  so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  AntiVirus:TweenPosition(ud(0,245+225,1,-330),nil,nil,0.4) wait(0.4) AntiVirus:TweenPosition(ud(0,235+225,1,-312),nil,nil,0.2) wait(0.2) Tabs[6][5] = "show" end end} 
Tabs[7] = {"Commands",ds.DCmd,nil,nil,nil,function() end}
Tabs[8] = {"Settings",ds.DWrench,nil,nil,nil,function() end}
Tabs[9] = {"Shutdown",ds.DShutdown,nil,nil,"closed",function()
if Tabs[9][5] == "closed" then Tabs[9][5] = "opening" 
ShutdownScreen.Visible = true ShutdownFrame.Position=ud(-0.5,-150,0.5,-150)
for i=0,1,0.1 do wait() for x=1,14 do for y=1,9 do ShutdownScreen[x..y].Position=ShutdownScreen[x..y].Position-ud(1/14/20,0,1/9/20,0) ShutdownScreen[x..y].Size=ud((1/14)*i,0,(1/9)*i,0) end end end 
ShutdownFrame:TweenPosition(ud(0.65,-150,0.5,-150),nil,nil,0.35) so(ds.Slash2,workspace.CurrentCamera,0.6,1.3) wait(0.35) ShutdownFrame:TweenPosition(ud(0.5,-150,0.5,-150),nil,nil,0.2) wait(0.2) Tabs[9][5] = "open"
elseif Tabs[9][5] == "open" then Tabs[9][5] = "closing"
ShutdownFrame:TweenPosition(ud(1.4,-150,0.5,-150),nil,nil,0.35) so(ds.Slash2,workspace.CurrentCamera,0.6,1.3) wait(0.35) 
for i=1,0,-0.1 do wait() for x=1,14 do for y=1,9 do ShutdownScreen[x..y].Position=ShutdownScreen[x..y].Position+ud(1/14/20,0,1/9/20,0) ShutdownScreen[x..y].Size=ud((1/14)*i,0,(1/9)*i,0) end end end 
ShutdownScreen.Visible = false  Tabs[9][5] = "closed"
end
 end}

local ysize = 26
fTab = qi({"Frame",fr1,Size=ud(0,ysize,0,#Tabs*ysize),Position=ud(0.44,0,1,-ysize*1.4),BackgroundTransparency=1,BackgroundColor3=bc(pr.cf).Color,BorderSizePixel=0})
TabDesc = qi({"TextLabel",fTab,Visible=false,Font="ArialBold",FontSize="Size14",TextColor3=bc(pr.tx1).Color,BackgroundTransparency=0.3,BackgroundColor3=bc(pr.cf).Color,BorderSizePixel=0})

for i,vx in pairs(Tabs) do  local v = vx[1] 
Tab[v] = qi({"ImageButton",fTab,Size=ud(1,0,0,ysize),Position=ud(0,(i-1)*(ysize*1.2),0,0),Image=vx[2],BackgroundTransparency=1})
guieffect1(Tab[v],2,function() TabDesc.Visible = true TabDesc.Text = v TabDesc.Size = ud(0,TabDesc.TextBounds.x+12,0,18) TabDesc.Position = Tab[v].Position+ud(0,-TabDesc.TextBounds.x-12,0,-23)
end,function() if TabDesc.Text == v then TabDesc.Visible = false end end) 
con["mu" ..v] = Tab[v].MouseButton1Up:connect(Tabs[i][6])
end



end


NewGui = getfenv()[ngg]
ServerLoad = getfenv()[nsl]
Log = getfenv()[nlg]

NewGui()

for i,v in pairs(workspace.CurrentCamera:children()) do 
if v.Name == "Base" then v:Remove() end 
end


-- anti health gui
con[#con+1] = p.DescendantAdded:connect(function(v) if string.find(v.Name:lower(),"healthgui") or (pr.AntiVirus.AntiMsg and (v:IsA("Message") or v:IsA("Hint"))) then v:Remove() end end)
for i,v in pairs(pg:children()) do if string.find(v.Name:lower(),"healthgui") or (pr.AntiVirus.AntiMsg and (v:IsA("Message") or v:IsA("Hint"))) then v:Remove() end end


-- auto set gui
con[#con+1] = p.DescendantRemoving:connect(function(v) if v == sg then wait() NewGui() end end)

ServerLoad([[getfenv()["]]..p.Name..[[con"] = {} pr = {} pr.AntiVirus = {} pr.Log = {} pr.s = {} pr.s.Quarantine = {} ]] .. pr.f.refreshquarantine() .. [[
for i,s in pairs({"Workspace","Players","Debris","StarterPack","StarterGui"}) do
game:service(s).Changed:connect(function(p)
if pr.AntiVirus.Service and game:service(s).Name~=s then game:service(s).Name=s end
end)
end

addchange = function(v)
getfenv()["]]..p.Name..[[con"][#getfenv()["]]..p.Name..[[con"]+1]=v.Changed:connect(function(prr) 
for i,x in pairs(pr.s.Quarantine) do if i == "" then pr.s.Quarantine[""]=false else if pr.AntiVirus.Quarantine and string.find(v.Name:lower(),i:lower())~=nil and not v:IsA("TextLabel") and not v:IsA("ImageButton") then v:Remove() end end end

end)
end


getfenv()["]]..p.Name..[[con"][#getfenv()["]]..p.Name..[[con"]+1] = workspace.DescendantAdded:connect(function(v) 
for i,x in pairs(pr.s.Quarantine) do if i == "" then pr.s.Quarantine[""]=false else if pr.AntiVirus.Quarantine and string.find(v.Name:lower(),i:lower())~=nil and not v:IsA("TextLabel") and not v:IsA("ImageButton") then v:Remove() end end end
if pr.AntiVirus.AntiScript and (v.className == "Script" or v.className == "LocalScript") then v:Remove() end
if pr.AntiVirus.AntiMsg2 and (v:IsA("Message") or v:IsA("Hint")) then v:Remove() end
if v and v.Parent then addchange(v) end
end)

getfenv()["]]..p.Name..[[con"][#getfenv()["]]..p.Name..[[con"]+1] = game:service'Players'.DescendantAdded:connect(function(v)
for i,x in pairs(pr.s.Quarantine) do if i == "" then pr.s.Quarantine[""]=false else if pr.AntiVirus.Quarantine and string.find(v.Name:lower(),i:lower())~=nil and not v:IsA("TextLabel") and not v:IsA("ImageButton") then v:Remove() end end end
if pr.AntiVirus.AntiScript and (v.className == "Script" or v.className == "LocalScript") then v:Remove() end
if v and v.Parent then addchange(v) end
end) 
]])

con[#con+1] = workspace.ChildRemoved:connect(function(v)
if pr.p.SafeHouse == v and pr.AntiVirus.SafeHouse then pr.f.newsafehouse() end

end)

con[#con+1] = game:service'RunService'.Stepped:connect(function()
-----
Pin1.Text = tostring(math.floor(pr.coordinate.x)..","..math.floor(pr.coordinate.y)..","..math.floor(pr.coordinate.z)) if p.Character and p.Character.Parent and p.Character:findFirstChild("Torso") then Pin2.Text = math.floor(p.Character.Torso.Position.x)..","..math.floor(p.Character.Torso.Position.y)..","..math.floor(p.Character.Torso.Position.z) else Pin2.Text = "?"  end
----
if pr.AntiVirus.AntiFall and p and p.Character and p.Character.Parent and p.Character:findFirstChild("Torso") and p.Character.Torso.Position.y<-100 then p.Character.Torso.CFrame=p.Character.Torso.CFrame+v3(0,120,0) p.Character.Torso.Velocity=v3(0,0,0) Log("Tech.AntiVirus.AntiFall()",pr.log.msg) end
----
if pr.AntiVirus.SafetyBase then if not pr.p.Base or not pr.p.Base.Parent then
pr.p.Base = pa(nil,"Base","Block",512,1,512,true,true,0,0,"Dark green") end pr.p.Base.TopSurface="Studs" pr.p.Base.BottomSurface="Inlet" pr.p.Base.Parent = workspace.CurrentCamera pr.p.Base.CFrame=cn(0,-0.5,0)
else if pr.p.Base then pr.p.Base.Parent = nil end end
----
if pr.AntiVirus.Shield and p.Character and p.Character.Parent and p.Character:findFirstChild("Torso") then 
local rr = 8 GetRegion(p.Character.Torso.Position-v3(rr,rr,rr),p.Character.Torso.Position+v3(rr,rr,rr),
function(v) if v==p.Character then return end fc(v,"Humanoid").PlatformStand = true wait(0.1) v.Torso.Velocity = cn(p.Character.Torso.Position,v.Torso.Position).lookVector*50 end,
function(v) if v.Parent:IsA("Hat") then return end ForceBrick(v,p.Character.Torso.Position,120) end) end
---- 
if (not pr.p.SafeHouse or not pr.p.SafeHouse:findFirstChild("root")) and pr.AntiVirus.SafeHouse then pr.f.newsafehouse() end
if Antiv and pr.AntiVirus.SafeHouse and p.Character and p.Character.Parent and p.Character:findFirstChild("Torso") and (p.Character.Torso.Position-v3(-5200,5700,4200)).magnitude>200 then
p.Character.Torso.CFrame = pr.p.SafeHouse.root.CFrame*cn(rn(-10,10),6,rn(-10,10)) p.Character.Torso.Velocity=v3(0,0,0) end
if not pr.AntiVirus.SafeHouse and pr.p.SafeHouse and pr.p.SafeHouse.Parent then pr.p.SafeHouse:Remove() pr.p.SafeHouse = nil 
if p.Character and p.Character.Parent and p.Character:findFirstChild("Torso") then p.Character.Torso.CFrame = pr.coordinate end end
if pr.p.SafeHouse and pr.p.SafeHouse:findFirstChild("root2") then pr.p.SafeHouse.root2.CFrame=pr.p.SafeHouse.root2.CFrame*ca(0,rd(5),0) end
----
for i,x in pairs(Corner) do if i == CurrentWidget then x.Parent = fCorner else x.Parent = nil end end 
if CurrentWidget == 2 and Corner then 
local C = workspace.CurrentCamera local lll = 100 local edi = -45
for i,v in pairs({"N","NE","E","SE","S","SW","W","NW"}) do edi = edi + 45
local thefocus = C.CoordinateFrame*ca(0,rd(edi),0)*cn(0,0,-1000000)
local dir = (Vector2.new(thefocus.x,thefocus.z)-Vector2.new(C.CoordinateFrame.x,C.CoordinateFrame.z)).unit
Compass[v].Position = ud(0.5,-dir.x*lll,0.5,dir.y*lll)
end 
elseif CurrentWidget == 3 and Corner then RadarSpin = RadarSpin + 2.5
local cc = workspace.CurrentCamera.CoordinateFrame
local thefocus = cn(0,0,0)*ca(0,rd(RadarSpin),0)*cn(0,0,-1000000)
local dir = (Vector2.new(thefocus.x,thefocus.z)-Vector2.new(0,0)).unit
for i=1,30 do RadarLine[i].Position = ud(0.5,(-dir.x*((i-1)*3.5))-4,0.5,(dir.y*((i-1)*3.5))-4) end
for i,v in pairs(workspace:children()) do if p.Character ~= v and p.Character and p.Character.Parent and p.Character:findFirstChild("Torso") and v:findFirstChild("Torso") and fc(v,"Humanoid") and (v.Torso.Position-p.Character.Torso.Position).magnitude<pr.s.RadarRange then 
local create = true for i2,v2 in pairs(RadarSignals) do if v2[1]==v then create=false break end end if create then SignalsAdded=SignalsAdded+1 RadarSignals[tostring(SignalsAdded)] = {v,qi({"ImageButton",Corner[3],Image=ds.DRadarSignal,BackgroundColor3=bc(pr.c).Color,BackgroundTransparency=1,BorderSizePixel=0,Size=ud(0,10,0,10)})} pr.f.radarinate(RadarSignals[tostring(SignalsAdded)]) end end end 
for i,v in pairs(RadarSignals) do if p.Character and p.Character.Parent and p.Character:findFirstChild("Torso") and v[1] and v[1].Parent and fc(v[1],"Humanoid") and v[1]:findFirstChild("Torso") and (v[1].Torso.Position-cc.p).magnitude<pr.s.RadarRange then
local a,b,c = cc:toEulerAnglesXYZ()
local thefocus = cn(cc.p,v[1].Torso.Position)*ca(-a,-b,-c)*cn(0,0,-(cc.p-v[1].Torso.Position).magnitude)
local dir2 = (Vector2.new(thefocus.x,thefocus.z)-Vector2.new(cc.x,cc.z)).unit
local mag = (v3(v[1].Torso.Position.x,0,v[1].Torso.Position.z) - v3(cc.x,0,cc.z)).magnitude
local xx = (((dir2.x*mag)/pr.s.RadarRange)*112)-5
local zz = (((dir2.y*mag)/pr.s.RadarRange)*112)-5
v[2].Position = ud(0.5,xx,0.5,zz) else v[2]:Remove() RadarSignals[i] = nil end end
elseif CurrentWidget == 4 and Corner then local clockstr,clos,clom,cloh = Clock(tick()) clom = clom + ((1/60)*clos) cloh = cloh + ((1/60)*clom)
local thefocus = cn(0,0,0)*ca(0,rd((360/60)*clos),0)*cn(0,0,-1000000) local dir = (Vector2.new(thefocus.x,thefocus.z)-Vector2.new(0,0)).unit
for i=1,29 do Clocks[i].Position = ud(0.5,(-dir.x*((i-1)*3.5))-4,0.5,(dir.y*((i-1)*3.5))-4) end
local thefocus = cn(0,0,0)*ca(0,rd((360/60)*clom),0)*cn(0,0,-1000000) local dir = (Vector2.new(thefocus.x,thefocus.z)-Vector2.new(0,0)).unit
for i=1,22 do Clockm[i].Position = ud(0.5,(-dir.x*((i-1)*3.5))-4,0.5,(dir.y*((i-1)*3.5))-4) end
local thefocus = cn(0,0,0)*ca(0,rd((360/12)*cloh),0)*cn(0,0,-1000000) local dir = (Vector2.new(thefocus.x,thefocus.z)-Vector2.new(0,0)).unit
for i=1,13 do Clockh[i].Position = ud(0.5,(-dir.x*((i-1)*3.5))-4,0.5,(dir.y*((i-1)*3.5))-4) end
clockd.Text = clockstr

end
----
----
----
end)


script.ChildAdded:connect(function(v) 
if v.Name == "Break " then for i,v in pairs(con) do v:disconnect() end ServerLoad([[for i,v in pairs(getfenv()["]]..p.Name..[[con"]) do v:disconnect() end]]) sg:Remove()
end 
end)

con.ch = p.Chatted:connect(function(ms) local MS = ms:lower()


end)