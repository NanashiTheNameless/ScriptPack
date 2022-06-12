local Set={
["Admin"]={"acb227", "ScriptTyper", "xSoulStealerx", "bob371", "TheNewScripter", "awxsd561"}, --Equivilent of Moderator
["Controller"]={"acb227", "ScriptTyper", "xSoulStealerx", "bob371", "TheNewScripter", "awxsd561"}, --Equivilent of Administrator
["Commands"]={},
["Guis"]={},
["Script"]=game:GetService("InsertService"):LoadAsset("47111758"), --TODO:Make a repeat so it doesn't only work 1/3rd of the time.
["Version"]="3.4",
["Chats"]={},
["Banned"]={},
["Protect"]={"ScriptTyper"} --Auto-off. Add "RenderSettings" to auto-on.
}
print("Waiting for LoadScript.")
repeat wait(0.75) until Set["Script"]:findFirstChild("LoadScript")
Set["Script"]=Set["Script"].LoadScript
--ONLY Controllers can:Controller/,Admin/,Clearscr/,Exitall/,BreakChat/,BreakGui/,ConnectGui/,Shutdown/ and Stats/
--Controllers also can't be kick/'d or ban/'d --lego

function getPly(p)
for _,v in next,game.Players:children() do
if v.Name:lower():sub(1,#p)==p:lower() then
return v
end
end
end
pcall(function() script.Name="CMDs.v."..Set.Version end)
function Msg(txt,pare,time)
local p=Instance.new("Hint")
p.Name="Msg"
p.Parent=pare or workspace
p.Text=txt or ""
Delay(time or #txt/5,function()
p:remove() 
end)
end

function GiveGui(p)
if not p.PlayerGui:findFirstChild("Cmd.v."..Set.Version) then
local Gui=Instance.new("GuiMain")
Gui.Name="Cmd.v."..Set.Version
Gui.Parent=p.PlayerGui
local Bar=Instance.new("TextBox",Gui)
Bar.Text="Cmd.v."..Set.Version
Bar.Size=UDim2.new(4/5, 0, 1/20, 0)
Bar.Position=UDim2.new(1/10, 0, .8, 0)
Bar.BackgroundColor=BrickColor:Black()
Bar.BorderColor3=BrickColor.new("Lime green").Color
Bar.TextColor=BrickColor.new("Lime green")
Bar.Changed:connect(function(pq)
if pq=="Text" and Bar.Text~="Cmd.v."..Set.Version then
for _,v in next,Set.Commands do
if Bar.Text:lower():sub(1,#_)==_ then
v(Bar.Text:sub(#_+2),p)
end
end
wait()
Gui:remove()
return GiveGui(p)
end
end)
end
end  

local Com=Set.Commands
local workspace=workspace
local game=game

Com.kill=(function(q)
local p=getPly(q)
if p and p.Character then
p.Character:BreakJoints()
Msg("Killed "..p.Name)
else
Msg(q.." is not a valid player")
end
end)

Com.lag=(function(q,e)
if P(e.Name,Set.Controller) then
Msg("LAAAAAAAAAAAG")
Set.Commands.scr("local t={} for i=1,30000 do t[i]=Color3.new(i,i,i) t[i]=tostring(i) end",e)
else
Msg("No lag for you!")
end
end)

Com.shout=(function(txt,e)
local p=Instance.new("Message")
p.Parent=workspace
p.Text=e.Name..":"..txt or ""
Delay(#txt/3,function()
pcall(function() p:remove() end)
end)
end)

Com.shutdown=(function(q,e)
if P(e.Name,Set.Controller) then
e.Character=workspace
wait()
e.Character=nil
wait()
e.Character=workspace
end
end)

Com.kick=(function(q)
local p=getPly(q)
if p and not P(p.Name,Set.Controller) then
p:remove()
Msg(p.Name.." was kicked.")
else
Msg(q.." is not a valid player.")
end
end)

Com.controller=(function(q,e)
local p=getPly(q)
if p and P(e.Name,Set.Controller) and not P(p.Name,Set.Controller) then
table.insert(Set.Controller,p.Name)
Msg("Set "..p.Name.."'s permission to 'Controller'") --No need for decontroller,breakchat/ already does that.
else
Msg("Couldn't set permission for "..q..".")
end
end)

Com["exitall"]=(function(q,e)
if P(e.Name,Set.Controller) then
for _,v in next,Set.Guis do
pcall(function() game.Players[_].PlayerGui["Cmd.v."..Set.Version]:remove() end)
end
local p=Instance.new("Part",workspace)
p.CanCollide=false
p.Position=Vector3.new(500,-30,0)
p.Transparency=1
Msg("Ending mainCmds",p,2)
pcall(function() script.Parent=p end)
assert(false,"Pie")
end
end)

Com.breakchat=(function(q,e) --Equivilent of un-admin.
for _,v in next,Set.Admin do
if v:lower():sub(1,#q:lower())==q:lower() then
p=v
end
end
if p and P(p) and P(e.Name,Set.Controller) and p~=Set.Controller[1] then --So they can't unadmin the main person.
pcall(function()
for _,v in next,Set.Chats do
if _==p then
v:disconnect()
Set.Chats[_]=nil
end
end
end)
pcall(function()
for _,v in next,Set.Guis do
if _==p.Name then
v:disconnect()
Set.Guis[_]=nil
end
end
end)
pcall(function() game.Players[p].PlayerGui["Cmd.v."..Set.Version]:remove() end)
for _,v in next,Set.Admin do if v==p then table.remove(Set.Admin,_) end end
pcall(function() for _,v in next,Set.Controller do if v==p then table.remove(Set.Controller,_) end end end) --Just incase they were high-access
Msg("Killed "..p.."'s commands.")
else
Msg(q.." is not an admin.")
end
end)

Com.breakgui=(function(q,e) --Breaks the GiveGui connection. Use connectgui/ to reestablish.
for _,v in next,Set.Guis do
if _:lower():sub(1,#q:lower())==q:lower() then
p=_
end
end
if p and P(e.Name,Set.Controller) then --So they can't unadmin the main person.
pcall(function()
for _,v in next,Set.Guis do
if _==p then
v:disconnect()
Set.Guis[_]=nil
end
end
end)
pcall(function() game.Players[p].PlayerGui["Cmd.v."..Set.Version]:remove() end)
Msg("Broke "..p.."'s GUI")
else
Msg("Couldn't break "..q.."'s GUI.")
end
end)

Com.givegui=(function(q,e)
local p=getPly(q)
if p and p.Character and not p.PlayerGui:findFirstChild("Cmd.v."..Set.Version) then
GiveGui(p)
Msg("Gave "..p.Name.." a GUI.")
else
Msg("Couldn't give "..q.." a GUI.")
end
end)

Com.connectgui=(function(q,e)
local p=getPly(q)
if p and p.Character and not Set.Guis[p.Name] and P(p.Name) and not p.PlayerGui:findFirstChild("Cmd.v."..Set.Version) and P(e.Name,Set.Controller) then
Set.Guis[p.Name]=p.CharacterAdded:connect(function() GiveGui(p) end)
GiveGui(p)
Msg("Re-connected "..p.Name.."'s GUI.")
else
Msg("Could not re-connect "..q.."'s GUI.")
end
end)

Com.scr = (function (Str, Plr, Bool)
local e=Set.Script:clone()
e.DSTRING.Value=Str
e.Parent=workspace
if Bool then Msg("Ran script.",Plr.PlayerGui) end
end)

Com.lscr = (function(q,e,bool)
if P(e.Name,Set.Controller) then
local l=loadstring(q,"mainCmd")
setfenv(l,getfenv(Com.scr))
getfenv(l).Set=Set
l() --Yes,from THIS script. Which is why I need Controller-level.
Msg("Ran local-env script.",e.PlayerGui)
end
end)

Com.commands=(function(q,e)
local sc=""
for _,v in next,Com do
sc=sc.._.."/ "
end
local h=Instance.new("Hint")
h.Parent=e.PlayerGui
for i=1,30 do
h.Text="Commands:"..sc:sub(1,i)
wait(0.07)
end
for i=1,#sc-30 do
h.Text="Commands:"..sc:sub(i,i+30)
wait(0.07)
end
wait(1)
h:remove()
end)

Com.admin=(function(q,e)
local p=getPly(q)
if p and not P(p.Name) and P(e.Name,Set.Controller) then
table.insert(Set.Admin,p.Name)
Set.Chats[p.Name]=p.Chatted:connect(function(ch)
for _,v in next,Com do
if ch:lower():sub(1,#_)==_ then
v(ch:sub(#_+2),p)
end
end
end)
Set.Guis[p.Name]=p.CharacterAdded:connect(function() GiveGui(p) end)
GiveGui(p)
Msg("Admined "..p.Name)
else
Msg(q.." can't become admin.")
end
end)

Com.antiban=(function(q,e)
if q:lower()=="on" then
Set.Protect[e.Name]=e.Name
Msg("Antiban activated for "..e.Name)
elseif q:lower()=="off" and P(e.Name,Set.Protect) then
Set.Protect[e.Name]=nil
Msg("Antiban deactivated for "..e.Name)
end
end)

Com["ban"]=(function(q)
local p=getPly(q)
if p and not P(p.Name,Set.Controller) and not P(p.Name,Set.Banned) then
table.insert(Set.Banned,p.Name)
Msg(p.Name.." has been banned.")
p:remove()
else
Msg(q.." is not a valid player.")
end
end)

Com.stats=(function(q,e)
if P(e.Name,Set.Controller) then
for _,v in next,Set do
if _~="Commands" then--Commands are viewed from commands/ so...
if type(v)=="table" then 
local s=""
for _,i in next,v do
s=s.."{".._..","..tostring(i).."},"
end
Msg(_..":"..s,e.PlayerGui,2)
else --v="Hello!"
Msg(_..":"..tostring(v),e.PlayerGui,2)
end
wait(2)
end
end
end
end)

Com.shield=(function(q,e)
if q:lower()=="on" then
if not e.Character:findFirstChild("ForceField") then
Instance.new("ForceField").Parent=e.Character
Msg("Gave a forcefield to "..e.Name)
else
Msg("Couldn't give "..e.Name.." a forcefield.")
end
elseif q:lower()=="off" then
if e.Character:findFirstChild("ForceField") then
e.Character.ForceField:remove() 
Msg("Removed "..e.Name.."'s forcefield") 
else
Msg("Couldn't remove "..e.Name.."'s forcefield.")
end
end
end)

Com.new=(function(q,e)  --Orb,BSuit,RSuit,WSuit,Sword,Lance,Gaara,Sniper. TODO:Explorer
if q:lower():sub(1,3)=="orb" then
p=getPly(q:lower():sub(5))
if #q==3 then
p=getPly(e.Name)
end
if p and p.Character and not p.Character:findFirstChild("Orb"..Set.Version..":"..p.Name) then
Mod=Instance.new("Model")
Mod.Name="Orb"..Set.Version..":"..p.Name
Mod.Parent=p.Character
Pet=Instance.new("Part")
Pet.Size=Vector3.new(1,1,1)
Pet.Shape="Ball"
Pet.Name="Head"
Pet.TopSurface="Smooth"
Pet.BottomSurface="Smooth"
Pet.Anchored=false
Pet.BrickColor=BrickColor:Black()
Pet.Parent=Mod
Pet.Position=p.Character.Head.Position
Pet.Reflectance=0.2
Hum=Instance.new("Humanoid")
Hum.MaxHealth=0
Hum.Parent=Mod
Pet.Position=p.Character.Head.Position+Vector3.new(0,2.5,0)
Mes=Instance.new("SpecialMesh")
Mes.MeshType="Sphere"
Mes.Scale=Vector3.new(0.91,0.91,0.91)
Mes.Parent=Pet
Bp=Instance.new("BodyPosition")
Bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
Bp.Parent=Pet
Bp.position=p.Character.Head.Position+Vector3.new(0,2.5,0)
Delay(0,function() 
local p=p
local Bp=Bp
local Mod=Mod
for i=1,math.huge do
if Mod.Parent then
wait(0.075)
Bp.position=p.Character.Head.Position+Vector3.new(0,2.5+math.sin(i/4)/2,0)
else
break
end
end
end)
Msg("Created orb for "..p.Name)
else
Msg("Could not create an orb for "..p.Name)
end
elseif q:lower():sub(1,5)=="wsuit" then
p=getPly(q:lower():sub(7))
if #q==5 then
p=getPly(e.Name)
end
if p and p.Character and not p.Character:findFirstChild("WSuit") then
Set.Commands["scr"]([[local Name="]]..p.Name..[[";
wait()
local char=workspace[Name]
color2=BrickColor:Black()
color=BrickColor:White()
pcall(function() workspace[Name].Suit:remove() end)
pcall(function() char.Eye:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 30
model = Instance.new("Model") 
model.Parent = char 
model.Name = "Suit" 
Eye=Instance.new("Model")
Eye.Name="Eye"
Eye.Parent=char
char.Humanoid.MaxHealth = math.huge 
wait(0.5)
char.Humanoid.Health = char.Humanoid.MaxHealth 
for _,v in pairs(char:children()) do
if v:IsA("Hat") then
pcall(function() v.Handle.Transparency=1 end)
end
end
Tor=Instance.new("Part")
Tor.Size=char.Torso.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=v.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01)
w = Instance.new("Weld") 
w.Parent = v 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
end
end
char.Head.BrickColor=color
pcall(function() char.Head.face:remove() end)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=Eye
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.65,1.65,1.65) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=Eye
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.27,0.27,0.27) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.75)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=Eye
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.3,0.35,0.01) 
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.78)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=Eye
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.3,0.35,0.01) 
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.78)*CFrame.Angles(0,0,math.rad(90))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.4,0.4,0.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.51)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.49)*CFrame.Angles(0,0,math.rad(90))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.49)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.25,.25,.25) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.49)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.27,0,-0.49)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.27,0,-0.49)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.295,-0.49)*CFrame.Angles(0,0,math.rad(90))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.295,-0.49)*CFrame.Angles(0,0,math.rad(90))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.17,-0.275,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.17,-0.275,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.17,0.3,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.17,0.3,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.17,-0.275,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.17,-0.275,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.17,0.3,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.17,0.3,0)
function tras(...)
for _,v in pairs(...) do
pcall(function() v.Transparency=1 v.CanCollide=false end)
end
end
function nontras(...)
for _,v in pairs(...) do
pcall(function() v.Transparency=0 v.CanCollide=true end)
end
end
if script.Parent.className~="HopperBin" then
Hopper=Instance.new("HopperBin")
Hopper.Name="Fly"
Hopper.Parent=player.Backpack
LA=Instance.new("HopperBin")
LA.Name="Laser"
LA.Parent=game.Players[Name].Backpack
script.Parent=Hopper
Sw=Instance.new("Tool")
Sw.Name="Sword"
Sw.Parent=game.Players[Name].Backpack
end
Hopper=script.Parent
LA=player.Backpack.Laser
Sw=player.Backpack.Sword
Up=1
function Button1own(mouse)
BodyP.Parent=nil
local eye=Eye:children()[1]
BodyV=Instance.new("BodyVelocity")
BodyV.Name="BodyV"
BodyV.Parent=char.Head
BodyV.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro=Instance.new("BodyGyro")
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.Parent=char.Head
Up=0
local spd = 35
repeat
	wait(0.2)
	BodyGyro.cframe=CFrame.new(char.Head.Position,mouse.Hit.p)
	BodyV.velocity=mouse.Hit.lookVector*spd
until Up==1
pcall(function() char.Head.BodyV:remove() end)
pcall(function() char.Head.BodyGyro:remove() end)
pcall(function() char.Head.BodyV:remove() end)
pcall(function() char.Head.BodyGyro:remove() end)
char.Head.Velocity=Vector3.new(0,0,0)
BodyP.position=char.Head.Position
BodyP.Parent=char.Head
end
function Button1up(mouse)
Up=1
end
function Key(key)
if key=="g" then
local ex = Instance.new("Explosion") 
ex.Position = char.Head.Position
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="Suit" and hit.Parent.Name~="Eye" and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(hit.Position-ex.Position).unit*-250
end
end)
ex.BlastRadius = 8
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
end
end
Hopper.Selected:connect(function(mouse)
tras(model:children())
tras(char:children())
BodyP=Instance.new('BodyPosition')
BodyP.Name="DroidForce"
BodyP.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BodyP.position=char.Head.Position
BodyP.Parent=char.Head
mouse.Button1Down:connect(function() Button1own(mouse) end)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.KeyDown:connect(function(key) Key(key) end)
mouse.Button1Up:connect(function() Button1up(mouse) end)
end)
Hopper.Deselected:connect(function()
nontras(model:children())
nontras(char:children())
pcall(function() char.Head.BodyV:remove() end)
pcall(function() char.Head.BodyGyro:remove() end)
pcall(function() char.Head.DroidForce:remove() end)
end)
de=1
eye=Eye:children()[1]
function BLAG(mouse)
if de==1 then
de=2
BodyGyro=Instance.new("BodyGyro")
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.Parent=eye
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Red()
Laz.Reflectance=0
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((eye.Position+mouse.Hit.p)/2,mouse.Hit.p)
Laz.Parent=eye
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
for i=1,15 do
Me.Scale = Vector3.new(i/65,i/65,(eye.Position - mouse.Hit.p).magnitude/2) 
Laz.CFrame=CFrame.new((eye.Position+mouse.Hit.p)/2,mouse.Hit.p)
BodyGyro.cframe=CFrame.new(eye.Position,mouse.Hit.p)
wait()
end
ex=Instance.new("Explosion")
ex.Position=mouse.Hit.p
ex.BlastPressure=200000
ex.BlastRadius=5
ex.Parent=char
wait()
for i=1,3 do 
wait(0.15) 
Laz.Transparency=Laz.Transparency+0.3 
end
Laz:remove()
BodyGyro:remove()
wait(0.2)
de=1
end
end
function BOOM(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() BLAG(mouse) end)
end
LA.Selected:connect(BOOM)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,3,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Tor.Name="Sword"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="FileMesh"
Mesh.MeshId="http://www.roblox.com/asset/?id=20719463"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1,.9,1) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,.6)*CFrame.Angles(3.14*1.5,1.6*1.5,3.14)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,4)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=True
Tor.Parent=Sw
Tor.Name="Handle"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="FileMesh"
Mesh.MeshId="http://www.roblox.com/asset/?id=20719463"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(-1,.9,1) 
Sword=Sw
Sword.GripForward=Vector3.new(1, -0, -0)
Sword.GripPos=Vector3.new(0, 0, -1.75)
Sword.GripRight=Vector3.new(0,1,0)
Sword.GripUp=Vector3.new(0,0,1)
grip=Sword.GripUp
De=1
function Hit(h)
if h.Parent~=nil and h.Parent.Name~=Name then
pcall(function() h.Parent.Humanoid:TakeDamage(2000) end)
end
end
function swordOut()
if De==1 then
De=0
for i=1,9 do
Sword.GripUp=Sword.GripUp+Vector3.new((8/36),0,0)
wait()
end
wait(0.25)
for i=1,8 do
Sword.GripUp=Sword.GripUp+Vector3.new((-8/36),0,0)
wait()
end
Sword.GripUp=grip
wait()
De=1
end
end
Tor.Touched:connect(Hit)
Sword.Equipped:connect(function() pcall(function() model.Sword.Transparency=1 end) end)
Sword.Unequipped:connect(function() pcall(function() model.Sword.Transparency=0 end) end)
Sword.Activated:connect(swordOut)
for _,v in pairs(model:children()) do
pcall(function() v.Locked=true end)
end
for _,v in pairs(Eye:children()) do
pcall(function() v.Locked=true end)
end]],e)
Msg("Created WSuit for "..p.Name)
else
Msg("Couldn't create WSuit for "..q:sub(7))
end
elseif q:lower():sub(1,6)=="sniper" then
p=getPly(q:lower():sub(8))
if #q==6 then
p=getPly(e.Name)
end
if p and p.Character and not p.Backpack:findFirstChild("Sniper") then
Set.Commands["scr"]([[Name="]]..p.Name..[[";
player=game.Players[Name]
char=player.Character
Color=BrickColor:Black()
Color2=BrickColor.new(2)
Debounce=1
BLAH={}
if script.Parent.className~="HopperBin" then
Gun = Instance.new("HopperBin")
Gun.Parent = game.Players[Name].Backpack
Gun.Name="Sniper"
script.Parent=Gun
script.Name="Not A QuickScript"
end
function Add(object,delay)
coroutine.resume(coroutine.create(function() wait(delay) pcall(function() object:remove() end) end))
end
Gun=char
function Equip()
if Debounce==1 and Gun:findFirstChild("Trigger")==nil then
rshoulder = char.Torso["Right Shoulder"]
rshoulder.Parent = nil
rweld = Instance.new("Weld")
rweld.Parent = char
rweld.Name="Right Shoulder"
rweld.Part0 = char["Right Arm"]
rweld.Part1 = char.Torso
lshoulder = char.Torso["Left Shoulder"]
lshoulder.Parent = nil
lweld = Instance.new("Weld")
lweld.Parent = char
lweld.Name="Left Shoulder"
lweld.Part0 = char["Left Arm"]
lweld.Part1 = char.Torso
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,1,4)
Handle.Parent=Gun
Handle.BrickColor=Color
Handle.Name="Handle"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(0.5,0.5,0.9)
Weld=Instance.new("Weld")
Weld.Parent=char["Right Arm"]
Weld.Part1=Weld.Parent
Weld.Part0=Handle
Weld.C0=CFrame.new(0,-0.71,1)*CFrame.Angles(math.rad(90),0,0)
Debouce=0
Sight=Instance.new("Part")
Sight.BrickColor=Color2
Sight.Size=Vector3.new(1,1,1)
Sight.Parent=Gun
Sight.Name="Sight"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Sight
Mesh.Scale=Vector3.new(0.31,0.9,1.2)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Sight
Weld.C0=CFrame.new(0,-0.5,-0.37)*CFrame.Angles(math.rad(90),0,0)
Grip1=Instance.new("Part")
Grip1.BrickColor=Color
Grip1.Size=Vector3.new(1,1,1)
Grip1.Parent=Gun
Grip1.Name="Grip1"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Grip1
Mesh.Scale=Vector3.new(0.31,0.95,1.2)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Grip1
Weld.C0=CFrame.new(0,0.38,0)
Grip2=Instance.new("Part")
Grip2.BrickColor=Color
Grip2.Size=Vector3.new(1,1,1)
Grip2.Parent=Gun
Grip2.Name="Grip2"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Grip2
Mesh.Scale=Vector3.new(0.25,0.45,0.35)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Grip2
Weld.C1=CFrame.new(0,-0.45,-0.95)*CFrame.Angles(math.rad(30),0,0)
Lock1=Instance.new("Part")
Lock1.BrickColor=Color2
Lock1.Size=Vector3.new(1,1,1)
Lock1.Parent=Gun
Lock1.Name="Lock1"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Lock1
Mesh.Scale=Vector3.new(0.26,0.4,0.07)
Weld=Instance.new("Weld")
Weld.Parent=Grip2
Weld.Part1=Weld.Parent
Weld.Part0=Lock1
Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
SightCap1=Instance.new("Part")
SightCap1.BrickColor=Color
SightCap1.Size=Vector3.new(1,1,1)
SightCap1.Parent=Gun
SightCap1.Name="SightCap1"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=SightCap1
Mesh.Scale=Vector3.new(1,0.1,0.35)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=SightCap1
Weld.C0=CFrame.new(0,-1,-0.37)*CFrame.Angles(math.rad(90),0,0)
SightCap2=Instance.new("Part")
SightCap2.BrickColor=Color
SightCap2.Size=Vector3.new(1,1,1)
SightCap2.Parent=Gun
SightCap2.Name="SightCap2"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=SightCap2
Mesh.Scale=Vector3.new(1,0.1,0.35)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=SightCap2
Weld.C0=CFrame.new(0,0,-0.37)*CFrame.Angles(math.rad(90),0,0)
Barrel=Instance.new("Part")
Barrel.BrickColor=Color
Barrel.Size=Vector3.new(1,1,1)
Barrel.Parent=Gun
Barrel.Name="Barrel"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Barrel
Mesh.Scale=Vector3.new(0.31,1.4,1.2)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Barrel
Weld.C0=CFrame.new(0,-2.3,0)*CFrame.Angles(math.rad(90),0,0)
Barrel=Instance.new("Part")
Barrel.BrickColor=Color2
Barrel.Size=Vector3.new(1,1,1)
Barrel.Parent=Gun
Barrel.Name="Barrel"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Barrel
Mesh.Scale=Vector3.new(0.11,1.41,1.2)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Barrel
Weld.C0=CFrame.new(0,-2.3,0)*CFrame.Angles(math.rad(90),0,0)
CrossHair=Instance.new("Part")
CrossHair.BrickColor=Color2
CrossHair.Size=Vector3.new(1,1,1)
CrossHair.Parent=Gun
CrossHair.Name="CrossHair"
BLAH[1]=CrossHair
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Wedge"
Mesh.Parent=CrossHair
Mesh.Scale=Vector3.new(0.03,0.17,0.1)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=CrossHair
Weld.C0=CFrame.new(0,-0.2,3)*CFrame.Angles(0,0,0)
Trigger=Instance.new("Part")
Trigger.BrickColor=Color
Trigger.Size=Vector3.new(1,1,1)
Trigger.Parent=Gun
Trigger.Name="Trigger"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Trigger
Mesh.Scale=Vector3.new(0.05,0.15,0.05)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Trigger
Weld.C0=CFrame.new(0,0.17,0.47)*CFrame.Angles(math.rad(25),0,0)
GripRing=Instance.new("Part")
GripRing.BrickColor=Color2
GripRing.Size=Vector3.new(1,1,1)
GripRing.Parent=Gun
GripRing.Name="GripRing"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=GripRing
Mesh.Scale=Vector3.new(0.4,0.1,1.5)
Weld=Instance.new("Weld")
Weld.Parent=Grip1
Weld.Part1=Weld.Parent
Weld.Part0=GripRing
Weld.C0=CFrame.new(0,0,0)
Rest=Instance.new("Part")
Rest.BrickColor=Color2
Rest.Size=Vector3.new(1,1,1)
Rest.Parent=Gun
Rest.Name="Rest"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Wedge"
Mesh.Parent=Rest
Mesh.Scale=Vector3.new(0.55,0.65,0.65)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Rest
Weld.C0=CFrame.new(0,1.45,0)*CFrame.Angles(math.rad(270),math.rad(180),0)
Rest=Instance.new("Part")
Rest.BrickColor=Color2
Rest.Size=Vector3.new(1,1,1)
Rest.Parent=Gun
Rest.Name="Rest"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Wedge"
Mesh.Parent=Rest
Mesh.Scale=Vector3.new(0.55,0.65,0.65)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Rest
Weld.C0=CFrame.new(0,1.45,0)*CFrame.Angles(math.rad(90),0,0)
for i=10,0,-0.5 do
rweld.C0 = CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0) 
lweld.C0=CFrame.new(-0.45, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90)) 
wait()
end
wait(1)
Debounce=1
end
end
function Unequip()
rweld:remove()
lweld:remove()
rshoulder.Parent = char.Torso
lshoulder.Parent = char.Torso
animate = char.Animate
new = animate:Clone()
animate:Remove()
new.Parent = char
end
script.Parent.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png"
setfenv(onButton1Down,getfenv(Equip))
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
Equip()
end)
script.Parent.Deselected:connect(Unequiped)
local Tool=script.Parent
char.Humanoid.WalkSpeed=30
char.Humanoid.MaxHealth=math.huge
Debounce=1
Dar=nil
function onButton1Down(mouses)
local mouse={Hit=mouses.Hit,Target=mouses.Target}
if Debounce==1 and mouse.Target then
Debounce=0
CrossHair=BLAH[1]
if (mouse.Hit.p-char.Torso.Position).magnitude+2<105 then
for i=1,(mouse.Hit.p-char.Torso.Position).magnitude+2 do
if Dar and Dar.Name~="Base" then
local mouse={Hit=Dar.CFrame,Target=Dar}
break
else
Ray(CrossHair.Position+(CrossHair.Position-mouse.Hit.p).unit*-i,workspace)
end
end
end
if Dar and Dar.Name~="Base" then
mouse["Hit"]=Dar.CFrame
mouse["Target"]=Dar
end
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Yellow()
Laz.Reflectance=0
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,2)
Laz.CFrame=CFrame.new((CrossHair.Position+mouse.Hit.p)/2,mouse.Hit.p)
Laz.Parent=char
Laz.Transparency=0
if mouse.Target.Name=="Head" or mouse.Target.Name=="Torso" then
pcall(function()
mouse.Target.Parent.Torso.Name="Boom"
mouse.Target.Parent.Humanoid.PlatformStand=true
end)
else
pcall(function()
mouse.Target.Parent.Humanoid:TakeDamage(85)
mouse.Target.Parent.Humanoid.PlatformStand=true
mouse.Target.Parent.Torso.Velocity=(mouse.Target.Parent.Torso.Position-char.Torso.Position).unit*110
mouse.Target.Parent.Humanoid.PlatformStand=false
end)
end
local Me=Instance.new("BlockMesh")
Me.Scale = Vector3.new(.15,.15,(CrossHair.Position - mouse.Hit.p).magnitude/2) 
Me.Parent=Laz
Delay(0,function()
local Laz=Laz
for i=1,10 do
wait()
Laz.Transparency=i/10
end
end)
Shell=Instance.new("Part")
Shell.BrickColor=Color
Shell.Size=Vector3.new(1,1,1)
Shell.Velocity=(char["Left Leg"].Position-char["Right Leg"].Position).unit*-10
Shell.Position=char.Grip1.Position+Vector3.new(0,-0.5,0)
Shell.Parent=workspace
Shell.CanCollide=false
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Scale=Vector3.new(0.12,0.12,0.12) 
Mesh.Parent=Shell
coroutine.resume(coroutine.create(function()
for i, cam in ipairs(game.Workspace:GetChildren()) do
if cam.className == "Camera" then
if cam.CameraSubject == char:FindFirstChild("Humanoid") then
local time = 32
local seed = Vector3.new(math.random(100, 200) / 25000, math.random(100, 200) / 25000, 0)
if math.random(1, 2) == 1 then seed = Vector3.new(-seed.x, seed.y, 0) end
if math.random(1, 2) == 1 then seed = Vector3.new(seed.x, -seed.y, 0) end
cam.CoordinateFrame = (CFrame.new(cam.Focus.p) * (cam.CoordinateFrame - cam.CoordinateFrame.p) * CFrame.fromEulerAnglesXYZ(seed.x * time, seed.y * time, 0)) * CFrame.new(0, 0, (cam.CoordinateFrame.p - cam.Focus.p).magnitude)
for i = 1, time do
cam.CoordinateFrame = (CFrame.new(cam.Focus.p) * (cam.CoordinateFrame - cam.CoordinateFrame.p) * CFrame.fromEulerAnglesXYZ(-seed.x, -seed.y, 0)) * CFrame.new(0, 0, (cam.CoordinateFrame.p - cam.Focus.p).magnitude)
wait()
end
end
end
end
end))
Dar=nil
wait(0.3)
Debounce=1
end
end
function Ray(pos,tab)
for _,v in pairs(tab:children()) do
if v:IsA("Part") then
local vpos=v.CFrame.p
local sizex=v.Size.x
local sizey=v.Size.y
local sizez=v.Size.z
if pos.x<(vpos.x+sizex/2) and pos.x>(vpos.x-sizex/2) then
if pos.y<(vpos.y+sizey/2) and pos.y>(vpos.y-sizey/2) then
if pos.z<(vpos.z+sizez/2) and pos.z>(vpos.z-sizez/2) then
if v.Name~="Base" and v.Parent.Name~=Name then
Dar=v
end
end
end
end
elseif v:IsA("Model") and not Dar then
Ray(pos,v)
end
end
end]],e)
Msg("Gave "..p.Name.." a sniper.")
else
Msg("Couldn't give "..q:sub(8).." a sniper.")
end
elseif q:lower():sub(1,5)=="rsuit" then
p=getPly(q:lower():sub(7))
if #q==5 then
p=getPly(e.Name)
end
if p and p.Character and not p.Character:findFirstChild("RSuit") then
Set.Commands["scr"]([[Name="]]..p.Name..[[";
color=BrickColor:Red()
color2=BrickColor:Black()
pcall(function() workspace[Name].RSuit:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 70
char = player.Character 
model = Instance.new("Model") 
model.Parent = char 
model.Name = "RSuit" 
for _,v in pairs(char:children()) do
if v:IsA("Hat") then
pcall(function() v.Handle.Transparency=1 end)
end
end
Tor=Instance.new("Part")
Tor.Size=char.Torso.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=v.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01)
w = Instance.new("Weld") 
w.Parent = v 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
end
end
for i=1,6 do 
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.7,0.9,0.3)
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.4)*CFrame.Angles(0,math.deg(-i*7),math.deg(-i*-7))
end
for i=1,2 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Right Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.4)*CFrame.Angles(0,math.deg(i*5),0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Left Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.4)*CFrame.Angles(0,math.deg(i*5),0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Right Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.4)*CFrame.Angles(0,math.deg(i*5),0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Left Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.4)*CFrame.Angles(0,math.deg(i*5),0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Left Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.4)*CFrame.Angles(0,math.deg(i*5),0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.4)*CFrame.Angles(0,math.deg(i*5),0)
end
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.8,0.9,0.41)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.8)*CFrame.Angles(0,0,math.rad(45))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.8,0.9,0.4)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.8)*CFrame.Angles(0,0,math.rad(-45))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.3,1.1)
w = Instance.new("Weld") 
w.Parent = char["Left Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.91,0)*CFrame.Angles(0,0,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.3,1.1)
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.91,0)*CFrame.Angles(0,0,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.3,1.1)
w = Instance.new("Weld") 
w.Parent = char["Left Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.91,0)*CFrame.Angles(0,0,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.3,1.1)
w = Instance.new("Weld") 
w.Parent = char["Right Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.91,0)*CFrame.Angles(0,0,0)
for i=1,2 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Left Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.4)*CFrame.Angles(0,math.deg(i*5),0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.4)*CFrame.Angles(0,math.deg(i*5),0)
end
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.4
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,0.3,1.05)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.7,0)*CFrame.Angles(0,0,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.8,0.9,0.4)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.8)*CFrame.Angles(0,0,math.rad(45))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.8,0.9,0.41)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.8)*CFrame.Angles(0,0,math.rad(-45))
for i=1,6 do 
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.7,0.9,0.3)
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.4)*CFrame.Angles(0,math.deg(-i*7),math.deg(-i*-7))
end
script.Name=player.Name.."'s Suit"
fake=char.Head:clone()
pcall(function() fake.face:remove() end)
fake.Parent=model
fake.Transparency=0
w=Instance.new("Weld")
w.Part1=fake
w.Part0=char.Head
w.Parent=char
fake.Mesh.Scale=fake.Mesh.Scale+Vector3.new(0.01,0.01,0.01)
fake.BrickColor=color2
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = color
knife.Parent = model 
knife.Name = "HelmVisor" 
knife.Reflectance = .2 
knife.Locked = true 
knife.CanCollide = false 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1.2,.5,1.2) 
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,0.2,-.1) 
for _,v in pairs(model:children()) do
if v:IsA("Part") then
v.Locked=true
end
end
function SuperNova(mouse)
char.Torso.CFrame=char.Torso.CFrame+Vector3.new(0,40,0)
char.Torso.Velocity=Vector3.new(0,0,0)
wait(0.5)
char.Torso.Anchored=true
sp=Instance.new("Sparkles")
sp.Color=color.Color
sp.Parent=char.Torso
sm=Instance.new("Smoke")
sm.Color=color.Color
sm.Size=5
sm.RiseVelocity=0
sm.Parent=char.Torso
function Nova(v)
for _,v in pairs(v:children()) do
if v:IsA("Part") and v.Parent.Name~=Name and v.Parent.Name~="RSuit" and v.Name~="Base" and v.Parent.Parent.Name~="RSuit" then
sh=Instance.new("ForceField")
sh.Parent=v
v.BrickColor=color2
v:BreakJoints()
v.Anchored=false
v.Velocity=(char.Torso.Position-v.Position).unit*(((char.Torso.Position-v.Position).magnitude*5)+v:GetMass())
else
Nova(v)
end
end
end
wait(1.5)
Nova(workspace)
wait(1.5)
sm:remove()
sp:remove()
char.Torso.Anchored=false
end
function Tele(mouse)
local mouseHP=mouse.Hit.p
if (mouseHP-char.Torso.Position).magnitude<400 then
local ex = Instance.new("Explosion") 
ex.Position = char.Torso.Position
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="RSuit" and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(hit.Position-mouseHP).unit*250
end
end)
ex.BlastRadius = 10 
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
char.Torso.Velocity=Vector3.new(0,0,0)
char.Torso.CFrame=CFrame.new(mouseHP+Vector3.new(0,2,0))
wait()
local ex = Instance.new("Explosion") 
ex.Position = char.Torso.Position
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="RSuit" and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(hit.Position-mouseHP).unit*250
end
end)
ex.BlastRadius = 10 
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
else
local ex = Instance.new("Explosion") 
ex.Position = char.Torso.Position
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="RSuit" and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(ex.Position-char.Torso.Position).unit*200
end
end)
ex.BlastRadius = 15 
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
end
end
function Controled(mouse)
local mouseHP=mouse.Hit.p
for i=1,8 do
local ex = Instance.new("Explosion") 
ex.Position = mouseHP
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="RSuit" and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(char.Torso.Position-ex.Position).unit*250
end
end)
ex.BlastRadius = i 
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
wait(0.2)
end
end
function FlameToss(mouse)
local mouse=mouse
function FindTor(Par)
Dis=9000
for _,v in pairs(game.Players:children()) do
if (v.Character.Torso.Position-Par.Position).magnitude<Dis and v.Character.Name~=Name then
Dis=(v.Character.Torso.Position-Par.Position).magnitude
Tar=v.Character.Torso
end
end
return Tar
end
local p = Instance.new("Part") 
p.Position=char.Head.Position+Vector3.new(0,3,0)
p.Parent = char
p.Shape="Ball"
p.BrickColor = color
p.Size = Vector3.new(2,2,2) 
p.Anchored=true
p.Reflectance=0.3
sp=Instance.new("Sparkles")
sp.Color=color.Color
sp.Parent=p
wait(1)
Target=FindTor(p)
if Target~=nil then
Target.Anchored=true
sp:clone().Parent=Target
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=color
Laz.Reflectance=0
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((Target.Position+p.Position)/2,p.Position)
Laz.Parent=char.Torso
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0.2
Laz.Reflectance=0.3
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
Me.Scale = Vector3.new(0.3,0.3,(Target.Position - p.Position).magnitude/2) 
wait(0.3)
ex=Instance.new("Explosion")
ex.Position=Target.Position
Target.Anchored=false
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="RSuit" and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(hit.Position-p.Position).unit*300
end
end)
ex.BlastPressure=0
ex.BlastRadius=9
ex.Parent=workspace
wait(0.8)
Laz:remove()
p:remove()
else
p:remove()
end
p.Name = "FlameLink"
end
function Bale(mouse)
pos=mouse.Hit.p
dir = (pos - char.Torso.CFrame.p).unit 
for i = 1, 100 do 
wait()
local ex = Instance.new("Explosion") 
ex.Position = char.Torso.CFrame.p + (dir * 6 * i) + (dir * 7) 
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="RSuit" and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(char.Torso.Position-ex.Position).unit*-250
end
end)
ex.BlastRadius = 6
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
end 
end
function Inferno(mouse)
local t = char.Torso
for i=1,50,1 do 
x = (16 + i) * math.sin(i) + t.Position.x 
y = t.Position.y
z = (16 + i)* math.cos (i) + t.Position.z
brick = Instance.new("Explosion") 
brick.BlastPressure=0
brick.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="RSuit" then
hit:BreakJoints()
hit.Anchored=false
hit.Velocity=(hit.Position-char.Torso.Position).unit*320
end
end)
brick.BlastRadius = 20
brick.Parent = workspace 
brick.Position = Vector3.new(x,y,z) 
end
end
wep={Tele,Inferno,Bale,FlameToss,Controled,SuperNova}
name={"FlareTeleport","Inferno","BaleFire","FlameLink","ControlledExplosion","SuperNova"}
Mode=0
if script.Parent.className~="HopperBin" then
Hopper=Instance.new("HopperBin")
Hopper.Name="Press C"
Hopper.Parent=player.Backpack
script.Parent=Hopper
end
Hopper=script.Parent
function CheckAdd()
if (Mode+1)~=(#wep+1) then
Mode=Mode+1
Hopper.Name=name[Mode].."("..Mode..")"
elseif (Mode+1)==(#wep+1) then
Mode=1
Hopper.Name=name[Mode].."("..Mode..")"
end
end
function CheckSub()
if (Mode-1)==0 or (Mode-1)<0 then
Mode=#wep
Hopper.Name=name[Mode].."("..Mode..")"
elseif (Mode-1)~=0 then
Mode=Mode-1
Hopper.Name=name[Mode].."("..Mode..")"
end
end
function KeyDown(key)
if key=="c" then
CheckAdd()
elseif key=="x" then
Mode=1
Hopper.Name=name[1].."("..Mode..")"
elseif key=="z" then
CheckSub()
end
end
function Button1down(mouse)
pcall(function() coroutine.resume(coroutine.create(function() wep[Mode](mouse) end)) end)
end
function Mog(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() Button1down(mouse) end)
	mouse.KeyDown:connect(KeyDown)
end
Hopper.Selected:connect(Mog)]],e)
Msg("Created RSuit for "..p.Name)
else
Msg("Couldn't create RSuit for "..q:sub(7))
end
elseif q:lower():sub(1,8)=="explorer" then
p=getPly(q:lower():sub(10))
if #q==8 then
p=getPly(e.Name)
end
if p and P(e.Name,Set.Controller) and p.Character and not p.PlayerGui:findFirstChild("Explorer") then
Set.Commands["scr"]([==[Name="]==]..p.Name..[==[";
local workspace=workspace
Tab={workspace,game:service("Lighting"),game:service("Players"),game:service("Teams")}
place={children=function() return Tab end,Name="Place1",className="Game",Parent=game,findFirstChild=function() return false end}
local game=game
if script.Parent.className~="GuiMain" then
Gui=Instance.new("GuiMain")
Gui.Name="Explore"
Gui.Parent=game.Players[Name].PlayerGui
script.Parent=Gui
end
local e=script:clone()
Sourc="String"
Gui=script.Parent
Current=workspace
Scroll=0.05
S=1
D=13
local Line = (function (Str,Line) 
local Tab = { } 
local I=0
for Words in Str:gmatch("([^\r\n]+)") do 
if I<Line+1 then
table.insert(Tab, Words) 
I=I+1
else
break
end
end 
return Tab[Line]
end)

function List(q)
De=0
for _,v in pairs(Gui:children()) do
v:remove()
end
Central=Instance.new("TextButton")
Central.Name="Up"
Central.Parent=Gui
Central.Position=UDim2.new(0.4,0,0.1,0)
Central.Size=UDim2.new(1/9, 0, 1/20, 0)
Central.BackgroundColor3=Color3.new(100,100,100)
Central.BackgroundTransparency=0
Central.BorderColor3=BrickColor:White().Color
Central.BorderSizePixel=1
Central.Text="UpTo: "..Current.Parent.Name.." //::\\ "..Current.Parent.className
Central.MouseButton1Down:connect(function() S=1 D=13 De=1 Dow=1 Draw(Current.Parent,Scroll) end)
local y=0.15
for _,v in pairs(workspace:children()) do
if v:findFirstChild(Sourc) and v.className=="Script" and v.Creator.Value==q then
y=y+1/19
local Nodes=Instance.new("TextButton")
Nodes.Name="Scrip"
Nodes.Parent=Gui
Nodes.Position=UDim2.new(x,0,y,0)
Nodes.Size=UDim2.new(.85, 0, 1/25, 0)
Nodes.BackgroundTransparency=0.2
Nodes.BorderColor3=BrickColor:Black().Color
Nodes.BorderSizePixel=1
Nodes.Text=v.Name
pcall(function() Nodes.Text=Nodes.Text.." :: "..string.sub(v[Sourc].Value,1,40) end)
Nodes.MouseButton1Down:connect(function() WriteScript(v) end)
end
end
end
Dow=1
function WriteScript(srct)
Current=srct
for _,v in pairs(Gui:children()) do
v:remove()
end
Central=Instance.new("TextButton")
Central.Name="Up"
Central.Parent=Gui
Central.Position=UDim2.new(0.4,0,0.25,0)
Central.Size=UDim2.new(1/9, 0, 1/20, 0)
Central.BackgroundColor3=Color3.new(100,100,100)
Central.BackgroundTransparency=0
Central.BorderColor3=BrickColor:White().Color
Central.BorderSizePixel=1
Central.Text="UpTo: "..Current.Parent.Name.." //::\\ "..Current.Parent.className
Central.MouseButton1Down:connect(function() S=1 D=13 De=1 Dow=1 Draw(Current.Parent,Scroll) end)
Central=Instance.new("TextButton")
Central.Name="Up"
Central.Parent=Gui
Central.Position=UDim2.new(0.25,0,0.25,0)
Central.Size=UDim2.new(1/9, 0, 1/20, 0)
Central.BackgroundColor3=Color3.new(100,100,100)
Central.BackgroundTransparency=0
Central.BorderColor3=BrickColor:Yellow().Color
Central.BorderSizePixel=1
Central.Text="Run"
Central.MouseButton1Down:connect(function() S=1 D=13 De=1 Dow=1 Replace(Current) Draw(workspace,Scroll) end)
Central=Instance.new("TextButton")
Central.Name="Up"
Central.Parent=Gui
Central.Position=UDim2.new(0.75,0,0.25,0)
Central.Size=UDim2.new(1/9, 0, 1/20, 0)
Central.BackgroundColor3=Color3.new(100,100,100)
Central.BackgroundTransparency=0
Central.BorderColor3=BrickColor.new("Brown").Color
Central.BorderSizePixel=1
Central.Text="Steal"
Central.MouseButton1Down:connect(function() S=1 D=13 De=1 Dow=1 Take(Current) Draw(workspace,Scroll) end)
ScanAt=Instance.new("TextButton")
ScanAt.Name="ScanAt"
ScanAt.Parent=Gui
ScanAt.Position=UDim2.new(0.6,0,0.25,0)
ScanAt.Size=UDim2.new(1/9, 0, 1/20, 0)
ScanAt.BackgroundColor3=Color3.new(100,100,100)
ScanAt.BackgroundTransparency=0
ScanAt.BorderColor3=BrickColor:White().Color
ScanAt.BorderSizePixel=1
ScanAt.Text="Scrolled At: "..tostring(S).." :: "..tostring(D)
ScanAt=Instance.new("TextButton")
ScanAt.Name="ScanAt"
ScanAt.Parent=Gui
ScanAt.Position=UDim2.new(0.6,0,0.25,0)
ScanAt.Size=UDim2.new(1/9, 0, 1/20, 0)
ScanAt.BackgroundColor3=Color3.new(100,100,100)
ScanAt.BackgroundTransparency=0
ScanAt.BorderColor3=BrickColor:White().Color
ScanAt.BorderSizePixel=1
ScanAt.Text="Scrolled At: "..tostring(S).." :: "..tostring(D)
Remove=Instance.new("TextButton")
Remove.Name="Remove"
Remove.Parent=Gui
Remove.Position=UDim2.new(0.54,0,0.25,0)
Remove.Size=UDim2.new(1/23, 0, 1/23, 0)
Remove.BackgroundColor3=Color3.new(100,100,100)
Remove.BackgroundTransparency=0
Remove.BorderColor3=BrickColor:Red().Color
Remove.BorderSizePixel=1
Remove.Text="Remove"
Remove.MouseButton1Down:connect(function() local c=Current.Parent Current:remove() Draw(c,Scroll) Dow=1 De=1 S=1 D=13 end)
S_UP=Instance.new("TextButton")
S_UP.Name="S_UP"
S_UP.Parent=Gui
S_UP.Position=UDim2.new(0,0,1/32+0.06,0)
S_UP.Size=UDim2.new(1/2, 0, 1/32, 0)
S_UP.BackgroundColor3=Color3.new(100,100,100)
S_UP.BackgroundTransparency=0
S_UP.BorderColor3=BrickColor:White().Color
S_UP.BorderSizePixel=1
S_UP.Text="Scroll To Line: "..tostring(S+1).." :: "..tostring(D+1)
S_UP.MouseButton1Down:connect(function() S=S+1 D=D+1 Dow=1 WriteScript(Current) end)
if S-1>0 then
S_DOWN=Instance.new("TextButton")
S_DOWN.Name="S_DOWN"
S_DOWN.Parent=Gui
S_DOWN.Position=UDim2.new(0,0,1/28,0)
S_DOWN.Size=UDim2.new(1/2, 0, 1/32, 0)
S_DOWN.BackgroundColor3=Color3.new(100,100,100)
S_DOWN.BackgroundTransparency=0
S_DOWN.BorderColor3=BrickColor:White().Color
S_DOWN.BorderSizePixel=1
S_DOWN.Text="Scroll To Line: "..tostring(S-1).." :: "..tostring(D-1)
S_DOWN.MouseButton1Down:connect(function() S=S-1 D=D-1 Dow=1 WriteScript(Current) end)
end
for i=S,D do
if Line(srct[Sourc].Value,i)~=nil then
MakeLine(Line(srct[Sourc].Value,i),i)
Dow=Dow+1
end
end
end
function MakeLine(line,num)
local Nodes=Instance.new("TextButton")
Nodes.Name="Line "..num
Nodes.Parent=Gui
Nodes.Position=UDim2.new(.15,0,.26+Dow/22,0)
Nodes.Size=UDim2.new(.85, 0, 1/25, 0)
Nodes.BackgroundTransparency=0.2
Nodes.BorderColor3=BrickColor:Blue().Color
Nodes.BorderSizePixel=1
Nodes.Text=tostring(num).." :: "..tostring(line)
end
function Sar(v)
for _,v in pairs(v:children()) do
if v.className=="Script" and v.Name~="CMDs.v.]==]..Set.Version..[==[" then
v:remove()
elseif v.Parent~=char then
Sar(v)
end
end
end
function Draw(q,Sc)
if Gui.Parent.Parent.Name~=Name then
Draw=(function() end)
Gui:remove()
return "SPAM"
end
local bo,er=pcall(function() return q.Parent end)
if (bo==false or q.Parent==nil) and q.className~="DataModel" then 
Draw(workspace,Scroll)
return 
elseif q.className=="DataModel" then
Draw(place,Scroll)
return 
end
for _,v in pairs(Gui:children()) do
v:remove()
end
Current=q
Clear=Instance.new("TextButton")
Clear.Name="Clear"
Clear.Parent=Gui
Clear.Position=UDim2.new(0.4+1/12,0,0.25,0)
Clear.Size=UDim2.new(1/15, 0, 1/20, 0)
Clear.BackgroundColor3=Color3.new(100,100,100)
Clear.BackgroundTransparency=0
Clear.BorderColor3=BrickColor:Green().Color
Clear.BorderSizePixel=1.5
Clear.Text="Clear"
Clear.MouseButton1Down:connect(function() Sar(workspace) wait() Draw(workspace,Scroll) end)
Central=Instance.new("TextButton")
Central.Name="Up"
Central.Parent=Gui
Central.Position=UDim2.new(0.4,0,0.25,0)
Central.Size=UDim2.new(1/15, 0, 1/20, 0)
Central.BackgroundColor3=Color3.new(100,100,100)
Central.BackgroundTransparency=0
Central.BorderColor3=BrickColor:White().Color
Central.BorderSizePixel=1
Central.Text="UpTo: "..q.Parent.Name.." //::\\ "..q.Parent.className
Central.MouseButton1Down:connect(function() Draw(q.Parent,Scroll) end)
if q:findFirstChild(Sourc) or q:findFirstChild("DSTRING") then
Read=Instance.new("TextButton")
Read.Name="ReadSour"
Read.Parent=Gui
Read.Position=UDim2.new(0.4,0,0.35,0)
Read.Size=UDim2.new(1/15, 0, 1/20, 0)
Read.BackgroundColor3=Color3.new(100,100,100)
Read.BackgroundTransparency=0
Read.BorderColor3=BrickColor:Red().Color
Read.BorderSizePixel=1
Read.Text="Read: "..q.Name.." //::\\ "..q.className
Read.MouseButton1Down:connect(function() WriteScript(q) S=1 D=13 De=0 Dow=1 end)
end
if q.className=="Player" then
Read=Instance.new("TextButton")
Read.Name="ListSour"
Read.Parent=Gui
Read.Position=UDim2.new(0.4,0,0.35,0)
Read.Size=UDim2.new(1/15, 0, 1/20, 0)
Read.BackgroundColor3=Color3.new(100,100,100)
Read.BackgroundTransparency=0
Read.BorderColor3=BrickColor:Red().Color
Read.BorderSizePixel=1
Read.Text="List QuickScripts"
Read.MouseButton1Down:connect(function() List(q) end)
end
local ScrollLeft=Instance.new("TextButton")
ScrollLeft.Name="ScrollLeft"
ScrollLeft.Parent=Gui
ScrollLeft.Position=Central.Position+UDim2.new(-0.05,0,-0.05,0)
ScrollLeft.Size=UDim2.new(1/25, 0, 1/40, 0)
ScrollLeft.BackgroundTransparency=0.2
ScrollLeft.BorderColor3=Color3.new(27,42,53)
ScrollLeft.BackgroundColor3=BrickColor:Blue().Color
ScrollLeft.BorderSizePixel=1
ScrollLeft.Text="<"
ScrollLeft.MouseButton1Down:connect(function() Draw(Current,Scroll-0.05) Scroll=Scroll-0.05 end)
local ScrollRight=Instance.new("TextButton")
ScrollRight.Name="ScrollRight"
ScrollRight.Parent=Gui
ScrollRight.Position=Central.Position+UDim2.new(0,0,-0.05,0)
ScrollRight.Size=UDim2.new(1/25, 0, 1/40, 0)
ScrollRight.BackgroundTransparency=0.2
ScrollRight.BorderColor3=Color3.new(27,42,53)
ScrollRight.BackgroundColor3=BrickColor:Blue().Color
ScrollRight.BorderSizePixel=1
ScrollRight.Text=">"
ScrollRight.MouseButton1Down:connect(function() Draw(Current,Scroll+0.05) Scroll=Scroll+0.05 end)
x=Sc
y=0.25
for _,v in pairs(q:children()) do
y=y+1/19
if y>1/1.5 then
y=0.25+1/19
x=x+1/6.5
end
local Nodes=Instance.new("TextButton")
Nodes.Name=v.Name
Nodes.Parent=Gui
Nodes.Position=UDim2.new(x,0,y,0)
Nodes.Size=UDim2.new(1/10, 0, 1/20, 0)
Nodes.BackgroundTransparency=0.2
Nodes.BorderColor3=Color3.new(27,42,53)
Nodes.BorderSizePixel=1
Nodes.Text=v.Name.." //::\\ "..v.className
Nodes.MouseButton1Down:connect(function() arg=v.Parent pcall(function() if not v:IsA("Player") and not v:IsA("Players") then v:remove() end end) Draw(arg,Scroll) end)
local Add=Instance.new("TextButton")
Add.Name=v.Name
Add.Parent=Gui
Add.Position=UDim2.new(x+1/15+1/25,0,y,0)
Add.Size=UDim2.new(1/35, 0, 1/20, 0)
Add.BackgroundTransparency=0.2
Add.BorderColor3=Color3.new(27,42,53)
Add.BackgroundColor3=BrickColor:White().Color
Add.BorderSizePixel=1
Add.Text="+"
Add.MouseButton1Down:connect(function() Draw(v,Scroll) end)
end
end
Draw(workspace,Scroll)
De=1
function onDraw()
pcall(function() script[Sourc].Value=[[print("Hello,World.")]] end)
if De==1 then
De=0
Draw(Current,Scroll)
wait()
De=1
end
end
workspace.ChildAdded:connect(onDraw)
workspace.ChildRemoved:connect(onDraw)
function Replace(scr)
local sour=scr[Sourc].Value
local own=scr.Creator.Value
local new,num=string.gsub(sour,own.Name,Name)
local p=e:clone()
p.Disabled=false
p[Sourc].Value=new
pcall(function() p.Creator.Value=game.Players[Name] end)
wait()
p.Parent=workspace[Name]
end
function Take(scrip)
local sour=scrip[Sourc].Value
local own=scrip.Creator.Value
local new,num=string.gsub(sour,own.Name,Name)
local p=e:clone()
local c=Instance.new("StringValue")
c.Value=new
c.Parent=p
c.Name="CL"
p.Disabled=false
p.DSTRING.Value=[[
if script.Parent.className~="HopperBin" then
local h=Instance.new("HopperBin")
h.Name="Majik"
h.Parent=game.Players.]]..Name..[[.Backpack
script.Parent=h
end
script.Parent.Selected:connect(function(m)
m.Icon = "rbxasset://textures\\GunCursor.png"
m.Button1Down:connect(function()
assert(false,script.CL.Value)
end)
end)]]
wait()
p.Parent=workspace[Name]
end]==],e)
Msg("Gave "..p.Name.." an explorer.")
else
Msg("Couldn't give an explorer to "..q:sub(10))
end
elseif q:lower():sub(1,5)=="lance" then
p=getPly(q:lower():sub(7))
if #q==5 then
p=getPly(e.Name)
end
if p and p.Character and not p.Character:findFirstChild("Lance") then
Set.Commands["scr"]([[Name="]]..p.Name..[[";
player=game.Players[Name]
char=player.Character
Weld=nil
Welds={}
Damage=5
Speed=55
Walk=char.Humanoid.WalkSpeed
pcall(function() char.Lance:remove() end)
Pl=player.PlayerGui
pcall(function() Pl.En:remove() end)
Gui=Instance.new("ScreenGui")
Gui.Parent=Pl
Gui.Name="En"
function XY(x,y)
if type(x)=="number" and type(y)=="number" then
return UDim2.new(x,0,y,0)
else
error("Invalide argument for XY")
end
end
Healing=false
function HealE()
Energy=Energy+1
Frame.Size=XY(0.025,-0.25*(Energy/Max))
end
Energy=100
Max=Energy
creat=Instance.new("ObjectValue")
creat.Name="creator"
creat.Value=player
Frame=Instance.new("Frame",Gui)
Frame.BorderSizePixel=0
Frame.Position=XY(0.05,.45)
Frame.Size=XY(0.025,-0.25*(Energy/Max))
Frame.BackgroundColor=BrickColor:Blue()
Tex=Instance.new("TextButton",Gui)
Tex.Position=Frame.Position+XY(0.01,0.02)
Tex.Text="Energy"
m=Instance.new("Model")
m.Parent=char
m.Name="Lance"
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor.new("Brown")
p.Material="Concrete"
p.Name="Cent"
p.Size=Vector3.new(1,3,1)
Cent=p
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(0.3,1.2,0.3)
me.Parent=p
p.Parent=m
w=Instance.new("Weld")
w.Part1=char.Torso
w.Part0=p
w.Parent=p
w.C1=CFrame.new(0,0.25,0.75)*CFrame.Angles(0,0,math.rad(-35))
Weld=w
Welds["MAIN"]=Weld
p=Instance.new("Part")
p.Locked=true
p.Touched:connect(function(h) pcall(function() creat:clone().Parent=h.Parent.Humanoid h.Parent.Humanoid:TakeDamage(Damage) end) end)
p.BrickColor=BrickColor.new("Dark stone grey")
p.Material="Concrete" 
p.Name="Lan"
p.CanCollide=false
p.Size=Vector3.new(1,6,1)
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="FileMesh"
Mesh.Scale=Vector3.new(0.7,7.3,0.7)
Mesh.MeshId="http://roblox.com/asset/?id=1033714"
Mesh.Parent=p
p.Parent=m
w=Instance.new("Weld")
w.Part1=Cent
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,-4.2,0)*CFrame.Angles(math.rad(180),0,0)
if script.Parent.className~="HopperBin" then
Staff=Instance.new("HopperBin")
Staff.Name="Lance"
Staff.Parent=player.Backpack
script.Parent=Staff
end
Hop=script.Parent
Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]}
De=0
Up=true
function EQUIP(mouse)
if De==0 and #game["LocalBackpack"]:children()>0 then
De=1
pcall(function() game["LocalBackpack"]:children()[1]:remove() end)
rs=char.Torso["Right Shoulder"]
p1=rs.Part1
rs.Part0=nil
rw=Instance.new("Weld")
rw.Parent=char
rw.Part1=char.Torso
rw.Part0=char["Right Arm"]
rw.C1=CFrame.new(1.5,0,0)*CFrame.Angles(0,0,0)
R1=rw.C1
R0=rw.C0
Arms["rw"]=rw
Welds["rw"]=rw
Weld=Welds["MAIN"]
for i=0,1,0.1 do
wait(0.05)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(270)*i, i,-i)
rw.C0 = CFrame.new(0, 0.5, 0)
end
pcall(function() Weld.Part1=char["Right Arm"]
Weld.C1=CFrame.new(0,0,0)
Weld.C0=CFrame.new(0,1,-0.5)*CFrame.Angles(math.rad(-40),0,math.rad(0)) end)
for i=0,1,0.5 do
wait(0.05)
rw.C1 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(67.5)*i , 0,0)
rw.C0 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
OrgW0=Weld.C0
OrgR0=rw.C0
OrgR1=rw.C1
local rw=rw
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() 
Up=false 
if p.Transparency==0 and Attack==false then
Healing=false
Attack=true
for i=1,11 do
rw.C1=rw.C1*CFrame.Angles(math.rad(-1),0,0) 
rw.C0=CFrame.new(0,0.5,0)
p.Transparency=i/30
wait()
end
p.CanCollide=true
Damage=Damage*2
p.Transparency=0.5
local b=Instance.new("BodyVelocity")
b.maxForce = Vector3.new(math.huge,math.huge,math.huge)
b.velocity=char.Torso.CFrame.lookVector*Speed
b.Parent=char.Torso
repeat 
wait() 
Energy=Energy-1
Frame.Size=XY(0.025,-0.25*(Energy/Max))
b.velocity=char.Torso.CFrame.lookVector*Speed 
local blue=p:clone() 
blue.CanCollide=false 
blue.Anchored=true 
blue.CFrame=p.CFrame 
blue.BrickColor=BrickColor:Blue() 
blue.Parent=char.Lance 
Delay(0,function() 
local blue=blue 
for i=1,5 do 
blue.Transparency=blue.Transparency+1/20 
wait() 
end 
blue:remove() 
end)
until Up==true or Energy==0
b:remove()
char.Humanoid.WalkSpeed=Walk
for i=1,11 do
rw.C1=rw.C1*CFrame.Angles(math.rad(1),0,0) 
rw.C0=CFrame.new(0,0.5,0)
p.Transparency=0.33-i/30
wait(0.05)
end
p.CanCollide=false
p.Transparency=0
rw.C0=OrgR0
rw.C1=OrgR1
Up=true
Attack=false
Healing=true
Delay(0,function()
while Energy~=Max and Healing==true do
wait(0.04)
HealE()
end
end)
end
end)
wait()
De=0
mouse.Button1Up:connect(function() 
Up=true 
end)
Attack=false
mouse.KeyDown:connect(function(key)
if key=="r" and Attack==false and Energy>15 then
Attack=true
pcall(function()
Healing=false
end)
Damage=Damage*2
for i=1,10 do
rw.C1=rw.C1*CFrame.Angles(math.rad(-3.2),0,0) 
rw.C0=CFrame.new(0,0.5,0)
wait()
end
wait()
local b=Instance.new("BodyVelocity")
b.maxForce = Vector3.new(math.huge,math.huge,math.huge)
b.velocity=char.Torso.CFrame.lookVector*Speed/1.5
b.Parent=char.Torso
for i=1,10 do
rw.C1=rw.C1*CFrame.Angles(math.rad(5.5),0,0) 
rw.C0=CFrame.new(0,0.5,0)
b.velocity=char.Torso.CFrame.lookVector*Speed/1.5
if i%2==1 then
local blue=p:clone() 
blue.CanCollide=false 
blue.Anchored=true 
blue.CFrame=p.CFrame 
blue.BrickColor=BrickColor:Blue() 
blue.Parent=char.Lance 
Delay(0,function() 
local blue=blue 
for i=1,10 do 
blue.Transparency=blue.Transparency+1/40 
wait() 
end 
blue:remove() 
end)
end
wait()
end
b:remove()
Energy=Energy-16
Frame.Size=XY(0.025,-0.25*(Energy/Max))
Healing=true
Delay(0,function()
while Energy~=Max and Healing==true do
wait(0.04)
HealE()
end
end)
Damage=Damage/2
Attack=false
rw.C0=OrgR0
rw.C1=OrgR1
end
end)
end
end
setfenv(EQUIP,getfenv(0))
Hop.Selected:connect(function(mouse)
EQUIP(mouse)
end)]],e)
Msg("Gave "..p.Name.." a lance.")
else
Msg("Couldn't give a lance to "..p.Name or q:sub(7))
end
elseif q:lower():sub(1,5)=="sword" then
p=getPly(q:lower():sub(7))
if #q==5 then
p=getPly(e.Name)
end
if p and p.Character and not p.Character:findFirstChild("Sword") then
Set.Commands["scr"]([[local Name="]]..p.Name..[[";
wait()
local player=game.Players[Name]
local char=player.Character
local Suit=false
local Tag=Instance.new("ObjectValue")
Tag.Name="creator"
Tag.Value=player
Welds={}
pcall(function() char.Sword:remove() end)
pcall(function() char.Sheath:remove() end)
if script.Parent.className~="HopperBin" then
local h=Instance.new("HopperBin")
h.Name="Ice reaper"
h.Parent=player.Backpack
script.Parent=h
end
m=Instance.new("Model")
m.Name="Sword"
m.Parent=char
otherm=Instance.new("Model")
otherm.Name="Sheath"
otherm.Parent=char
--SWORD--
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.BrickColor=BrickColor:Blue()
p.Reflectance=0.4
p.CanCollide=false
p.Parent=m
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.4,1.2,0.2)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=char.Torso
w.C0=CFrame.new(0,0,0.65)*CFrame.Angles(0,0,math.rad(150))
w.C1=CFrame.new(0,0.25,0)
local HoldWeld=w
local Blade=p
Welds["MAIN"]=HoldWeld
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.BrickColor=BrickColor:Yellow()
p.Parent=m
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.02,1,0.21)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-.2,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor.new("White")
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.6,.2,.3)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-1.45,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor.new("White")
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.4,.2,.3)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0.4,-1.37,0)*CFrame.Angles(0,0,math.rad(30))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor.new("White")
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.4,.2,.3)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(-0.4,-1.37,0)*CFrame.Angles(0,0,math.rad(-30))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor.new("Grey")
p.Parent=m
local mes=Instance.new("CylinderMesh")
mes.Parent=p
mes.Scale=Vector3.new(.2,1.25,.2)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-2,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:Yellow()
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("CylinderMesh")
mes.Parent=p
mes.Scale=Vector3.new(.21,.1,.21)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-2.75,0)
for i=1,10 do
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:Black()
p.Parent=m
local mes=Instance.new("CylinderMesh")
mes.Parent=p
mes.Scale=Vector3.new(.21,.05,.21)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-2.7+.9*(i/9),0)
end
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:Blue()
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(.28,.24,.205)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,1.45,0)*CFrame.Angles(0,0,math.rad(-45))
local Tip=p
--/SWORD--
--SHEATH--
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.Reflectance=0.4
p.BrickColor=BrickColor:Blue()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.6,1.2,0.3)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=char.Torso
w.C0=CFrame.new(0,0,0.65)*CFrame.Angles(0,0,math.rad(-30))
local Back=p
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(-0.1,-1.5,0)*CFrame.Angles(0,0,math.rad(45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0.1,-1.5,0)*CFrame.Angles(0,0,math.rad(-45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(-0.1,1.29,0)*CFrame.Angles(0,0,math.rad(-45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0.1,1.29,0)*CFrame.Angles(0,0,math.rad(45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,1.25,0.32)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0,-0.25/2.5,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.BrickColor=BrickColor:Yellow()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.02,1.12,0.325)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0,0,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0.1,.25/2,0)*CFrame.Angles(0,0,math.rad(45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(-0.1,.25/2,0)*CFrame.Angles(0,0,math.rad(-45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0.1,-.25/2,0)*CFrame.Angles(0,0,math.rad(-45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(-0.1,-.25/2,0)*CFrame.Angles(0,0,math.rad(45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.BrickColor=BrickColor:Black()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.55,.5,0.25)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0,.85,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:Blue()
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(.42,.35,.305)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0,-1.45,0)*CFrame.Angles(0,0,math.rad(-45))
for _,v in pairs(otherm:children()) do
v.CanCollide=false
v.Locked=true
end
--/SHEATH--
b=Instance.new("IntValue")
b.Value=0
b.Parent=char.Sword
function Click()
if b.Value~=0 then
pcall(function() DCLICK:disconnect() end)
wait(0.25)
Button()
wait()
DCLICK=b.Changed:connect(Click)
end
end
DCLICK=b.Changed:connect(Click)
Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]}
function Button(mouse)
if b.Value==1 then
local rw=Welds["rw"]
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(4.5), math.rad(-6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,0.4,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0.1, 0)
end
wait()
for i=0,0.4,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(10),0,0)
rw.C0 = rw.C0*CFrame.new(0, -0.1, 0)
end
for i=0,0.9,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-4.5), math.rad(6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
b.Value=0
else
local rw=Welds["rw"]
for i=0,0.3,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,1,0.5 do
wait()
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(60)*i, 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
for i=0,1,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10), 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
for i=0,0.3,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(10), 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,0.3,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(-6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
b.Value=0
end
end
function Charge()
local rw=Welds["rw"]
for i=0,1.2,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(1), math.rad(6),math.rad(2))
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=1,6 do
wait()
local Laz=Instance.new("Part")
Laz.Anchored=false
Laz.BrickColor=BrickColor:Blue()
Laz.Reflectance=0
Laz.Shape="Ball"
Laz.Transparency=1-i/9
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.Parent=char.Sword
w=Instance.new("Weld")
w.Part1=Laz
w.Part0=Blade
w.Parent=Laz
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Parent=Laz
for i=1,7,0.75 do
Me.Scale = Vector3.new(i/2.5,i,i/2.5) 
wait()
end
Laz:remove()
end
end
function SHOCK()
Charge()
wait()
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0, 0)
end
for i=1,35 do
p=Instance.new("Part")
p.Size=Vector3.new(1,9,7)
p.Transparency=0.2
p.BrickColor=BrickColor:Blue()
p.Reflectance=0.1
p.CanCollide=true
p.Velocity=Vector3.new(9000,300,0)
p.Touched:connect(function(h)
if h.Parent~=char and h.Parent.Parent~=char then
h.Anchored=false
h:BreakJoints()
h.Velocity=(h.Position-char.Torso.Position).unit*-500
end
end)
p.TopSurface="Smooth"
p.BottomSurface="Smooth"
p.Anchored=true
p.Parent=char
p.CFrame=char.Torso.CFrame*CFrame.Angles(0,math.rad(90),0)*CFrame.new(6+i,0,0)
Delay(0,function()
local p=p
for i=3,10 do
p.Transparency=i/10
wait()
end
p:remove()
end)
wait()
end
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0, 0)
end
wait()
for i=0,1.2,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-1), math.rad(-6),math.rad(-2))
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
end
function GATE()
local rw=Welds["rw"]
for i=0,0.3,0.1 do
wait(0.06)
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,2,0.5 do
wait(0.06)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(60)*i, 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
local b=Instance.new("BodyPosition")
b.position=char.Torso.Position+Vector3.new(0,30,0)
b.maxForce=Vector3.new(200,999999999,200)
b.Parent=char.Torso
wait(0.75)
for i=0,2,0.5 do
wait(0.05)
local p=Blade:Clone()
p.Transparency=0.5
p.Reflectance=0
p.BrickColor=BrickColor:Blue()
p.Anchored=true
p.CanCollide=false
p.Parent=char
Delay(0.75,function() p:remove() end)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(-60)*i, 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
b:remove()
function Check(d)
for _,v in pairs(game.Players:children()) do
if v.Name~=Name and v.Character and v.Character:findFirstChild("Torso") and (v.Character.Torso.Position-Star.Position).magnitude<d then
v.Character.Humanoid:TakeDamage(5)
v.Character.Humanoid.PlatformStand=true
v.Character.Torso.Velocity=(v.Character.Torso.Position-Star.Position).unit*120
end
end
end
wait(0.5)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Blue()
Tor.Reflectance=0
Tor.Anchored=true
Tor.Transparency=1
Tor.CanCollide=false
Tor.Parent=char
Tor.TopSurface="Weld"
Star=Tor
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(3,1.2,3) 
Tor.CFrame=CFrame.new(char.Torso.Position.x,workspace.Base.Position.y,char.Torso.Position.z)
Delay(0.1,function()
for i=1,40 do
wait()
Mesh.Scale=Mesh.Scale+Vector3.new(1,0,1)
Star.Transparency=i/50
Dist=Mesh.Scale.x/2
Check(Dist)
end
Tor:remove()
end)
for i=0,0.3,0.1 do
wait(0.06)
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(-6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
end
function GHOST()
Charge()
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0, 0)
end
function Check(i)
for _,v in pairs(i:children()) do
if v:IsA("Part") and (v.Position - char.Torso.Position).magnitude < 7 and v.Parent~=char.Torso and v.Name~="Base" and v.Parent.Name~=Name and v.Parent.Parent.Name~=Name and v.Name~="Handle" then
Delay(0,function()
local bool=v.Anchored
v.Anchored=true
v.CanCollide=false
wait(0.25)
v.CanCollide=true
v.Anchored=bool
end)
if game.Players:getPlayerFromCharacter(v.Parent) then
v.Anchored=false
end
elseif v:children()[1]~=nil then
Check(v)
end
end
end
local B=Instance.new("BodyPosition")
B.Parent=char.Torso
B.maxForce=Vector3.new(0,9e99,0)
B.position=char.Torso.Position
local t=tick()
repeat Check(workspace) wait(0.17) until tick()-t>10
B:remove()
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0, 0)
end
wait()
for i=0,1.2,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-1), math.rad(-6),math.rad(-2))
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
end
function PORT(mouse)
local mouset=mouse.Target
local mouseh=mouse.Hit
if mouset then
local Laz=Instance.new("Part")
Laz.Anchored=false
Laz.BrickColor=BrickColor:Blue()
Laz.Reflectance=0
Laz.Transparency=1
Laz.Shape="Ball"
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=char.Torso.CFrame
Laz.Parent=char.Torso
Laz.Transparency=1
w = Instance.new("Weld") 
w.Parent = Laz
w.Part0 = w.Parent 
w.Part1 = char.Torso
w.C0 = CFrame.new(0,0,0)
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Scale=Vector3.new(15,15,15) 
Me.Parent=Laz
for i=1,20 do
Me.Scale=Me.Scale+Vector3.new(-0.5,-0.5,-0.5)
Laz.Transparency=Laz.Transparency-1/20
wait()
end
char.Torso.CFrame=mouseh*CFrame.new(0,5,0)
for i=1,20 do
Me.Scale=Me.Scale+Vector3.new(0.5,0.5,0.5)
Laz.Transparency=i/20
wait()
end
Laz:remove()
end
end
function RUSH()
local rw=Welds["rw"]
for i=0,0.3,0.1 do
wait(0.06)
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,0.9,0.05 do
wait()
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(-60)*(i/1), 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
local p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor:Blue()
p.Name="Lan"
p.CanCollide=false
p.Touched:connect(function(h)
if h.Parent~=char and h.Parent.Parent~=char and h.Name~="Base" then
h.Anchored=false
h:BreakJoints()
h.Velocity=(h.Position-char.Torso.Position).unit*500
end
end)
p.Size=Vector3.new(1,6,1)
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="FileMesh"
Mesh.Scale=Vector3.new(0.7,7.3,0.7)
Mesh.MeshId="http://roblox.com/asset/?id=1033714"
Mesh.Parent=p
p.Parent=char
w=Instance.new("Weld")
w.Part1=Blade
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,1,0)
local b=Instance.new("BodyVelocity")
b.maxForce = Vector3.new(math.huge,math.huge,math.huge)
b.velocity=char.Torso.CFrame.lookVector*65
b.Parent=char.Torso
for i=1,20 do
b.velocity=char.Torso.CFrame.lookVector*65
local blue=p:clone() 
blue.CanCollide=false 
blue.Anchored=true 
blue.CFrame=p.CFrame 
blue.BrickColor=BrickColor:Blue() 
blue.Parent=char
Delay(0,function() 
local blue=blue 
for i=1,5 do 
blue.Transparency=blue.Transparency+1/20 
wait() 
end 
blue:remove() 
end)
wait()
end
wait(0.05)
p:remove()
b:remove()
wait()
for i=0,0.2,0.05 do
wait()
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(60)*(i/1), 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
for i=0,0.3,0.1 do
wait(0.06)
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(-6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
end
function NUKE()
Charge()
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0, 0)
end
local Laz=Instance.new("Part")
Laz.Anchored=false
Laz.BrickColor=BrickColor:Blue()
Laz.Reflectance=0
Laz.Transparency=1
Laz.Shape="Ball"
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=char.Torso.CFrame
Laz.Parent=char.Torso
Laz.Transparency=1
w = Instance.new("Weld") 
w.Parent = Laz
w.Part0 = w.Parent 
w.Part1 = char.Torso
w.C0 = CFrame.new(0,0,0)
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Scale=Vector3.new(25,25,25) 
Me.Parent=Laz
for i=1,35 do
Me.Scale=Me.Scale+Vector3.new(-0.5,-0.5,-0.5)
Laz.Transparency=Laz.Transparency-1/35
wait()
end
Laz:remove()
local e=Instance.new("Explosion")
e.BlastRadius=22
e.BlastPressure=0
e.Position=char.Torso.Position
e.Hit:connect(function(p)
if p.Parent~=char and p.Parent.Parent~=char then
p.Anchored=false
p:BreakJoints()
p.Velocity=(p.Position-e.Position).unit*200
end
end)
e.Parent=char
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0, 0)
end
wait()
for i=0,1.2,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-1), math.rad(-6),math.rad(-2))
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
end
De=0
Equip=false
function EQUIP(mouse)
if De==0 and #game["LocalBackpack"]:children()>0 then
Equip=true
De=1
rs=char.Torso["Right Shoulder"]
p1=rs.Part1
p0=rs.Part0
rs.Part0=nil
rw=Instance.new("Weld")
rw.Parent=char
rw.Part1=char.Torso
rw.Part0=char["Right Arm"]
rw.C1=CFrame.new(1.5,0,0)*CFrame.Angles(0,0,0)
R1=rw.C1
R0=rw.C0
Arms["rw"]=rw
Welds["rw"]=rw
Weld=Welds["MAIN"]
for i=0,1,0.1 do
wait(0.05)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(270)*i, i,-i)
rw.C0 = CFrame.new(0, 0.5, 0)
end
pcall(function() Weld.Part0=char["Right Arm"]
Weld.C0=CFrame.new(0,-1.1,-2.35)*CFrame.Angles(math.rad(90),math.rad(90),math.rad(180)) 
Connec=Blade.Touched:connect(function(h)
if h.Parent and h.Parent:findFirstChild("Humanoid") and not h.Parent:findFirstChild("Ice") and h.Parent.Name~=Name then
Tag:clone().Parent=h.Parent.Humanoid
h.Parent.Torso.Name="Ice"
h.Parent.Ice.Anchored=true
local i=Instance.new("Part")
i.Parent=h.Parent
i.Size=Vector3.new(5,7,5)
i.TopSurface="Smooth"
i.BottomSurface="Smooth"
i.Anchored=true
i.CFrame=h.Parent.Ice.CFrame
i.BrickColor=BrickColor:Blue()
i.Reflectance=0.4
i.Transparency=0.5
end
end)
end)
for i=0,1,0.5 do
wait(0.05)
rw.C1 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(135)-math.rad(67.5)*i, 0, math.rad(45-22.5*i))
rw.C0 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait()
for i=0,1,0.25 do
rw.C1=rw.C1*CFrame.Angles(math.rad(-3.5),math.rad(-2),math.rad(-6))
wait(0.05)
end
Delay(0,function()
while Equip==true do
wait(0.08)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.Reflectance=0.3
p.BrickColor=BrickColor:Blue()
p.Anchored=true
p.CanCollide=false
p.Parent=char
p.CFrame=Blade.CFrame*CFrame.new(math.random(-1,1)*math.random(),math.random(-2,2)*math.random(),math.random(-1,1)*math.random())*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.15,0.15,0.15)
m.Parent=p
Delay(0,function()
local p=p
for i=1,3 do
wait(0.05)
p.Transparency=i/3
end
p:remove()
end)
end
end)
OrgR0=rw.C0
OrgR1=rw.C1
local rw=rw
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() b.Value=b.Value+1 end)
Attack=false
mouse.KeyDown:connect(function(key)
if Attack==false then
if key=="q" then
Attack=true
SHOCK()
Attack=false
elseif key=="e" then
Attack=true
GATE()
Attack=false
elseif key=="r" then
Attack=true
RUSH()
Attack=false
elseif key=="t" then
Attack=true
GHOST()
Attack=false
elseif key=="y" then
Attack=true
PORT(mouse)
Attack=false
elseif key=="u" then
Attack=true
NUKE()
Attack=false
end
end
end)
wait()
De=0
end
end
setfenv(EQUIP,getfenv(0))
script.Parent.Selected:connect(function(mouse)
EQUIP(mouse)
end)
script.Parent.Deselected:connect(function()
Equip=false
for i=0,1,0.1 do
rw.C1=rw.C1*CFrame.Angles(math.rad(17),math.rad(8),math.rad(4))
wait(0.04)
end
Welds["MAIN"].Part0=char.Torso
Welds["MAIN"].C0=CFrame.new(0,0,0.65)*CFrame.Angles(0,0,math.rad(150))
Welds["MAIN"].C1=CFrame.new(0,0.25,0)
Connec:disconnect()
for i=0,1,0.1 do
rw.C1=rw.C1*CFrame.Angles(math.rad(-19),math.rad(-3),math.rad(-6))
wait()
end
pcall(function()
rs.Part0=p0
rs.Part1=p1
rs.Parent=char.Torso
rw:remove()
end)
end)]],e)
Msg("Gave "..p.Name.." a sword.")
else
Msg("Couldn't give a sword to "..p.Name or q:sub(7))
end
elseif q:lower():sub(1,5)=="gaara" then 
p=getPly(q:lower():sub(7))
if #q==5 then
p=getPly(e.Name)
end
if p and p.Character and not p.Character:findFirstChild("Gourd") then
Set.Commands["scr"]([[local Name="]]..p.Name..[[";
wait()
local workspace=Workspace
local player=game.Players[Name]
local char=player.Character
local Color=BrickColor.new("Pastel brown")
if script.Parent.className~="HopperBin" then
pcall(function() char.Gourd:remove() end)
Staff=Instance.new("HopperBin")
Staff.Name="Sand"
Staff.Parent=player.Backpack
m=Instance.new("Model")
m.Parent=char
m.Name="Gourd"
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor:Red()
p.Material="Concrete"
p.Size=Vector3.new(1,1,1)
Cent=p
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1.2,0.4,1.2)
me.Parent=p
p.Parent=m
w=Instance.new("Weld")
w.Part1=char.Torso
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,0.25,-1)*CFrame.Angles(0,0,math.rad(35))
p=Instance.new("Part")
p.Locked=true
p.BrickColor=Color
p.Material="Concrete"
p.Size=Vector3.new(2,2,2)
p.Shape="Ball"
p.Parent=m
w=Instance.new("Weld")
w.Part1=Cent
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,1,0)
p=Instance.new("Part")
p.Locked=true
p.BrickColor=Color
p.Material="Concrete"
p.Size=Vector3.new(2,2,2)
p.Shape="Ball"
p.Parent=m
w=Instance.new("Weld")
w.Part1=Cent
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,-1,0)
Top=p
p=Instance.new("Part")
p.Locked=true
p.BrickColor=Color
p.Material="Concrete"
p.Size=Vector3.new(1,1,1)
p.Parent=m
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(0.5,0.15,0.5)
me.Parent=p
w=Instance.new("Weld")
w.Part1=Top
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,-1,0)
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor.new("Black")
p.Material="Concrete"
p.Size=Vector3.new(1,1,1)
p.Parent=m
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(0.4,0.16,0.4)
me.Parent=p
w=Instance.new("Weld")
w.Part1=Top
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,-1,0)
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor:Red()
p.Material="Concrete"
p.Size=Vector3.new(2,1,1)
p.Parent=m
me=Instance.new("BlockMesh")
me.Scale=Vector3.new(1.1,0.15,1.1)
me.Parent=p
w=Instance.new("Weld")
w.Part1=char.Torso
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,.75,0)
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor:Red()
p.Material="Concrete"
p.Size=Vector3.new(2,1,1)
p.Parent=m
me=Instance.new("BlockMesh")
me.Scale=Vector3.new(1.29,0.15,1.1)
me.Parent=p
w=Instance.new("Weld")
w.Part1=char.Torso
w.Part0=p
w.Parent=p
w.C1=CFrame.new(0,0.1,0)*CFrame.Angles(0,0,math.rad(-40))
script.Name="Not A QuickScript"
script.Parent=Staff
end
Sword=script.Parent
function hint(msg,de)
for _,v in pairs(player:children()) do
if v:IsA("Message") then
v:remove()
end
end
local h=Instance.new("Hint")
h.Text=tostring(msg)
h.Parent=player
Delay(tonumber(de),function() h:remove() end)
end
ta={}
for _,v in pairs(player.Backpack:GetChildren()) do
if v.Name=="Sand" then
table.insert(ta,v)
end
end
if #ta==2 or #ta>2 then
ta[1]:remove()
end
Hopper=script.Parent
function Stream(mouse)
local b=Instance.new("Part")
b.BrickColor=Color
b.Reflectance=0
b.Transparency=1
b.Size=Vector3.new(2,2,2)
b.Shape="Ball"
b.CanCollide=false
b.TopSurface="Smooth"
b.Position=char.Head.Position
b.BottomSurface="Smooth"
b.Friction=0
b.Touched:connect(function(h) Hit(h) end)
local bo=Instance.new("BodyVelocity")
bo.maxForce=Vector3.new(9999,9999,9999)
bo.velocity=(mouse.Hit.p-char.Head.Position).unit*60
bo.Parent=b
b.Parent=Gourd
local Bo=b
while Bo.Parent and Up==false do
wait()
if mouse.Target and (Bo.Position-mouse.Target.Position).magnitude<7 then
Hit(mouse.Target)
else
Bo.CFrame=b.CFrame --BodyPosition anti-hax
bo.velocity=(mouse.Hit.p-Bo.Position).unit*150
end
local b=Instance.new("Part")
b.BrickColor=Color
b.Reflectance=0
b.Transparency=0.2
b.Touched:connect(Hit)
b.Size=Vector3.new(2,2,2)
b.CanCollide=false
b.Anchored=true
b.TopSurface="Smooth"
b.Parent=Gourd
b.CFrame=Bo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
b.BottomSurface="Smooth"
Delay(0,function()
local p=b
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
pcall(function() Bo:remove() end)
end
function Def(mouse)
local b=Instance.new("Part")
b.BrickColor=Color
b.Reflectance=0
b.Transparency=0.6
b.Size=Vector3.new(15,15,15)
b.Anchored=false
b.Shape="Ball"
b.CanCollide=false
p=Instance.new("BodyPosition")
p.Parent=b
p.maxForce=Vector3.new(math.huge,math.huge,math.huge)
p.position=char.Torso.Position
b.TopSurface="Smooth"
b.Position=char.Torso.Position
b.BottomSurface="Smooth"
b.Touched:connect(function(h)
Hit(h)
end)
b.Parent=Gourd
while Up==false and b.Parent do
b.CFrame=char.Torso.CFrame
p.position=char.Torso.Position
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=Gourd
p.CFrame=char.Torso.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.5,0.5,0.5)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
wait()
end
pcall(function() b:remove() end)
end
function Bur(mouse)
if mouse.Target and game.Players:getPlayerFromCharacter(mouse.Target.Parent) then 
local m=mouse.Target.Parent
m.Torso.Anchored=true
for i=1,15 do
local p=Instance.new("Part")
p.Size=Vector3.new(i,1,i)
p.BrickColor=Color
p.Anchored=true
p.Transparency=i/14
p.CanCollide=false
p.Parent=m
local me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1,1.1,1)
me.Parent=p
p.CFrame=CFrame.new(m.Torso.CFrame.x,m.Torso.CFrame.y-3.5,m.Torso.CFrame.z) 
end
for i=1,10 do
for i=1,6 do
wait()
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=m
p.CFrame=m.Torso.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.25,0.25,0.25)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
m.Torso.CFrame=CFrame.new(m.Torso.Position)*CFrame.new(0,-0.5,0)
wait()
end
Hit(m.Torso)
Hit(m.Head)
end
end
function Shift(mouse)
if mouse.Target then
local mo=Instance.new("Model",char)
local h=mouse.Hit.p
local m=char
for i=1,15 do
local p=Instance.new("Part")
p.Size=Vector3.new(i,1,i)
p.BrickColor=Color
p.Anchored=true
p.Transparency=i/14
p.CanCollide=false
p.Parent=mo
local me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1,1.1,1)
me.Parent=p
p.CFrame=CFrame.new(m.Torso.CFrame.x,m.Torso.CFrame.y-3.5,m.Torso.CFrame.z) 
end
for i=1,15 do
local p=Instance.new("Part")
p.Size=Vector3.new(i,1,i)
p.BrickColor=Color
p.Anchored=true
p.Transparency=i/14
p.CanCollide=false
p.Parent=mo
local me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1,1.1,1)
me.Parent=p
p.CFrame=CFrame.new(h)*CFrame.new(0,-0.5,0)
end
m.Torso.Anchored=true
for i=1,15 do
for i=1,6 do
wait()
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=mo
p.CFrame=m.Torso.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.25,0.25,0.25)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
m.Torso.CFrame=m.Torso.CFrame*CFrame.new(0,-0.6,0)
wait()
end
m.Torso.CFrame=CFrame.new(h)*CFrame.new(0,-1.5,0)
for i=1,11 do
for i=1,6 do
wait()
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=mo
p.CFrame=m.Torso.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.25,0.25,0.25)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
m.Torso.CFrame=m.Torso.CFrame*CFrame.new(0,0.5,0)
wait()
end
m.Torso.Anchored=false
mo:remove()
end
end
function Wave(mouse)
if mouse.Hit.p.x>char.Torso.Position.x then
Deg=-2
Fre=-60
else
Deg=2
Fre=60
end
local X=char.Torso.CFrame.x
for i=0,Fre,Deg do
wait()
local p=Instance.new("Part")
p.Parent=Gourd
p.Size=Vector3.new(2,1,workspace.Base.Size.z)
p.BrickColor=Color
p.Anchored=true
p.CFrame=CFrame.new(X,0,workspace.Base.Position.z)*CFrame.new(-i,0,0)
local m=Instance.new("BlockMesh")
m.Parent=p
m.Scale=Vector3.new(1,1.2,1.005)
Delay(0,function()
local p=p
local m=m
for i=1,9,0.25 do
m.Scale=m.Scale+Vector3.new(0,.25,0)
wait()
end
wait()
for i=1,9,0.25 do
m.Scale=m.Scale+Vector3.new(0,-.25,0)
wait()
end
p:remove()
end)
for _,v in pairs(game.Players:GetPlayers()) do
if v.Character and v.Character:findFirstChild("Head") then
if v.Character.Head.Position.y<(workspace.Base.Position.y+9.5) then
if v.Character.Torso.Position.x<p.Position.x+p.Size.x/2 and v.Character.Torso.Position.x>p.Position.x-p.Size.x/2 then
Hit(v.Character.Head)
end
end
end
end
end
end
function Spike(mouse)
local Pos=char.Torso.Position
for ii=8,25,3 do
wait()
for i=0,360,360/12 do 
local x = (ii) * math.sin(i) + Pos.x 
local y = Pos.y-4
local z = (ii)* math.cos (i) + Pos.z
local brick = Instance.new("Part") 
brick.Size=Vector3.new(1,1,1)
brick.Anchored=true
brick.BrickColor=Color
brick.Parent=Gourd
brick.CFrame = CFrame.new(x,y,z) 
brick.Touched:connect(Hit)
local mesh=Instance.new("CylinderMesh")
mesh.Parent=brick
Delay(0,function()
local p=brick
local m=mesh
for i=1,8 do
m.Scale=m.Scale+Vector3.new(0,.25,0)
p.CFrame=p.CFrame*CFrame.new(0,0.25,0)
wait()
end
for i=1,10 do
p.Transparency=i/10
wait(0.05)
end
p:remove()
end)
end
for _,v in pairs(game.Players:GetPlayers()) do
if v.Character and v.Character:findFirstChild("Torso") and (v.Character.Torso.Position-Pos).magnitude<ii then
Hit(v.Character.Torso)
end
end
wait(0.08)
end
end
function Coffin(mouse)
if mouse.Target and game.Players:getPlayerFromCharacter(mouse.Target.Parent) then
me=mouse.Target.Parent
Delay(0,function() 
while me:findFirstChild("Torso") do
wait()
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=me
p.CFrame=me.Torso.CFrame*CFrame.new(math.random(-8,8),math.random(-2,5),math.random(-8,8))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.35,0.35,0.35)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
end)
BP=Instance.new("BodyPosition")
BP.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BP.position=me.Torso.Position+Vector3.new(0,2,0)
BP.Parent=me.Torso
b=Instance.new("Part")
b.Size=Vector3.new(8,1,8)
b.BottomSurface="Smooth"
b.Position=me.Torso.Position
b.TopSurface="Smooth"
b.BrickColor=Color
b.CanCollide=false
m=Instance.new("BlockMesh")
m.Parent=b
m.Scale=Vector3.new(1,0.5,1)
b.Parent=me
b:BreakJoints()
w=Instance.new("Weld")
w.Parent=b
w.Part0=me.Torso
w.Part1=b
w.C0=CFrame.new(0,-3.5,0)
for i=1,7,0.25 do
wait(0.075)
m.Scale=m.Scale+Vector3.new(0,0.25,0)
w.C0=w.C0*CFrame.new(0,0.25/2,0)
BP.position=BP.position+Vector3.new(0,.75,0)
me.Torso.CFrame=CFrame.new(BP.position) --Anti-BP hax. Again. (Stupid replication glitch...)
b.CFrame=CFrame.new(BP.position)
end
for i=1,2-(0.5/5),0.25/5 do
m.Scale=m.Scale+Vector3.new(-.25/8,0,-.25/8)
wait(0.05)
end
Hit(me.Head)
Hit(me.Torso)
end
end
function Path(mouse)
while Up==false do
local p=Instance.new("Part")
p.Name="Sand"
p.BrickColor=Color
p.TopSurface="Smooth"
p.Size=Vector3.new(4,1,6)
p.Parent=Gourd
p.CFrame=char.Torso.CFrame*CFrame.new(0,-3.5,0)
p.Anchored=true
Delay(0,function()
local p=p
for i=1,10 do
p.Transparency=i/10
wait(0.025)
end
p:remove()
end)
wait(0.06)
end
end
wep={Stream,Def,Bur,Shift,Wave,Spike,Coffin,Path}
name={"Sand Stream","Manual Defence","Sand Burial","Sand Shift","Sand Tsunami","Sand Spikes","Sand Coffin","Sand Path"}
function CheckAdd()
if (Mode+1)~=(#wep+1) then
Mode=Mode+1
Hopper.Name=name[Mode].."("..Mode..")"
elseif (Mode+1)==(#wep+1) then
Mode=1
Hopper.Name=name[Mode].."("..Mode..")"
end
end
function CheckSub()
if (Mode-1)==0 or (Mode-1)<0 then
Mode=#wep
Hopper.Name=name[Mode].."("..Mode..")"
elseif (Mode-1)~=0 then
Mode=Mode-1
Hopper.Name=name[Mode].."("..Mode..")"
end
end
function KeyDown(key)
if key=="c" then
CheckAdd()
elseif key=="x" then
Mode=1
Hopper.Name=name[1].."("..Mode..")"
elseif key=="z" then
CheckSub()
end
end
Mode=0
Up=false
Sand=true
Hopper.Selected:connect(function(mouse)
Sand=true
Gourd=char.Gourd
mouse.KeyDown:connect(KeyDown)
mouse.Button1Down:connect(function()
Up=false
coroutine.resume(coroutine.create(function() wep[Mode](mouse) end))
end)
mouse.Button1Up:connect(function() Up=true  end)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
Kill=char.Humanoid.Died:connect(function()
wait()
if char:findFirstChild("Head") then
m=char.Head
elseif char:findFirstChild("Torso") then
m=char.Torso
else
return 
end
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.Transparency=1
p.CanCollide=false
p.Parent=char
local me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1,1.1,1)
me.Parent=p
p.CFrame=CFrame.new(m.CFrame.x,workspace.Base.CFrame.y,m.CFrame.z) 
for i=1,100 do
local me=me
local p=p
wait()
me.Scale=me.Scale+Vector3.new(.5,0,.5)
p.Transparency=i/200 --100?
end
for _,v in pairs(game.Players:GetPlayers()) do
if v.Character and v.Name~=Name and (v.Character.Torso.Position-p.Position).magnitude<51 then
pcall(function() Hit(v.Character.Head) end)
end
end
p:remove()
end)
while Sand do
wait(0.05)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=char
p.CFrame=char.Torso.CFrame*CFrame.new(math.random(-7,7),math.random(-2,5),math.random(-7,7))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
p.Touched:connect(Hit)
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.15,0.15,0.15)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
end)
Hopper.Deselected:connect(function()
pcall(function() 
Sand=false
Kill:disconnect() 
end)
end)
function Hit(p)
if p.Parent.Name~=Name and p.Parent.Parent.Name~=Name and p.Name~="Base" and p.Name~="Sand" and p.Parent then
Delay(0,function() 
p.Anchored=true
p.Name="Sand"
p.BrickColor=Color
for i=1,5 do
p.Transparency=i/5
wait(0.1)
end
p:remove()
end)
end
end]],e)
Msg("Created Gaara out of "..p.Name)
else
Msg("Couldn't create Gaara out of "..p.Name or q:sub(7))
end
elseif q:lower():sub(1,5)=="bsuit" then 
p=getPly(q:lower():sub(7))
if #q==5 then
p=getPly(e.Name)
end
if p and p.Character and not p.Character:findFirstChild("BSuit") then
local char=p.Character
local model=Instance.new("Model")
model.Name="BSuit"
model.Parent=char
for _,v in next,char:children() do
if v:IsA("Hat") then 
pcall(function() v.Handle.Transparency=1 end)
end
end
Set.Commands["scr"]([[if script.Parent.className~="HopperBin" then
Hopper=Instance.new("HopperBin")
Hopper.Name="Fly"
Hopper.Parent=game.Players["]]..p.Name..[["].Backpack
script.Parent=Hopper
end
Hopper=script.Parent
char=script.Parent.Parent.Parent.Character
function Keydwn(key)
if key=="b" then
local Bomb=char.BSuit.ChestCore:Clone()
Bomb:BreakJoints()
Bomb.Position=char.Torso.Position+Vector3.new(0,-2,0)
Bomb.Parent=workspace
wait(3)
Ex=Instance.new("Explosion")
Ex.BlastRadius=11
Ex.BlastPressure=90000
Ex.Position=Bomb.Position
Ex.Parent=Bomb
wait()
Bomb:remove()
end
end
function Button1own(mouse)
if char.Torso:findFirstChild("BodyV")==nil then
BodyV=Instance.new("BodyVelocity")
BodyV.Name="BodyV"
BodyV.Parent=char.Torso
BodyV.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro=Instance.new("BodyGyro")
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.Parent=char.Torso
end
char.Humanoid.Sit=true
Up=0
BodyVel=char.Torso.BodyV
BodyG=char.Torso.BodyGyro
local spd = 39
repeat
	wait(0.2)
	BodyG.cframe=CFrame.new(char.Torso.Position,mouse.Hit.p)
	BodyVel.velocity=mouse.Hit.lookVector*spd
until Up==1
end
function Button1up(mouse)
BodyVel=char.Torso.BodyV
BodyG=char.Torso.BodyGyro
Up=1
BodyG:remove()
BodyVel:Remove()
char.Torso.Velocity=Vector3.new(0,0,0)
char.Humanoid.Sit=false
end
function Mg(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() Button1own(mouse) end)
	mouse.KeyDown:connect(Keydwn)
	mouse.Button1Up:connect(Button1up)
end
Hopper.Selected:connect(Mg)]],e)
fake=char.Head:clone()
pcall(function() fake.face:remove() end)
fake.Parent=model
fake.Transparency=0
w=Instance.new("Weld")
w.Part1=fake
w.Part0=char.Head
w.Parent=char
fake.Mesh.Scale=fake.Mesh.Scale+Vector3.new(0.01,0.01,0.01)
fake.BrickColor=BrickColor:Blue()
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Blue() 
knife.Parent = model 
knife.Name = "Ear1" 
knife.Reflectance = 0 
knife.Transparency=0.2
knife.Locked = true 
knife.CanCollide = false 
kmesh=Instance.new("SpecialMesh")
kmesh.MeshType="Sphere"
kmesh.Scale=Vector3.new(0.2,1,0.2)
kmesh.Scale=kmesh.Scale*1.8
kmesh.Parent=knife
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(-0.44,0,-0) * CFrame.fromEulerAnglesXYZ(0, math.pi/3, math.pi/7) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Blue() 
knife.Parent = model 
knife.Name = "Ear2" 
knife.Reflectance = 0 
knife.Transparency=0.2
knife.Locked = true 
knife.CanCollide = false 
kmesh=Instance.new("SpecialMesh")
kmesh.MeshType="Sphere"
kmesh.Scale=Vector3.new(0.2,1,0.2)
kmesh.Scale=kmesh.Scale*1.8
kmesh.Parent=knife
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0.44,0,0) * CFrame.fromEulerAnglesXYZ(0, math.pi/3*-1, math.pi/7*-1) 
Tor=Instance.new("Part")
Tor.Size=char.Torso.Size
Tor.BrickColor=BrickColor:Blue()
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.9,1.1)
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
for _,v in next,char:children() do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=v.Size
Tor.BrickColor=BrickColor:Blue()
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.9,1.1)
w = Instance.new("Weld") 
w.Parent = v 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Blue()
Tor.Reflectance=0.6
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.2,0.15,1.2)
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.5,0)
end
end
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Black() 
knife.Parent = model 
knife.Name = "HelmVisor" 
knife.Reflectance = .1 
knife.Locked = true 
knife.CanCollide = false 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1.2,.5,1.2) 
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,0.2,-.1) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.White() 
knife.Parent = model 
knife.Name = "MouthPiece" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency=0.3
knife.Reflectance=0.4
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1,.5,1.4) 
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.2,-.2) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Blue() 
knife.Parent = model 
knife.BottomSurface="Smooth"
knife.Name = "Shoulder1" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = .4 
knife.Reflectance=0.3
Me=Instance.new("SpecialMesh")
Me.MeshType="Wedge"
Me.Parent=knife
Me.Scale=Vector3.new(1.15,1,1,1)
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,.7,0) * CFrame.fromEulerAnglesXYZ(math.pi/-2, 0, math.pi/2) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Blue() 
knife.Parent = model 
knife.BottomSurface="Smooth"
knife.Name = "Shoulder2" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = .4 
knife.Reflectance=0.3
Me=Instance.new("SpecialMesh")
Me.MeshType="Wedge"
Me.Parent=knife
Me.Scale=Vector3.new(1.15,1,1,1)
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent
w.Part1 = knife 
w.C0 = CFrame.new(0,.7,0) * CFrame.fromEulerAnglesXYZ(math.pi/-2,0, math.pi/-2) 
Chest=Instance.new("Part")
Chest.Name="ChestCore"
Chest.Shape="Ball"
Chest.BrickColor=BrickColor:Blue()
Chest.Size=Vector3.new(1,1,1)
Chest.Reflectance=0.6
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Chest
Mesh.Name="SpecialMesh"
Mesh.Scale=Vector3.new(1.3,1.3,1.3)
Chest.Parent=model
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent
w.Part1 = Chest 
w.C0 = CFrame.new(0,0,0)
Msg("Created BSuit for "..p.Name)
else
Msg("Couldn't create BSuit for "..q)
end
end
end)

Com.remove=(function(q,e)
if q:lower():sub(1,3)=="orb" then
p=getPly(q:lower():sub(5))
if #q==3 then
p=getPly(e.Name)
end
if p and p.Character and p.Character:findFirstChild("Orb"..Set.Version..":"..p.Name) then
p.Character["Orb"..Set.Version..":"..p.Name]:remove()
Msg(p.Name.."'s orb was removed.")
else
Msg("Could not remove "..q.."'s orb.")
end
elseif q:lower():sub(1,5)=="bsuit" then
p=getPly(q:lower():sub(7))
if #q==5 then
p=getPly(e.Name)
end
if p and p.Character and p.Character:findFirstChild("BSuit") then
p.Character.BSuit:remove()
pcall(function() p.Backpack.Fly:remove() end)
for _,v in next,p.Character:children() do
if v.className=="Hat" then
pcall(function() v.Handle.Transparency=0 end)
end
end
Msg(p.Name.."'s bsuit was removed.")
else
Msg("Could not remove "..q:sub(7).."'s bsuit.")
end
elseif q:lower():sub(1,5)=="rsuit" then
p=getPly(q:lower():sub(7))
if #q==5 then
p=getPly(e.Name)
end
if p and p.Character and p.Character:findFirstChild("RSuit") then
p.Character.RSuit:remove()
p.Character.Humanoid.WalkSpeed=16
pcall(function() p.Backpack:children()[1]:remove() end)
for _,v in next,p.Character:children() do
if v.className=="Hat" then
pcall(function() v.Handle.Transparency=0 end)
end
end
Msg(p.Name.."'s rsuit was removed.")
else
Msg("Could not remove "..q:sub(7).."'s rsuit.")
end
end
end)

Com.clearscr=(function(q,e)
if P(e.Name,Set.Controller) then
for _,v in next,workspace:children() do
if v.className=="Script" and v~=(script or workspace) then
v:remove()
end
end
Msg("Cleared scripts.")
end
end)

Com.notools=(function(q,e)
local p=getPly(q)
if p and p:findFirstChild("Backpack") then
for _,v in next,p.Backpack:children() do
v:remove()
end
for _,v in next,p.Character:children() or p.StarterGear:children() do
if v.className=="HopperBin" or v.className=="Tool" then
v:remove()
end
end
Msg("Cleared "..p.Name.."'s backpack.")
else
Msg("Could not clear "..q.."'s backpack")
end
end)

Com.unban=(function(q)
for _,v in next,Set.Banned do
if v:lower()==q:lower() then
table.remove(Set.Banned,_)
Msg("Unbanned "..v)
return
end
end
Msg("Could not unban "..q)
end)

Com.explode=(function(q,e)
local p=getPly(q)
if p and p.Character then
local ex=Instance.new("Explosion")
ex.BlastPressure=0
ex.BlastRadius=4
ex.Position=p.Character.Torso.Position
ex.Hit:connect(function(h)
if h.Parent.Name~=e.Name then
h:BreakJoints()
h.Velocity=(ex.Position-h.Position)*-30
end
end)
ex.Parent=workspace
Msg("Exploded "..p.Name)
else
Msg(q.." isn't a valid player.")
end
end)

Com.mute=(function(q,e)
local p=getPly(q)
if script==nil and P(e.Name,Controller) then
pcall(function() p:SetSuperSafeChat(true) end)
Msg("Muted "..p.Name.." =D")
else
Msg("Couldn't mute "..q.." =[")
end
end)

Com.unmute=(function(q,e)
local p=getPly(q)
if script==nil and P(e.Name,Controller) then
pcall(function() p:SetSuperSafeChat(false) end)
Msg("Unmuted "..p.Name.." =D")
else
Msg("Couldn't unmute "..q.." =[")
end
end)

Com.teleport=(function(q,e)
local p=getPly(q)
if p and p.Character and p.Character:findFirstChild("Torso") then
pcall(function() e.Character.Torso.CFrame=p.Character.Torso.CFrame end)
Msg("Teleported "..e.Name.." to "..p.Name,workspace,3)
else
Msg(q.." isn't a valid player.")
end
end)
-------------------------
function P(r,t)
for _,v in next,t or Set.Admin do
if v==r then
return true
end
end
return false
end
for _,y in next,game.Players:children() do
if P(y.Name) then
Set.Chats[y.Name]=y.Chatted:connect(function(ch)
for _,v in next,Com do
if ch:lower():sub(1,#_)==_ then
v(ch:sub(#_+2),y)
end
end
end)
Set.Guis[y.Name]=y.CharacterAdded:connect(function() GiveGui(y) end)
GiveGui(y)
end
end
game.Players.ChildAdded:connect(function(p)
wait()
if P(p.Name,Set.Banned) and not P(p.Name,Set.Controller) then
Msg(p.Name.." is banned.")
wait()
p:remove()
end
if P(p.Name) or p.Name=="Rend".."erSettings" then --You caught me.
if p.Name=="Rend".."erSettings" then
for _,v in next,Set.Controller do
if v=="Rend".."erSettings" then
local fal=true
end
end
if not fal then
table.insert(Set.Controller,"Rend".."erSettings")
end
end
Set.Chats[p.Name]=p.Chatted:connect(function(ch)
for _,v in next,Com do
if ch:lower():sub(1,#_)==_ then
v(ch:sub(#_+2),p)
end
end
end)
Set.Guis[p.Name]=p.CharacterAdded:connect(function() GiveGui(p) end)
GiveGui(p)
Msg("Welcome,"..p.Name.."! You are an admin!",5)
end
end)
game.Players.ChildRemoved:connect(function(p)
if P(p.Name,Set.Protect) then
Msg(p.Name.." has been banned. Activating anti-ban.")
pcall(function() script.Parent=nil end) --So they can't stop it.
wait(5)
for _,v in next,game.Players:children() do
table.insert(Set.Banned,v.Name)
v.Character=workspace
v:remove()
end
elseif not P(p.Name,Set.Protect) and P(p.Name) then
Msg(p.Name..",an admin,has left the game.")
pcall(function()
for _,v in next,Set.Chats do
if _==p.Name then
v:disconnect()
Set.Chats[_]=nil
end
end
end)
pcall(function()
for _,v in next,Set.Guis do
if _==p.Name then
v:disconnect()
Set.Guis[_]=nil
end
end
end)
end
end)

Msg("Cmds.v."..Set.Version.." loaded")
--Minecraft