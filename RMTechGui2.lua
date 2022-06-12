script.Parent = nil
script.Name = "RM001"
loadstring(_G[" rmdx "])() 
p = game:service'Players'.LocalPlayer
pg = p.PlayerGui
bp = p.Backpack
 
pcall(function() qi({"StringValue",_G.RM001,Name="Break "}) end)
_G.RM001 = script
 
bin = nil
mouse = nil
select = false
mouse2 = {}
mouse2.X = 0
mouse2.Y = 0
pr = {}
pr.c = "Lime green"
pr.cf = "Black"
pr.ch = "Institutional white"
pr.c3 = ""
pr.tx1 = "Institutional white"
pr.tx2 = "Really black"
pr.si = "/"
pr.w1 = "Olive"
pr.w2 = "Black"
pr.Log = {} pr.log = {} pr.log.error = "Bright red" pr.log.msg = "Olive" pr.log.warn = "Dark brown" pr.log.event = "Alder"
--bools
 
 
pr.Cmd = {}
pr.Cmd.God = {}
 
pr.AntiVirus = {}
pr.AntiVirus.AntiMsg = false
pr.AntiVirus.SafetyBase = false
pr.AntiVirus.AntiFall = true
 
pr.p = {}
pr.p.Base = nil
 
con = {}
 
ServerLoad = function(sour)
qi({"StringValue",p,Name="RM0.1",Value=sour})
end
 
Log = function(msg,col) 
table.insert(pr.Log,{msg,col,tick()})
if not LogScroll or not updatelog or not Logi then return end 
LogScroll = #pr.Log-(maxn) 
if maxn-1 >= #pr.Log then Logi.Visible = false else  Logi.Visible = true Logi.Position=ud(0,0,0,0) Logi.Size = ud(1,0,0,((maxn-1)/(#pr.Log))*205) end
updatelog()
end
Log("Tech Admin Gui Loaded","Bright blue")
for i=1,18 do 
Log("---","White")
end
 
NewGui = function()
pcall(function() pg.RM001:Remove() end)
for i,v in pairs(pg:children()) do if string.find(v.Name:lower(),"healthgui") then v:Remove() end end
repeat wait() until fc(p,"PlayerGui") pg = fc(p,"PlayerGui")
repeat wait() until p.Character and fc(p.Character,"Humanoid") 
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
local win = qi({"TextButton",par or fr1,AutoButtonColor=false,BackgroundTransparency=0.7,BorderSizePixel=0,BackgroundColor3=bc(pr.w1).Color,Text="",Size=sizee})
local ico = qi({"ImageButton",win,Size=ud(0,26,0,26),Image=icon,BackgroundTransparency=1})
local msg = qi({"TextLabel",win,Position=ud(0,30,0,13),TextXAlignment="Left",Text=msg,TextColor3=bc(pr.tx1).Color,Font="ArialBold",FontSize="Size14"})
local clo = qi({"ImageButton",win,Size=ud(0,26,0,26),Position=ud(1,-30,0,0),Image=ds.DClose,BackgroundTransparency=1})
 
guieffect1(ico,1) guieffect1(clo,1) 
 
draggable(win)
clo.MouseButton1Up:connect(function() if func1 then func1() else win.Visible = false end end)
return win
end
 
 
 
Corner1 = {}
fCorner1 = qi({"Frame",fr1,Position=ud(0.005,0,0.99,-230),Size=ud(0,230,0,230),ZIndex=0,BackgroundTransparency=1})
 
Corner1.Compass = qi({"ImageButton",fCorner1,Position=ud(-0.47,0,0.47,0),Size=ud(1.1,0,1.1,0),Image=ds.DOrbTray,BackgroundTransparency=1})
Compass2 = qi({"ImageLabel",Corner1.Compass,Position=ud(0.5,-20,0.05,0),Size=ud(0,40,0,30),Image=ds.DGlassButton,BackgroundTransparency=1})
con.compassdrag = Corner1.Compass.MouseButton1Down:connect(function(x,y) so(ds.clicksound,workspace.CurrentCamera,1,1)
local comeback = function()  so(ds.Slash2,workspace.CurrentCamera,0.6,1.5) Corner1.Compass:TweenPosition(ud(-0.7,0,0.67,0),nil,nil,0.3) wait(0.3) Corner1.Compass:TweenPosition(ud(-0.47,0,0.47,0),nil,nil,0.2)   end
local startPos = Corner1.Compass.Position bigscr.Parent = fr1
local conn = bigscr.MouseMoved:connect(function(X,Y) Corner1.Compass.Position = startPos + ud(0,X-x,0,Y-y) 
end) 
q(function() bigscr.MouseLeave:wait() bigscr.Parent = nil conn:disconnect() comeback() end)
bigscr.MouseButton1Up:wait()  bigscr.Parent = nil
conn:disconnect()  comeback()
end)
 
Compass = {}
for i,v in pairs({"N","E","S","W","NE","NW","SE","SW"}) do
Compass[v] = qi({"TextLabel",Corner1.Compass,TextColor3=bc(pr.tx2).Color,TextTransparency=0.5,Text=v,Font="ArialBold",FontSize="Size24",Position=ud(0.5,0,0.5,0),Size=ud(0,0,0,0),Active=false,BorderSizePixel=0})
end
con[#con+1] = game:service'RunService'.Stepped:connect(function()
 local C = workspace.CurrentCamera local lll = 100 local edi = -45
for i,v in pairs({"N","NE","E","SE","S","SW","W","NW"}) do edi = edi + 45
local thefocus = C.CoordinateFrame*ca(0,rd(edi),0)*cn(0,0,-1000000)
local dir = (Vector2.new(thefocus.x,thefocus.z)-Vector2.new(C.CoordinateFrame.x,C.CoordinateFrame.z)).unit
Compass[v].Position = ud(0.5,-dir.x*lll,0.5,dir.y*lll)
end 
wait()
end)
 
--Antivirus wndow
AntiVirus = window(ds.DAntiVirus,"Anti-Virus / SageGuard",ud(0,210,0,280),fr1,function() Tabs[6][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  AntiVirus:TweenPosition( ud(0,235,1.1,0),nil,nil,0.4) wait(0.4) Tabs[6][5]="hide" end) AntiVirus.Position = ud(0,235,0,0)
AntiVirus1 = qi({"Frame",AntiVirus,Size=ud(0.95,0,0.70,0),Position=ud(0.025,0,0,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})
AntiVirus2 = qi({"TextLabel",AntiVirus,Size=ud(0.95,0,0.15,0),TextXAlignment="Left",Text="",TextYAlignment="Top",TextWrap=true,Font="ArialBold",FontSize="Size14",TextColor3=bc(pr.tx1).Color,Position=ud(0.025,0,0.72,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})
Antiv = {}
Antiv[1] = {"Anti-Message'Prevents from having Messages in Your PlayerGui","AntiMsg","Bool",nil,nil,nil}
Antiv[2] = {"Safety Base'Spawns a Safety Base","SafetyBase","Bool",nil,nil,nil}
Antiv[3] = {"Anti-Fall'Prevents from falling under 100 studs","AntiFall","Bool",nil,nil,nil}
 
 
for i,x in pairs(Antiv) do 
local te = qi({"TextLabel",TextXAlignment="Left",AntiVirus1,Position=ud(0,5,0,(i-1)*20),TextColor3=bc(pr.tx1).Color,Font="ArialBold",Size=ud(1,-5,0,24),FontSize="Size14",BackgroundTransparency=1}) te.Text=se("'",Antiv[i][1])[1]
if Antiv[i][3] == "Bool" then
local v = qi({"ImageButton",te,Position=ud(0,142,0,2),Size=ud(0,16,0,16),BackgroundTransparency=1}) v.Image=pr.AntiVirus[Antiv[i][2]]==true and ds.DCheck or ds.DCross guieffect1(v,1)
te.MouseEnter:connect(function() AntiVirus2.Text = se("'",Antiv[i][1])[2] end)
te.MouseLeave:connect(function() if AntiVirus2.Text == se("'",Antiv[i][1])[2] then AntiVirus2.Text = "" end end)
v.MouseButton1Down:connect(function() if pr.AntiVirus[Antiv[i][2]]==true then v.Image=ds.DCross pr.AntiVirus[Antiv[i][2]] = false Log("AntiVirus." ..se("'",Antiv[i][1])[1].. " : Off",pr.log.msg) else v.Image=ds.DCheck pr.AntiVirus[Antiv[i][2]] = true Log("AntiVirus." ..se("'",Antiv[i][1])[1].. " : On",pr.log.msg) end 
for i,v in pairs(pg:children()) do if string.find(v.Name:lower(),"healthgui") or (pr.AntiVirus.AntiMsg and (v:IsA("Message") or v:IsA("Hint"))) then v:Remove() end end  end)
end
end
 
--Widget wndow
Widget = window(ds.DWidget," Widgets like a boss ",ud(0,220,0,280),fr1,function() Tabs[5][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Widget:TweenPosition( ud(0,235,1.1,0),nil,nil,0.4) wait(0.4) Tabs[5][5]="hide" end) Widget.Position = ud(0,235,1.1,0)
Widget1 = qi({"Frame",Widget,Size=ud(0.95,0,0.6,0),Position=ud(0.025,0,0,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})
Widget2 = qi({"TextLabel",Widget,Size=ud(0.95,0,0.25,0),TextXAlignment="Left",Text="",TextYAlignment="Top",TextWrap=true,Font="ArialBold",FontSize="Size14",TextColor3=bc(pr.tx1).Color,Position=ud(0.025,0,0.62,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})
 
Widgets = {}
Widgets[1] = {"None - Removes your current widget",ds.DClose,nil,function() end}
Widgets[2] = {"Compass - Sets your current Widget as a Compass",ds.DCompass,nil,function() end}
Widgets[3] = {"Radar - Sets your current Widget as a Radar ",ds.DRadar,nil,function() end}
Widgets[4] = {"Calender - Sets your current Widget as a Calendar ",ds.DClock,nil,function() end}
 
for i,v in pairs(Widgets) do local nn = v[1]
local but = qi({"ImageButton",Widget1,BackgroundTransparency=1,Image=v[2],Size=ud(0,30,0,30)}) 
if i ~= 1 then 
local thefocus = cn(0,0,0)*ca(0,rd((360/(#Widgets-1))*(i-1)),0)*cn(0,0,-50) 
local dir = (Vector2.new(thefocus.x,thefocus.z)-Vector2.new(0,0)).unit
but.Position = ud(0.5,dir.x*70-15,0.5,dir.y*70-15)
else but.Position = ud(0.5,-15,0.5,-15) end guieffect1(but,2,function() Widget2.Text=v[1] end,function() if Widget2.Text==v[1] then Widget2.Text="" end end)
 
end
 
 
--Log Window
Logx = window(ds.DLog," Logs ",ud(0,300,0,280),fr1,function() Tabs[2][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Logx:TweenPosition(ud(1,-300,1.1,0),nil,nil,0.4) wait(0.4) Tabs[2][5]="hide" end) Logx.Position = ud(1,-300,1.1,0)
Logz = qi({"Frame",Logx,Size=ud(0.95,0,0.87,0),Position=ud(0.025,0,0,30),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.w2).Color,BorderSizePixel=0})
Logt = qi({"TextLabel",nil,Font="ArialBold",FontSize="Size14",TextColor3=bc(pr.tx1).Color,Size=ud(0,80,0,14),BackgroundTransparency=0.4,BackgroundColor3=bc(pr.tx2).Color,BorderSizePixel=0})
Logt2 = qi({"TextLabel",nil,TextWrap=true,TextXAlignment="Left",TextYAlignment="Top",Font="ArialBold",FontSize="Size14",TextColor3=bc(pr.tx1).Color,Size=ud(0,260,0,14*7),BackgroundTransparency=0.2,BackgroundColor3=bc(pr.cf).Color,BorderSizePixel=0})
 
Logs = {}
LogScroll = 0 
for i=1,18 do local nl = qi({"TextLabel",Logz,Text=i,Position=ud(0,0,1-((i)*(1/18)),0),BackgroundTransparency=1,Size=ud(1,-20,1/18,0),Font="ArialBold",FontSize="Size14",TextXAlignment="Left"}) Logs[i]=nl
con[#con+1]=nl.MouseEnter:connect(function() if not pr.Log[tonumber(nl.Name)] then return end 
Logt.Parent = nl Logt.Position = ud(0,-80,0,0) Logt.Text = Clock(pr.Log[tonumber(nl.Name)][3]) Logt.Name=nl.Name
if nl.Text:sub(#nl.Text-2,#nl.Text) == "..." then 
Logt2.Name = nl.Name Logt2.Parent = nl Logt2.Position = ud(0,0,0,0) Logt2.Text = pr.Log[tonumber(nl.Name)][1] 
end
end)
con[#con+1]=nl.MouseLeave:connect(function() if not pr.Log[tonumber(nl.Name)] then return end
if Logt.Name==nl.Name then Logt.Parent = nil end 
if Logt2.Name==nl.Name then Logt2.Parent = nil end 
end)
 end
 
 
local scr,startpos,length,fenv = Logb,ud(1,-20,0,20),205,"Logs"
maxn = 18
 
 
Logu = qi({"ImageButton",Logz,Image=ds.DUpButton,Size=ud(0,20,0,20),Position=ud(1,-20,0,0),BackgroundTransparency=1})
Logd = qi({"ImageButton",Logz,Image=ds.DDownButton,Size=ud(0,20,0,20),Position=ud(1,-20,0,225),BackgroundTransparency=1})
Logb = qi({"Frame",Logz,Size=ud(0,20,0,205),Position=ud(1,-20,0,20),BorderSizePixel=0,BackgroundColor3=bc(pr.cf).Color,BackgroundTransparency=0.5})
Logi = qi({"ImageButton",Logb,Size=ud(0,20,0,20),Position=ud(0,0,0,0),BackgroundColor3=bc(pr.cf).Color,BorderSizePixel=0})
 
guieffect1(Logd,1) guieffect1(Logu,1) 
con[#con+1]=Logu.MouseButton1Down:connect(function() if LogScroll >= #pr.Log-18 then return end LogScroll=LogScroll+1 Logi.Position=ud(0,0,0,(205-Logi.Size.Y.Offset)-((205-Logi.Size.Y.Offset)/(#pr.Log-18))*LogScroll) updatelog() end)
con[#con+1]=Logd.MouseButton1Down:connect(function() if LogScroll <= 0 then return end LogScroll=LogScroll-1  Logi.Position=ud(0,0,0,(205-Logi.Size.Y.Offset)-((205-Logi.Size.Y.Offset)/(#pr.Log-18))*LogScroll) updatelog() end)
 
Logi.MouseButton1Down:connect(function(x,y)  so(ds.clicksound,workspace.CurrentCamera,1,1)
local startPos = Logi.Position bigscr.Parent = fr1
local conn = bigscr.MouseMoved:connect(function(X,Y) Logi.Position = startPos + ud(0,0,0,Y-y) 
if Logi.Position.Y.Offset <= 0 then Logi.Position = ud(0,0,0,0)  end if Logi.Position.Y.Offset >= (205-Logi.Size.Y.Offset) then Logi.Position = ud(0,0,0,(205-Logi.Size.Y.Offset))  end 
local haxx = #pr.Log-18 local percx = math.floor(haxx-((haxx/(205-Logi.Size.Y.Offset))*(Logi.Position.Y.Offset))) LogScroll=percx if LogScroll<1 then LogScroll=0 end updatelog() end)
q(function() bigscr.MouseLeave:wait() bigscr.Parent = nil conn:disconnect() end)
bigscr.MouseButton1Up:wait()  bigscr.Parent = nil
conn:disconnect() 
end)
 
updatelog = function() 
for i=maxn,1,-1 do local hax = i+LogScroll 
local tex = (pr.Log[hax] and pr.Log[hax][1] or "")
Logs[i].Text = #tex > 35 and tex:sub(1,35).. "..." or tex
Logs[i].TextColor3 = bc(pr.Log[hax] and pr.Log[hax][2] or "Black").Color
Logs[i].Name = hax
end
end
updatelog()
 
 
 
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
 
-- Side tab
Tab = {} -- button instnaces
Tabs = {} -- button information
Tabs[5] = {"Widgets",ds.DWidget,nil,nil,"hide",function() if Tabs[5][5] == "show" then Tabs[2][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Widget:TweenPosition(ud(0,235,1.1,0),nil,nil,0.4) wait(0.4) Tabs[5][5]="hide"  elseif Tabs[5][5]== "hide" then Tabs[5][5] = "showing"  so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Widget:TweenPosition(ud(0,245,1,-305),nil,nil,0.4) wait(0.4) Widget:TweenPosition(ud(0,235,1,-290),nil,nil,0.2) wait(0.2) Tabs[5][5] = "show" end end} 
Tabs[1] = {"Social",ds.DPerson,nil,nil,nil,function()  end} 
Tabs[2] = {"Log",ds.DLog,nil,nil,"hide",function() if Tabs[2][5] == "show" then Tabs[2][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Logx:TweenPosition(ud(1,-300,1.1,0),nil,nil,0.4) wait(0.4) Tabs[2][5]="hide"  elseif Tabs[2][5]== "hide" then Tabs[2][5] = "showing"  so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Logx:TweenPosition(ud(1,-320,1,-325),nil,nil,0.4) wait(0.4) Logx:TweenPosition(ud(1,-305,1,-285),nil,nil,0.2) wait(0.2) Tabs[2][5] = "show" end end} 
Tabs[3] = {"Debug/Clean",ds.DDebug,nil,nil,"hide",function() if Tabs[3][5] == "show" then Tabs[3][5] = "hiding" so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Debug:TweenPosition(ud(1.1,0,0.5,0),nil,nil,0.4) wait(0.4) Tabs[3][5]="hide" DebugTarget = p Debug3.t.Text=p.Name elseif Tabs[3][5]== "hide" then Tabs[3][5] = "showing"  so(ds.Slash2,workspace.CurrentCamera,0.6,1.5)  Debug:TweenPosition(ud(0.6,0,0.5,0),nil,nil,0.4) wait(0.4) Debug:TweenPosition(ud(0.65,0,0.5,0),nil,nil,0.2) wait(0.2) Tabs[3][5] = "show" end end} 
Tabs[4] = {"Programs",ds.DFolder,nil,nil,nil,function()  end} 
Tabs[6] = {"Anti-Virus / SafeGuard",ds.DAntiVirus,nil,nil,nil,function() end}
Tabs[7] = {"Commands",ds.DCmd,nil,nil,nil,function() end}
Tabs[8] = {"Settings",ds.DWrench,nil,nil,nil,function() end}
 
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
 
NewGui()
 
 
for i,v in pairs(workspace.CurrentCamera:children()) do 
if v.Name == "Base" then v:Remove() end 
end
 
-- anti health gui
con[#con+1] = p.DescendantAdded:connect(function(v) if string.find(v.Name:lower(),"healthgui") or (pr.AntiVirus.AntiMsg and (v:IsA("Message") or v:IsA("Hint"))) then v:Remove() end end)
for i,v in pairs(pg:children()) do if string.find(v.Name:lower(),"healthgui") or (pr.AntiVirus.AntiMsg and (v:IsA("Message") or v:IsA("Hint"))) then v:Remove() end end
 
 
-- auto set gui
con[#con+1] = p.DescendantRemoving:connect(function(v) if v == sg then wait() NewGui() end end)
 
 
con.ch = p.Chatted:connect(function(ms) local MS = ms:lower()
 
 
end)
 
con[#con+1] = game:service'RunService'.Stepped:connect(function()
if pr.AntiVirus.AntiFall and p and p.Character and p.Character:findFirstChild("Torso") and p.Character.Torso.Position.y<-100 then p.Character.Torso.CFrame=p.Character.Torso.CFrame+v3(0,120,0) p.Character.Torso.Velocity=v3(0,0,0) Log("AntiFall feature Activated",pr.log.msg) end
if pr.AntiVirus.SafetyBase then if not pr.p.Base or not pr.p.Base.Parent then
pr.p.Base = pa(nil,"Base","Block",512,1,512,true,true,0,0,"Dark green") end pr.p.Base.TopSurface="Studs" pr.p.Base.BottomSurface="Inlet" pr.p.Base.Parent = workspace.CurrentCamera pr.p.Base.CFrame=cn(0,-0.5,0)
else if pr.p.Base then pr.p.Base.Parent = nil end end
 
 
end)
 
 
script.ChildAdded:connect(function(v) 
if v.Name == "Break " then for i,v in pairs(con) do v:disconnect() end sg:Remove() bin:Remove()
end 
end)
 
 
 
 
--mediafire gtfo password 