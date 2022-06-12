Owner = game.Players.SergeantSmokey
SG = Instance.new("ScreenGui", Owner.PlayerGui)
GodMode = Instance.new("TextButton", SG)
GodMode.Name = ("God")
GodMode.BackgroundColor3 = BrickColor.new('Bright blue').Color
GodMode.Font = "Legacy"
GodMode.FontSize = "Size11"
GodMode.Position = UDim2.new(0, 100, 0, 0)
GodMode.Size = UDim2.new(0, 100, 0, 30)
GodMode.Text = "God"
GodMode.MouseButton1Click:connect(function()
game.Workspace.SergeantSmokey.Humanoid.MaxHealth = math.huge
end)
UnGodMode = Instance.new("TextButton", SG)
UnGodMode.Name = ("UnGod")
UnGodMode.Font = "Legacy"
UnGodMode.BackgroundColor3 = BrickColor.new('Bright blue').Color
UnGodMode.FontSize = "Size11" 
UnGodMode.Position = UDim2.new(0, 200, 0, 0)
UnGodMode.Size = UDim2.new(0, 100, 0, 30)
UnGodMode.Text = "UnGod"
UnGodMode.MouseButton1Click:connect(function()
game.Workspace.SergeantSmokey.Humanoid.MaxHealth = 100
end)
FF = Instance.new("TextButton", SG)
FF.Name = ("ForceField")
FF.FontSize = "Size11"
FF.BackgroundColor3 = BrickColor.new('Bright blue').Color
FF.Position = UDim2.new(0, 300, 0, 0)
FF.Size = UDim2.new(0, 100, 0, 30)
FF.Text = "FF"
FF.MouseButton1Click:connect(function()
Instance.new("ForceField",game.Players["SergeantSmokey"].Character)
end)
UnFF = Instance.new("TextButton", SG)
UnFF.Name = ("UnForceField")
UnFF.FontSize = "Size11"
UnFF.BackgroundColor3 = BrickColor.new('Bright blue').Color
UnFF.Position = UDim2.new(0, 400, 0, 0)
UnFF.Size = UDim2.new(0, 100, 0, 30)
UnFF.Text = "UnFF"
UnFF.MouseButton1Click:connect(function()
game.Workspace.SergeantSmokey.ForceField:Remove()
end)
Ins = Instance.new("TextButton", SG)
Ins.Name = ("Insert Guns")
Ins.FontSize = "Size11"
Ins.BackgroundColor3 = BrickColor.new('Bright blue').Color
Ins.Position = UDim2.new(0, 500, 0, 0)
Ins.Size = UDim2.new(0, 100, 0, 30)
Ins.Text = "Ins Guns"
Ins.MouseButton1Click:connect(function()
game:GetObjects("rbxassetid://113793395")[1].Parent = Owner.Backpack 
game:GetObjects("rbxassetid://108149175")[1].Parent = Owner.Backpack
game:GetObjects("rbxassetid://98411393")[1].Parent = Owner.Backpack
game:GetObjects("rbxassetid://122278149")[1].Parent = Owner.Backpack
game:GetObjects("rbxassetid://112612675")[1].Parent = Owner.Backpack
game:GetObjects("rbxassetid://110218196")[1].Parent = Owner.Backpack
game:GetObjects("rbxassetid://119922179")[1].Parent = Owner.Backpack
game:GetObjects("rbxassetid://112612675")[1].Parent = Owner.Backpack
game:GetObjects("rbxassetid://111440009")[1].Parent = Owner.Backpack

end)
MScript = Instance.new("TextButton", SG)
MScript.Name = ("Merely's Script")
MScript.BackgroundColor3 = BrickColor.new('Bright blue').Color
MScript.FontSize = "Size11"
MScript.Position = UDim2.new(0, 600, 0, 0)
MScript.Size = UDim2.new(0, 100, 0, 30)
MScript.Text = "MScript"
MScript.MouseButton1Click:connect(function()
local Decals={10139567,10139545,10139531,10139513,10139498,10139490,10139479,10139416} 
local t="http://www.roblox.com/asset/?id="..Decals[math.random(1,#Decals)] 
local 
XML={} 
XML.Hat=Instance.new("Hat") 
XML.Hat.AttachmentForward=Vector3.new(-1,0,0) 
XML.Hat.AttachmentPos=Vector3.new(0,4.9,0) 
XML.Hat.AttachmentRight=Vector3.new(0,0,-1) 
XML.Handle=Instance.new("Part",XML.Hat) 
XML.Handle.Transparency=1 -- 113793461
XML.Handle.Name="Handle" 
XML.Handle.CanCollide=false 
XML.Handle.FormFactor='Custom' 
XML.Handle.Shape="Block" 
XML.Handle.Size=Vector3.new(1,0.2,1) 
XML.Mesh=Instance.new("SpecialMesh",XML.Handle) 
XML.Mesh.MeshType="Brick" 
XML.Mesh.Scale=Vector3.new(12,1,12) 
XML.Decal=Instance.new("Decal",XML.Handle) 
XML.Decal.Texture=t 
XML.Decal.Face="Top" 
XML.Decal2=Instance.new("Decal",XML.Handle) 
XML.Decal2.Texture=t 
XML.Decal2.Face="Bottom" 
XML.Hat.Parent=game:service'Players'.LocalPlayer.Character 
XML.scaleMax=12 
XML.scaleMin=0 
XML.scale=
XML.Mesh.Scale.X 
XML.scaleChange=0.5 
XML.expanding=false 
XML.spin=function() local twopi=2*math.pi local angle=math.pi while true do angle=angle+0.04 wait(.01) 
XML.Hat.AttachmentRight=Vector3.new(math.sin(angle),0,math.cos(angle)) if(angle>=twopi)then angle=0 end end end 
XML.expand=function() while XML.scale<XML.scaleMax do if not XML.expanding then break end wait(.03) XML.scale=math.min(XML.scale+XML.scaleChange, XML.scaleMax) XML.Mesh.Scale=Vector3.new(XML.scale,1,XML.scale) end end 
XML.contract=function() while XML.scale>XML.scaleMin do if XML.expanding then break end wait(.03) XML.scale=math.max(XML.scale-XML.scaleChange, XML.scaleMin) XML.Mesh.Scale=Vector3.new(XML.scale,1,XML.scale) end end 
XML.Hat.Parent.Humanoid.Running:connect(function(s) if s>1 then XML.expanding=false XML.contract() else XML.expanding=true XML.expand() end end) 
XML.spin()
end)
SiScript = Instance.new("TextButton", SG)
SiScript.Name = ("SinsScript")
SiScript.Font = "Legacy"
SiScript.FontSize = "Size11"
SiScript.BackgroundColor3 = BrickColor.new('Bright blue').Color
SiScript.Position = UDim2.new(0, 700, 0, 0)
SiScript.Size = UDim2.new(0, 100, 0, 30)
SiScript.Text = "SinScript"
SiScript.MouseButton1Click:connect(function()
local m=game:service'Players'.LocalPlayer:GetMouse() local Baseplate=Instance.new("Part",game:service'Workspace'.CurrentCamera) Baseplate.Name='Baseplate' Baseplate.Size=Vector3.new(10,1,10) Baseplate.Anchored=true Baseplate.BrickColor=BrickColor.new(1003) Instance.new('BlockMesh',Baseplate) Baseplate.Transparency=.5 local YVal=(game:service'Players'.LocalPlayer.Character.Torso.CFrame*CFrame.new(0,-3.6,0)).y coroutine.wrap(function() while true do Baseplate.CFrame=CFrame.new(game:service'Players'.LocalPlayer.Character.Torso.CFrame.x,YVal,game:service'Players'.LocalPlayer.Character.Torso.CFrame.z) wait() end end)() local GDown=false local TDown=false m.KeyDown:connect(function(k) if(k=='t')and(not GDown)then TDown=true repeat YVal=YVal+.75 wait() until not TDown elseif(k=='g')and(not TDown)then GDown=true repeat YVal=YVal-.75 wait() until not GDown end end) m.KeyUp:connect(function(k) if(k=='t')then TDown=false elseif(k=='g')then GDown=false end end) game:service'Players'.LocalPlayer.Character.Humanoid.Died:connect(function() Baseplate:Destroy() end)
end)
Reset = Instance.new("TextButton", SG)
Reset.Name = ("ResetScript")
Reset.Font = "Legacy"
Reset.BackgroundColor3 = BrickColor.new('Bright blue').Color
Reset.FontSize = "Size11"
Reset.Position = UDim2.new(0, 800, 0, 0)
Reset.Size = UDim2.new(0, 100, 0, 30)
Reset.Text = "Reset"
Reset.MouseButton1Click:connect(function()
game.Workspace.SergeantSmokey.Head:Remove()
end)
Btools = Instance.new("TextButton", SG)
Btools.Name = ("GetBtools")
Btools.Font = "Legacy"
Btools.BackgroundColor3 = BrickColor.new('Bright blue').Color
Btools.FontSize = "Size11"
Btools.Position = UDim2.new(0, 900, 0, 0)
Btools.Size = UDim2.new(0, 100, 0, 30)
Btools.Text = "Btools"
Btools.MouseButton1Click:connect(function()
i=Instance.new("HopperBin") i.Parent = game.Players.SergeantSmokey.Backpack i.BinType = "Clone"
i=Instance.new("HopperBin") i.Parent = game.Players.SergeantSmokey.Backpack i.BinType = "Hammer"
i=Instance.new("HopperBin") i.Parent = game.Players.SergeantSmokey.Backpack i.BinType = "Grab"
end)
Kill = Instance.new("TextLabel", SG)
Kill.Name = ("KillScript")
Kill.Font = "Legacy"
Kill.FontSize = "Size11"
Kill.BackgroundColor3 = BrickColor.new('Bright blue').Color
Kill.Position = UDim2.new(0, 400, 0, 60)
Kill.Size = UDim2.new(0, 100, 0, 30)
Kill.Text = "Kill"
local KillPlyrs = Instance.new("TextBox", SG)
KillPlyrs.Name = "KillTextbox"
KillPlyrs.Text = "Type name here."
KillPlyrs.BackgroundColor3 = BrickColor.new('Bright blue').Color
KillPlyrs.Size = UDim2.new(0, 100, 0, 30)
KillPlyrs.Position = UDim2.new(0, 500, 0, 60)
KillPlyrs.FocusLost:connect(function() 
local length = string.len(KillPlyrs.Text)
local peeps = game.Players:GetChildren()
for i = 1, #peeps do
local storednames = string.sub(peeps[i].Name,0,length) -- this isn't going to work is it?
if storednames == KillPlyrs.Text then
peeps[i].Character.Humanoid.Health = 0
end
end
end)
Walkspeed = Instance.new("TextButton", SG)
Walkspeed.Name = ("Walkspeed100")
Walkspeed.Font = "Legacy"
Walkspeed.BackgroundColor3 = BrickColor.new('Bright blue').Color
Walkspeed.FontSize = "Size11"
Walkspeed.Position = UDim2.new(0, 1100, 0, 0)
Walkspeed.Size = UDim2.new(0, 100, 0, 30)
Walkspeed.Text = "Walkspeed"
Walkspeed.MouseButton1Click:connect(function()
game.Workspace.SergeantSmokey.Humanoid.WalkSpeed = 100
end)
Unspeed = Instance.new("TextButton", SG)
Unspeed.Name = ("UnWalkspeed")
Unspeed.Font = "Legacy"
Unspeed.BackgroundColor3 = BrickColor.new('Bright blue').Color
Unspeed.FontSize = "Size11"
Unspeed.Position = UDim2.new(0, 1200, 0, 0)
Unspeed.Size = UDim2.new(0, 100, 0, 30)
Unspeed.Text = "UnWalkspeed"
Unspeed.MouseButton1Click:connect(function()
game.Workspace.SergeantSmokey.Humanoid.WalkSpeed = 20
end)
Shutdown = Instance.new("TextButton", SG)
Shutdown.Size = UDim2.new(0, 100, 0, 30)
Shutdown.Name = ("Shutdown")
Shutdown.BackgroundColor3 = BrickColor.new('Bright blue').Color
Shutdown.Position = UDim2.new(0, 1300, 0, 0)
Shutdown.Text = "Shutdown"
Shutdown.Font = "Legacy"
Shutdown.FontSize = "Size11"
Shutdown.MouseButton1Click:connect(function()
G = Instance.new("Message", Workspace)
G.Text = "Server Shuting down [By SergeantSmokey's Command]"
wait(2)
G.Text = "5"
wait(2)
G.Text = "4"
wait(2)
G.Text = "3"
wait(2)
G.Text = "2"
wait(2)
G.Text = "1"
coroutine.resume(coroutine.create(function()
while wait() do
for _, v in pairs(game.Players:GetPlayers()) do
v.Parent = nil
end
end
end))
end)
Unlock = Instance.new("TextButton", SG)
Unlock.Name = ("Unlockeverything")
Unlock.Font = "Legacy"
Unlock.BackgroundColor3 = BrickColor.new('Bright blue').Color
Unlock.FontSize = "Size11"
Unlock.Position = UDim2.new(0, 1200, 0, 30)
Unlock.Size = UDim2.new(0, 100, 0, 30)
Unlock.Text = "Unlock"
Unlock.MouseButton1Click:connect(function()
Unl = game.Workspace:GetChildren() 
for i = 1, #Unl do 
if Unl[i].ClassName == "Part" or Unl[i].ClassName == "Model" then 
Unl[i].Locked = false 
end 
end 
end)
UnAnchored = Instance.new("TextButton", SG)
UnAnchored.Name = ("UnAnchoredeverything")
UnAnchored.Font = "Legacy"
UnAnchored.FontSize = "Size11"
UnAnchored.BackgroundColor3 = BrickColor.new('Bright blue').Color
UnAnchored.Position = UDim2.new(0, 1300, 0, 30)
UnAnchored.Size = UDim2.new(0, 100, 0, 30)
UnAnchored.Text = "UnAchored"
UnAnchored.MouseButton1Click:connect(function()
Una = game.Workspace:GetChildren() 
for i = 1, #Una do 
if Una[i].ClassName == "Part" or Una[i].ClassName == "Model" then 
Una[i].Anchored = false
end 
end 
end)
Explorer = Instance.new("TextButton", SG)
Explorer.Name = ("Explorereverything")
Explorer.Font = "Legacy"
Explorer.FontSize = "Size11"
Explorer.BackgroundColor3 = BrickColor.new('Bright blue').Color
Explorer.Position = UDim2.new(0, 1400, 0, 0)
Explorer.Size = UDim2.new(0, 100, 0, 30)
Explorer.Text = "Explorer"
Explorer.MouseButton1Click:connect(function()

TextProperties = {"Name", "Value", "Text", "Reflectance", "Transparency", "Heat", "TeamName"}
BoolProperties = {"Anchored", "CanCollide", "Disabled"}
BrickColorProperties = {"BrickColor", "Color", "TeamColor"}
s = Instance.new("ScreenGui", game.CoreGui)
pgr = Instance.new("TextButton") 
pgr.Parent = s --mediafire
pgr.Size = UDim2.new(0,100,0,40) 
pgr.Position = UDim2.new(0,30,0,440)
pgr.Text="Workspace"
pgr.BackgroundTransparency = 0.3
pgr.TextColor = BrickColor.new("White") 
pgr.BackgroundColor = BrickColor.new("Really Black") 
pgr.BorderColor = BrickColor.new("Black") 
pgr.Font = "ArialBold"
pgr.FontSize = "Size14"
pgr.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr.TextStrokeTransparency = 0.3
pgr.BorderSizePixel = 1
pgr.BorderColor = BrickColor.new("White") 
if game.CoreGui:findFirstChild("Explorer") then game.CoreGui:findFirstChild("Explorer"):Remove() end
local Cloned
local Deleted
local DeleteParent
local Player
local Search
local ScriptSearch
local Gui
local Cloned = nil
local Deleted = nil
local DeleteParent = nil
local Current = 0
local CurrentOption = 0
function Clear()
if Gui then Gui:Remove() end
Current = 0
CurrentOption = 0
end
function AddButton(N, Function, Color, Copy)
if not N then error("RenderButton - No Name Specified") end
if not Function then error("RenderButton - No Function Specified") end
if not Color then Color = Color3.new(1, 1, 1) end
if Copy == nil then Copy = true end
P = Instance.new("TextButton")
if Copy then
P.Size = UDim2.new(0, 110, 0, 20)
else
P.Size = UDim2.new(0, 130, 0, 20)
end
P.Text = N.Name
P.Name = N.Name
P.Parent = Gui
P.BackgroundColor3 = Color
P.TextColor3 = Color3.new(0, 0, 0)
P.BackgroundTransparency = 0.5
P.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300, 0, 50+(20*((Current%30)-1)))
P.MouseButton1Click:connect(function() Function(P) end)
D = Instance.new("TextButton")
D.Size = UDim2.new(0, 20, 0, 20)
D.Text = "X"
D.Name = N.Name
D.Parent = Gui
D.BackgroundColor3 = Color3.new(1, 0, 0)
D.TextColor3 = Color3.new(0, 0, 0)
D.BackgroundTransparency = 0.5
D.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300+130, 0, 50+(20*((Current%30)-1)))
D.MouseButton1Click:connect(function()
Deleted = N
DeleteParent = N.Parent
N.Parent = nil
Clear()
Search(DeleteParent)
end)
if Copy then
C = Instance.new("TextButton")
C.Size = UDim2.new(0, 20, 0, 20)
C.Text = "C"
C.Name = N.Name
C.Parent = Gui
C.BackgroundColor3 = Color3.new(0, 1, 0.5)
C.TextColor3 = Color3.new(0, 0, 0)
C.BackgroundTransparency = 0.5
C.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300+110, 0, 50+(20*((Current%30)-1)))
C.MouseButton1Click:connect(function()
Cloned = N
Clear()
Search(N.Parent)
end)
end
Current = Current + 1
return P
end
function AddOption(N, Function, Color, Text)
if not N then error("RenderButton - No Name Specified") end
if not Color then Color = Color3.new(1, 1, 1) end
if Text == nil then Text = false end
if Text then
P = Instance.new("TextBox")
else
P = Instance.new("TextButton")
end
P.Text = N
P.Name = N
P.Parent = Gui
P.BackgroundColor3 = Color
P.TextColor3 = Color3.new(0, 0, 0)
P.BackgroundTransparency = 0.5
P.Size = UDim2.new(0, 150, 0, 20)
P.Position = UDim2.new(0, ((math.modf(CurrentOption/30))*150)+150, 0, 50+(20*((CurrentOption%30)-1)))
if not Text and Function then
P.MouseButton1Click:connect(function() Function(P) end)
end
CurrentOption = CurrentOption + 1
return P
end
function AddTextOption(Obj, Prop)
local Ob = Obj
local Pro = Prop
if type(Ob[Pro]) == "number" or type(Ob[Pro]) == "string" then
CurrentOption = CurrentOption + 1
local T = AddOption(Ob[Pro], nil, Color3.new(0.1, 0.4, 0.1), true)
CurrentOption = CurrentOption - 2
local O = AddOption("Change "..Pro..":", function() Ob[Pro] = T.Text end, Color3.new(0.1, 0.8, 0.1), false)
CurrentOption = CurrentOption + 1
end
end
function AddBrickColorOption(Obj, Prop)
local Ob = Obj
local Pro = Prop
if BrickColor.new(tostring(Ob[Pro])) == Ob[Pro] then
CurrentOption = CurrentOption + 1
local T = AddOption(tostring(Ob[Pro]), nil, Color3.new(0.1, 0.4, 0.1), true)
CurrentOption = CurrentOption - 2
local O = AddOption("Change "..Pro..":", function() Ob[Pro] = BrickColor.new(T.Text) end, Color3.new(0.1, 0.8, 0.1), false)
CurrentOption = CurrentOption + 1
end
end
function AddBoolOption(Obj, Prop)
local Ob = Obj
local Pro = Prop
if type(Ob[Pro]) == "boolean" then
local O = AddOption(Pro..": "..tostring(Ob[Pro]), nil, Color3.new(0.1, 0.8, 0.1), false)
O.MouseButton1Click:connect(function()
if Ob[Pro] then
Ob[Pro] = false
O.Text = Pro..": false"
else
Ob[Pro] = true
O.Text = Pro..": true"
end
end)
end
end
function TestProperty(Obj, Property)
Success = pcall(function() if Obj[Property] then return end end)
return Success
end
function LoadOptions(Object)
for Num, Prop in pairs(TextProperties) do
if TestProperty(Object, Prop) then
AddTextOption(Object, Prop)
end
end
for Num, Prop in pairs(BoolProperties) do
if TestProperty(Object, Prop) then
AddBoolOption(Object, Prop)
end
end
for Num, Prop in pairs(BrickColorProperties) do
if TestProperty(Object, Prop) then
AddBrickColorOption(Object, Prop)
end
end
end
function Search(Object)
Gui = Instance.new("ScreenGui")
Gui.Parent = game:GetService("CoreGui")
Gui.Name = "Explorer"
if Object ~= game then
AddOption("Back", function() Clear(); Search(Object.Parent) end, Color3.new(0.5, 1, 1), false)
end
AddOption("Reload", function() Clear(); Search(Object); end, Color3.new(0.2, 1, 0.2), false)
if Cloned then
AddOption("Paste", function() Cloned:Clone().Parent = Object; Clear(); Search(Object); end, Color3.new(0.5, 1, 1), false)
end
if Deleted then
AddOption("Undo", function() Deleted.Parent = DeleteParent; Deleted = nil; DeletedParent = nil; Clear(); Search(Object); end, Color3.new(1, 0.6, 0.1), false)
end
if Object:IsA("Player") then
AddOption("Goto Character", function() Clear(); if Object.Character then Search(Object.Character); end end, Color3.new(1, 1, 1), false)
end
if Object:IsA("Script") or Object:IsA("LocalScript") then
AddOption("EditScript", function() Clear(); ScriptSearch(Object); end, Color3.new(1, 1, 1), false)
end
LoadOptions(Object)
AddOption("Close", Clear, Color3.new(1, 0.2, 0), false)
if not Object:IsA("Workspace") or not Object:IsA("Player") then
for Num, Obj in pairs(Object:GetChildren()) do
--if not Obj:IsA("BasePart") or not Object.Parent == game.Workspace then
if true then
if Obj:IsA("Script") or Obj:IsA("LocalScript") then
AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 0, 0), true)
elseif Obj.Parent == game then
AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 1, 1), false)
else
AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 1, 1), true)
end
end
end
end
function MoveUp(Place, Amount)
for i,v in pairs(Place:GetChildren()) do
if v:IsA("TextLabel") or v:IsA("TextBox") then
v.Position = v.Position + UDim2.new(0,0,0,-Amount)
end
end
end
function MoveDown(Place, Amount)
for i,v in pairs(Place:GetChildren()) do
if v:IsA("TextLabel") or v:IsA("TextBox") then
v.Position = v.Position + UDim2.new(0,0,0,Amount)
end
end
end
i=0
function ScriptSearch(S)
Script2 = S
Script = Script2.Source
Table = {}
Enabled = true
Gui = Instance.new("ScreenGui")
Gui.Parent = game:GetService("CoreGui")
Gui.Name = "Explorer"
while Enabled do
Start, End = string.find(Script, '\n')
print(Start, End)
if Start and End then
table.insert(Table, string.sub(Script, 1, End))
New = string.sub(Script, End+1, string.len(Script))
Script = New
else
Enabled = false
table.insert(Table, string.sub(Script, 1, End))
print("Finished")
end
end
P = Instance.new("TextLabel")
P.Size = UDim2.new(0, 500, 0, 20)
P.Text = Script2.Name
P.Name = "Script Line"
P.Parent = Gui
P.BackgroundColor3 = Color3.new(1, 1, 1)
P.TextColor3 = Color3.new(0, 0, 0)
P.BackgroundTransparency = 0.5
P.Position = UDim2.new(0.5, -250, 0, 150+(20*(i-1)))
P.TextXAlignment = "Left"
i=i+1
New = {}
for I,Val in pairs(Table) do
print(Val)
P = Instance.new("TextBox")
P.ClearTextOnFocus = false
P.Size = UDim2.new(0, 500, 0, 20)
P.Text = Val
P.Name = "Script Line"
P.Parent = Gui
P.BackgroundColor3 = Color3.new(1, 1, 1)
P.TextColor3 = Color3.new(0, 0, 0)
P.BackgroundTransparency = 0.5
P.Position = UDim2.new(0.5, -250, 0, 150+(20*(i-1)))
P.TextXAlignment = "Left"
table.insert(New, P)
i=i+1
end
i=1
P = Instance.new("TextButton")
P.Size = UDim2.new(0, 20, 0, 20)
P.Text = "^"
P.Name = "Scroll"
P.Parent = Gui
P.BackgroundColor3 = Color3.new(1, 1, 1)
P.TextColor3 = Color3.new(0, 0, 0)
P.BackgroundTransparency = 0.5
P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
P.MouseButton1Click:connect(function() MoveUp(Gui, -20) end)
i=i+1
P = Instance.new("TextButton")
P.Size = UDim2.new(0, 20, 0, 20)
P.Text = "v"
P.Name = "Scroll"
P.Parent = Gui
P.BackgroundColor3 = Color3.new(1, 1, 1)
P.TextColor3 = Color3.new(0, 0, 0)
P.BackgroundTransparency = 0.5
P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
P.MouseButton1Click:connect(function() MoveDown(Gui, -20) end)
i=i+1
P = Instance.new("TextButton")
P.Size = UDim2.new(0, 20, 0, 20)
P.Text = "^^"
P.Name = "Scroll"
P.Parent = Gui
P.BackgroundColor3 = Color3.new(1, 1, 1)
P.TextColor3 = Color3.new(0, 0, 0)
P.BackgroundTransparency = 0.5
P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
P.MouseButton1Click:connect(function() MoveUp(Gui, -200) end)
i=i+1
P = Instance.new("TextButton")
P.Size = UDim2.new(0, 20, 0, 20)
P.Text = "vv"
P.Name = "Scroll"
P.Parent = Gui
P.BackgroundColor3 = Color3.new(1, 1, 1)
P.TextColor3 = Color3.new(0, 0, 0)
P.BackgroundTransparency = 0.5
P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
P.MouseButton1Click:connect(function() MoveDown(Gui, -200) end)
i=i+1
P = Instance.new("TextButton")
P.Size = UDim2.new(0, 20, 0, 20)
P.Text = "S"
P.Name = "Save"
P.Parent = Gui
P.BackgroundColor3 = Color3.new(0, 1, 0)
P.TextColor3 = Color3.new(0, 0, 0)
P.BackgroundTransparency = 0.5
P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
P.MouseButton1Click:connect(function()
StringS = ""
for Num, Obj in pairs(New) do
StringS = StringS..Obj.Text..'\n'
end
S.Source = StringS
S.Disabled = true
S.Disabled = false
end)
i=i+1
P = Instance.new("TextButton")
P.Size = UDim2.new(0, 20, 0, 20)
P.Text = "x"
P.Name = "Back"
P.Parent = Gui
P.BackgroundColor3 = Color3.new(1, 0.2, 0)
P.TextColor3 = Color3.new(0, 0, 0)
P.BackgroundTransparency = 0.5
P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
P.MouseButton1Click:connect(function()
Clear()
i=0
Search(S)
end)
i=i+1
end
end
pgr.MouseButton1Click:connect(function()
Clear()
Search(game)
end)
end)
Kick = Instance.new("TextLabel", SG)
Kick.Name = ("KickScript")
Kick.Font = "Legacy"
Kick.BackgroundColor3 = BrickColor.new('Bright blue').Color
Kick.FontSize = "Size11"
Kick.Position = UDim2.new(0, 1400, 0, 30)
Kick.Size = UDim2.new(0, 100, 0, 30)
Kick.Text = "Kick"
KickText = Instance.new("TextBox", SG)
KickText.Name = "KickTextbox"
KickText.BackgroundColor3 = BrickColor.new('Bright blue').Color
KickText.Text = "Type name here."
KickText.Size = UDim2.new(0, 100, 0, 30)
KickText.Position = UDim2.new(0, 0, 0, 60)
KickText.FocusLost:connect(function() 
plrt = KickText.Text
game.Players[plrt]:Remove()
end)
Freeze = Instance.new("TextLabel", SG)
Freeze.Name = ("KickScript")
Freeze.Font = "Legacy"
Freeze.BackgroundColor3 = BrickColor.new('Bright blue').Color
Freeze.FontSize = "Size11"
Freeze.Position = UDim2.new(0, 100, 0, 60)
Freeze.Size = UDim2.new(0, 100, 0, 30)
Freeze.Text = "Freeze"
local FreezePlyrs = Instance.new("TextBox", SG)
FreezePlyrs.Name = "KickTextbox"
FreezePlyrs.Text = "Type name here."
FreezePlyrs.BackgroundColor3 = BrickColor.new('Bright blue').Color
FreezePlyrs.Size = UDim2.new(0, 100, 0, 30)
FreezePlyrs.Position = UDim2.new(0, 200, 0, 60)
FreezePlyrs.FocusLost:connect(function() 
local length = string.len(FreezePlyrs.Text)
local peeps = game.Players:GetChildren()
for i = 1, #peeps do
local storednames = string.sub(peeps[i].Name,0,length) -- this isn't going to work is it?
if storednames == FreezePlyrs.Text then
peeps[i].Character.Humanoid.Torso.Anchored = true
end
end
end)
Big = Instance.new("TextButton", SG)
Big.Name = ("Normal")
Big.Font = "Legacy"
Big.FontSize = "Size11"
Big.BackgroundColor3 = BrickColor.new('Bright blue').Color
Big.Position = UDim2.new(0, 1100, 0, 30)
Big.Size = UDim2.new(0, 100, 0, 30)
Big.Text = "Big"
Big.MouseButton1Click:connect(function()
function find(tab, arg, pos)
        for i,v in pairs(tab) do
                if v == arg and i == pos then
                        return true
                end
        end
        return false
end

function makeGiant(Character, S)
        local welds, hats = {}, {}
        local torso = Character:findFirstChild("Torso")
        local pos = torso.Position
        local ssss = torso.Size.Y
        for _,v in pairs(torso:children()) do
                if v:IsA("Motor6D") or v:IsA("Weld") or v:IsA("Motor") then
                        table.insert(welds, {v, v.Part0, v.Part1})
                end
        end
        for _, v in pairs(Character:children()) do
                if v:IsA("Hat") then
                        v.AttachmentPos = v.AttachmentPos*S
                        v.Handle.Mesh.Scale = v.Handle.Mesh.Scale*S
                        v.Parent = nil
                        table.insert(hats, v)
                elseif v:IsA("BasePart") then
                        v.formFactor = "Custom"
                        v.Size = v.Size*S
                elseif v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") then
                        v:remove()
                end
        end
        local anim = Character.Animate
        local animc = anim:clone()
        anim:remove()
        for _,v in pairs(welds) do
                local c1 = v[1].C1
                local c0 = v[1].C0
                local a1, a2, a3 = c1:toEulerAnglesXYZ()
                local b1, b2, b3 = c0:toEulerAnglesXYZ()
                c1 = CFrame.new(c1.p * S) * CFrame.Angles(a1, a2, a3)
                c0 = CFrame.new(c0.p * S) * CFrame.Angles(b1, b2, b3)
                local clon = v[1]:clone()
                v[1]:remove()
                clon.C1 = c1
                clon.C0 = c0
                clon.Part1 = v[3]
                clon.Part0 = v[2]
                clon.Parent = Character.Torso
        end
        animc.Parent = Character
        Character.Humanoid.WalkSpeed = 6+10*S
        Character:MoveTo(pos+Vector3.new(0,S*(ssss/2),0))
        wait(0.1)
        for i,v in pairs(hats) do
                v.Parent = Character
        end
end

makeGiant(workspace.SergeantSmokey, 1)

end)
Normal = Instance.new("TextButton", SG)
Normal.Name = ("Normal")
Normal.Font = "Legacy"
Normal.BackgroundColor3 = BrickColor.new('Bright blue').Color
Normal.FontSize = "Size11"
Normal.Position = UDim2.new(0, 300, 0, 60)
Normal.Size = UDim2.new(0, 100, 0, 30)
Normal.Text = "Normal"
Normal.MouseButton1Click:connect(function()
function find(tab, arg, pos)
        for i,v in pairs(tab) do
                if v == arg and i == pos then
                        return true
                end
        end
        return false
end

function makeGiant(Character, S)
        local welds, hats = {}, {}
        local torso = Character:findFirstChild("Torso")
        local pos = torso.Position
        local ssss = torso.Size.Y
        for _,v in pairs(torso:children()) do
                if v:IsA("Motor6D") or v:IsA("Weld") or v:IsA("Motor") then
                        table.insert(welds, {v, v.Part0, v.Part1})
                end
        end
        for _, v in pairs(Character:children()) do
                if v:IsA("Hat") then
                        v.AttachmentPos = v.AttachmentPos*S
                        v.Handle.Mesh.Scale = v.Handle.Mesh.Scale*S
                        v.Parent = nil
                        table.insert(hats, v)
                elseif v:IsA("BasePart") then
                        v.formFactor = "Custom"
                        v.Size = v.Size*S
                elseif v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") then
                        v:remove()
                end
        end
        local anim = Character.Animate
        local animc = anim:clone()
        anim:remove()
        for _,v in pairs(welds) do
                local c1 = v[1].C1
                local c0 = v[1].C0
                local a1, a2, a3 = c1:toEulerAnglesXYZ()
                local b1, b2, b3 = c0:toEulerAnglesXYZ()
                c1 = CFrame.new(c1.p * S) * CFrame.Angles(a1, a2, a3)
                c0 = CFrame.new(c0.p * S) * CFrame.Angles(b1, b2, b3)
                local clon = v[1]:clone()
                v[1]:remove()
                clon.C1 = c1
                clon.C0 = c0
                clon.Part1 = v[3]
                clon.Part0 = v[2]
                clon.Parent = Character.Torso
        end
        animc.Parent = Character
        Character.Humanoid.WalkSpeed = 6+10*S
        Character:MoveTo(pos+Vector3.new(0,S*(ssss/2),0))
        wait(0.1)
        for i,v in pairs(hats) do
                v.Parent = Character
        end
end

makeGiant(workspace.SergeantSmokey, 1.5)

end)
Dod = Instance.new("TextButton", SG)
Dod.Name = ("Dod")
Dod.Font = "Legacy"
Dod.BackgroundColor3 = BrickColor.new('Bright blue').Color
Dod.FontSize = "Size11"
Dod.Position = UDim2.new(0, 0, 0, 30)
Dod.Size = UDim2.new(0, 100, 0, 30)
Dod.Text = "Dod"
Dod.MouseButton1Click:connect(function()
function getAll(obj)
 for i, v in pairs(obj:getChildren()) do
 if v:IsA("BasePart") then
 v.Anchored = false
 v.BrickColor = BrickColor.new(0)
 bv = Instance.new("BodyVelocity")
 bv.Parent = v
 bv.maxForce = Vector3.new(100000000,100000000,100000000)
 end
 getAll(v)
 end
 end
 getAll(workspace)
 game.Lighting.TimeOfDay = "07:00:00"
 game.Lighting.Ambient = Color3.new(0,0,0)
 sky = Instance.new("Sky")
 sky.Parent = game.Lighting
 sky.SkyboxBk = "http://www.roblox.com/asset/?id=8772734"
 sky.SkyboxDn = "http://www.roblox.com/asset/?id=8772734"
 sky.SkyboxFt = "http://www.roblox.com/asset/?id=8772734"
 sky.SkyboxLf = "http://www.roblox.com/asset/?id=8772734"
 sky.SkyboxRt = "http://www.roblox.com/asset/?id=8772734"
 sky.SkyboxUp = "http://www.roblox.com/asset/?id=8772734"
end)
Nuke = Instance.new("TextButton", SG)
Nuke.Name = ("Nuke")
Nuke.Font = "Legacy"
Nuke.BackgroundColor3 = BrickColor.new('Bright blue').Color
Nuke.FontSize = "Size11"
Nuke.Position = UDim2.new(0, 100, 0, 30)
Nuke.Size = UDim2.new(0, 100, 0, 30)
Nuke.Text = "Nuke"
Nuke.MouseButton1Click:connect(function()
local nuke = Instance.new("Part", workspace)
nuke.Anchored = true
nuke.TopSurface = "Smooth"
nuke.BottomSurface = "Smooth"
nuke.Shape = "Ball"
nuke.Transparency = 0.7
nuke.BrickColor = BrickColor.new("Really black")
nuke.CanCollide = true
for i = 1, 600 do
wait()
if nuke ~= nil then
nuke.Touched:connect(function(hit)
hit.Parent:BreakJoints()
end) 
nuke.Size = nuke.Size + Vector3.new(1, 1, 1)
nuke.CFrame = CFrame.new(0, 0, 0)
end 
end 
if nuke ~= nil then
nuke:remove()
end 
end)
Base = Instance.new("TextButton", SG)
Base.Name = ("Base")
Base.Font = "Legacy"
Base.BackgroundColor3 = BrickColor.new('Bright blue').Color
Base.FontSize = "Size11"
Base.BackgroundColor3 = BrickColor.new('Bright blue').Color
Base.Position = UDim2.new(0, 200, 0, 30)
Base.Size = UDim2.new(0, 100, 0, 30)
Base.Text = "Base"
Base.MouseButton1Click:connect(function()
local b = Instance.new("Part", workspace)
b.Size = Vector3.new(1000000, 1, 1000000)
b.CFrame = CFrame.new(0, 0, 0)
b.Name = "Base"
b.BrickColor = BrickColor.new("Earth green")
b.TopSurface = "Smooth"
b.BottomSurface = "Smooth"
b.LeftSurface = "Smooth"
b.RightSurface = "Smooth"
b.FrontSurface = "Smooth"
b.BackSurface = "Smooth"
b.Anchored = true
b.Locked = true
local sl = Instance.new("SpawnLocation", workspace)
sl.Anchored = true
sl.Locked = true
sl.formFactor = "Plate"
sl.Size = Vector3.new(6, 0.4, 6)
sl.CFrame = CFrame.new(0, 0.6, 0)
sl.BrickColor = BrickColor.new("Really black")
sl.TopSurface = "Smooth"
sl.BottomSurface = "Smooth"
sl.LeftSurface = "Smooth"
sl.RightSurface = "Smooth"
sl.FrontSurface = "Smooth"
sl.BackSurface = "Smooth"
end)
clean = Instance.new("TextButton", SG)
clean.Name = ("clean")
clean.Font = "Legacy"
clean.BackgroundColor3 = BrickColor.new('Bright blue').Color
clean.FontSize = "Size11"
clean.Position = UDim2.new(0, 300, 0, 30)
clean.Size = UDim2.new(0, 100, 0, 30)
clean.Text = "Clean"
clean.MouseButton1Click:connect(function()
x=game.Workspace:GetChildren() 
for i=1,#x do 
        if x[i].className == "Part" or x[i].className == "Model" then
                if x[i].Locked== false then 
                x[i]:remove() 
                end 
        end 
end 
end)
GStyle = Instance.new("TextButton", SG)
GStyle.Name = ("GStyle")
GStyle.Font = "Legacy"
GStyle.BackgroundColor3 = BrickColor.new('Bright blue').Color
GStyle.FontSize = "Size11"
GStyle.Position = UDim2.new(0, 400, 0, 30)
GStyle.Size = UDim2.new(0, 100, 0, 30)
GStyle.Text = "GStyle"
GStyle.MouseButton1Click:connect(function()
local player=game.Players.LocalPlayer
local char=player.Character
repeat wait() until player and char
local torso=char.Torso
local head=char.Head
local human=char.Humanoid
local arm={Left=char["Left Arm"], Right=char["Right Arm"]}
local leg={Left=char["Left Leg"], Right=char["Right Leg"]}
local c=function(f) coroutine.resume(coroutine.create(f)) end
local p=function(f) pcall(f) end
local add={
        Part=function(par, a, c, col, t, s, cf)
                local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
                return p
        end,        
        Wedge=function(par, a, c, col, t, s, cf)
                local p=Instance.new("WedgePart", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
                return p
        end,
        Gui=function(ins, par, bc, bg, tc, fs, text, t, s, pos)
                local g=Instance.new(ins, par) pcall(function() g.BorderColor=BrickColor.new(bc) g.BackgroundColor=BrickColor.new(bg) g.TextColor=BrickColor.new(tc) g.FontSize=fs g.Font="ArialBold" g.Text=text g.Transparency=t g.Size=s g.Position=pos  end)
                return g
        end,
        Weld=function(par, p1, cf)
                local w=Instance.new("Weld", par) pcall(function() w.Part0=w.Parent or par w.Part1=p1 w.C1=cf or CFrame.new() end)
                return w
        end,
        Mesh=function(ins, par, s, of, t)
                local m=Instance.new(ins, par) pcall(function() m.Scale=s or Vector3.new() m.Offset=of or Vector3.new() m.MeshType=t end)
                return m
        end
}
local scriptname="GANGNAM STYLE" --Name here
pcall(function() player.Backpack[scriptname]:remove() char[scriptname]:remove() char["Objects"]:remove() player.PlayerGui[scriptname]:remove()  end)
local model=Instance.new("Model", char) model.Name="Objects"
local modelB=Instance.new("Model", char) modelB.Name=scriptname
local gui=Instance.new("ScreenGui", player.PlayerGui) gui.Name=scriptname
local skincolor="Really black"
local body={}
local animate={}
local obj={}
function createParts()
        --==PARTS==--
        body.Head=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
        body.Torso=add.Part(model, false, false, skincolor, 1, Vector3.new(2, 2, 1), nil)
        body.ArmLeft, body.ArmRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
        body.LegLeft, body.LegRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
        --==WELDS==--
        body.HeadW=add.Weld(body.Head, torso, CFrame.new(0, 1.5, 0))
        body.TorsoW=add.Weld(body.Torso, torso, nil)
        body.ArmLeftW, body.ArmRightW=add.Weld(body.ArmLeft, body.Torso, CFrame.new(-1.5, .5, 0)), add.Weld(body.ArmRight, body.Torso, CFrame.new(1.5, .5, 0))
        body.LegLeftW, body.LegRightW=add.Weld(body.LegLeft, body.Torso, CFrame.new(-.5, -1.5, 0)), add.Weld(body.LegRight, body.Torso, CFrame.new(.5, -1.5, 0))
        --==WELDS==--
        add.Weld(body.Head, head, nil)
        add.Weld(arm.Left, body.ArmLeft, CFrame.new(0, -.5, 0))
        add.Weld(arm.Right, body.ArmRight, CFrame.new(0, -.5, 0))
        add.Weld(leg.Left, body.LegLeft, CFrame.new(0, -.5, 0))
        add.Weld(leg.Right, body.LegRight, CFrame.new(0, -.5, 0))
        ---------------------------------------------------------------------------------------
        animate={
                ["Head"]=function(cf)
                        body.HeadW.C1=CFrame.new(0, 1.5, 0)*cf
                end;
                ["Torso"]=function(cf) body.Torso.Transparency=0 torso.Transparency=1
                        body.TorsoW.C1=cf
                end;
                ["ArmLeft"]=function(cf)
                        body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*cf
                end;
                ["ArmRight"]=function(cf)
                        body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*cf
                end;
                ["LegLeft"]=function(cf)
                        body.LegLeftW.C1=CFrame.new(-.5, -1.5, 0)*cf
                end;
                ["LegRight"]=function(cf)
                        body.LegRightW.C1=CFrame.new(.5, -1.5, 0)*cf
                end;
        }
        --==Objects==--
end
local lyrics=0
local dance=0
local dancing=false
local onDancing=false
local startpos=false
createParts()
onDancing=true
for i=0, 1, .1 do wait()
        animate.Head(CFrame.Angles(math.rad(45), 0, 0))
        animate.ArmLeft(CFrame.new(1*i, 0, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, math.rad(45)*i))
        animate.ArmRight(CFrame.new(-1*i, 0, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, -math.rad(45)*i))
        animate.LegLeft(CFrame.Angles(0, 0, -math.rad(15)*i))
        animate.LegRight(CFrame.Angles(0, 0, math.rad(15)*i))
end
while onDancing do wait() lyrics=lyrics+1 dance=dance+1
        if lyrics==1 then game:GetService("Chat"):Chat(head, "Op", "Blue") end
        if lyrics==2 then game:GetService("Chat"):Chat(head, "Op", "Blue") end
        if lyrics==4 then game:GetService("Chat"):Chat(head, "Oppa GANGNAM STYLE!", "Blue") end
        if dance<=2 and dancing==false then print(dance)
                dancing=true
                startpos=false
                for i=0, 1, .1 do wait()
                        animate.Head(CFrame.Angles(math.rad(45*i), 0, 0))
                        animate.Torso(CFrame.Angles(0, 0, math.rad(-5+10*i)))
                        animate.ArmLeft(CFrame.new(1, .5*i, -.5)*CFrame.Angles(math.rad(90+45*i), 0, math.rad(45)))
                        animate.ArmRight(CFrame.new(-1, .5*i, -.5)*CFrame.Angles(math.rad(90+45*i), 0, -math.rad(45)))
                        animate.LegLeft(CFrame.new(0, .5-(.5*i), 0)*CFrame.Angles(0, 0, -math.rad(15)))
                        animate.LegRight(CFrame.new(0, .5*i, 0)*CFrame.Angles(0, 0, math.rad(15)))
                end
                for i=0, 1, .1 do wait()
                        animate.Head(CFrame.Angles(math.rad(45-45*i), 0, 0))
                        animate.Torso(CFrame.Angles(0, 0, math.rad(5-10*i)))
                        animate.ArmLeft(CFrame.new(1, .5-.5*i, -.5)*CFrame.Angles(math.rad(135-45*i), 0, math.rad(45)))
                        animate.ArmRight(CFrame.new(-1, .5-.5*i, -.5)*CFrame.Angles(math.rad(135-45*i), 0, -math.rad(45)))
                        animate.LegLeft(CFrame.new(0, .5*i, 0)*CFrame.Angles(0, 0, -math.rad(15)))
                        animate.LegRight(CFrame.new(0, .5-(.5*i), 0)*CFrame.Angles(0, 0, math.rad(15)))
                end
                dancing=false
        elseif dance>=2 and dance<5 and dancing==false then print(dance)
                dancing=true
                startpos=false
                for i=0, 1, .1 do wait()
                        animate.Head(CFrame.Angles(math.rad(45*i), 0, 0))
                        animate.Torso(CFrame.Angles(0, 0, math.rad(-5+10*i)))
                        animate.ArmLeft(CFrame.new(1, .5*i, -.5)*CFrame.Angles(math.rad(90+45*i), 0, math.rad(45)))
                        animate.ArmRight(CFrame.Angles(math.rad(180+math.random(-45, 45)*i), 0, -math.rad(math.random(-45, 45)*i)))
                        animate.LegLeft(CFrame.new(0, .5-(.5*i), 0)*CFrame.Angles(0, 0, -math.rad(15)))
                        animate.LegRight(CFrame.new(0, .5*i, 0)*CFrame.Angles(0, 0, math.rad(15)))
                end
                for i=0, 1, .1 do wait()
                        animate.Head(CFrame.Angles(math.rad(45-45*i), 0, 0))
                        animate.Torso(CFrame.Angles(0, 0, math.rad(5-10*i)))
                        animate.ArmLeft(CFrame.new(1, .5-.5*i, -.5)*CFrame.Angles(math.rad(135-45*i), 0, math.rad(45)))
                        animate.ArmRight(CFrame.Angles(math.rad(180+math.random(-45, 45)*i), 0, -math.rad(math.random(-45, 45)*i)))
                        animate.LegLeft(CFrame.new(0, .5*i, 0)*CFrame.Angles(0, 0, -math.rad(15)))
                        animate.LegRight(CFrame.new(0, .5-(.5*i), 0)*CFrame.Angles(0, 0, math.rad(15)))
                end
                dancing=false
        elseif dance>=5 and dance<10 and dancing==false then print(dance)
                dancing=true
                if startpos==false then
                        startpos=true
                        game:GetService("Chat"):Chat(head, "EH SEXY LADY!", "Blue")
                        for i=0, 1, .1 do wait()
                                animate.Head(CFrame.Angles(math.rad(15), 0, 0))
                                animate.Torso(CFrame.Angles(0, math.rad(90)*i, 0))
                                animate.ArmLeft(CFrame.new(.2*i, 0, 0)*CFrame.Angles(0, 0, math.rad(15)*i))
                                animate.ArmRight(CFrame.new(-.2*i, 0, 0)*CFrame.Angles(0, 0, -math.rad(15)*i))
                        end
                end
                for i=0, 1, .2 do wait()
                        torso.CFrame=torso.CFrame+torso.CFrame.lookVector*.2
                        animate.Head(CFrame.Angles(math.rad(15), 0, 0))
                        animate.Torso(CFrame.Angles(0, -math.rad(90), math.rad(-5+10*i)))
                        animate.LegLeft(CFrame.new(0, .5-(.5*i), 0)*CFrame.Angles(0, 0, -math.rad(15)))
                        animate.LegRight(CFrame.new(0, .5*i, 0)*CFrame.Angles(0, 0, math.rad(15)))
                end
                for i=0, 1, .2 do wait()
                        torso.CFrame=torso.CFrame+torso.CFrame.lookVector*.2
                        animate.Head(CFrame.Angles(math.rad(15), 0, 0))
                        animate.Torso(CFrame.Angles(0, -math.rad(90), math.rad(5-10*i)))
                        animate.LegLeft(CFrame.new(0, .5*i, 0)*CFrame.Angles(0, 0, -math.rad(15)))
                        animate.LegRight(CFrame.new(0, .5-(.5*i), 0)*CFrame.Angles(0, 0, math.rad(15)))
                end
                dancing=false
        elseif dance<=10 then
                dance=0
                lyrics=0
        end
end--mediafire
end)
StealButton = Instance.new("TextButton", SG)
StealButton.Name = ("StealButton")
StealButton.FontSize = "Size12"
StealButton.BackgroundColor3 = BrickColor.new('Bright blue').Color
StealButton.Font = "Legacy"
StealButton.Text = "Steal"
StealButton.Position = UDim2.new(0, 500, 0, 30)
StealButton.Size = UDim2.new(0, 100, 0, 30)
StealButton.MouseButton1Click:connect(function()
pcall(function()
game:service("Visit"):SetUploadUrl("http://www.roblox.com/Data/Upload.ashx?assetid=122182455");
end)game.CoreGui.SG.ControlFrame.SaveDialogShield.Visible = true
end)
Dragon = Instance.new("TextButton", SG)
Dragon.Name = ("Dragon")
Dragon.Font = "Legacy"
Dragon.BackgroundColor3 = BrickColor.new('Bright blue').Color
Dragon.FontSize = "Size11"
Dragon.Position = UDim2.new(0, 600, 0, 30)
Dragon.Size = UDim2.new(0, 100, 0, 30)
Dragon.Text = "Dragon"
Dragon.MouseButton1Click:connect(function()
I = "SergeantSmokey" 
game.Players[I].Character.Head.Transparency = 1 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Bright red") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 2) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0,0,1.5) * CFrame.fromEulerAnglesXYZ(0,0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(1.5, 0.8, 1) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Bright red") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0,-1.1,0) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(1.5, 1, 1) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Bright red") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0.4,-1.4,-1.3) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(0.5, 0.5, 0.5) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Bright red") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(-0.4,-1.4,-1.3) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(0.5, 0.5, 0.5) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Bright red") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0,0.2,-0.1) * CFrame.fromEulerAnglesXYZ(math.pi/-3,0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(1.5, 1.5, 1.5) 
for c = 1, #game.Players[I].Character:GetChildren()do 
char = game.Players[I].Character:GetChildren() 
if char[c]:IsA("Part") then 
char[c].Transparency = 1 
elseif char[c]:IsA("Hat") then 
char[c].Handle:Remove() 
end 
end 
if game.Players[I].Character.Head:FindFirstChild("face") then 
game.Players[I].Character.Head.face:Remove() 
end 
--[[------------------------------------------------------------------------]] 
Player = game.Players[I] 
local h = Instance.new("HopperBin") 
h.Name = "Fly" 
h.Parent = Player.Backpack 
local s = Instance.new("Script") 
s.Parent = h 
s.Name = "Script" 
local bin = s.Parent 
length = 3 
away = 2 
gap = 0 
segs = 40 
distance = length/3 
speed = 1 
Wave = 0 
local Tail = {} 
local part0 = Instance.new("Part") 
part0.BrickColor = BrickColor.new("Bright red") 
part0.TopSurface = 0 
part0.BottomSurface = 0 
part0.Locked = true 
part0.FormFactor = "Symmetric" 
part0.Size = Vector3.new(2,2,2) 
part0.Anchored = true 
part0.Shape = 1 
part0.CanCollide = true 
part0.Parent = nil 
part0.Name = "Part0" 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = part0 
A.Name = "Mesh" 
A.Scale = Vector3.new(1.1, 1.1, 1.1) 
for p = 1,segs do 
Tail[p] = part0:Clone() 
Tail[p].Parent = nil 
Tail[p].Name = "Part"..p 
Tail[p].CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 
Tail[p].Mesh.Scale = Vector3.new(1.1 - (p/1000), 1.1 - (p/1000), 1.1 - (p/1000)) 
end 
function onButton1Down(mouse) 
local player = game.Players.LocalPlayer 
if player == nil then return end 
me1 = bin.Parent.Parent 
me = bin.Parent.Parent.Character 
for p = 1,segs do 
Tail[p].Parent = me 
end 
main = part0 
part1 = Tail[1] 
follow = true 
while follow do 
Wave = Wave + 0.02 
distance = length/3 
mousehit = mouse.Hit.p 
if (main.Position - mousehit).magnitude >speed then 
main_mousehit = (main.Position - mousehit).unit*speed 
else 
main_mousehit = (main.Position - mousehit).unit*1 
end 
start1 = main.Position-main_mousehit 
main.CFrame = CFrame.new(start1.x, start1.y, start1.z) 
p1pos = part1.Position 
start1_p1pos = (start1 - p1pos).unit 
spreadp1 = start1_p1pos*(distance+away) 
part1.CFrame = CFrame.new(start1-spreadp1, start1) 
me.Torso.CFrame=Tail[1].CFrame*CFrame.new(0,-0.5,-4)*CFrame.fromEulerAnglesXYZ(-math.pi/5,0,0) 
me.Torso.Anchored = true 
Wave = Wave + 0.02 
pc = me.Torso.CFrame 
starti = me.Torso.Position-(pc.lookVector*distance) 
pipos = Tail[1].Position 
starti_pipos = (starti - pipos).unit 
spreadpi = starti_pipos*(distance+gap) 
Tail[1].CFrame = CFrame.new(starti-spreadpi, starti) + (part0.CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6)/4 
--[[ 
for i = 1,39 do 
wait() 
print("p2c = Tail["..i.."].CFrame\ 
start3 = Tail["..i.."].Position-(p2c.lookVector*distance)\ 
p3pos = Tail["..(i+1).."].Position\ 
start3_p3pos = (start3 - p3pos).unit\ 
spreadp3 = start3_p3pos*(distance+gap)\ 
Tail["..(i+1).."].CFrame = CFrame.new(start3-spreadp3, start3 - Vector3.new(0,math.sin(Wave*6+"..((i-1)/100)..")/4,0) ) + Vector3.new(0,math.sin(Wave*6+"..((i)/100)..")/4,0)\ 
" ) 
end 
]] 
p2c = Tail[1].CFrame start3 = Tail[1].Position-(p2c.lookVector*distance) p3pos = Tail[2].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[2].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[1].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0)/4 ) + (Tail[2].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.01)/4 
p2c = Tail[2].CFrame start3 = Tail[2].Position-(p2c.lookVector*distance) p3pos = Tail[3].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[3].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[2].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.01)/4 ) + (Tail[3].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.02)/4 
p2c = Tail[3].CFrame start3 = Tail[3].Position-(p2c.lookVector*distance) p3pos = Tail[4].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[4].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[3].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.02)/4 ) + (Tail[4].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.03)/4 
p2c = Tail[4].CFrame start3 = Tail[4].Position-(p2c.lookVector*distance) p3pos = Tail[5].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[5].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[4].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.03)/4 ) + (Tail[5].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.04)/4 
p2c = Tail[5].CFrame start3 = Tail[5].Position-(p2c.lookVector*distance) p3pos = Tail[6].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[6].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[5].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.04)/4 ) + (Tail[6].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.05)/4 
p2c = Tail[6].CFrame start3 = Tail[6].Position-(p2c.lookVector*distance) p3pos = Tail[7].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[7].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[6].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.05)/4 ) + (Tail[7].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.06)/4 
p2c = Tail[7].CFrame start3 = Tail[7].Position-(p2c.lookVector*distance) p3pos = Tail[8].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[8].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[7].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.06)/4 ) + (Tail[8].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.07)/4 
p2c = Tail[8].CFrame start3 = Tail[8].Position-(p2c.lookVector*distance) p3pos = Tail[9].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[9].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[8].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.07)/4 ) + (Tail[9].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.08)/4 
p2c = Tail[9].CFrame start3 = Tail[9].Position-(p2c.lookVector*distance) p3pos = Tail[10].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[10].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[9].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.08)/4 ) + (Tail[10].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.09)/4 
p2c = Tail[10].CFrame start3 = Tail[10].Position-(p2c.lookVector*distance) p3pos = Tail[11].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[11].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[10].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.09)/4 ) + (Tail[11].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.1)/4 
p2c = Tail[11].CFrame start3 = Tail[11].Position-(p2c.lookVector*distance) p3pos = Tail[12].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[12].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[11].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.1)/4 ) + (Tail[12].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.11)/4 
p2c = Tail[12].CFrame start3 = Tail[12].Position-(p2c.lookVector*distance) p3pos = Tail[13].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[13].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[12].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.11)/4 ) + (Tail[13].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.12)/4 
p2c = Tail[13].CFrame start3 = Tail[13].Position-(p2c.lookVector*distance) p3pos = Tail[14].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[14].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[13].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.12)/4 ) + (Tail[14].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.13)/4 
p2c = Tail[14].CFrame start3 = Tail[14].Position-(p2c.lookVector*distance) p3pos = Tail[15].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[15].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[14].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.13)/4 ) + (Tail[15].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.14)/4 
p2c = Tail[15].CFrame start3 = Tail[15].Position-(p2c.lookVector*distance) p3pos = Tail[16].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[16].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[15].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.14)/4 ) + (Tail[16].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.15)/4 
p2c = Tail[16].CFrame start3 = Tail[16].Position-(p2c.lookVector*distance) p3pos = Tail[17].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[17].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[16].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.15)/4 ) + (Tail[17].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.16)/4 
p2c = Tail[17].CFrame start3 = Tail[17].Position-(p2c.lookVector*distance) p3pos = Tail[18].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[18].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[17].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.16)/4 ) + (Tail[18].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.17)/4 
p2c = Tail[18].CFrame start3 = Tail[18].Position-(p2c.lookVector*distance) p3pos = Tail[19].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[19].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[18].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.17)/4 ) + (Tail[19].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.18)/4 
p2c = Tail[19].CFrame start3 = Tail[19].Position-(p2c.lookVector*distance) p3pos = Tail[20].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[20].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[19].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.18)/4 ) + (Tail[20].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.19)/4 
p2c = Tail[20].CFrame start3 = Tail[20].Position-(p2c.lookVector*distance) p3pos = Tail[21].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[21].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[20].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.19)/4 ) + (Tail[21].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.2)/4 
p2c = Tail[21].CFrame start3 = Tail[21].Position-(p2c.lookVector*distance) p3pos = Tail[22].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[22].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[21].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.2)/4 ) + (Tail[22].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.21)/4 
p2c = Tail[22].CFrame start3 = Tail[22].Position-(p2c.lookVector*distance) p3pos = Tail[23].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[23].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[22].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.21)/4 ) + (Tail[23].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.22)/4 
p2c = Tail[23].CFrame start3 = Tail[23].Position-(p2c.lookVector*distance) p3pos = Tail[24].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[24].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[23].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.22)/4 ) + (Tail[24].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.23)/4 
p2c = Tail[24].CFrame start3 = Tail[24].Position-(p2c.lookVector*distance) p3pos = Tail[25].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[25].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[24].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.23)/4 ) + (Tail[25].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.24)/4 
p2c = Tail[25].CFrame start3 = Tail[25].Position-(p2c.lookVector*distance) p3pos = Tail[26].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[26].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[25].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.24)/4 ) + (Tail[26].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.25)/4 
p2c = Tail[26].CFrame start3 = Tail[26].Position-(p2c.lookVector*distance) p3pos = Tail[27].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[27].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[26].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.25)/4 ) + (Tail[27].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.26)/4 
p2c = Tail[27].CFrame start3 = Tail[27].Position-(p2c.lookVector*distance) p3pos = Tail[28].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[28].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[27].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.26)/4 ) + (Tail[28].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.27)/4 
p2c = Tail[28].CFrame start3 = Tail[28].Position-(p2c.lookVector*distance) p3pos = Tail[29].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[29].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[28].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.27)/4 ) + (Tail[29].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.28)/4 
p2c = Tail[29].CFrame start3 = Tail[29].Position-(p2c.lookVector*distance) p3pos = Tail[30].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[30].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[29].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.28)/4 ) + (Tail[30].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.29)/4 
p2c = Tail[30].CFrame start3 = Tail[30].Position-(p2c.lookVector*distance) p3pos = Tail[31].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[31].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[30].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.29)/4 ) + (Tail[31].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.3)/4 
p2c = Tail[31].CFrame start3 = Tail[31].Position-(p2c.lookVector*distance) p3pos = Tail[32].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[32].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[31].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.3)/4 ) + (Tail[32].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.31)/4 
p2c = Tail[32].CFrame start3 = Tail[32].Position-(p2c.lookVector*distance) p3pos = Tail[33].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[33].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[32].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.31)/4 ) + (Tail[33].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.32)/4 
p2c = Tail[33].CFrame start3 = Tail[33].Position-(p2c.lookVector*distance) p3pos = Tail[34].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[34].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[33].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.32)/4 ) + (Tail[34].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.33)/4 
p2c = Tail[34].CFrame start3 = Tail[34].Position-(p2c.lookVector*distance) p3pos = Tail[35].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[35].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[34].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.33)/4 ) + (Tail[35].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.34)/4 
p2c = Tail[35].CFrame start3 = Tail[35].Position-(p2c.lookVector*distance) p3pos = Tail[36].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[36].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[35].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.34)/4 ) + (Tail[36].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.35)/4 
p2c = Tail[36].CFrame start3 = Tail[36].Position-(p2c.lookVector*distance) p3pos = Tail[37].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[37].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[36].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.35)/4 ) + (Tail[37].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.36)/4 
p2c = Tail[37].CFrame start3 = Tail[37].Position-(p2c.lookVector*distance) p3pos = Tail[38].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[38].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[37].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.36)/4 ) + (Tail[38].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.37)/4 
p2c = Tail[38].CFrame start3 = Tail[38].Position-(p2c.lookVector*distance) p3pos = Tail[39].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[39].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[38].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.37)/4 ) + (Tail[39].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.38)/4 
p2c = Tail[39].CFrame start3 = Tail[39].Position-(p2c.lookVector*distance) p3pos = Tail[40].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[40].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[39].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.38)/4 ) + (Tail[40].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.39)/4 
wait() 
end 
end 
function onButton1Up(mouse) 
follow = false 
end
function onSelected(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(onKeyDown) 
end 
bin.Selected:connect(onSelected)
end)
Lag = Instance.new("TextLabel", SG)
Lag.Name = ("LagScript")
Lag.Font = "Legacy"
Lag.BackgroundColor3 = BrickColor.new('Bright blue').Color
Lag.FontSize = "Size11"
Lag.Position = UDim2.new(0, 700, 0, 30)
Lag.Size = UDim2.new(0, 100, 0, 30)
Lag.Text = "Lag"
local LagPlyrs = Instance.new("TextBox", SG)
LagPlyrs.Name = "LagTextbox"
LagPlyrs.BackgroundColor3 = BrickColor.new('Bright blue').Color
LagPlyrs.Text = "Type name here."
LagPlyrs.Size = UDim2.new(0, 100, 0, 30)
LagPlyrs.Position = UDim2.new(0, 800, 0, 30)
LagPlyrs.FocusLost:connect(function() 
local length = string.len(LagPlyrs.Text)
local peeps = game.Players:GetChildren()
for i = 1, #peeps do
local storednames = string.sub(peeps[i].Name,0,length) -- this isn't going to work is it?
if storednames == LagPlyrs.Text then
peeps[i].Humanoid.Walkspeed = math.huge
end
end
end)
NyanCat = Instance.new("TextButton", SG)
NyanCat.Name = ("NyanCat")
NyanCat.BackgroundColor3 = BrickColor.new('Bright blue').Color
NyanCat.Font = "Legacy"
NyanCat.FontSize = "Size11"
NyanCat.Position = UDim2.new(0, 900, 0, 30)
NyanCat.Size = UDim2.new(0, 100, 0, 30)
NyanCat.Text = "NyanCatSky"
NyanCat.MouseButton1Click:connect(function()
while true do
wait()
s = Instance.new("Sky")
s.Parent = game.Lighting
s.Name = "NyanCat"
s.SkyboxBk = "http://www.roblox.com/asset/?id=50767914"
s.SkyboxDn = "http://www.roblox.com/asset/?id=50767914"
s.SkyboxFt = "http://www.roblox.com/asset/?id=50767914"
s.SkyboxLf = "http://www.roblox.com/asset/?id=50767914"
s.SkyboxRt = "http://www.roblox.com/asset/?id=50767914"
s.SkyboxUp = "http://www.roblox.com/asset/?id=50767914"
wait(0.1)
s.SkyboxBk = "http://www.roblox.com/asset/?id=50767923"
s.SkyboxDn = "http://www.roblox.com/asset/?id=50767923"
s.SkyboxFt = "http://www.roblox.com/asset/?id=50767923"
s.SkyboxLf = "http://www.roblox.com/asset/?id=50767923"
s.SkyboxRt = "http://www.roblox.com/asset/?id=50767923"
s.SkyboxUp = "http://www.roblox.com/asset/?id=50767923"
wait(0.1)
s.SkyboxBk = "http://www.roblox.com/asset/?id=50767933"
s.SkyboxDn = "http://www.roblox.com/asset/?id=50767933"
s.SkyboxFt = "http://www.roblox.com/asset/?id=50767933"
s.SkyboxLf = "http://www.roblox.com/asset/?id=50767933"
s.SkyboxRt = "http://www.roblox.com/asset/?id=50767933"
s.SkyboxUp = "http://www.roblox.com/asset/?id=50767933"
wait(0.1)
s.SkyboxBk = "http://www.roblox.com/asset/?id=50767945"
s.SkyboxDn = "http://www.roblox.com/asset/?id=50767945"
s.SkyboxFt = "http://www.roblox.com/asset/?id=50767945"
s.SkyboxLf = "http://www.roblox.com/asset/?id=50767945"
s.SkyboxRt = "http://www.roblox.com/asset/?id=50767945"
s.SkyboxUp = "http://www.roblox.com/asset/?id=50767945"
wait(0.1)
s.SkyboxBk = "http://www.roblox.com/asset/?id=50767959"
s.SkyboxDn = "http://www.roblox.com/asset/?id=50767959"
s.SkyboxFt = "http://www.roblox.com/asset/?id=50767959"
s.SkyboxLf = "http://www.roblox.com/asset/?id=50767959"
s.SkyboxRt = "http://www.roblox.com/asset/?id=50767959"
s.SkyboxUp = "http://www.roblox.com/asset/?id=50767959"
wait(0.1)
s.SkyboxBk = "http://www.roblox.com/asset/?id=50767974"
s.SkyboxDn = "http://www.roblox.com/asset/?id=50767974"
s.SkyboxFt = "http://www.roblox.com/asset/?id=50767974"
s.SkyboxLf = "http://www.roblox.com/asset/?id=50767974"
s.SkyboxRt = "http://www.roblox.com/asset/?id=50767974"
s.SkyboxUp = "http://www.roblox.com/asset/?id=50767974"
wait(0.1)
s.SkyboxBk = "http://www.roblox.com/asset/?id=50767980"
s.SkyboxDn = "http://www.roblox.com/asset/?id=50767980"
s.SkyboxFt = "http://www.roblox.com/asset/?id=50767980"
s.SkyboxLf = "http://www.roblox.com/asset/?id=50767980"
s.SkyboxRt = "http://www.roblox.com/asset/?id=50767980"
s.SkyboxUp = "http://www.roblox.com/asset/?id=50767980"
wait(0.1)
s.SkyboxBk = "http://www.roblox.com/asset/?id=50767996"
s.SkyboxDn = "http://www.roblox.com/asset/?id=50767996"
s.SkyboxFt = "http://www.roblox.com/asset/?id=50767996"
s.SkyboxLf = "http://www.roblox.com/asset/?id=50767996"
s.SkyboxRt = "http://www.roblox.com/asset/?id=50767996"
s.SkyboxUp = "http://www.roblox.com/asset/?id=50767996"
wait(0.1)
s.SkyboxBk = "http://www.roblox.com/asset/?id=50768017"
s.SkyboxDn = "http://www.roblox.com/asset/?id=50768017"
s.SkyboxFt = "http://www.roblox.com/asset/?id=50768017"
s.SkyboxLf = "http://www.roblox.com/asset/?id=50768017"
s.SkyboxRt = "http://www.roblox.com/asset/?id=50768017"
s.SkyboxUp = "http://www.roblox.com/asset/?id=50768017"
wait(0.1)
s.SkyboxBk = "http://www.roblox.com/asset/?id=50768029"
s.SkyboxDn = "http://www.roblox.com/asset/?id=50768029"
s.SkyboxFt = "http://www.roblox.com/asset/?id=50768029"
s.SkyboxLf = "http://www.roblox.com/asset/?id=50768029"
s.SkyboxRt = "http://www.roblox.com/asset/?id=50768029"
s.SkyboxUp = "http://www.roblox.com/asset/?id=50768029"
wait(0.1)
s.SkyboxBk = "http://www.roblox.com/asset/?id=50768034"
s.SkyboxDn = "http://www.roblox.com/asset/?id=50768034"
s.SkyboxFt = "http://www.roblox.com/asset/?id=50768034"
s.SkyboxLf = "http://www.roblox.com/asset/?id=50768034"
s.SkyboxRt = "http://www.roblox.com/asset/?id=50768034"
s.SkyboxUp = "http://www.roblox.com/asset/?id=50768034"
wait(0.1)
s.SkyboxBk = "http://www.roblox.com/asset/?id=50768048"
s.SkyboxDn = "http://www.roblox.com/asset/?id=50768048"
s.SkyboxFt = "http://www.roblox.com/asset/?id=50768048"
s.SkyboxLf = "http://www.roblox.com/asset/?id=50768048"
s.SkyboxRt = "http://www.roblox.com/asset/?id=50768048"
s.SkyboxUp = "http://www.roblox.com/asset/?id=50768048"
end
end)
Fap = Instance.new("TextButton", SG)
Fap.Name = ("Fap")
Fap.Font = "Legacy"
Fap.FontSize = "Size11"
Fap.Position = UDim2.new(0, 1000, 0, 30)
Fap.Size = UDim2.new(0, 100, 0, 30)
Fap.Text = "Fap"
Fap.BackgroundColor3 = BrickColor.new('Bright blue').Color
Fap.MouseButton1Click:connect(function()
local Me = game.Players.LocalPlayer
bin = Instance.new("HopperBin")
bin.Name = "Fap (Q and E)"
bin.Parent = Me.Backpack

local SIZE = 2
local DISTANCE = 1
local RAISE = 0.5
local INCLINE = 0.001
local ChaneOfEnjoyment = 10
local Auto = false
local AutoAmout = 50

local char = Me.Character
local Torsoz = char:findFirstChild("Torso")
local RA = char:findFirstChild("Right Arm")
local LA = char:findFirstChild("Left Arm")
local H = char:findFirstChild("Head")
local RS = Torsoz:findFirstChild("Right Shoulder")
local LS = Torsoz:findFirstChild("Left Shoulder")
local N = Torsoz:findFirstChild("Neck")
local Joint1
local Joint2
local Fap = 1
local FapCount = Instance.new("Part")
local FapCountM = Instance.new("Model")
local Points = 0
local Dks = {}
local InTenPoints = 0
local RaiseOrg = RAISE
local Tickup = false

Me:ClearCharacterAppearance()
wait(0.1)
Me.Character.Head.BrickColor = BrickColor.new("Cool yellow")
Me.Character.Torso.BrickColor = BrickColor.new("Cool yellow")
Me.Character["Right Arm"].BrickColor = BrickColor.new("Cool yellow")
Me.Character["Right Leg"].BrickColor = BrickColor.new("Cool yellow")
Me.Character["Left Leg"].BrickColor = BrickColor.new("Cool yellow")
Me.Character["Left Arm"].BrickColor = BrickColor.new("Cool yellow")
pcall(function() Me.Character.Torso.roblox:Destroy() end)

local P = Instance.new("Part")
P.Anchored = false
P.CanCollide = false
P.Name = "Part"
P.formFactor = "Custom"
P.Size = Vector3.new(0.5,0.5,0.5)
P.Locked = true
P.TopSurface = 0
P.BottomSurface = 0

local Model = Instance.new("Model", char)
Model.Name = "Troll"

local B1 = Instance.new("Part", Model)
B1.Name = "Di-ck"
B1.Size = Vector3.new(1,1,1)
B1.TopSurface = "Smooth"
B1.BottomSurface = "Smooth"
B1.Position = Vector3.new(0,10,0)
B1.BrickColor = BrickColor.new("Cool yellow")
B1.CanCollide = true
B1.Locked = true
local Mesh1 = Instance.new("SpecialMesh", B1)
Mesh1.MeshType = "Sphere"
Mesh1.Scale = Vector3.new(SIZE+0.3,SIZE+0.3,SIZE+0.3)
local Weld1 = Instance.new("Weld", B1)
Weld1.Part0 = Torsoz
Weld1.Part1 = B1
Weld1.C0 = CFrame.new(-0.2,-1,-0.6)

local B2 = Instance.new("Part", Model)
B2.Name = "Di-ck"
B2.Size = Vector3.new(1,1,1)
B2.TopSurface = "Smooth"
B2.BottomSurface = "Smooth"
B2.Position = Vector3.new(0,10,0)
B2.BrickColor = BrickColor.new("Cool yellow")
B2.CanCollide = true
B2.Locked = true
local Mesh2 = Instance.new("SpecialMesh", B2)
Mesh2.MeshType = "Sphere"
Mesh2.Scale = Vector3.new(SIZE+0.3,SIZE+0.3,SIZE+0.3)
local Weld2 = Instance.new("Weld", B2)
Weld2.Part0 = Torsoz
Weld2.Part1 = B2
Weld2.C0 = CFrame.new(0.2,-1,-0.6)

function FapPos()
        Joint1.C0 = CFrame.new(0.8,-0.1,-0.3) * CFrame.Angles(0.3,0,-math.pi/4.4)
        Joint2.C0 = CFrame.new(-0.8,-0.1,-0.3) * CFrame.Angles(0.3,0,math.pi/4.4)
end
function DoTheFap(Motherload)
        FapPos()
        Points = Points + 1
        local Dk = Instance.new("Part", Model)
        Dk.Name = "Di-ck"
        Dk.Size = Vector3.new(1,1,1)
        Dk.TopSurface = "Smooth"
        Dk.BottomSurface = "Smooth"
        Dk.Position = Vector3.new(0,10,0)
        Dk.BrickColor = BrickColor.new("Pink")
        Dk.CanCollide = true
        Dk.Locked = true
        local Mesh = Instance.new("SpecialMesh", Dk)
        Mesh.MeshType = "Sphere"
        Mesh.Scale = Vector3.new(SIZE,SIZE,SIZE)
        local Weld = Instance.new("Weld", Dk)
        Weld.Part0 = Torsoz
        Weld.Part1 = Dk
        Weld.C0 = CFrame.new(0,-0.9 * (((#Dks+1)*(RAISE * -1))+1),-0.7 * ((#Dks+1)*(DISTANCE)))
        if RAISE < 0.25 and TickUp == false then
                RAISE = RAISE + INCLINE
        else
                TickUp = true
                RAISE = (RAISE + INCLINE)-0.0005
        end
        table.insert(Dks, Dk)
        if math.random(1,ChaneOfEnjoyment) == 1 or Motherload == true then
                local Sound = Instance.new("Sound", H)
                Sound.Name = "Uhhhh yah"
                Sound.Volume = 5
                Sound.Pitch = math.random(85,105)/100
                Sound.SoundId = "rbxasset://sounds/uuhhh.wav"
                local Num = 1
                if Motherload == false then
                        Num = math.random(3,15)
                else
                        Num = math.random(15,70)
                end
                for i = 0,Num do
                        coroutine.wrap(function()
                                
                                local Mesh = Instance.new("SpecialMesh", Cm)
                                Mesh.MeshType = "Sphere"
                                Mesh.Scale = Vector3.new(0.45,0.45,0.45)
                                wait(math.random(10,60))
                                Cm:Destroy()
                        end)()
                end
                wait()
                Sound:Play()
                wait()
                Sound:remove()
                wait()
        end
end

function UnFap()
        Joint1.C0 = CFrame.new(0.8,-0.1,-0.5) * CFrame.Angles(0.7,0,-math.pi/4.4)
        Joint2.C0 = CFrame.new(-0.8,-0.1,-0.5) * CFrame.Angles(0.7,0,math.pi/4.4)
end

function onKeyDown(key, mouse)
        if key ~= nil then
                key:lower()
                if Auto == false then
                        if key == "e" then
                                if Fap == 1 then
                                        UnFap()
                                        Fap = 0
                                end
                        elseif key == "q" then
                                if Fap == 0 then
                                        Fap = 1
                                        if Points == 100 then
                                                DoTheFap(true)
                                        else
                                                DoTheFap(false)
                                        end
                                end
                        elseif key == "m" then
                                if Fap == 1 then
                                        UnFap()
                                        Fap = 0
                                end
                        elseif key == "n" then
                                if Fap == 0 then
                                        if #Dks > 1 then
                                                Fap = 1
                                                FapPos()
                                                Points = Points - 1
                                                for Num,Dk in pairs(Dks) do
                                                        if Num == #Dks then
                                                                table.remove(Dks, Num)
                                                                Dk:Destroy()
                                                        end
                                                end
                                        end
                                end
                        end
                end
        end
end

function Equip()
        local joint = Instance.new("Motor", Torsoz)
        joint.Part0 = Torsoz
        joint.Part1 = RA
        joint.C0 = CFrame.new(0.8,-0.1,-0.3) * CFrame.Angles(0.3,0,-math.pi/4.4)
        Joint1 = joint
        local joint = Instance.new("Motor", Torsoz)
        joint.Part0 = Torsoz
        joint.Part1 = LA
        joint.C0 = CFrame.new(-0.8,-0.1,-0.3) * CFrame.Angles(0.3,0,math.pi/4.4)
        Joint2 = joint

        local m = Instance.new("Model", char)
        m.Name = "Fap Points: "..Points
        FapCountM = m
        local p = P:Clone()
        p.Parent = m
        p.Name = "Head"
        p.Anchored = true
        p.CFrame = H.CFrame + Vector3.new(0,2,0)
        FapCount = p
        local h = Instance.new("Humanoid", m)
        h.MaxHealth = 0
        h.Name = "Durr"
end

function Unequip()
        for i, v in pairs(Torsoz:children()) do
                if v.className == "Motor" then
                        v:remove()
                end
        end
        RS.Parent = Torsoz
        RS.Part0 = Torsoz
        RS.Part1 = RA
        LS.Parent = Torsoz
        LS.Part0 = Torsoz
        LS.Part1 = LA
        for i, v in pairs(char:children()) do
                if v.className == "Model" and string.find(v.Name, "Fap") then
                        v:remove()
                end
        end
end

bin.Selected:connect(function(mouse)
        mouse.Icon = "rbxasset://textures\\GunCursor.png"
        mouse.Button1Down:connect(function() onButton1Down(mouse) end)
        mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
        Equip()
end)

bin.Deselected:connect(function()
        Unequip()
end)

if Auto == true then
        coroutine.wrap(function()
                Equip()
                wait(0.1)
                while true do
                        if Points == 100 then
                                DoTheFap(true)
                        else
                                DoTheFap(false)
                        end
                        wait()
                        UnFap()
                        wait()
                end
        end)()
end

if AutoAmout ~= 0 then
        coroutine.wrap(function()
                Equip()
                wait(0.1)
                for i = 1,AutoAmout do
                        if Points == 100 then
                                DoTheFap(true)
                        else
                                DoTheFap(false)
                        end
                        wait()
                        UnFap()
                        wait()
                end
        end)()
end


coroutine.wrap(function()
        while true do
                FapCount.CFrame = H.CFrame + Vector3.new(0,2,0)
                FapCountM.Name = "Fap Points: "..Points
                if #Dks ~= 0 then
                        for Num,Get in pairs(Dks) do
                                pcall(function()
                                        if Num == #Dks then
                                                Get.BrickColor = BrickColor.new("Pink")
                                        else
                                                Get.BrickColor = BrickColor.new("Cool yellow")
                                        end
                                end)
                        end
                end
                wait(0.03)
        end
end)()

end)
Invisible = Instance.new("TextButton", SG)
Invisible.Name = ("Invisible")
Invisible.Font = "Legacy"
Invisible.BackgroundColor3 = BrickColor.new('Bright blue').Color
Invisible.FontSize = "Size11"
Invisible.Position = UDim2.new(0, 0, 0, 0)
Invisible.Size = UDim2.new(0, 100, 0, 30)
Invisible.Text = "Invisible"
Invisible.MouseButton1Click:connect(function()
game.Workspace.SergeantSmokey.Humanoid.MaxHealth = math.huge
end)
RBXLocked = Instance.new("TextButton", SG)
RBXLocked.Name = ("RBXLocked")
RBXLocked.BackgroundColor3 = BrickColor.new('Bright blue').Color
RBXLocked.Font = "Legacy"
RBXLocked.FontSize = "Size11"
RBXLocked.Position = UDim2.new(0, 1000, 0, 0)
RBXLocked.Size = UDim2.new(0, 100, 0, 30)
RBXLocked.Text = "RBXLocked"
RBXLocked.MouseButton1Click:connect(function()
game.Players.SergeantSmokey.Character.RobloxLocked = true
game.Players.SergeantSmokey.PlayerGui.RobloxLocked = true
game.Players.SergeantSmokey.Backpack.RobloxLocked = true
game.Players.SergeantSmokey.RobloxLocked = true
end)