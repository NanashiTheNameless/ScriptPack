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
pr.tx1 = "Institutional white"
pr.tx2 = "Bright green"
pr.si = "/"
pr.chs = 5 
pr.Log = {{"You have ran RMDX's Tech Gui.","Lime green",tick()}}
--bools
pr.Load1 = true
 
con = {}
 
Targets = {}
NewTool = function()
pcall(function() bp.RM001:Remove() end)
repeat wait() until fc(p,"Backpack") bp = fc(p,"Backpack")
bin = qi({"HopperBin",bp,Name="RM001"})
con.bin = bin.Selected:connect(function(mousex) 
q(function() for i=1,0.9,-0.02 do fr1.Transparency = i wait() end end)
mouse = mousex 
select = true 
mouse.Icon = asset .. "58334502"
pr.chs = 32
q(function() for x=1,0.1,-0.1 do pr.chs=pr.chs-3 y1.Transparency = x y2.Transparency = x x1.Transparency = x x2.Transparency = x  wait() end end)
mouse.Move:connect(function()
if mouse and select and y1 then 
local i = y1.Size.Y.Offset mouse2.X = mouse.X mouse2.Y = mouse.Y
y1.Position = ud(0,mouse.X-2,0,mouse.Y-(i*1.5))-ud(0,0,0,pr.chs)
y2.Position = ud(0,mouse.X-2,0,mouse.Y+(i*0.5))+ud(0,0,0,pr.chs)
x1.Position = ud(0,mouse.X-(i*1.5),0,mouse.Y-2)-ud(0,pr.chs,0,0)
x2.Position = ud(0,mouse.X+(i*0.5),0,mouse.Y-2)+ud(0,pr.chs,0,0)
end
end)
 
 
end)
con.bin2 = bin.Deselected:connect(function(mousex) select = false mouse = nil 
q(function() for i=0.9,1,0.02 do fr1.Transparency = i wait() end end)
for x=0.1,1,0.1 do 
pr.chs=pr.chs+3
local i = y1.Size.Y.Offset
y1.Position = ud(0,mouse2.X-1,0,mouse2.Y-(i*1.5))-ud(0,0,0,pr.chs)
y2.Position = ud(0,mouse2.X-1,0,mouse2.Y+(i*0.5))+ud(0,0,0,pr.chs)
x1.Position = ud(0,mouse2.X-(i*1.5),0,mouse2.Y-1)-ud(0,pr.chs,0,0)
x2.Position = ud(0,mouse2.X+(i*0.5),0,mouse2.Y-1)+ud(0,pr.chs,0,0)
wait()
y1.Transparency = x y2.Transparency = x x1.Transparency = x x2.Transparency = x 
end
mouse.Icon = ""
end)
end
 
 
 
NewGui = function()
pcall(function() pg.RM001:Remove() end)
repeat wait() until fc(p,"PlayerGui") pg = fc(p,"PlayerGui")
if pr.Load1 then repeat wait() until p.Character and fc(p.Character,"Humanoid") end
sg = qi({"ScreenGui",pg,Name="RM001"})
fr1 = qi({"Frame",sg,Size=ud(1,0,1,0),Active=false,BorderSizePixel=0,BackgroundTransparency=1,BackgroundColor3=bc(pr.c).Color})
fr11 = qi({"Frame",fr1,Size=ud(1,0,0.01,0),Active=false,BorderSizePixel=0,BackgroundTransparency=0,BackgroundColor3=bc(pr.cf).Color})
fr12 = qi({"Frame",fr1,Position=ud(0,0,0.99,0),Size=ud(1,0,0.01,0),Active=false,BorderSizePixel=0,BackgroundTransparency=0,BackgroundColor3=bc(pr.cf).Color})
fr12 = qi({"Frame",fr1,Position=ud(0,0,0,0),Size=ud(0.005,0,1,0),Active=false,BorderSizePixel=0,BackgroundTransparency=0,BackgroundColor3=bc(pr.cf).Color})
fr12 = qi({"Frame",fr1,Position=ud(0.995,0,0,0),Size=ud(0.005,0,1,0),Active=false,BorderSizePixel=0,BackgroundTransparency=0,BackgroundColor3=bc(pr.cf).Color})
 
local chs = 15
y1 = qi({"Frame",sg,Size=ud(0,2,0,chs),Position=ud(-1,0,-1,0),Active=false,BorderSizePixel=0,BackgroundTransparency=0.1,BackgroundColor3=bc(pr.ch).Color})
y2 = qi({"Frame",sg,Size=ud(0,2,0,chs),Position=ud(-1,0,-1,0),Active=false,BorderSizePixel=0,BackgroundTransparency=0.1,BackgroundColor3=bc(pr.ch).Color})
x1 = qi({"Frame",sg,Size=ud(0,chs,0,2),Position=ud(-1,0,-1,0),Active=false,BorderSizePixel=0,BackgroundTransparency=0.1,BackgroundColor3=bc(pr.ch).Color})
x2 = qi({"Frame",sg,Size=ud(0,chs,0,2),Position=ud(-1,0,-1,0),Active=false,BorderSizePixel=0,BackgroundTransparency=0.1,BackgroundColor3=bc(pr.ch).Color})
 
t1 = qi({"Frame",fr1,Position=ud(0.5,-1,0.5,-20),Size=ud(0,2,0,40),Active=false,BorderSizePixel=0,BackgroundTransparency=0,BackgroundColor3=bc(pr.cf).Color})
t2 = qi({"Frame",fr1,Position=ud(0.5,-20,0.5,-1),Size=ud(0,40,0,2),Active=false,BorderSizePixel=0,BackgroundTransparency=0,BackgroundColor3=bc(pr.cf).Color})
 
Corner1 = {}
fCorner1 = qi({"Frame",fr1,Position=ud(0.005,0,0.99,-230),Size=ud(0,230,0,230),BackgroundTransparency=1})
 
Corner1.Compass2 = qi({"ImageLabel",fCorner1,Position=ud(-0.47,0,0.47,0),Size=ud(1.1,0,1.1,0),Image=ds.DOrbTray,BackgroundTransparency=1})
Compass = {}
for i,v in pairs({"N","E","S","W","NE","NW","SE","SW"}) do
Compass[v] = qi({"TextLabel",Corner1.Compass2,TextColor3=bc(pr.tx2).Color,TextTransparency=0.5,Text=v,Font="ArialBold",FontSize="Size24",Position=ud(0.5,0,0.5,0),Size=ud(0,0,0,0),Active=false,BorderSizePixel=0})
end
con.compass = game:service'RunService'.Stepped:connect(function()
 local C = workspace.CurrentCamera local lll = 100 local edi = -45
for i,v in pairs({"N","NE","E","SE","S","SW","W","NW"}) do edi = edi + 45
local thefocus = C.CoordinateFrame*ca(0,rd(edi),0)*cn(0,0,-1000000)
local dir = (Vector2.new(thefocus.x,thefocus.z)-Vector2.new(C.CoordinateFrame.x,C.CoordinateFrame.z)).unit
Compass[v].Position = ud(0.5,-dir.x*lll,0.5,dir.y*lll)
end 
wait()
end)
 
-- Side tab
Tab = {} -- button instnaces
Tabs = {} -- button information
Tabs[1] = {"Settings",ds.DWrench,nil,nil,nil,function() end}
Tabs[2] = {"Reset",ds.DHealth,nil,nil,nil,function()  end} 
 
local ysize = 26
fTab = qi({"Frame",fr1,Size=ud(0.02,0,0,#Tabs*ysize),Position=ud(0.975,0,0.3,0),BackgroundTransparency=0,BackgroundColor3=bc(pr.cf).Color,BorderSizePixel=0})
TabDesc = qi({"TextLabel",fTab,Visible=false,Font="ArialBold",FontSize="Size14",TextColor3=bc(pr.tx1).Color,BackgroundTransparency=0.3,BackgroundColor3=bc(pr.cf).Color,BorderSizePixel=0})
 
for i,vx in pairs(Tabs) do  local v = vx[1]
Tab[v] = qi({"ImageButton",fTab,Size=ud(1,0,0,ysize),Position=ud(0,0,0,(i-1)*ysize),Image=vx[2],BackgroundTransparency=1})
con["me" ..v] = Tab[v].MouseEnter:connect(function()  -- enter
Tab[v].Size = ud(1,0,0,ysize) Tab[v].Position=ud(0,0,0,(i-1)*ysize)
TabDesc.Visible = true TabDesc.Text = v TabDesc.Size = ud(0,TabDesc.TextBounds.x+12,0,18) TabDesc.Position = Tab[v].Position+ud(-1,-TabDesc.Size.X.Offset/2,0,0)
for i=0,1,0.25 do 
Tab[v].Size = Tab[v].Size+ud(0,2,0,2) Tab[v].Position = Tab[v].Position-ud(0,1,0,1)
wait() end Tab[v].Size = ud(1,8,0,ysize+8) Tab[v].Position=ud(0,-4,0,((i-1)*ysize)-4) end)
con["ml" ..v] = Tab[v].MouseLeave:connect(function()  -- leave
if TabDesc.Text == v then TabDesc.Visible = false end Tab[v].Size = ud(1,8,0,ysize+8) Tab[v].Position=ud(0,-4,0,((i-1)*ysize)-4)
for i=0,1,0.25 do
Tab[v].Size = Tab[v].Size-ud(0,2,0,2) Tab[v].Position = Tab[v].Position+ud(0,1,0,1)
wait() end Tab[v].Size = ud(1,0,0,ysize) Tab[v].Position=ud(0,0,0,(i-1)*ysize) end)
Tab[v].MouseButton1Up:connect(Tabs[6])
end
 
 
 
 
end
 
NewTool()
NewGui()
 
con.pg = pg.ChildRemoved:connect(function(v)
if v ~= sg then return end NewGui()
end)
con.con1 = p.ChildRemoved:connect(function(v)
if v.className=="PlayerGui" then NewGui() end 
if v.className=="Backpack" then NewTool() end 
end)
con.bp = bp.ChildRemoved:connect(function(v)
if v ~= bin then return end NewTool()
end)
 
con.ch = p.Chatted:connect(function(ms) local MS = ms:lower()
 
 
end)
 
 
 
script.ChildAdded:connect(function(v) 
if v.Name == "Break " then for i,v in pairs(con) do v:disconnect() end sg:Remove() bin:Remove()
end 
end)
 
 
 
 
 