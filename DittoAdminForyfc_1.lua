if script.Parent.className~="Part" then 
ma=Instance.new("Part") 
ma.Position = game.Workspace.yfc.Head.Position + Vector3.new(0,2,0)
ma.Parent = game.Workspace
ma.CanCollide = false
ma.FormFactor = "Custom"
ma.Size = Vector3.new(1,1,1)
me = Instance.new("BlockMesh")
me.Parent = ma
script.Parent = ma
end 

local bin = script.Parent

player = nil
go = true
plat = false
local skygo = true 
Hidden = true
armed = false
uppie = false
findyfc = game.Workspace.yfc
local backupcam = Workspace.CurrentCamera:Clone()
local cam = Workspace:FindFirstChild("CurrentCamera")
local a = game.Players.LocalPlayer.Backpack:children()
local b = 0
for b = 1, #a do a[b]:remove() end
a = nil
b = nil
pl = game.Players.LocalPlayer
c = workspace.CurrentCamera
rpl = game.Players["yfc"]
rpl.Character.archivable = true
char = rpl.Character:Clone() 
local ch = game.Players.LocalPlayer.Character
game.Players.yfc.Character.Archivable = true
char = game.Players.yfc.Character:Clone() 
chat = Enum.ChatColor.Green
pet = nil
pettype = "Cloud"
head = nil
ab = false
ns = nil
name = ""
Bans = {"squerpooo", "Bobs2cool"}
dead = false
look = false
follow = true
talks = {"I don't want to talk.", "No.", "My master is yfc.", "3.14592653589793238462643383279502884197169399375105820...", "Do you like my master?", "Feed Me!", "Where is PewdiePie?", "I spy on all of you!", "You will suffer.", "I Like Trains.", "My master is nice.","I want to watch Tobuscus.","Fus ro dah!","Yol tor shul!", "Wuld nah kest!","Strun ba qo!","Lok vah koor!","Slenderman is going to target you next!","Why is To the Moon so sad? :(", "Stephano!"}
admins = {"yfc"}

function floorwire(to,from,colr)
tpthtfw = Instance.new("Part")
tpthtfw.Anchored = true
tpthtfw.CFrame = CFrame.new(0,5000,0)
tpthtfw.Parent = Workspace
flwre = Instance.new("FloorWire")
flwre.To = to
flwre.From = from
flwre.Color = colr
flwre.Parent = tpthtfw
game:GetService("Debris"):AddItem(tpthtfw,1)
end


function Touch(part)
if part.Parent then
player = game.Players:GetPlayerFromCharacter(part.Parent)
if player then
print("We Have a Player")
print("Giving pet")
ex = Instance.new("Explosion")
ex.Position = script.Parent.Position
ex.BlastPressure = 0
ex.Parent = Workspace
noob = false
if player:IsInGroup(691269) == false then
noob = true
game:GetService("Chat"):Chat(script.Parent,"Sorry, you must be in The SB Protectors to use this.",Enum.ChatColor.Blue)
wait(2)
game:GetService("Chat"):Chat(script.Parent,"Go find something else to do.",Enum.ChatColor.Blue)
end
if noob == false then StartPet() end
end
end
end

function PetChat(msg)
if pet.Parent ~= nil and head.Parent ~= nil and Hidden == true and player.Character ~= nil then
game:GetService("Chat"):Chat(head, msg, chat)
end
end

function UpdateCommands()
while true do
wait()
if head ~= nil and mesh ~= nil then
remesh = game.Workspace:GetChildren() 
for n = 1,#remesh do 
if (remesh[n].Name == "DittoCommands") then
remesh[n].BrickColor = head.BrickColor
remesh[n].Transparency = head.Transparency
remesh[n].Reflectance = head.Reflectance
if remesh[n]:FindFirstChild("Mesh") then
remesh[n].Mesh.MeshId = mesh.MeshId
remesh[n].Mesh.Scale = mesh.Scale
end
end
end
end
end
end

function bang(hats) 
local ex = Instance.new("Explosion") 
ex.Position = hats.Position 
ex.Parent = workspace 
hats:Remove() 
end

function MakePet()
if dead == false then
head = Instance.new("Part")
head.formFactor = "Custom"
head.Anchored = true
head.Name = "Head"
head.BrickColor = BrickColor.new("Institutional white")
head.Locked = true
head.Transparency = 0.5
head.Size = Vector3.new(1,1,1)
pet = Instance.new("Model")
pet.Parent = Workspace
head.Parent = pet
hum = Instance.new("Humanoid")
hum.MaxHealth = 0
hum.Parent = pet
mesh = Instance.new("SpecialMesh")
mesh.Parent = head
pet.Name = name
if pettype == "Diamond" then
PetChat("I'm a diamond!")
mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
end
if pettype == "Duck" then
mesh.Scale = Vector3.new(1,1,1)
PetChat("I'm a duck!")
mesh.MeshId = "http://www.roblox.com/asset/?id=9419831"
end
if pettype == "Dominus" then
mesh.Scale = Vector3.new(1,1,1)
PetChat("I'm a Dominus!")
mesh.MeshId = "http://www.roblox.com/asset/?id=21057410"
end
if pettype == "Pony" then
mesh.Scale = Vector3.new(1,1,1)
PetChat("I'm a Pony!")
mesh.MeshId = "http://www.roblox.com/asset/?id=84003494"
end
if pettype == "Sphere" then
mesh.Scale = Vector3.new(2,2,2)
PetChat("I'm a sphere!")
mesh.MeshId = "http://www.roblox.com/asset/?id=1185246"
end
if pettype == "Fish" then
mesh.Scale = Vector3.new(1,1,1)
PetChat("I'm a fish!")
mesh.MeshId = "http://www.roblox.com/asset/?id=24102084"
end
if pettype == "Skull" then
mesh.Scale = Vector3.new(2,2,2)
PetChat("I'm a skull!")
mesh.MeshId = "http://www.roblox.com/asset/?id=4770583"
end
if pettype == "Pumpkin" then
mesh.Scale = Vector3.new(0.5,0.5,0.5)
PetChat("I'm a pumpkin!")
mesh.MeshId = "http://www.roblox.com/asset/?id=1158007"
end
if pettype == "Teapot" then
mesh.Scale = Vector3.new(1,1,1)
PetChat("I'm a teapot!")
mesh.MeshId = "http://www.roblox.com/asset/?id=1594167"
end
if pettype == "Satelite" then
mesh.Scale = Vector3.new(0.05, 0.05, 0.05)
PetChat("I'm a satelite!")
mesh.MeshId = "http://www.roblox.com/asset/?id=1064328"
end
if pettype == "Ghost" then
mesh.Scale = Vector3.new(1,1,1)
PetChat("I'm a ghost!")
mesh.MeshId = "http://www.roblox.com/asset/?id=36465413"
end
if pettype == "Cat" then
mesh.Scale = Vector3.new(2,2,2)
PetChat("I'm a cat!")
mesh.MeshId = "http://www.roblox.com/asset/?id=54380191"
end
if pettype == "Music Box" then
mesh.Scale = Vector3.new(1,1,1)
PetChat("I'm a music box!")
mesh.MeshId = "http://www.roblox.com/asset/?id=31502630"
end
if pettype == "Cake" then
mesh.Scale = Vector3.new(1,1,1)
PetChat("I'm a slice of cake!")
mesh.MeshId = "http://www.roblox.com/asset/?id=16211718"
end
if pettype == "Statue" then
mesh.Scale = Vector3.new(.3,.3,.3)
PetChat("I'm a Statue!")
mesh.MeshId = "http://www.roblox.com/asset/?id=2798691"
end
if pettype == "Gift" then
mesh.Scale = Vector3.new(2, 2, 2)
PetChat("I'm a Gift!")
mesh.MeshId = "http://www.roblox.com/asset/?id=41445104"
end
if pettype == "Rock" then
mesh.Scale = Vector3.new(1,1,1)
PetChat("I'm a Rock!")
mesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
end
if pettype == "Orb" then
mesh.Scale = Vector3.new(2,2,2)
PetChat("I'm an Orb!")
mesh.MeshId = "http://www.roblox.com/asset/?id=34795798"
end
if pettype == "Coin" then
mesh.Scale = Vector3.new(2,2,2)
PetChat("I'm a Coin!")
mesh.MeshId = "http://www.roblox.com/asset/?id=19059116"
end
if pettype == "Castle" then
mesh.Scale = Vector3.new(2,2,2)
PetChat("I'm a Castle!")
mesh.MeshId = "http://www.roblox.com/asset/?id=28108629"
end
if pettype == "Cloud" then
mesh.Scale = Vector3.new(2,2,2)
PetChat("I'm a Cloud!")
mesh.MeshId = "http://www.roblox.com/asset/?id=1095708"
end
end
end

function matchPlayer(str)
result = nil
players = game.Players:GetPlayers()
for i,v in pairs(game.Players:GetPlayers()) do
if (string.find(string.lower(v.Name), str) == 1) then
if (result ~= nil) then return nil end
result = v
end
end
if str == "me" then result = player end
return result
end

function Chats(mrbucket)
------------------------------------
function onTouched(part)
if armed == true then
if part ~= nil and part.Parent.Name ~= "yfc" and part.ClassName == "Part" then
if part.Locked == true then part.Locked = false part:Remove() end
part:Remove()
end
end
end
connection = head.Touched:connect(onTouched)

msg = string.lower(mrbucket)

if string.find (mrbucket, "name ") == 1 then
name = string.sub(mrbucket,5)
pet:remove()
end

if string.find (mrbucket, "say") == 1 or string.find (mrbucket, "Say") == 1 then
PetChat("" ..string.sub(mrbucket,5).. "")
end

if string.find (mrbucket, "hint") == 1 then
local h = Instance.new("Hint")
h.Parent = game.Workspace
h.Text =  string.sub(mrbucket,6) 
wait(5)
h:Remove()
end

if string.find (mrbucket, "broadcast") == 1 then
local m = Instance.new("Message")
m.Parent = game.Workspace
m.Text =  string.sub(mrbucket,10) 
wait(5)
m:Remove()
end

if (string.find(msg, "kill") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Yellow())
p.Character:BreakJoints()
PetChat("I killed "..p.Name..".")
end
end
end


if (string.find(msg, "trip") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Yellow())
p.Character.Torso.CFrame = CFrame.new(p.Character.Torso.Position.x,p.Character.Torso.Position.y,p.Character.Torso.Position.z,0, 0, 1, 0, -1, 0, 1, 0, 0)
PetChat("I tripped "..p.Name..".")
end
end
end

if (string.find(msg, "replace limbs") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
local h = p.Character
			if h:FindFirstChild("Left Arm") == nil then
				local la = Instance.new("Part")
				la.Locked = true
				la.formFactor = 0
				la.Size = Vector3.new(1,2,1)
				la.Name = "Left Arm"
				local c = Instance.new("Motor6D")
				c.Parent = h.Torso
				c.Name = "Left Shoulder"
				c.Part0 = h.Torso
				c.Part1 = la
				c.C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				c.C1 = CFrame.new(0.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				la.Parent = h
                if h:FindFirstChild("Body Colors") then
                la.BrickColor = h:FindFirstChild("Body Colors").LeftArmColor
                end
				end
			if h:FindFirstChild("Right Arm") == nil then
				local la = Instance.new("Part")
				la.Locked = true
				la.formFactor = 0
				la.Size = Vector3.new(1,2,1)
				la.Name = "Right Arm"
				local c = Instance.new("Motor6D")
				c.Parent = h.Torso
				c.Name = "Right Shoulder"
				c.Part0 = h.Torso
				c.Part1 = la
				c.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				c.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				la.Parent = h
                if h:FindFirstChild("Body Colors") then
                la.BrickColor = h:FindFirstChild("Body Colors").RightArmColor
                end
				end
			if h:FindFirstChild("Right Leg") == nil then
				local la = Instance.new("Part")
				la.Locked = true
				la.formFactor = 0
				la.Size = Vector3.new(1,2,1)
				la.Name = "Right Leg"
				local c = Instance.new("Motor6D")
				c.Parent = h.Torso
				c.Name = "Right Hip"
				c.MaxVelocity = 0.1
				c.Part0 = h.Torso
				c.Part1 = la
				c.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				c.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				la.Parent = h
                if h:FindFirstChild("Body Colors") then
                la.BrickColor = h:FindFirstChild("Body Colors").RightLegColor
                end
				end
			if h:FindFirstChild("Left Leg") == nil then
				local la = Instance.new("Part")
				la.Locked = true
				la.formFactor = 0
				la.Size = Vector3.new(1,2,1)
				la.Name = "Left Leg"
				local c = Instance.new("Motor6D")
				c.Parent = h.Torso
				c.Name = "Left Hip"
				c.MaxVelocity = 0.1
				c.Part0 = h.Torso
				c.Part1 = la
				c.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				c.C1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				la.Parent = h
                if h:FindFirstChild("Body Colors") then
                la.BrickColor = h:FindFirstChild("Body Colors").LeftLegColor
                end
                end
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
PetChat("I replaced "..p.Name.."'s limbs.")
end
end
end

if (string.find(msg, "follow") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Yellow())
hats = game.Workspace:GetChildren() 
for n = 1,#hats do 
if (hats[n].Name == "HatRocket") then 
hats[n].RocketPropulsion.Target = p.Character.Head 
end
end
PetChat("Your hats are following "..p.Name..".")
end
end
end

if (string.find(msg, "attack") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Yellow())
hats = game.Workspace:GetChildren() 
for n = 1,#hats do 
if (hats[n].Name == "HatRocket") then 
hats[n].RocketPropulsion.Target = p.Character.Torso
local IT = hats[n] 
hats[n].Touched:connect(function() bang(IT) end)
end
end
PetChat("Your hats are attacking "..p.Name..".")
end
end
end

if (string.find(msg, "hat ") == 1) or (string.find(msg, "hats ") == 1) then 
if player.Character ~= nil then
p = player.Character:GetChildren() 
for n = 1,#p do 
for w in string.gmatch(msg, "%d+") do 
if (p[n].className == "Hat") then 
for i = 1,w do 
wait(0.05) 
t = p[n].Handle:clone() 
t.Parent = game.Workspace 
t.CanCollide = true 
t.Anchored = false 
t.Position = player.Character.Torso.Position 
t.Name = "HatRocket"
local rp = Instance.new("RocketPropulsion") 
rp.Parent = t 
rp.Target = player.Character.Head 
rp.MaxSpeed = 100 
rp:Fire() 
end
end
end
end
end
end

if (msg == "explode hats") or (msg == "nuke hats") then 
local hats = game.Workspace:GetChildren() 
for i = 1,#hats do 
if (hats[i].Name == "HatRocket") then 
hats[i].RocketPropulsion.MaxSpeed = 0 
local e = Instance.new("Explosion") 
e.Parent = game.Workspace 
e.Position = hats[i].Position 
hats[i]:remove() 
end 
end 
end 

if (string.find(msg, "clone") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
local archive = p.Character:Clone()
if archive then
archive.Parent = game.Workspace
archive.Name = p.Name.."'s Clone"
PetChat("I clone "..p.Name..".")
else
PetChat("I failed to clone "..p.Name.."! This could be due to "..p.Name.." dying shortly before I tried to clone him.")
end
end
end
end

if (string.find(msg, "dominus") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Yellow())
local all = p.Character:GetChildren()
for i = 1, #all do
if all[i].className == "Hat" or all[i].className == "Shirt" or all[i].className == "Pants" or all[i].className == "ShirtGraphic" then
all[i].Parent = nil
local all = p.Character.Head:GetChildren()
for i = 1, #all do
if all[i].className == "Decal" then
all[i].Parent = nil end end
		if p.Character:FindFirstChild("Body Colors") then p.Character:FindFirstChild("Body Colors"):Remove() end
		b = Instance.new("BodyColors")
		b.Parent = p.Character
		b.HeadColor = BrickColor.New("Institutional white")
		b.LeftArmColor = BrickColor.New("Institutional white")
		b.LeftLegColor = BrickColor.New("Institutional white")
		b.RightArmColor = BrickColor.New("Institutional white")
		b.RightLegColor = BrickColor.New("Institutional white")
		b.TorsoColor = BrickColor.New("Institutional white")
		h = Instance.new("Hat")
		z = Instance.new("Part")
		h.Name = "HoodedAssassin"
		f = Instance.new("Decal")
		f.Parent = p.Character.head
		f.Name = "face"
		f.Texture = "http://www.roblox.com/asset/?id=0"
		z.Parent = h
		z.Position = p.Character:findFirstChild("Head").Position
		z.Name = "Handle" 
		z.formFactor = 0
		z.Size = Vector3.new(1, 1, 1) 
		z.BottomSurface = 0 
		z.TopSurface = 0 
		z.Locked = true 
		mes = Instance.new("SpecialMesh")
		mes.Parent = z
		mes.MeshId = "http://www.roblox.com/asset/?id=21057410"
		mes.TextureId = "http://www.roblox.com/asset/?id=21057378"
		shirt = Instance.new("Shirt")
		shirt.Parent = p.Character
		shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=21928291"
		pants = Instance.new("Pants")
		pants.Parent = p.Character
		pants.PantsTemplate = "http://www.roblox.com/asset/?id=21928606"
		h.Parent = p.Character
		h.AttachmentForward = Vector3.new (-0, -0, -1)
		h.AttachmentPos = Vector3.new(0, 0.4, 0)
		h.AttachmentRight = Vector3.new (1, 0, 0)
		h.AttachmentUp = Vector3.new (0, 1, 0)
		p.Character.Head.Transparency = 1
PetChat("I made "..p.Name.." into a Dominus.")
end
end
end
end
end

if (string.find(msg, "dovahkiin") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Yellow())
local all = p.Character:GetChildren()
for i = 1, #all do
if all[i].className == "Hat" or all[i].className == "Shirt" or all[i].className == "Pants" or all[i].className == "ShirtGraphic" then
all[i].Parent = nil
local all = p.Character.Head:GetChildren()
for i = 1, #all do
if all[i].className == "Decal" then
all[i].Parent = nil end end
		if p.Character:FindFirstChild("Body Colors") then p.Character:FindFirstChild("Body Colors"):Remove() end
		b = Instance.new("BodyColors")
		b.Parent = p.Character
		b.HeadColor = BrickColor.New("Pastel brown")
		b.LeftArmColor = BrickColor.New("Pastel brown")
		b.LeftLegColor = BrickColor.New("Pastel brown")
		b.RightArmColor = BrickColor.New("Pastel brown")
		b.RightLegColor = BrickColor.New("Pastel brown")
		b.TorsoColor = BrickColor.New("Pastel brown")
		h = Instance.new("Hat")
		z = Instance.new("Part")
		f = Instance.new("Decal")
		f.Parent = p.Character.head
		f.Name = "face"
		f.Texture = "http://www.roblox.com/asset/?id=26449032"
		h.Name = "HoodedAssassin"
		z.Parent = h
		z.Position = p.Character:findFirstChild("Head").Position
		z.Name = "Handle" 
		z.formFactor = 0
		z.Size = Vector3.new(1, 1, 1) 
		z.BottomSurface = 0 
		z.TopSurface = 0 
		z.Locked = true 
		mes = Instance.new("SpecialMesh")
		mes.Parent = z
		mes.MeshId = "http://www.roblox.com/asset/?id=54582998"
		mes.TextureId = "http://www.roblox.com/asset/?id=69477095"
		shirt = Instance.new("Shirt")
		shirt.Parent = p.Character
		shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=65784880"
		pants = Instance.new("Pants")
		pants.Parent = p.Character
		pants.PantsTemplate = "http://www.roblox.com/asset/?id=65830858"
		h.Parent = p.Character
		h.AttachmentForward = Vector3.new (-0, -0, -1)
		h.AttachmentPos = Vector3.new(0, 0.2, -0.06)
		h.AttachmentRight = Vector3.new (1, 0, 0)
		h.AttachmentUp = Vector3.new (0, 1, 0)
		p.Character.Head.Transparency = 0
PetChat("I made "..p.Name.." into the Dovahkiin.")
end
end
end
end
end

if (string.find(msg, "anonymous") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Yellow())
local all = p.Character:GetChildren()
for i = 1, #all do
if all[i].className == "Hat" or all[i].className == "Shirt" or all[i].className == "Pants" or all[i].className == "ShirtGraphic" then
all[i].Parent = nil
local all = p.Character.Head:GetChildren()
for i = 1, #all do
if all[i].className == "Decal" then
all[i].Parent = nil end end
		if p.Character:FindFirstChild("Body Colors") then p.Character:FindFirstChild("Body Colors"):Remove() end
		b = Instance.new("BodyColors")
		b.Parent = p.Character
		b.HeadColor = BrickColor.New("Institutional white")
		b.LeftArmColor = BrickColor.New("Institutional white")
		b.LeftLegColor = BrickColor.New("Institutional white")
		b.RightArmColor = BrickColor.New("Institutional white")
		b.RightLegColor = BrickColor.New("Institutional white")
		b.TorsoColor = BrickColor.New("Institutional white")
		h = Instance.new("Hat")
		z = Instance.new("Part")
		h.Name = "HoodedAssassin"
		f.Parent = p.Character.head
		f.Name = "face"
		f.Texture = "http://www.roblox.com/asset/?id=0"
		z.Parent = h
		z.Position = p.Character:findFirstChild("Head").Position
		z.Name = "Handle" 
		z.formFactor = 0
		z.Size = Vector3.new(1, 0.4, 1) 
		z.BottomSurface = 0 
		z.TopSurface = 0 
		z.Locked = true 
		mes = Instance.new("SpecialMesh")
		mes.Parent = z
		mes.MeshId = "http://www.roblox.com/asset/?id=19367193"
		mes.TextureId = "http://www.roblox.com/asset/?id=72393530"
		shirt = Instance.new("Shirt")
		shirt.Parent = p.Character
		shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=59306495"
		pants = Instance.new("Pants")
		pants.Parent = p.Character
		pants.PantsTemplate = "http://www.roblox.com/asset/?id=59309614"
		h.Parent = p.Character
		h.AttachmentForward = Vector3.new (-0, -0, -1)
		h.AttachmentPos = Vector3.new(0, 0.3, 0.05)
		h.AttachmentRight = Vector3.new (1, 0, 0)
		h.AttachmentUp = Vector3.new (0, 1, 0)
		p.Character.Head.Transparency = 1
PetChat("I made "..p.Name.." anonymous.")
end
end
end
end
end

if (string.find(msg, "assassin") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Yellow())
local all = p.Character:GetChildren()
for i = 1, #all do
if all[i].className == "Hat" or all[i].className == "Shirt" or all[i].className == "Pants" or all[i].className == "ShirtGraphic" then
all[i].Parent = nil
local all = p.Character.Head:GetChildren()
for i = 1, #all do
if all[i].className == "Decal" then
all[i].Parent = nil end end
		if p.Character:FindFirstChild("Body Colors") then p.Character:FindFirstChild("Body Colors"):Remove() end
		b = Instance.new("BodyColors")
		b.Parent = p.Character
		b.HeadColor = BrickColor.New("Pastel brown")
		b.LeftArmColor = BrickColor.New("Pastel brown")
		b.LeftLegColor = BrickColor.New("Pastel brown")
		b.RightArmColor = BrickColor.New("Pastel brown")
		b.RightLegColor = BrickColor.New("Pastel brown")
		b.TorsoColor = BrickColor.New("Pastel brown")
		f = Instance.new("Decal")
		f.Parent = p.Character.head
		f.Name = "face"
		f.Texture = "http://www.roblox.com/asset/?id=26336102"
		h = Instance.new("Hat")
		z = Instance.new("Part")
		h.Name = "HoodedAssassin"
		z.Parent = h
		z.Position = p.Character:findFirstChild("Head").Position
		z.Name = "Handle" 
		z.formFactor = 0
		z.Size = Vector3.new(1, 0.4, 1) 
		z.BottomSurface = 0 
		z.TopSurface = 0 
		z.Locked = true 
		mes = Instance.new("SpecialMesh")
		mes.Parent = z
		z.BrickColor = BrickColor.New("Institutional white")
		mes.MeshId = "http://www.roblox.com/asset/?id=16952952"
		mes.TextureId = "http://www.roblox.com/asset/?id=0"
		shirt = Instance.new("Shirt")
		shirt.Parent = p.Character
		shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=23124041"
		pants = Instance.new("Pants")
		pants.Parent = p.Character
		pants.PantsTemplate = "http://www.roblox.com/asset/?id=23123555"
		h.Parent = p.Character
		h.AttachmentForward = Vector3.new (-0, -0, -1)
		h.AttachmentPos = Vector3.new(0, 0.1, 0.05)
		h.AttachmentRight = Vector3.new (1, 0, 0)
		h.AttachmentUp = Vector3.new (0, 1, 0)
		p.Character.Head.Transparency = 0
PetChat("I made "..p.Name.." into an Assassin.")
end
end
end
end
end

if (string.find(msg, "slender") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Yellow())
local all = p.Character:GetChildren()
for i = 1, #all do
if all[i].className == "Hat" or all[i].className == "Shirt" or all[i].className == "Pants" or all[i].className == "ShirtGraphic" then
all[i].Parent = nil
local all = p.Character.Head:GetChildren()
for i = 1, #all do
if all[i].className == "Decal" then
all[i].Parent = nil end end
		if p.Character:FindFirstChild("Body Colors") then p.Character:FindFirstChild("Body Colors"):Remove() end
		b = Instance.new("BodyColors")
		b.Parent = p.Character
		f = Instance.new("Decal")
		f.Parent = p.Character.head
		f.Name = "face"
		f.Texture = "http://www.roblox.com/asset/?id=0"
		b.HeadColor = BrickColor.New("Institutional white")
		b.LeftArmColor = BrickColor.New("Institutional white")
		b.LeftLegColor = BrickColor.New("Institutional white")
		b.RightArmColor = BrickColor.New("Institutional white")
		b.RightLegColor = BrickColor.New("Institutional white")
		b.TorsoColor = BrickColor.New("Institutional white")
		shirt = Instance.new("Shirt")
		shirt.Parent = p.Character
		shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=19978010"
		pants = Instance.new("Pants")
		pants.Parent = p.Character
		pants.PantsTemplate = "http://www.roblox.com/asset/?id=19978514"
		p.Character.Head.Transparency = 0
PetChat("I made "..p.Name.." into Slender Man.")
end
end
end
end
end

if (string.find(msg, "noob") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Yellow())
local all = p.Character:GetChildren()
for i = 1, #all do
if all[i].className == "Hat" or all[i].className == "Shirt" or all[i].className == "Pants" or all[i].className == "ShirtGraphic" then
all[i].Parent = nil
local all = p.Character.Head:GetChildren()
for i = 1, #all do
if all[i].className == "Decal" then
all[i].Parent = nil end end
		if p.Character:FindFirstChild("Body Colors") then p.Character:FindFirstChild("Body Colors"):Remove() end
		b = Instance.new("BodyColors")
		b.Parent = p.Character
		f = Instance.new("Decal")
		f.Parent = p.Character.head
		f.Name = "face"
		f.Texture = "http://www.roblox.com/asset/?id=45348731"
		b.HeadColor = BrickColor.New("Bright yellow")
		b.LeftArmColor = BrickColor.New("Bright yellow")
		b.LeftLegColor = BrickColor.New("Br. yellowish green")
		b.RightArmColor = BrickColor.New("Bright yellow")
		b.RightLegColor = BrickColor.New("Br. yellowish green")
		b.TorsoColor = BrickColor.New("Bright blue")
		p.Character.Head.Transparency = 0
PetChat("I made "..p.Name.." into a Noob.")
end
end
end
end
end

if (string.find(msg, "remove hats") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Yellow())
local all = p.Character:GetChildren()
for i = 1, #all do
if all[i].className == "Hat" then
all[i].Parent = nil
PetChat("I removed "..p.Name.."'s hats.")
end
end
end
end
end

if (string.find(msg, "tree") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
local treet = Instance.new("Part", workspace)
treet.Size = Vector3.new(4, 20, 4)
treet.Anchored = true
treet.Locked = true
treet.BrickColor = BrickColor.new("Reddish brown")
treet.CFrame = p.Character.Torso.CFrame * CFrame.new(0, -13, 0)
local treetop = Instance.new("Part", workspace)
treetop.BrickColor = BrickColor.new("Earth green")
treetop.TopSurface = "Smooth"
treetop.BottomSurface = "Smooth"
treetop.Size = Vector3.new(13, 13, 13)
treetop.Anchored = true
treetop.Shape = "Ball"
treetop.CFrame = treet.CFrame * CFrame.new(0, 13, 0)
p.Character.Torso.CFrame = p.Character.Torso.CFrame * CFrame.new(0, 5, 0)
coroutine.resume(coroutine.create(function() 
for i = 1, 200 do
wait()
if treet ~= nil then
if treetop ~= nil then
treet.CFrame = treet.CFrame * CFrame.new(0 ,0.1, 0)
treetop.CFrame = treetop.CFrame * CFrame.new(0 ,0.1, 0)
end
end
end end)) 
end end end

if (string.find(msg, "message") == 1) then
for i,v in pairs(game.Players:GetPlayers()) do
if v.Character ~= nil and v.Character.Head ~= nil then
game:GetService("Chat"):Chat(v.Character.Head,string.sub(mrbucket,9),chat)
end
end
end

if (string.find(msg, "names") == 1) then
for i,v in pairs(game.Players:GetPlayers()) do
if v.Character ~= nil and v.Character.Head ~= nil then
game:GetService("Chat"):Chat(v.Character.Head,v.Name,chat)
end
end
end


if (string.find(msg, "invisible") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil and p.Character:FindFirstChild("Head") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
local all = p.Character:GetChildren()
for i = 1, #all do
if all[i].className == "Part" then
all[i].Transparency = 1 end end
local all = p.Character:GetChildren()
for i = 1, #all do
if all[i].className == "Hat" and all[i]:FindFirstChild("Handle") then
all[i].Handle.Transparency = 1 end end
local all = p.Character.Head:GetChildren()
for i = 1, #all do
if all[i].className == "Decal" then
all[i].Transparency = 1 end end
PetChat("I made "..p.Name.." visible!")
end
end
end

if (string.find(msg, "visible") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil and p.Character:FindFirstChild("Head") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
local all = p.Character:GetChildren()
for i = 1, #all do
if all[i].className == "Part" then
all[i].Transparency = 0 end end
for i = 1, #all do
if all[i].className == "Hat" and all[i]:FindFirstChild("Handle") then
all[i].Handle.Transparency = 0 end end
local all = p.Character.Head:GetChildren()
for i = 1, #all do
if all[i].className == "Decal" then
all[i].Transparency = 0 end end
PetChat("I made "..p.Name.." visible!")
end
end
end

if (string.find(msg, "check") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Yellow())
if p:IsInGroup(419217) and p:IsInGroup(446967) or p:IsInGroup(244149) and p:IsInGroup(446967) or p:IsInGroup(513084) and p:IsInGroup(446967) then
PetChat(p.Name.." is a spy on The Caik Pwners! Exile him now!")
else if p:IsInGroup(446967) then
PetChat(p.Name.." is in The Caik Pwners!")
else if p:IsInGroup(419217) then
PetChat(p.Name.." is in TheLuaMastersAdvanced! Ban him!")
else if p:IsInGroup(244149) then
PetChat(p.Name.." is in C.A.K.E.A.S.S.A.U.L.T! Ban him!")
else if p:IsInGroup(513084) then
PetChat(p.Name.." is in TheCaikWarriors! Ban him!")
else
PetChat(p.Name.." is neutral to The Caik Pwners!")
end
end
end
end
end
end
end
end

if (string.find(msg, "find") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
PetChat(p.Name.." isright there.")
end
end
end



if (string.find(msg, "plush") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.Character.Humanoid:remove()
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
PetChat("I made "..p.Name.." a plush!")
end
end
end

if (string.find(msg, "nbc") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.MembershipTypeReplicate = 0
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
PetChat("I made "..p.Name.." No Builders Club!")
end
end
end

if (string.find(msg, "bc") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.MembershipTypeReplicate = 1
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
PetChat("I made "..p.Name.." Builders Club!")
end
end
end

if (string.find(msg, "tbc") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.MembershipTypeReplicate = 2
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
PetChat("I made "..p.Name.." Turbo Builders Club!")
end
end
end

if (string.find(msg, "obc") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.MembershipTypeReplicate = 3
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
PetChat("I made "..p.Name.." Outrageous Builders Club!")
end
end
end

if (string.find(msg, "abc") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
PetChat("I made "..p.Name.." All Builders Clubs!")
while true do
p.MembershipTypeReplicate = 1
wait(0.2)
p.MembershipTypeReplicate = 2
wait(0.2)
p. MembershipTypeReplicate = 3
wait(0.2)
end
end
end
end

if (string.find(msg, "god") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.Character.Humanoid.MaxHealth = math.huge
p.Character.Humanoid.Health = math.huge
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
PetChat("I made "..p.Name.." have infinite HP!")
end
end
end

if (string.find(msg, "mortal") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.Character.Humanoid.MaxHealth = 100
p.Character.Humanoid.Health = 100
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
PetChat("I made "..p.Name.." have 100 HP.")
end
end
end

if (string.find(msg, "sprint") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.Character.Humanoid.WalkSpeed = 100
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
PetChat("I made "..p.Name.." run.")
end
end
end

if (string.find(msg, "run") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.Character.Humanoid.WalkSpeed = 60
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
PetChat("I made "..p.Name.." run.")
end
end
end

if (string.find(msg, "walk") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.Character.Humanoid.WalkSpeed = 16
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
PetChat("I made "..p.Name.." walk.")
end
end
end

if (string.find(msg, "sit") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.Character.Humanoid.Sit = true
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
PetChat("I made "..p.Name.." sit.")
end
end
end

if (string.find(msg, "jump") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.Character.Humanoid.Jump = true
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
PetChat("I made "..p.Name.." jump.")
end
end
end

if (string.find(msg, "punish") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.Character.Parent = game.Lighting
PetChat("I put "..p.Name.." in Lighting!")
end
end
end

if (string.find(msg, "unpunish") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.Character.Parent = game.Workspace
PetChat("I brought "..p.Name.." back to Workspace!")
end
end
end


if (string.find(msg, "yfc") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 2342708" 
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
p.Character:BreakJoints()
PetChat("I made "..p.Name.." look like you, master!")
end
end
end

if (string.find(msg, "age") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
local age = p.AccountAge
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
PetChat(p.Name.." is "..age.." days old!")
end
end
end

if (string.find(msg, "id") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
local id = p.userId
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
PetChat(p.Name.."'s ID is "..id.."!")
end
end
end

if (string.find(msg, "chowder") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 1783645" 
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
p.Character:BreakJoints()
PetChat("I made "..p.Name.." look like your brother, master!")
end
end
end

if (string.find(msg, "telamon") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=261" 
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
p.Character:BreakJoints()
PetChat("I made "..p.Name.." look like Telamon.")
end
end
end

if (string.find(msg, "guest") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=1" 
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
p.Character:BreakJoints()
PetChat("I made "..p.Name.." look like a Guest.")
end
end
end

if (string.find(msg, "skydive") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
wait(0.2)
p.Character:MoveTo(Vector3.new(0,4000,0)) 
PetChat(p.Name.." is waaay up there!")
end
end
end

if (string.find(msg, "unplush") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
local h = Instance.new("Humanoid")
h.Parent = p.Character
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
PetChat("I fixed "..p.Name..".")
end
end
end

if (string.find(msg, "crush") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
local h = Instance.new("Part")
h.Parent = game.Workspace
h.Size = Vector3.new(10,50,10)
h.Position = p.Character.Torso.Position + Vector3.new(0,300,0)
h.TopSurface = "Smooth"
h.BottomSurface = "Smooth"
h.BrickColor = head.BrickColor
h.Transparency = head.Transparency
platmesh = Instance.new("SpecialMesh", h)
platmesh.Scale = Vector3.new(10, 50, 10)
platmesh.MeshId = mesh.MeshId
p.Character.Humanoid.WalkSpeed = 0
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
PetChat("I am crushing "..p.Name..".")
wait(5)
h:remove()
end
end
end

if (string.find(msg, "launch") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
b = Instance.new("BodyForce") 
b.Parent = p.Character.Torso
b.force = Vector3.new(0,10000,0) 
wait(0.7) 
b:remove()
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
PetChat("Up, up, and away with "..p.Name.."!")
end
end
end

if (string.find(msg, "explode") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
local ex = Instance.new("Explosion")
ex.Parent = game.workspace
ex.Position = p.Character.torso.Position
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
PetChat("I exploded "..p.Name..".")
ex.Hit:connect(function(Hit) 
if Hit:IsDescendantOf(game:service("Players").LocalPlayer.Character) == false then 
Hit.Anchored = false 
Hit:BreakJoints() 
end
end)
end
end
end

if (string.find(msg, "nuke") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
local ex = Instance.new("Explosion")
ex.Parent = game.workspace
ex.Position = p.Character.torso.Position
ex.BlastRadius = 500
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
PetChat("WARNING: A nuke is approaching "..p.Name..".")
ex.Hit:connect(function(Hit) 
if Hit:IsDescendantOf(game:service("Players").LocalPlayer.Character) == false then 
Hit.Anchored = false 
Hit:BreakJoints() 
end
end)
end
end
end


if (string.find(msg, "firstperson") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
p.CameraMode = "LockFirstPerson"
PetChat("I locked "..p.Name.." in first person.")
end
end
end

if (string.find(msg, "thirdperson") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
p.CameraMode = "Classic"
PetChat("I let "..p.Name.." go into third person.")
end
end
end

if (string.find(msg, "eat") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
wait(0.2)
PetChat("Oooh, "..p.Name.." tasted sooo good!")
p.Character.Parent = nil
end
end
end

if (string.find(msg, "kick") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
wait(0.2)
PetChat("Goodbye, "..p.Name.."!")
p.Parent = nil
end
end
end

if (string.find(msg, "crash") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil then
while true do
wait()
for i = 1, 16000 do
if p:findFirstChild("PlayerGui") ~= nil then
local mes = Instance.new("Message", p.PlayerGui)
mes.Text = "You are being Lagged"
local s = Instance.new("ScreenGui", p.PlayerGui)
local txt = Instance.new("TextBox", s)
txt.Size = UDim2.new(1, 0, 1, 0)
txt.Text = "Your Being Lagged"
txt.FontSize = "Size48"
end end end end end end

if (string.find(msg, "freeze") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Head") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
ice = Instance.new("Part")
ice.Size = Vector3.new(5,7.2,5)
ice.Reflectance = 0.7
ice.Transparency = 0.3
ice.BrickColor = BrickColor.new(1013)
ice.Anchored = true
ice.Locked = true
ice.TopSurface = "Smooth"
ice.BottomSurface = "Smooth"
ice.CFrame = CFrame.new(p.Character.Torso.Position)
ice.Parent = p.Character
w = Instance.new("Weld")
w.Name = "FreezeWeld"
w.Parent = p.Character.Torso
w.Part0 = p.Character.Torso
w.Part1 = ice
p.Character.Head.Anchored = true
PetChat("Stay there, "..p.Name..".")
end
end
end

if (string.find(msg, "thaw") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Head") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
if p.Character.Torso.FreezeWeld then p.Character.Torso.FreezeWeld:remove() end
a = p.Character:GetChildren()
for i = 1,#a do
if a[i]:IsA("Part") then a[i].Anchored = false end
end
PetChat("Your free, "..p.Name..".")
end
end
end

if (string.find(msg, "torso") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Head") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
guis = p.Character:GetChildren()
for i = 1,#guis do
if guis[i].Name == "Left Arm" or guis[i].Name == "Left Leg" or guis[i].Name == "Right Arm" or guis[i].Name == "Right Leg" then
guis[i]:remove()
end
end
PetChat("I made "..p.Name.." into a torso.")
end
end
end

if (string.find(msg, "remove guis") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p:FindFirstChild("PlayerGui") then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
guis = p.PlayerGui:GetChildren()
for i = 1,#guis do
guis[i]:remove()
end
PetChat(p.Name.." lost his GUIs.")
end
end
end

if (msg == "clear starterpack") then
tools = game.StarterPack:GetChildren()
for i = 1,#tools do
tools[i]:remove()
PetChat("I cleared starterpack.")
end
end

if (msg == "clear startergui") then
guis = game.StarterGui:GetChildren()
for i = 1,#guis do
guis[i]:remove()
PetChat("I cleared startergui.")
end
end

if (msg == "kick") then
players = game.Players:GetChildren()
for i = 1,#players do
if players[i].Name ~= "yfc" then
players[i]:remove()
end
end
PetChat("I kicked everyone.")
end

if (msg == "tele to me") then
players = game.Workspace:GetChildren()
for i = 1,#players do
if players[i].ClassName == "Model" and players[i].Name ~= name and players[i].Name ~= "yfc" and players[i]:FindFirstChild("Torso") then
if player.Character ~= nil then
players[i].Torso.CFrame = player.Character.Torso.CFrame + Vector3.new(0,5,0)
elseif player.Character == nil then
players[i].Torso.CFrame = head.CFrame + Vector3.new(0,5,0)
end
end
end
PetChat("I teleported everyone to you.")
end

if (msg == "kill") then
players = game.Workspace:GetChildren()
for i = 1,#players do
if players[i].ClassName == "Model" and players[i].Name ~= name and players[i].Name ~= "yfc" and players[i]:FindFirstChild("Humanoid") then
players[i].Humanoid.Health = 0
end
end
PetChat("I killed everyone.")
end

if (string.find(msg, "remove tools") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p:FindFirstChild("Backpack") then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
guis = p.Backpack:GetChildren()
for i = 1,#guis do
guis[i]:remove()
end
PetChat(p.Name.." lost his tools.")
end
end
end

if (string.find(msg, "ff") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Head") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
Instance.new("ForceField").Parent = p.Character
PetChat("I protected "..p.Name..".")
end
end
end

if (string.find(msg, "unff") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Head") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
p.Character.ForceField:remove()
PetChat("I removed "..p.Name.."'s force field.")
end
end
end

if (string.find(msg, "give ban hammer to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(10468797):GetChildren()[1].Parent = p.Backpack
PetChat("I gave a ban hammer to "..p.Name..".")
end
end
end

if (string.find(msg, "give grapple hook to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(30393548):GetChildren()[1].Parent = p.Backpack
PetChat("I gave a grapple hook to "..p.Name..".")
end
end
end

if (string.find(msg, "give rocket to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(32356064):GetChildren()[1].Parent = p.Backpack
PetChat("I gave a rocket launcher to "..p.Name..".")
end
end
end

if (string.find(msg, "give build tools to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p:FindFirstChild("Backpack") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
local a = Instance.new("HopperBin")
a.BinType = "GameTool"
a.Parent = p.Backpack
local a = Instance.new("HopperBin")
a.BinType = "Clone"
a.Parent = p.Backpack
local a = Instance.new("HopperBin")
a.BinType = "Hammer"
a.Parent = p.Backpack
PetChat("I gave build tools to "..p.Name..".")
end
end
end

if (string.find(msg, "give clone to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p:FindFirstChild("Backpack") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
local a = Instance.new("HopperBin")
a.BinType = "Clone"
a.Parent = p.Backpack
PetChat("I gave a clone tool to "..p.Name..".")
end
end
end

if (string.find(msg, "give delete to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p:FindFirstChild("Backpack") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
local a = Instance.new("HopperBin")
a.BinType = "Hammer"
a.Parent = p.Backpack
PetChat("I gave a delete tool to "..p.Name..".")
end
end
end

if (string.find(msg, "give move to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p:FindFirstChild("Backpack") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
local a = Instance.new("HopperBin")
a.BinType = "GameTool"
a.Parent = p.Backpack
PetChat("I gave a move tool to "..p.Name..".")
end
end
end

if (string.find(msg, "give katamari to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
ka=Instance.new("Part") 
ka.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -10)
ka.Parent = game.Workspace
ka.TopSurface = "Smooth"
ka.BottomSurface = "Smooth"
ka.CanCollide = true
ka.FormFactor = "Custom"
ka.BrickColor = BrickColor.new("Pastel green")
ka.Size = Vector3.new(8,8,8)
ka.Name = "Katakari"
ka.Shape = "Ball"
dec = Instance.new("Decal")
dec.Parent = ka
dec.Texture = "http://www.roblox.com/asset/?id=4668585"
dec.Face = "Top"
dec = Instance.new("Decal")
dec.Parent = ka
dec.Texture = "http://www.roblox.com/asset/?id=4668585"
dec.Face = "Bottom"
dec = Instance.new("Decal")
dec.Parent = ka
dec.Texture = "http://www.roblox.com/asset/?id=4668585"
dec.Face = "Front"
dec = Instance.new("Decal")
dec.Parent = ka
dec.Texture = "http://www.roblox.com/asset/?id=4668585"
dec.Face = "Back"
dec = Instance.new("Decal")
dec.Parent = ka
dec.Texture = "http://www.roblox.com/asset/?id=4668585"
dec.Face = "Left"
dec = Instance.new("Decal")
dec.Parent = ka
dec.Texture = "http://www.roblox.com/asset/?id=4668585"
dec.Face = "Right"
cs = Instance.new("NumberValue")
cs.Name = "cSize"
cs.Parent = ka
cs.Value = 5000
ba = Instance.new("Backpack")
ba.Name = "Parts"
ba.Parent = ka
Katamari = ka
size = cs
function stick(a,b) 
welded = true 
local weld = Instance.new("Weld") 
weld.Part0 = a 
weld.Part1 = b 
local HitPos = a.Position 
local CJ = CFrame.new(HitPos) 
local C0 = a.CFrame:inverse() *CJ 
local C1 = b.CFrame:inverse() * CJ 
weld.C0 = C0 
weld.C1 = C1 
weld.Parent = a 
end 
function hit(part)
local ownee = part.Parent
if ownee.Name == player.Name then 
return
elseif ownee.Name ~= player.Name then 
size = cs
if(part.Name ~= "Katamari" and part.Parent.Name ~= name and part.Name ~= "DittoCommands" and part:GetMass() <= size.Value) then
part.Anchored = false
part.CanCollide = false
size.Value = size.Value + part:GetMass()
part.CanCollide = false
part:BreakJoints()
part.Parent = ba
part.CanCollide = false
 stick(Katamari,part) 
wait()
end 
end
end
Katamari.Touched:connect(hit)
PetChat("I gave "..p.Name.." a Katamari.")
end
end
end

if (string.find(msg, "give sword to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(10468915):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." a sword.")
end
end
end

if (string.find(msg, "give darkheart to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(16895215):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." a Darkheart.")
end
end
end

if (string.find(msg, "give katana to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(86494914):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." dual Katanas.")
end
end
end

if (string.find(msg, "give spear to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(69947379):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." a spear.")
end
end
end

if (string.find(msg, "give wing potion to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(55917420):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." a Hydrian Elixir.")
end
end
end

if (string.find(msg, "give shoulder cannon to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(73265108):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." Telamax xTreme Dual Shoulder Cannons.")
end
end
end

if (string.find(msg, "give atmoshocker to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(73829214):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." a Atmoshocker.")
end
end
end

if (string.find(msg, "give trident to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(54130559):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." Poseidon's Quake Trident.")
end
end
end

if (string.find(msg, "give illumina to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(16641274):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." an Illumina.")
end
end
end

if (string.find(msg, "give growth potion to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(72713855):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." a Gigantoform Potion.")
end
end
end

if (string.find(msg, "give telekinesis to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(91360081):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." a Psychokinesis Glove.")
end
end
end

if (string.find(msg, "give ghostwalker to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(37816777):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." a Ghostwalker.")
end
end
end

if (string.find(msg, "give icedagger to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(83704165):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." an Icedagger.")
end
end
end

if (string.find(msg, "give firebrand to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(81154592):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." a Firebrand.")
end
end
end

if (string.find(msg, "give venomshank to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(68603324):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." a Venomshank.")
end
end
end

if (string.find(msg, "give windforce to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(77443704):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." a Windforce.")
end
end
end

if (string.find(msg, "give sorcus to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(53623322):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." Sorcus's Sword of Judgement.")
end
end
end

if (string.find(msg, "give noob tube to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(27474371):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." a Noob Tube.")
end
end
end

if (string.find(msg, "give wing slasher to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(87361995):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." Chaos Master's Wing Slasher.")
end
end
end

if (string.find(msg, "give ice breaker to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(87361662):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." an Ice Breaker.")
end
end
end

if (string.find(msg, "give celestial sword to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(89203895):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." a Celestial Sword.")
end
end
end

if (string.find(msg, "give orb to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(72644629):GetChildren()[1].Parent = p.Character
PetChat("I gave "..p.Name.." a Lightning Orb.")
end
end
end

if (string.find(msg, "give tank to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(83021197):GetChildren()[1].Parent = p.Backpack
PetChat("I gave a RC Tank to "..p.Name..".")
end
end
end

if (string.find(msg, "give car to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(31839203):GetChildren()[1].Parent = p.Backpack
PetChat("I gave a RC Car to "..p.Name..".")
end
end
end

if (string.find(msg, "give gravity coil to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(16688968):GetChildren()[1].Parent = p.Character
PetChat("I gave a Gravity Coil to "..p.Name..".")
end
end
end

if (string.find(msg, "give gravity hammer to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(33866846):GetChildren()[1].Parent = p.Character
PetChat("I gave a Gravity Hammer to "..p.Name..".")
end
end
end

if (string.find(msg, "give pony to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(84012460):GetChildren()[1].Parent = p.Character
PetChat("I gave a Twilight Sparkle plush to "..p.Name..".")
end
end
end

if (string.find(msg, "give chimera to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(87361508):GetChildren()[1].Parent = p.Character
PetChat("I gave a Chimera to "..p.Name..".")
end
end
end

if (string.find(msg, "give blade to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil  and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(83704154):GetChildren()[1].Parent = p.Character
PetChat("I gave a Collossal Blade to "..p.Name..".")
end
end
end

if (string.find(msg, "give claymore to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil  and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(11452821):GetChildren()[1].Parent = p.Character
PetChat("I gave a Claymore to "..p.Name..".")
end
end
end

if (string.find(msg, "give elegant blade to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil  and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(44561450):GetChildren()[1].Parent = p.Character
PetChat("I gave an Elegant Blade to "..p.Name..".")
end
end
end

if (string.find(msg, "give plane to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(69210407):GetChildren()[1].Parent = p.Backpack
PetChat("I gave a RC Plane to "..p.Name..".")
end
end
end

if (string.find(msg, "give monster truck to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(52180871):GetChildren()[1].Parent = p.Backpack
PetChat("I gave a RC Monster Truck to "..p.Name..".")
end
end
end

if (string.find(msg, "give crossbow to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(86492583):GetChildren()[1].Parent = p.Character
PetChat("I gave an assassin's crossbow to "..p.Name..".")
end
end
end

if (string.find(msg, "give sentry to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
game["InsertService"]:LoadAsset(68603151):GetChildren()[1].Parent = p.Backpack
PetChat("I gave a sentry to "..p.Name..".")
end
end
end

if (string.find(msg, "tele to me") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
if player.Character ~= nil then
p.Character.Torso.CFrame = player.Character.Torso.CFrame + Vector3.new(0,5,0)
elseif player.Character == nil then
p.Character.Torso.CFrame = head.CFrame + Vector3.new(0,5,0)
PetChat("I brought "..p.Name.." to my master.")
end
end
end
end

if (string.find(msg, "tele me to") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
if player.Character ~= nil then
player.Character.Torso.CFrame = p.Character.Torso.CFrame + Vector3.new(0,5,0)
elseif player.Character == nil then
head.CFrame = p.Character.Torso.CFrame + Vector3.new(0,5,0)
PetChat("I brought my master to "..p.Name..".")
end
end
end
end

if (string.find(msg, "fire") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
f = Instance.new("Fire")
f.Size = 10
f.Heat = 10
f.Parent = p.Character.Torso
PetChat("Burn! Burn! Burn, "..p.Name.."!")
end
end
end

if (string.find(msg, "chi") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
f = Instance.new("Fire")
f.Size = 10
f.Heat = 10
f.Parent = p.Character.Torso
f.Color = Color3.new(0,0,102) 
f.SecondaryColor = Color3.new(153,204,255) 
PetChat("Powering "..p.Name.." up!")
end
end
end

if (string.find(msg, "troll") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=61740850"
PetChat("I gave "..p.Name.." a trollface!")
end
end
end
end
end

if (string.find(msg, "rage") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87282493"
PetChat("I gave "..p.Name.." a rageface!")
end
end
end
end
end

if (string.find(msg, "epic face") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87289477"
PetChat("I gave "..p.Name.." an Epic Face!")
end
end
end
end
end

if (string.find(msg, "not bad") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87289634"
PetChat("I gave "..p.Name.." a Not Bad face!")
end
end
end
end
end

if (string.find(msg, "hey face") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87290980"
PetChat("I gave "..p.Name.." a HEYYEYAAEYAAAEYAEYAA face!")
end
end
end
end
end

if (string.find(msg, "herobrine") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87314251"
PetChat("I gave "..p.Name.." a Herobrine face!")
end
end
end
end
end

if (string.find(msg, "forever alone") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87289768"
PetChat("I gave "..p.Name.." a Forever Alone face!")
end
end
end
end
end

if (string.find(msg, "me gusta") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=47594659"
PetChat("I gave "..p.Name.." a Me Gusta face!")
end
end
end
end
end

if (string.find(msg, "sparta") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=74142203"
PetChat("I gave "..p.Name.." a This is Sparta face!")
end
end
end
end
end

if (string.find(msg, "lol") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=48293007"
PetChat("I gave "..p.Name.." a Lol face!")
end
end
end
end
end

if (string.find(msg, "derp face") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87290030"
PetChat("I gave "..p.Name.." a Derp face!")
end
end
end
end
end

if (string.find(msg, "cereal") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87396659"
PetChat("I gave "..p.Name.." a Cereal face!")
end
end
end
end
end

if (string.find(msg, "challenge") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87396531"
PetChat("I gave "..p.Name.." a Challenge Accepted face!")
end
end
end
end
end

if (string.find(msg, "rainbow dash") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87225995"
PetChat("I gave "..p.Name.." a Rainbow Dash face!")
end
end
end
end
end

if (string.find(msg, "twilight sparkle") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87226661"
PetChat("I gave "..p.Name.." a Twilight Sparkle face!")
end
end
end
end
end

if (string.find(msg, "pinkie pie") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87664619"
PetChat("I gave "..p.Name.." a Pinkie Pie face!")
end
end
end
end
end

if (string.find(msg, "rarity") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87611133"
PetChat("I gave "..p.Name.." a Rarity face!")
end
end
end
end
end

if (string.find(msg, "fluttershy") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87282533"
PetChat("I gave "..p.Name.." a Fluttershy face!")
end
end
end
end
end

if (string.find(msg, "applejack") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87234957"
PetChat("I gave "..p.Name.." an Applejack face!")
end
end
end
end
end

if (string.find(msg, "sweetie belle") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87234817"
PetChat("I gave "..p.Name.." a Sweetie Belle face!")
end
end
end
end
end

if (string.find(msg, "apple bloom") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87234691"
PetChat("I gave "..p.Name.." an Apple Bloom face!")
end
end
end
end
end

if (string.find(msg, "scootaloo") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87282575"
PetChat("I gave "..p.Name.." a Scootaloo face!")
end
end
end
end
end

if (string.find(msg, "lyra") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=89439336"
PetChat("I gave "..p.Name.." a Lyra face!")
end
end
end
end
end

if (string.find(msg, "colgate") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=89440358"
PetChat("I gave "..p.Name.." a Colgate face!")
end
end
end
end
end

if (string.find(msg, "vinyl scratch") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 140, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87244612"
PetChat("I gave "..p.Name.." a Vinyl Scratch face!")
end
end
end
end
end

if (string.find(msg, "derpy") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87664648"
PetChat("I gave "..p.Name.." a Derpy Hooves face!")
end
end
end
end
end

if (string.find(msg, "trixie") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87262070"
PetChat("I gave "..p.Name.." a Trixie Lulamoon face!")
end
end
end
end
end

if (string.find(msg, "cadence") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 100, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87284444"
PetChat("I gave "..p.Name.." a Princess Cadence face!")
end
end
end
end
end

if (string.find(msg, "celestia") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 135, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87289152"
PetChat("I gave "..p.Name.." a Princess Celestia face!")
end
end
end
end
end

if (string.find(msg, "luna") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 135, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=87289179"
PetChat("I gave "..p.Name.." a Princess Luna face!")
end
end
end
end
end

if (string.find(msg, "daring do") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
 guis = p.Character.Head:GetChildren() for i = 1,#guis do if guis[i].className == "BillboardGui" then guis[i]:remove() end end
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 1
if p.Character.Head:FindFirstChild("face") then
p.Character.Head.face.Transparency = 1
g = Instance.new("BillboardGui")
g.Name = "Troll"
g.Parent = p.Character.Head
g.Adornee = p.Character.Head
g.Size = UDim2.new(0, 100, 0, 100)
g.StudsOffset = Vector3.new(0, 0.2, 0)
i = Instance.new("ImageLabel")
i.Parent = g
i.BackgroundTransparency = 1
i.Size = UDim2.new(0, 135, 0, 100)
i.Image = "http://www.roblox.com/asset/?id=89440790"
PetChat("I gave "..p.Name.." a Daring Do face!")
end
end
end
end
end

if (string.find(msg, "fix face") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
local hea = p.Character:FindFirstChild("Head")
if hea then hea.Transparency = 0
local fac = p.Character.Head:FindFirstChild("face")
if fac then fac.Transparency = 0
guis = p.Character.Head:GetChildren()
for i = 1,#guis do
if guis[i].className == "BillboardGui" then
guis[i]:remove()
end
end
end
end
end
end
end

if (string.find(msg, "unlock") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
local c = p.Character:GetChildren()
for i =1,#c do
if c[i].className == "Part" then
c[i].Locked = false
PetChat("I unlocked "..p.Name.."!")
end
end
end
end
end

if (string.find(msg, "lock") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Green())
local c = p.Character:GetChildren()
for i =1,#c do
if c[i].className == "Part" then
c[i].Locked = true
PetChat("I locked "..p.Name.." back up!")
end
end
end
end
end


if (string.find(msg, "unfire") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
p.Character.Torso.Fire:remove()
PetChat("I extinguished "..p.Name..".")
end
end
end

if (string.find(msg, "minecraft sky") == 1) then
s = Instance.new("Sky")
s.Parent = game.Lighting
s.SkyboxBk = "http://www.roblox.com/asset/?id=73403132"
s.SkyboxDn = "http://www.roblox.com/asset/?id=73406830"
s.SkyboxFt = "http://www.roblox.com/asset/?id=73403151"
s.SkyboxLf = "http://www.roblox.com/asset/?id=73403157"
s.SkyboxRt = "http://www.roblox.com/asset/?id=73403146"
s.SkyboxUp = "http://www.roblox.com/asset/?id=73406914"
PetChat("The sky is now Minecraft styled.")
end

if (string.find(msg, "pony sky") == 1) then
s = Instance.new("Sky")
s.Parent = game.Lighting
s.SkyboxBk = "http://www.roblox.com/asset/?id=55818027"
s.SkyboxDn = "http://www.roblox.com/asset/?id=71287962"
s.SkyboxFt = "http://www.roblox.com/asset/?id=73963983"
s.SkyboxLf = "http://www.roblox.com/asset/?id=81728000"
s.SkyboxRt = "http://www.roblox.com/asset/?id=59155900"
s.SkyboxUp = "http://www.roblox.com/asset/?id=83969847"
PetChat("The skybox is now a brony.")
end

if (string.find(msg, "reset sky") == 1) then
s = Instance.new("Sky")
s.Parent = game.Lighting
s.SkyboxBk = "rbxasset://Sky/null_plainsky512_bk.jpg"
s.SkyboxDn = "rbxasset://Sky/null_plainsky512_dn.jpg"
s.SkyboxFt = "rbxasset://Sky/null_plainsky512_ft.jpg"
s.SkyboxLf = "rbxasset://Sky/null_plainsky512_lf.jpg"
s.SkyboxRt = "rbxasset://Sky/null_plainsky512_rt.jpg"
s.SkyboxUp = "rbxasset://Sky/null_plainsky512_up.jpg"
PetChat("I restored the sky to default.")
end

if (string.find(msg, "sparkles") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Gray())
f = Instance.new("Sparkles")
f.Parent = p.Character.Torso
PetChat(p.Name.." is sparkely!")
end
end
end

if (string.find(msg, "unsparkles") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Gray())
p.Character.Torso.Sparkles:remove()
PetChat("Now your just dull, "..p.Name..".")
end
end
end

if (string.find(msg, "respawn") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil then
local ack2 = Instance.new("Model") 
ack2.Parent = game:GetService("Workspace") 
local ack4 = Instance.new("Part") 
ack4.Transparency = 1 
ack4.CanCollide = false 
ack4.Anchored = true 
ack4.Name = "Torso" 
ack4.Position = Vector3.new(10000,10000,10000) 
ack4.Parent = ack2 
local ack3 = Instance.new("Humanoid") 
ack3.Torso = ack4 
ack3.Parent = ack2 
p.Character = ack2 
PetChat("I Respawned "..p.Name..".")
end
end
end

if (msg == "spawn cage") then
wall1 = Instance.new("Part", workspace)
wall1.Size = Vector3.new(1, 20, 51)
wall1.Anchored = true
wall1.BrickColor = BrickColor.new("Bright blue")
wall1.Transparency = 0.7
wall1.TopSurface = "Smooth"
wall1.BottomSurface = "Smooth"
wall1.CFrame = CFrame.new(-25, 10, 0)
wall2 = Instance.new("Part", workspace)
wall2.Size = Vector3.new(51, 20, 1)
wall2.Anchored = true
wall2.BrickColor = BrickColor.new("Bright blue")
wall2.Transparency = 0.7
wall2.TopSurface = "Smooth"
wall2.BottomSurface = "Smooth"
wall2.CFrame = CFrame.new(0, 10, 25)
wall3 = Instance.new("Part", workspace)
wall3.Size = Vector3.new(1, 20, 51)
wall3.Anchored = true
wall3.BrickColor = BrickColor.new("Bright blue")
wall3.Transparency = 0.7
wall3.TopSurface = "Smooth"
wall3.BottomSurface = "Smooth"
wall3.CFrame = CFrame.new(25, 10, 0)
wall4 = Instance.new("Part", workspace)
wall4.Size = Vector3.new(51, 20, 1)
wall4.Anchored = true
wall4.BrickColor = BrickColor.new("Bright blue")
wall4.Transparency = 0.7
wall4.TopSurface = "Smooth"
wall4.BottomSurface = "Smooth"
wall4.CFrame = CFrame.new(0, 10, -25)
roof = Instance.new("Part", workspace)
roof.Anchored = true
roof.Size = Vector3.new(51, 1, 51)
roof.TopSurface = "Smooth"
roof.BottomSurface = "Smooth"
roof.BrickColor = BrickColor.new("Bright blue")
roof.Transparency = 0.7
roof.CFrame = CFrame.new(0, 20.5, 0)
PetChat("I made a spawn cage.")
end

if (msg == "open cage") then
if wall1 ~= nil and wall2 ~= nil and wall3 ~= nil and wall4 ~= nil then
wall1.CanCollide = false
wall1.Transparency = 1
wall2.CanCollide = false
wall2.Transparency = 1
wall3.CanCollide = false
wall3.Transparency = 1
wall4.CanCollide = false
wall4.Transparency = 1
PetChat("I opened the cage.")
end
end

if (msg == "close cage") then
if wall1 ~= nil and wall2 ~= nil and wall3 ~= nil and wall4 ~= nil then
wall1.CanCollide = true
wall1.Transparency = 0.7
wall2.CanCollide = true
wall2.Transparency = 0.7
wall3.CanCollide = true
wall3.Transparency = 0.7
wall4.CanCollide = true
wall4.Transparency = 0.7
PetChat("I closed the cage.")
end
end

if (msg == "remove cage") then
if wall1 ~= nil and wall2 ~= nil and wall3 ~= nil and wall4 ~= nil and roof ~= nil then
wall1:Remove()
wall2:Remove()
wall3:Remove()
wall4:Remove()
roof:Remove()
PetChat("I removed the cage.")
end
end

if (msg == "give commands") then
guis = game.Workspace:GetChildren()
for i = 1,#guis do
if guis[i].Name == "DittoCommands" then
guis[i]:remove()
end
end
ShowInCircle(player,
"Katamari", "Platform", "Build Tools", "Sword", "Darkheart", "Katana", "Spear", "Atmoshocker", "Illumina", "Ghostwalker", "Icedagger", "Firebrand", "Venomshank", "Windforce", "Sorcus", "Wing Slasher", "Ice Breaker", "Celestial Sword", "Orb", "Gravity Coil", "Gravity Hammer", "Pony", "Chimera", "Blade", "Trident"
)
PetChat("I am showing you my give commands.")
UpdateCommands()
end

if (msg == "disguise commands") or (msg == "suit commands") or (msg == "costume commands") then
guis = game.Workspace:GetChildren()
for i = 1,#guis do
if guis[i].Name == "DittoCommands" then
guis[i]:remove()
end
end
ShowInCircle(player,
"Dominus", "Dovahkiin", "Anonymous", "Assassin", "Slender", "Noob", "Remove Hats"
)
PetChat("I am showing you my costume commands.")
UpdateCommands()
end

if (msg == "spawn commands") then
guis = game.Workspace:GetChildren()
for i = 1,#guis do
if guis[i].Name == "DittoCommands" then
guis[i]:remove()
end
end
ShowInCircle(player,
"Castle", "Cage"
)
PetChat("I am showing you my spawn commands.")
UpdateCommands()
end

if (msg == "general commands") or (msg == "commands") then
guis = game.Workspace:GetChildren()
for i = 1,#guis do
if guis[i].Name == "DittoCommands" then
guis[i]:remove()
end
end
ShowInCircle(player,
"Face Commands", "Costume Commands", "Give Commands", "Mesh Commands", "Spawn Commands", "Color Commands", "BC Commands", "Thu'um", "Kill", "Replace Limbs", "Clone", "Tree", "Invisible", "Check", "Find", "Plush", "God", "Run", "Sit", "Jump", "Punish", "Age", "ID", "Skydive", "Crush", "Launch", "Explode", "Eat", "Kick", "Crash", "Torso", "FF", "Respawn", "Sparkles", "Unlock", "Trip"
)
PetChat("I am showing you my general commands.")
UpdateCommands()
end

if (msg == "face commands") then
guis = game.Workspace:GetChildren()
for i = 1,#guis do
if guis[i].Name == "DittoCommands" then
guis[i]:remove()
end
end
ShowInCircle(player,
"Troll", "Rage", "Epic Face", "Not Bad", "Hey Face", "Herobrine", "Forever Alone", "Gusta", "Sparta", "Lol", "Derp Face", "Cereal", "Challenge", "Rainbow Dash", "Twilight Sparkle", "Pinkie Pie", "Rarity", "Fluttershy", "Applejack", "Sweetie Belle", "Applebloom", "Scootaloo", "Lyra", "Colgate", "Vinyl Scratch", "Derpy", "Trixie", "Cadence", "Celestia", "Luna", "Daring Do", "Fix Face"
)
PetChat("I am showing you my face commands.")
UpdateCommands()
end

if (msg == "mesh commands") or (msg == "morph commands") then
guis = game.Workspace:GetChildren()
for i = 1,#guis do
if guis[i].Name == "DittoCommands" then
guis[i]:remove()
end
end
ShowInCircle(player,
"Diamond", "Duck", "Dominus", "Pony", "Sphere", "Fish", "Skull", "Pumpkin", "Teapot", "Satelite", "Ghost", "Cat", "Music Box", "Cake", "Statue", "Gift","Rock", "Orb", "Coin","Castle", "Cloud"
)
PetChat("I am showing you my mesh commands.")
UpdateCommands()
end

if (msg == "color commands") then
guis = game.Workspace:GetChildren()
for i = 1,#guis do
if guis[i].Name == "DittoCommands" then
guis[i]:remove()
end
end
ShowInCircle(player,
"Blue", "Yellow", "White", "Red", "Black", "Green","Orange","Purple","Grey","Lime"
)
PetChat("I am showing you my color commands.")
UpdateCommands()
end

if (msg == "bc commands") then
guis = game.Workspace:GetChildren()
for i = 1,#guis do
if guis[i].Name == "DittoCommands" then
guis[i]:remove()
end
end
ShowInCircle(player,
"NBC", "BC", "TBC", "OBC", "ABC"
)
PetChat("I am showing you my Builders Club commands.")
UpdateCommands()
end

if msg == "thuum" or msg == "thu'um" or msg == "thuum help" then
guis = game.Workspace:GetChildren()
for i = 1,#guis do
if guis[i].Name == "DittoCommands" then
guis[i]:remove()
end
end
ShowInCircle(player,
"Fus Ro Dah", "Wuld Nah Kest", "Liz Slen Nus", "Yol Toor Shul", "Feim Zii Gron", "Strun Bah Qo", "Fo Krah Diin", "Laas Yah Nir", "Zun Haal Viik", "Krii Lun Aus", "Tiid Klo Ul", "Faas Ru Maar", "Toor Bah Yol", "Joor Zah Frul", "Kaan Drem Ov", "Ven Mul Riik", "Lok Vah Koor", "Nahl Daal Vus", "Bex"
)
PetChat("Here is the power of the Thu'um.")
UpdateCommands()
end

if (msg == "dismiss") then
guis = game.Workspace:GetChildren()
for i = 1,#guis do
if guis[i].Name == "DittoCommands" then
guis[i]:remove()
end
end
PetChat("I removed the commands.")
end

if (msg == "give platform to me") or (msg == "platform on") then

platform = Instance.new("Part", Workspace)
platform.Name = "DittoPlatform"
platform.Size = Vector3.new(10, 1, 10)
platform.TopSurface = "Smooth"
platform.BottomSurface = "Smooth"
platform.BrickColor = head.BrickColor
platform.Transparency = head.Transparency
platform.Anchored = true
platmesh = Instance.new("SpecialMesh", platform)
platmesh.Scale = Vector3.new(10, 1, 10)
platmesh.MeshId = mesh.MeshId
plat = true
PetChat("I gave you a platform.")

while true do
wait()
if platform ~= nil and plat == true and player.Character ~= nil and player.Character.Torso ~= nil then
platform.CFrame = player.Character.Torso.CFrame - Vector3.new(0, 3.5, 0)
platform.BrickColor = head.BrickColor
platform.Transparency = head.Transparency
if platmesh ~= nil then
platmesh.MeshId = mesh.MeshId
end
end
end
end

if (msg == "remove platform") or (msg == "platform off") then
plat = false
guis = game.Workspace:GetChildren()
for i = 1,#guis do
if guis[i].Name == "DittoPlatform" then
guis[i]:remove()
end
end
PetChat("I removed the platform.")
end

if (msg == "spawn castle") then
castle = Instance.new("Model", workspace)
castle.Name = "Castle"

spawn = Instance.new("SpawnLocation", castle)
spawn.Size = Vector3.new(144, 0.4, 148)
spawn.Anchored = true
spawn.BrickColor = BrickColor.new("Dark stone grey")
spawn.Transparency = 0
spawn.FormFactor = "Custom"
spawn.Material = "Slate"
spawn.TopSurface = "Smooth"
spawn.BottomSurface = "Smooth"
spawn.CFrame = CFrame.new(0,0.5,0)

side1 = Instance.new("Part", castle)
side1.Size = Vector3.new(110, 30, 5)
side1.Anchored = true
side1.BrickColor = BrickColor.new("Dark stone grey")
side1.Transparency = 0
side1.FormFactor = "Custom"
side1.Material = "Slate"
side1.TopSurface = "Smooth"
side1.BottomSurface = "Smooth"
side1.CFrame = CFrame.new(0, 15.5, 71.5)

side2 = Instance.new("Part", castle)
side2.Size = Vector3.new(5, 30, 110)
side2.Anchored = true
side2.BrickColor = BrickColor.new("Dark stone grey")
side2.Transparency = 0
side2.FormFactor = "Custom"
side2.Material = "Slate"
side2.TopSurface = "Smooth"
side2.BottomSurface = "Smooth"
side2.CFrame = CFrame.new(-69.5, 15.4, 0)

side3 = Instance.new("Part", castle)
side3.Size = Vector3.new(110, 30, 5)
side3.Anchored = true
side3.BrickColor = BrickColor.new("Dark stone grey")
side3.Transparency = 0
side3.FormFactor = "Custom"
side3.Material = "Slate"
side3.TopSurface = "Smooth"
side3.BottomSurface = "Smooth"
side3.CFrame = CFrame.new(0, 15.4, -71.5)

side4 = Instance.new("Part", castle)
side4.Size = Vector3.new(5, 30, 110)
side4.Anchored = true
side4.BrickColor = BrickColor.new("Dark stone grey")
side4.Transparency = 0
side4.FormFactor = "Custom"
side4.Material = "Slate"
side4.TopSurface = "Smooth"
side4.BottomSurface = "Smooth"
side4.CFrame = CFrame.new(69.5, 15.4, 0)

tower1 = Instance.new("Part", castle)
tower1.Size = Vector3.new(17, 55, 19)
tower1.Anchored = true
tower1.BrickColor = BrickColor.new("Dark stone grey")
tower1.Transparency = 0
tower1.FormFactor = "Custom"
tower1.Material = "Slate"
tower1.TopSurface = "Smooth"
tower1.BottomSurface = "Smooth"
tower1.CFrame = CFrame.new(63.5, 28, 64.5)

tower2 = Instance.new("Part", castle)
tower2.Size = Vector3.new(17, 55, 19)
tower2.Anchored = true
tower2.BrickColor = BrickColor.new("Dark stone grey")
tower2.Transparency = 0
tower2.FormFactor = "Custom"
tower2.Material = "Slate"
tower2.TopSurface = "Smooth"
tower2.BottomSurface = "Smooth"
tower2.CFrame = CFrame.new(-63.5, 28, 64.5)

tower3 = Instance.new("Part", castle)
tower3.Size = Vector3.new(17, 55, 19)
tower3.Anchored = true
tower3.BrickColor = BrickColor.new("Dark stone grey")
tower3.Transparency = 0
tower3.FormFactor = "Custom"
tower3.Material = "Slate"
tower3.TopSurface = "Smooth"
tower3.BottomSurface = "Smooth"
tower3.CFrame = CFrame.new(-63.5, 28, -64.5)

tower4 = Instance.new("Part", castle)
tower4.Size = Vector3.new(17, 55, 19)
tower4.Anchored = true
tower4.BrickColor = BrickColor.new("Dark stone grey")
tower4.Transparency = 0
tower4.FormFactor = "Custom"
tower4.Material = "Slate"
tower4.TopSurface = "Smooth"
tower4.BottomSurface = "Smooth"
tower4.CFrame = CFrame.new(63.5, 28, -64.5)

point1 = Instance.new("Part", castle)
point1.Size = Vector3.new(25, 20, 27)
point1.Anchored = true
point1.BrickColor = BrickColor.new("Bright red")
point1.Transparency = 0
point1.FormFactor = "Custom"
point1.Material = "Slate"
point1.TopSurface = "Smooth"
point1.BottomSurface = "Smooth"
point1.CFrame = CFrame.new(63.5, 65.6, 64.5)
cone = Instance.new("SpecialMesh", point1)
cone.Scale = Vector3.new(15, 30, 15)
cone.MeshId = "http://www.roblox.com/asset/?id=1033714"

point2 = Instance.new("Part", castle)
point2.Size = Vector3.new(25, 20, 27)
point2.Anchored = true
point2.BrickColor = BrickColor.new("Bright red")
point2.Transparency = 0
point2.FormFactor = "Custom"
point2.Material = "Slate"
point2.TopSurface = "Smooth"
point2.BottomSurface = "Smooth"
point2.CFrame = CFrame.new(-63.5, 65.6, 64.5)
cone = Instance.new("SpecialMesh", point2)
cone.Scale = Vector3.new(15, 30, 15)
cone.MeshId = "http://www.roblox.com/asset/?id=1033714"

point3 = Instance.new("Part", castle)
point3.Size = Vector3.new(25, 20, 27)
point3.Anchored = true
point3.BrickColor = BrickColor.new("Bright red")
point3.Transparency = 0
point3.FormFactor = "Custom"
point3.Material = "Slate"
point3.TopSurface = "Smooth"
point3.BottomSurface = "Smooth"
point3.CFrame = CFrame.new(-63.5, 65.6, -64.5)
cone = Instance.new("SpecialMesh", point3)
cone.Scale = Vector3.new(15, 30, 15)
cone.MeshId = "http://www.roblox.com/asset/?id=1033714"

point4 = Instance.new("Part", castle)
point4.Size = Vector3.new(25, 20, 27)
point4.Anchored = true
point4.BrickColor = BrickColor.new("Bright red")
point4.Transparency = 0
point4.FormFactor = "Custom"
point4.Material = "Slate"
point4.TopSurface = "Smooth"
point4.BottomSurface = "Smooth"
point4.CFrame = CFrame.new(63.5, 65.6, -64.5)
cone = Instance.new("SpecialMesh", point4)
cone.Scale = Vector3.new(15, 30, 15)
cone.MeshId = "http://www.roblox.com/asset/?id=1033714"

PetChat("I made a spawn castle.")
end

if (msg == "open castle") then
if side1 ~= nil and side2 ~= nil and side3 ~= nil and side4 ~= nil then
side1.CanCollide = false
side1.Transparency = 1
side2.CanCollide = false
side2.Transparency = 1
side3.CanCollide = false
side3.Transparency = 1
side4.CanCollide = false
side4.Transparency = 1
PetChat("I opened the castle.")
end
end

if (msg == "close castle") then
if side1 ~= nil and side2 ~= nil and side3 ~= nil and side4 ~= nil then
side1.CanCollide = true
side1.Transparency = 0
side2.CanCollide = true
side2.Transparency = 0
side3.CanCollide = true
side3.Transparency = 0
side4.CanCollide = true
side4.Transparency = 0
PetChat("I closed the castle.")
end
end

if (msg == "remove castle") then
if castle ~= nil then
castle:Remove()
PetChat("I removed the castle.")
end
end

if (msg == "fix base") then
local Base=Instance.new("Part",game.Workspace) 
Base.Name="Base" 
Base.Size=Vector3.new(1000,1,1000) 
Base.BrickColor=BrickColor.new("Earth green") 
Base.Anchored=true 
Base.Locked=true 
Base.TopSurface="Universal" 
Base.CFrame=CFrame.new(Vector3.new(0,0,0)) 
local Spawn=Instance.new("SpawnLocation",game.Workspace)
Spawn.Name="SpawnLocation"
Spawn.Size=Vector3.new(6,1,6)
Spawn.Transparency=1
Spawn.CanCollide=false
Spawn.Anchored=true
Spawn.Locked=true
Spawn.CFrame=CFrame.new(Vector3.new(0,1,0))
PetChat("The base has been replaced.")
end

if msg == "stay" then
follow = false
PetChat("But I want to come with you, master!")
end

if msg == "come" then
follow = true
PetChat("Yay!")
end

if msg == "clear message" then
PetChat("I am deleting the messages.")
guis = game.Workspace:GetChildren()
for i = 1,#guis do
if guis[i].className == "Message" then
guis[i]:remove()
end
end
end

if msg == "clear terrain" then
PetChat("I am deleting the terrain.")
game.Workspace.Terrain:clear()
end

if msg == "fus ro dah" then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright blue")
fus.Transparency = 0.6
fus.Reflectance = 0.1
fus.CFrame = player.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (player.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(0/255, 204/255, 255/255)
f.SecondaryColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = player.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(fused)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 20 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif msg == "wuld nah kest" then
local speed = player.Character.Humanoid.WalkSpeed --Speed prior to sprinting
local cf = player.Character.Torso.CFrame * CFrame.new(0, 0, -50)
local pos = cf.p
player.Character.Humanoid.WalkSpeed = 200
player.Character.Humanoid:MoveTo(pos, workspace.Base)
wait(0.275)
player.Character.Humanoid.WalkSpeed = speed
player.Character.Humanoid:MoveTo(player.Character.Torso.Position, player.Character.Torso)
elseif msg == "liz slen nus" then
--local succ, ret = pcall(function()
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(3, 3, 6)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("White")
fus.Transparency = 0.5
fus.Reflectance = 0.1
fus.CFrame = player.Character.Head.CFrame * CFrame.new(0, 0, -6)
fus.Velocity = (player.Character.Head.Position - fus.Position).unit * -150
local s = Instance.new("Sparkles")
s.Name = "LizSparkle"
s.SparkleColor = Color3.new(1, 1, 1)
s.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = player.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(lized)
--[end)
coroutine.resume(coroutine.create(function()
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif msg == "yol toor shul" then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(3, 3, 6)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright orange")
fus.Transparency = 0.5
fus.Reflectance = 0.1
fus.CFrame = player.Character.Head.CFrame * CFrame.new(0, 0, -6)
fus.Velocity = (player.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()/3
f.Heat = 0
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = player.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(yoled)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 20 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/3)/40
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif msg == "feim zii gron" then
player.Character.Humanoid.WalkSpeed = 30
for a, b in pairs(player.Character:children()) do
if b.Name == "Head" then
if b:findFirstChild("face") ~= nil then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.face.Transparency = b.face.Transparency + 0.01
wait(0.01)
end
b.face.Transparency = 1
end))
end
end
if b.className == "Part" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Transparency = b.Transparency + 0.01
wait(0.01)
end
b.Transparency = 1
end))
elseif b.className == "Hat" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Handle.Transparency = b.Handle.Transparency + 0.01
wait(0.01)
end
b.Handle.Transparency = 1
end))
end
end
wait(15)
player.Character.Humanoid.WalkSpeed = 16
for a, b in pairs(player.Character:children()) do
if b.Name == "Head" then
if b:findFirstChild("face") ~= nil then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.face.Transparency = b.face.Transparency - 0.01
wait(0.01)
end
b.face.Transparency = 0
end))
end
end
if b.className == "Part" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Transparency = b.Transparency - 0.01
wait(0.01)
end
b.Transparency = 0
end))
elseif b.className == "Hat" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Handle.Transparency = b.Handle.Transparency - 0.01
wait(0.01)
end
b.Handle.Transparency = 0
end))
end
end
elseif msg == "strun bah qo" and skygo == true then
skygo = false
local clouds = {}
function lightning(cl)
local lights = {}
for i = 1, 15 do
local l = Instance.new("Part")
l.Name = "FusLightning"
table.insert(lights, l)
game:GetService("Debris"):AddItem(l, 15)
l.formFactor = "Custom"
l.Size = Vector3.new(1, math.random(50, 75), 1)
l.BrickColor = BrickColor.new("Institutional white")
l.Transparency = 0.45
l.Reflectance = 0.5
l.Anchored = true
l.CanCollide = false
local xnum = 6
local znum = 6
if i == 1 then
l.CFrame = cl.CFrame * CFrame.Angles(math.random(-(math.pi/xnum), math.pi/xnum), 0, math.random(-(math.pi/znum), math.pi/znum)) * CFrame.new(0, -1 * (l.Size.Y/2), 0)
elseif i > 1 then
local llight = lights[i - 1]
l.CFrame = llight.CFrame * CFrame.Angles(math.random(-(math.pi/xnum), math.pi/xnum), 0, math.random(-(math.pi/znum), math.pi/znum)) * CFrame.new(0, -1 * (l.Size.Y/2), 0)
end
l.Parent = workspace
l.Touched:connect(function(part) struned(part, l) end)
coroutine.resume(coroutine.create(function()
repeat
l.Transparency = l.Transparency + 0.02
wait()
until l.Transparency >= 1
l:remove()
end))
end
end
for i = 1, 100 do
game.Lighting.Brightness = game.Lighting.Brightness - 0.01
wait(0.05)
end
game.Lighting.Brightness = 0
local cloud = Instance.new("Part")
cloud.Name = "StrunCloud"
cloud.Size = Vector3.new(1, 1, 1)
cloud.Anchored = true
cloud.CanCollide = false
cloud.BrickColor = BrickColor.new("Black")
cloud.Transparency = 1
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.Scale = Vector3.new(math.random(100, 150), math.random(50, 100), math.random(100, 150))
mesh.MeshId = "www.roblox.com/asset/?id=1095708"
mesh.Parent = cloud
for i = 1, (math.random(4, 8)) do
local newc = cloud:clone()
newc.Parent = workspace
game:GetService("Debris"):AddItem(newc, 300)
table.insert(clouds, newc)
newc.CFrame = CFrame.new(player.Character.Torso.Position + Vector3.new(math.random(-250, 250), math.random(150, 200), math.random(-250, 250)))
coroutine.resume(coroutine.create(function()
repeat
newc.Transparency = newc.Transparency - 0.01
wait()
until newc.Transparency <= 0.2
newc.Transparency = 0.2
end))
end
for i = 1, (math.random(7, 15)) do
if skygo == true then break end
local s = Instance.new("Sound")
game:GetService("Debris"):AddItem(s, 5)
s.Name = "Lighting"
s.SoundId = "rbxasset://sounds/HalloweenLightning.wav"
s.Pitch = (math.random(10, 15) * 0.1)
s.PlayOnRemove = true
s.Looped = false
s.Parent = workspace
wait(0.5)
s:play()
for i = 1, #clouds do
lightning(clouds[i])
end
game.Lighting.Brightness = 1
wait(0.001)
game.Lighting.Brightness = 0
s:remove()
wait(math.random(3, 6))
end
wait(2)
for i = 1, #clouds do
coroutine.resume(coroutine.create(function()
repeat
clouds[i].Transparency = clouds[i].Transparency + 0.01
wait(0.05)
until clouds[i].Transparency >= 1
clouds[i]:remove()
end))
end
for i = 1, 110 do
game.Lighting.Brightness = game.Lighting.Brightness + 0.01
wait(0.01)
end
skygo = true
game.Lighting.Brightness = 1
elseif msg == "fo krah diin" then
go = false
for i = 1, 50 do
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(0.5, 0.5, 0.5)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Institutional white")
fus.Transparency = 0.6
fus.Reflectance = 0.1
fus.CFrame = player.Character.Head.CFrame * CFrame.new(math.random(-15, 15)*0.1, math.random(-15, 15)*0.1, -4)
fus.Velocity = (player.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(1, 1, 1)
f.SecondaryColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = fus.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) foed(part, fus) end)
game:GetService("Debris"):AddItem(fus, 15)
end
go = true
elseif msg == "laas yah nir" then
for i = 1, 30 do
for a, b in pairs(game.Players:children()) do
if b.Character ~= nil then
if (player.Character.Torso.Position - b.Character.Torso.Position).magnitude <= 100 and b ~= p then
if b.Character.Torso:findFirstChild("LaasFire") == nil then
local f = Instance.new("Fire", b.Character.Torso)
f.Name = "LaasFire"
f.Size = b.Character.Torso:GetMass()*2
f.Color = Color3.new(204/255, 0/255, 204/255)
f.SecondaryColor = Color3.new(0/255, 0/255, 0/255)
end
elseif (player.Character.Torso.Position - b.Character.Torso.Position).magnitude > 100 then
if b.Character.Torso:findFirstChild("LaasFire") ~= nil then
b.Character.Torso.LaasFire:remove()
end
end
end
end
wait(1)
end
for a, b in pairs(game.Players:children()) do
if b.Character.Torso:findFirstChild("LaasFire") ~= nil then
b.Character.Torso.LaasFire:remove()
end
end
elseif msg == "zun haal viik" then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Lime green")
fus.Transparency = 0.6
fus.Reflectance = 0.1
fus.CFrame = player.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (player.Character.Head.Position - fus.Position).unit * -200
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(0/255, 255/255, 0/255)
f.SecondaryColor = Color3.new(255/255, 255/255, 255/255)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = player.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) zuned(part, fus) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 9 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif msg == "krii lun aus" then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright purple")
fus.Transparency = 0.6
fus.Reflectance = 0.1
fus.CFrame = player.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (player.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(153/255, 0/255, 255/255)
f.SecondaryColor = Color3.new(255/255, 255/255, 255/255)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = player.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) kriied(part, fus) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif msg == "tiid klo ul" then
for a, b in pairs(game.Players:children()) do
if b.Character ~= nil and b ~= p then
for c, d in pairs(b.Character:children()) do
if d.className == "Part" then
if d.Anchored == false then
local cf = nil
if d.Name == "Torso" then
cf = d.CFrame
end
d.Anchored = true
coroutine.resume(coroutine.create(function()
wait(10)
if d ~= nil then
d.Anchored = false
d.CFrame = cf
end
end))
end
elseif d.className == "Hat" then
if d.Handle.Anchored == false then
d.Handle.Anchored = true
coroutine.resume(coroutine.create(function()
wait(10)
if d ~= nil then
if d.Handle ~= nil then
d.Handle.Anchored = false
end
end
end))
end
end
end
end
end
elseif msg == "faas ru maar" then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Really black")
fus.Transparency = 0.6
fus.Reflectance = 0.1
fus.CFrame = player.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (player.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(0/255, 0/255, 0/255)
f.SecondaryColor = Color3.new(255/255, 255/255, 255/255)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = player.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) faased(part) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif msg == "toor bah yol" and skygo == true then
skygo = false
local clouds = {}
function meteor(cloud)
local cf = CFrame.new(cloud.Position + Vector3.new(math.random(-10, 10), 20, math.random(-10, 10)))
local m = Instance.new("Part")
m.Name = "FusRock"
m.Shape = "Ball"
m.formFactor = "Symmetric"
m.Anchored = false
m.CanCollide = false
m.TopSurface = "Smooth"
m.BottomSurface = "Smooth"
local size = math.random(10, 20)
m.Size = Vector3.new(size, size, size)
m.BrickColor = BrickColor.new("Bright red")
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.Parent = m
mesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
mesh.TextureId = "http://www.roblox.com/asset/?id=1290030"
mesh.Scale = m.Size * Vector3.new(0.5, 0.5, 0.5)
mesh.VertexColor = Vector3.new(2, 0.5, 0)
m.CFrame = cf
Instance.new("Fire", m).Size = m:GetMass()
m.Velocity = Vector3.new(0, -50, 0)
m.Parent = workspace
game:GetService("Debris"):AddItem(m, 30)
m.Touched:connect(function(part) toored(part, m) end)
end
for i = 1, 100 do
game.Lighting.Brightness = game.Lighting.Brightness - 0.01
wait(0.05)
end
game.Lighting.Brightness = 0
local cloud = Instance.new("Part")
cloud.Name = "ToorCloud"
cloud.Size = Vector3.new(1, 1, 1)
cloud.Anchored = true
cloud.CanCollide = false
cloud.BrickColor = BrickColor.new("Black")
cloud.Transparency = 1
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.Scale = Vector3.new(math.random(100, 150), math.random(50, 100), math.random(100, 150))
mesh.MeshId = "www.roblox.com/asset/?id=1095708"
mesh.Parent = cloud
for i = 1, (math.random(4, 8)) do
local newc = cloud:clone()
newc.Parent = workspace
game:GetService("Debris"):AddItem(newc, 180)
table.insert(clouds, newc)
newc.CFrame = CFrame.new(player.Character.Torso.Position + Vector3.new(math.random(-250, 250), math.random(150, 200), math.random(-250, 250)))
coroutine.resume(coroutine.create(function()
repeat
newc.Transparency = newc.Transparency - 0.01
wait()
until newc.Transparency <= 0.2
newc.Transparency = 0.2
end))
end
for launch = 1, math.random(20, 30) do
if skygo == true then break end
wait(math.random(2, 4))
meteor(clouds[math.random(1, #clouds)])
end
wait(1)
for c = 1, #clouds do
coroutine.resume(coroutine.create(function()
repeat
clouds[c].Transparency = clouds[c].Transparency + 0.01
wait()
until clouds[c].Transparency >= 1
clouds[c].Transparency = 1
clouds[c]:remove()
end))
end
repeat
game.Lighting.Brightness = game.Lighting.Brightness + 0.01
wait(0.01)
until game.Lighting.Brightness >= 1
game.Lighting.Brightness = 1
skygo = true
elseif msg == "joor zah frul" then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright yellow")
fus.Transparency = 0.7
fus.Reflectance = 0.1
fus.CFrame = player.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (player.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Sparkles")
f.Name = "FusSparkles"
f.SparkleColor = Color3.new(0, 0, 0)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = player.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) joored(part, fus) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif msg == "kaan drem ov" then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("White")
fus.Transparency = 0.7
fus.Reflectance = 0.1
fus.CFrame = player.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (player.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Sparkles")
f.Name = "FusSparkles"
f.SparkleColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = player.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) kaaned(part) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif msg == "ven mul riik" and skygo == true then
skygo = false
local l = game.Lighting
l.FogEnd = 1000
coroutine.resume(coroutine.create(function()
repeat
l.FogEnd = l.FogEnd - 3
wait()
until l.FogEnd < 50
wait(10)
repeat
l.FogEnd = l.FogEnd + 5
wait()
until l.FogEnd > 5000
l.FogEnd = 10000
skygo = true
end))
elseif msg == "lok vah koor" and skygo == false then
skygo = true
--Not changing go because this is an instantaneous reaction.
coroutine.resume(coroutine.create(function()
local b = Instance.new("Part")
b.Shape = "Ball"
b.formFactor = "Symmetric"
b.Size = Vector3.new(1, 1, 1)
b.CFrame = player.Character.Torso.CFrame
b.TopSurface = "Smooth"
b.BottomSurface = "Smooth"
b.Anchored = true
b.CanCollide = false
b.Name = "LokBall"
b.BrickColor = BrickColor.new("White")
b.Parent = player.Character
game:GetService("Debris"):AddItem(b, 20)
repeat
b.Size = b.Size + Vector3.new(1, 1, 1)
b.CFrame = player.Character.Torso.CFrame
b.Transparency = b.Transparency + 1/29
wait()
until b.Size.x == 30
b:remove()
end))
local l = game.Lighting
coroutine.resume(coroutine.create(function()
repeat
l.FogEnd = l.FogEnd + 5
wait()
until l.FogEnd > 5000
l.FogEnd = 10000
end))
elseif msg == "nahl daal vus" then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(2, 2, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright green")
fus.Transparency = 0.7
fus.Reflectance = 0.1
fus.CFrame = player.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (player.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Sparkles")
f.Name = "FusSparkles"
f.SparkleColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = player.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) nahled(part) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif msg == "bex" then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("White")
fus.Transparency = 0.7
fus.Reflectance = 0.1
fus.CFrame = player.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (player.Character.Head.Position - fus.Position).unit * -150
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = player.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) bexed(part) end)
coroutine.resume(coroutine.create(function() 
wait(1)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
end


if msg == "base" then
PetChat("I made a new base!")
local Base=Instance.new("Part",game.Workspace) 
Base.Name="Base" 
Base.Size=Vector3.new(1000,1,1000) 
Base.BrickColor=BrickColor.new("Earth green") 
Base.Anchored=true 
Base.Locked=true 
Base.TopSurface="Universal" 
Base.CFrame=CFrame.new(Vector3.new(0,0,0)) 
local Spawn=Instance.new("SpawnLocation",game.Workspace)
Spawn.Name="SpawnLocation"
Spawn.Size=Vector3.new(6,1,6)
Spawn.Transparency=1
Spawn.CanCollide=false
Spawn.Anchored=true
Spawn.Locked=true
Spawn.CFrame=CFrame.new(Vector3.new(0,1,0))
end

if msg == "blue" then
PetChat("I'm blue now!")
head.BrickColor = BrickColor.new("Bright blue")
end
if msg == "yellow" then
PetChat("I'm yellow now!")
head.BrickColor = BrickColor.new("Bright yellow")
end
if msg == "white" then
PetChat("I'm white now!")
head.BrickColor = BrickColor.new("Institutional white")
end
if msg == "red" then
PetChat("I'm red now!")
head.BrickColor = BrickColor.new("Bright red")
end
if msg == "black" then
PetChat("I'm black now!")
head.BrickColor = BrickColor.new("Really black")
end
if msg == "green" then
PetChat("I'm green now!")
head.BrickColor = BrickColor.new("Bright green")
end
if msg == "orange" then
PetChat("I'm orange now!")
head.BrickColor = BrickColor.new("Bright orange")
end
if msg == "purple" then
PetChat("I'm purple now!")
head.BrickColor = BrickColor.new("Bright violet")
end
if msg == "grey" or msg == "gray" then
PetChat("I'm grey now!")
head.BrickColor = BrickColor.new("Medium stone grey")
end
if msg == "lime" then
PetChat("I'm lime green now!")
head.BrickColor = BrickColor.new("Lime green")
end


if msg == "dawn" then
PetChat("It's dawn now!")
game.Lighting.TimeOfDay = "06:00:00"
end
if msg == "noon" then
PetChat("It's noon now!")
game.Lighting.TimeOfDay = "12:00:00"
end
if msg == "dusk" then
PetChat("It's dusk now!")
game.Lighting.TimeOfDay = "18:00:00"
end
if msg == "midnight" then
PetChat("It's midnight now!")
game.Lighting.TimeOfDay = "23:55:00"
end
if msg == "fix lighting" then
PetChat("Lighting is restored to default!")
game:service("Lighting").Brightness = 1
game:service("Lighting").GeographicLatitude = 41.73
game:service("Lighting").Ambient = Color3.new(128 / 255, 128 / 255, 128 / 255)
game:service("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
game:service("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
game:service("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 184 / 255)
game:service("Lighting").TimeOfDay = "14:00:00"
end

if msg == "fog grey" or msg == "fog gray" then
PetChat("The fog is now grey.")
game.Lighting.FogColor = Color3.new(191,191,191)
end

if msg == "fog black" then
PetChat("The fog is now black.")
game.Lighting.FogColor = Color3.new(0,0,0)
end

if msg == "fog red" then
PetChat("The fog is now red.")
game.Lighting.FogColor = Color3.new(255,0,0)
end

if msg == "fog blue" then
PetChat("The fog is now blue.")
game.Lighting.FogColor = Color3.new(0,0,255)
end

if msg == "fog green" then
PetChat("The fog is now green.")
game.Lighting.FogColor = Color3.new(0,255,0)
end

if msg == "fog yellow" then
PetChat("The fog is now yellow.")
game.Lighting.FogColor = Color3.new(255,255,0)
end

if msg == "fog orange" then
PetChat("The fog is now orange.")
game.Lighting.FogColor = Color3.new(255,102,0)
end

if msg == "fog purple" then
PetChat("The fog is now purple.")
game.Lighting.FogColor = Color3.new(255,102,0)
end

if msg == "fog on" then
PetChat("It is now foggy!")
game:service("Lighting").FogStart  = 0 
game:service("Lighting").FogEnd  = 100 
end

if msg == "fog off" then
PetChat("It's not foggy anymore!")
game:service("Lighting").FogStart  = 0 
game:service("Lighting").FogEnd  = 999999999999
end

if msg == "cave" then
for i = 1, 9 do
local rock = Instance.new("Part", workspace)
rock.Anchored = true
rock.Shape = "Ball"
rock.Material = "Slate"
rock.TopSurface = "Smooth"
rock.BottomSurface = "Smooth"
rock.Size = Vector3.new(40, 40, 40)
rock.BrickColor = BrickColor.new("Stone gray")
rock.CFrame = CFrame.new(0,1,0)*CFrame.Angles(0,math.rad(i*40),0)*CFrame.new(80/2,0,0)
end end

if msg == "forest" then
local tmodel = Instance.new("Model", workspace)
for i = 1, 3000 do
local treet = Instance.new("Part", tmodel)
treet.Size = Vector3.new(4, 20, 4)
treet.Anchored = true
treet.Locked = true
treet.BrickColor = BrickColor.new("Reddish brown")
treet.CFrame = CFrame.new(math.random(-500, 500), math.random(-5, 10), math.random(-500, 500))
local treetop = Instance.new("Part", tmodel)
treetop.BrickColor = BrickColor.new("Earth green")
treetop.TopSurface = "Smooth"
treetop.BottomSurface = "Smooth"
treetop.Size = Vector3.new(13, 13, 13)
treetop.Anchored = true
treetop.Shape = "Ball"
treetop.CFrame = treet.CFrame * CFrame.new(0, 13, 0)
end end


if msg == "dominus" then Cmesh("Dominus") end
if msg == "pony" then Cmesh("Pony") end
if msg == "diamond" then Cmesh("Diamond") end
if msg == "duck" then Cmesh("Duck") end
if msg == "sphere" then Cmesh("Sphere") end
if msg == "fish" then Cmesh("Fish") end
if msg == "skull" then Cmesh("Skull") end
if msg == "teapot" then Cmesh("Teapot") end
if msg == "pumpkin" then Cmesh("Pumpkin") end
if msg == "satelite" then Cmesh("Satelite") end
if msg == "ghost" then Cmesh("Ghost") end
if msg == "cat" then Cmesh("Cat") end
if msg == "music box" then Cmesh("Music Box") end
if msg == "cake" then Cmesh("Cake") end
if msg == "statue" then Cmesh("Statue") end
if msg == "gift" then Cmesh("Gift") end
if msg == "rock" then Cmesh("Rock") end
if msg == "orb" then Cmesh("Orb") end
if msg == "coin" then Cmesh("Coin") end
if msg == "castle" then Cmesh("Castle") end
if msg == "cloud" then Cmesh("Cloud") end
if msg == "look at me" then look = true end
if msg == "look ahead" then look = false end
if msg == "armed" then armed = true head.BrickColor = BrickColor.Red() end
if msg == "unarmed" then armed = false head.BrickColor = BrickColor.Blue() end
if msg == "antiban off" then
PetChat("AntiBan Is Turned Off.")
ab = false
end
if msg == "antiban on" then
PetChat("Antiban is now on!")
ab = true
end

if msg == "explode" then
local ex = Instance.new("Explosion")
ex.Parent = game.workspace
ex.Position = head.Position
ex.Hit:connect(function(Hit) 
if Hit:IsDescendantOf(game:service("Players").LocalPlayer.Character) == false then 
Hit.Anchored = false 
Hit:BreakJoints() 
end
end)
end

if msg == "nuke" then
local ex = Instance.new("Explosion")
ex.Parent = game.workspace
ex.Position = head.Position
ex.BlastRadius = 500
ex.Hit:connect(function(Hit) 
if Hit:IsDescendantOf(game:service("Players").LocalPlayer.Character) == false then 
Hit.Anchored = false 
Hit:BreakJoints() 
end
end)
end

if msg == "katamari off" or msg == "remove katamari" then
if ka ~= nil then ka:Remove()
end
PetChat("I removed the Katamari!")
end

if msg == "empty katamari" or msg == "dump katamari" then
if ka ~= nil and ba ~= nil then
junk = ba:GetChildren()
for i = 1,#junk do
junk[i]:Remove() 
end
end
PetChat("I dumped the Katamari's Contents!")
end

if msg == "invisible" then
Hidden = false
mesh.Scale = Vector3.new(1.1,1.1,1.1)
wait(0.01)
mesh.Scale = Vector3.new(1.2,1.2,1.2)
head.Transparency = 0.6
wait(0.01)
mesh.Scale = Vector3.new(1.2,1.2,2.2)
wait(0.01)
mesh.Scale = Vector3.new(1.3,1.3,1.3)
head.Transparency = 0.7
wait(0.01)
mesh.Scale = Vector3.new(1.4,1.4,1.4)
wait(0.01)
mesh.Scale = Vector3.new(1.5,1.5,1.5)
head.Transparency = 0.8
wait(0.01)
mesh.Scale = Vector3.new(1.6,1.6,1.6)
wait(0.01)
mesh.Scale = Vector3.new(1.7,1.7,1.7)
head.Transparency = 0.9
wait(0.01)
head.Transparency = 1
end

if msg == "visible" then
Hidden = true
PetChat("I'm back!")
mesh.Scale = Vector3.new(1.7,1.7,1.7)
head.Transparency = 0.9
wait(0.01)
mesh.Scale = Vector3.new(1.6,1.6,1.6)
wait(0.01)
mesh.Scale = Vector3.new(1.5,1.5,1.5)
head.Transparency = 0.8
wait(0.01)
mesh.Scale = Vector3.new(1.4,1.4,1.4)
wait(0.01)
mesh.Scale = Vector3.new(1.3,1.3,1.3)
head.Transparency = 0.7
wait(0.01)
mesh.Scale = Vector3.new(1.2,1.2,2.2)
wait(0.01)
mesh.Scale = Vector3.new(1.2,1.2,1.2)
head.Transparency = 0.6
wait(0.01)
mesh.Scale = Vector3.new(1.1,1.1,1.1)
wait(0.01)
mesh.Scale = Vector3.new(1,1,1)
head.Transparency = 0.5
end

if msg == "shutdown" then Shutit() end
if msg == "kill pet" then 
dead = true
follow = false
pet:remove()
ab = false
end

if msg == "talk" or msg == "speak" then
rdn = math.floor(math.random(1,#talks))
PetChat(talks[rdn])
end

if msg == "ditto" or msg == "ditto!" or msg == "ditto," or msg == "ditto?" then
PetChat("Yes, master?")
end

if msg == "sing cupcakes" or msg == "cupcakes" then
PetChat("All you have to do is take a cup of flour,")
wait(2)
PetChat("Add it to the mix!")
wait(2)
PetChat("Now just take a little something sweet, not sour,")
wait(2)
PetChat("A bit of salt, just a pinch!")
wait(2)
PetChat("Baking these treats is such a sinch,")
wait(2)
PetChat("Add a teaspoon of vanilla!")
wait(2)
PetChat("Add a little more and you count to four,")
wait(2)
PetChat("And you never get your filla!")
wait(2)
PetChat("Cupcakes! So sweet and tasty!")
wait(2)
PetChat("Cupcakes! Don't be to hasty!")
wait(2)
PetChat("Cupcakes,")
wait(1)
PetChat("Cupcakes!")
wait(0.5)
PetChat("Cupcakes!")
wait(0.5)
PetChat("Cupcakes!")
wait(0.5)
end

if msg == "sing sons of skyrim" or msg == "sing skyrim" or msg == "sons of skyrim" or msg == "skyrim" then
PetChat("Nuz aan sul, fent alok,")
wait(2)
PetChat("fod fin vul dovah nok,")
wait(2)
PetChat("fen kos nahlot mahfaeraak ahrk ruz!")
wait(5)
PetChat("Paaz Keizaal fen kos stin nol bein Alduin jot!")
wait(5)
PetChat("Dovahkiin, Dovahkiin")
wait(2)
PetChat("naal ok zin los vahriin")
wait(2)
PetChat("wah dein vokul mahfaeraak ahst vaal!")
wait(3.5)
PetChat("Ahrk fin norok paal graan")
wait(2)
PetChat("fod nust hon zindro zaan")
wait(2)
PetChat("Dovahkiin, fah hin kogaan mu draal!")
end

if msg == "sing diggy diggy hole" or msg == "diggy diggy hole" then
PetChat("I am a dwarf and I'm digging a hole.")
wait(3.5)
PetChat("Diggy diggy hole,")
wait(2)
PetChat("I'm digging a hole!")
wait(2)
PetChat("I am a dwarf and I'm digging a hole.")
wait(3.5)
PetChat("Diggy diggy hole,")
wait(2)
PetChat("I'm digging a hole!")
wait(2)
PetChat("Dwarf!")
wait(1)
PetChat("Hole!")
wait(1)
PetChat("Diggy Diggy Hole,")
wait(2)
PetChat("Diggy Diggy Hole,")
wait(2)
PetChat("Diggy Diggy Hole,")
wait(2)
PetChat("Dwarf!")
wait(1)
PetChat("Hole!")
wait(1)
PetChat("Diggy Diggy Hole,")
wait(2)
PetChat("Diggy Diggy Hole,")
wait(2)
PetChat("Diggy Diggy Hole,")
wait(2)
PetChat("Diggy Diggy Hole!")
wait(2)
end

if msg == "evil" then
chat = Enum.ChatColor.Red
PetChat("I'm evil!")
end

if msg == "neutral" then
chat = Enum.ChatColor.Blue
PetChat("I'm neutral!")
end

if msg == "good" then
chat = Enum.ChatColor.Green
PetChat("I'm good!")
end

if msg == "check" then 
PetChat("Master, I'm still working.") 
end

if msg == "up" then
pcall(function() game:service("Players").LocalPlayer.Character:Remove() end) 
game:service("Players").LocalPlayer.Character = nil 
uppie = true
end

if msg == "center" then
workspace.CurrentCamera.CoordinateFrame = CFrame.new(0, 10, 0) 
workspace.CurrentCamera.Focus = CFrame.new(1, 10, 0) 
end

if msg == "down" then
			yfcbackup = char:Clone()
			yfcbackup.Parent = Workspace
			yfcbackup:MoveTo(head.Position + Vector3.new(0,5,0))
			yfcbackup.Name = name
			pl.Character = yfcbackup 
			yfcbackup.Humanoid.MaxHealth = math.huge
			yfcbackup.Humanoid.Health = math.huge
			Workspace.CurrentCamera.CameraSubject = yfcbackup.Humanoid
			workspace.CurrentCamera.CameraType = "Custom" 
			uppie = false
end

if msg == "mountain" then
local Scale = 500
local Pos = Vector3.new(0,0,0)
local Iterations = 4
local Error = 150
local Wait = .02
local Table = 
{[0]={[0] =math.random(-Error,Error), [1] = math.random(-Error,Error)},
[.5]={[.5] = 50},
[1]={[0] = math.random(-Error,Error), [1] = math.random(-Error,Error)}
}

local Colors = {
{0,BrickColor.new("Earth green")},
{10,BrickColor.new("Dark green")}, 
{20,BrickColor.new("Bright green")},
{30,BrickColor.new("Medium green")},
{40,BrickColor.new("Dark stone grey")},
{math.huge, BrickColor.new("White")}
 }


function Triangle(A,B,C,Color)
local M = Instance.new("Model")
M.archivable = false
local Base1 = (C-A)*((B-A):Dot(C-A)/((C-A).magnitude)^2)
local Base2 = ((C-A) - Base1)
local Height = (B-A) - Base1
local Pos1 = (A + (B-A)/2)
local Pos2 = (C + (B-C)/2)
local Normal1 = Base1:Cross(Height).unit
local Normal2 = Base2:Cross(Height).unit
local Cf1 = CFrame.new(0,0,0,Normal1.x,-Base1.unit.x,-Height.unit.x, Normal1.y,-Base1.unit.y,-Height.unit.y,Normal1.z, -Base1.unit.z,-Height.unit.z) + Pos1
local Cf2 =  CFrame.new(0,0,0,Normal2.x,-Base2.unit.x,-Height.unit.x, Normal2.y,-Base2.unit.y,-Height.unit.y,Normal2.z, -Base2.unit.z,-Height.unit.z) * CFrame.Angles(0,0,math.pi)+ Pos2
local P1 = Instance.new("WedgePart")
P1.FormFactor = 0

P1.Size = Vector3.new(1,math.floor(Base1.magnitude),math.floor(Height.magnitude))
local M1 = Instance.new("SpecialMesh")
M1.archivable = false
M1.MeshType = "Wedge"
M1.Scale = Vector3.new(1, Base1.magnitude, Height.magnitude)/P1.Size
M1.Parent = P1
P1.Anchored = true
P1.CFrame = Cf1 + (Cf1 - Cf1.p) * Vector3.new(.5,0,0)
P1.TopSurface = 0
P1.BottomSurface = 0

for i = 1, #Color do
if P1.Position.y >= (((i == 1) and -math.huge) or Color[i-1][1]) and P1.Position.y < Color[i][1] then
P1.BrickColor = Color[i][2]
break
end
end




P1.Parent = M
P1.archivable = false
local P2 = Instance.new("WedgePart")
P2.FormFactor = 0
P2.Size = Vector3.new(1,math.floor(Base2.magnitude),math.floor(Height.magnitude))

local M2 = Instance.new("SpecialMesh")
M2.archivable = false
M2.MeshType = "Wedge"
M2.Scale = Vector3.new(1, Base2.magnitude, Height.magnitude)/P2.Size
M2.Parent = P2


P2.Anchored = true
P2.CFrame = Cf2 +(Cf2 - Cf2.p) * Vector3.new(-.5,0,0)
P2.TopSurface = 0
P2.BottomSurface = 0
for i = 1, #Color do
if P2.Position.y >= (((i == 1) and -math.huge) or Color[i-1][1]) and P2.Position.y < Color[i][1] then
P2.BrickColor = Color[i][2]
break
end
end

P2.Parent = M
P2.archivable = false
return M
end 

function Generate(MainTable, Reps, Error)
function DiamondSquare(Vs, Ve, Hs, He, I, E)
local Va = (Vs + Ve)/2
local Ha = (Hs + He)/2
if MainTable[Vs][Ha] == nil then
MainTable[Vs][Ha] = (MainTable[Vs][Hs] + MainTable[Vs][He])/2
end
if MainTable[Va] == nil then
MainTable[Va] = {}
end
if MainTable[Va][Hs] == nil then
MainTable[Va][Hs] = (MainTable[Vs][Hs] + MainTable[Ve][Hs])/2 + (math.random() - .5) * E
end
if MainTable[Va][Ha]  == nil then
MainTable[Va][Ha] = (MainTable[Vs][Hs] + MainTable[Vs][He] + MainTable[Ve][Hs] + MainTable[Ve][He])/4+ (math.random() - .5) * E
end
if MainTable[Va][He] == nil then
MainTable[Va][He] = (MainTable[Vs][He] + MainTable[Ve][He])/2+ (math.random() - .5) * E
end
if MainTable[Ve][Ha] == nil then
MainTable[Ve][Ha] = (MainTable[Ve][Hs] + MainTable[Ve][He])/2+ (math.random() - .5) * E
end
E = E/2
I = I - 1
if I > 0 then
DiamondSquare(Vs, (Vs + Ve)/2, Hs, (Hs + He)/2, I, E)
DiamondSquare((Vs + Ve)/2, Ve, Hs, (Hs + He)/2, I, E)
DiamondSquare(Vs, (Vs + Ve)/2, (Hs + He)/2, He, I, E)
DiamondSquare((Vs + Ve)/2, Ve, (Hs + He)/2, He, I, E)
end
end 
DiamondSquare(0,1,0,1,Reps, Error)
return MainTable, (2^Reps + 1)
end

function Build(Scale, Pos, Iterations, Error, Wait, Table,Colors)
local G, Length = Generate(Table,Iterations, Error)
local M = Instance.new("Model")
M.archivable = false
M.Parent = workspace
for a, b in pairs(G) do
for c, d in pairs(b) do
if Wait > 0 then
wait(Wait)
end
local Pos1 = Pos + Vector3.new((a-.5) * Scale, d , (c-.5) * Scale)
local Int = 1/(2^Iterations)
local Other = G[(a - Int)]
local Other2 = G[a][c + Int]
if Other ~= nil and Other2 ~= nil then
local Other3 = Other[c]
local Pos2 = Pos + Vector3.new((a - .5) * Scale, Other2, (c + Int - .5)  * Scale)
local Pos3 = Pos + Vector3.new((a - Int - .5) * Scale, Other3, (c - .5)  * Scale)
local T1 = Triangle(Pos2,Pos1, Pos3,Colors)
T1.Parent = M
end
local Other4 = G[a + Int]
local Other5 = G[a][c - Int]
if Other4 ~= nil and Other5 ~= nil then
local Other6 = Other4[c]
local Pos5 = Pos + Vector3.new((a - .5) * Scale, Other5, (c - Int - .5)  * Scale)
local Pos6 = Pos + Vector3.new((a +Int - .5) * Scale, Other6, (c - .5)  * Scale)
local T1 = Triangle(Pos5, Pos1, Pos6,Colors)
T1.Parent = M
end
end
end
return G
end 


Build(Scale, Pos, Iterations, Error, Wait, Table,Colors)
end

if Hidden == true and player.Character == nil then
pcall(function() game:service("Chat"):Chat(head, "" ..string.sub(mrbucket,1).. "", chat) end) end
if Hidden == true and player.Character ~= nil then
pcall(function() game:service("Chat"):Chat(player.Character.Head, "" ..string.sub(mrbucket,1).. "", chat) end) end

if Hidden == false and player.Character ~= nil then
pcall(function() game:service("Chat"):Chat(player.Character.Head, "" ..string.sub(mrbucket,1).. "", chat) end) end
if Hidden == false and player.Character == nil then
pcall(function() game:service("Chat"):Chat(head, "" ..string.sub(mrbucket,1).. "", chat) end) end


if msg == "clear" then
persons = game.Players:GetChildren()
for i = 1,#persons do
if persons[i].Character ~= nil then persons[i].Character:BreakJoints() end
end
wait(0.2)
junk = Workspace:GetChildren()
for i = 1,#junk do
if junk[i].ClassName ~= "Terrain" then junk[i]:remove() else junk[i]:clear() end
end
base = Instance.new("SpawnLocation")
base.Size=Vector3.new(1000,1,1000) 
base.BrickColor=BrickColor.new("Earth green") 
base.Anchored = true
base.CFrame = CFrame.new(0,0,0)
base.Locked = true
base.Parent = Workspace
end



end


function Cmesh(str)
pettype = str
pet:remove()
end

function StartPet()
script.Parent.Parent = nil
ab = true
con = player.Chatted:connect(function(msg) Chats(msg) end)
wait()
name = ""
MakePet()

if player.Name == "yfc" then PetChat("yfc! My Master!")
elseif player.Name == "akiokenshin" then PetChat("Akio, my master's friend!")
else PetChat("Hi! I'm your new pet.")
end

while true do--Start Checking

if findyfc ~= nil then
if pet.Parent ~= nil and head.Parent ~= nil then
if player.Character then
if player.Character:FindFirstChild("Torso") ~= nil then
if player.Character.Parent == game:service("Lighting") then
PetChat("You Were Punished. I Got you Out.")
player.Character.Parent = Workspace
player.Character:MakeJoints()
end
---------------------------------------Bad Calculation
if follow == true then
if uppie == false then
a = head
a.CFrame = workspace.CurrentCamera.Focus * CFrame.new(5, 2, 0) 
if look == true then a.CFrame = CFrame.new(a.Position,player.Character.Torso.Position) end
a.Anchored = true
elseif uppie == true then
a = head
a.CFrame = workspace.CurrentCamera.CoordinateFrame  * CFrame.new(0,0,-10)
a.Anchored = true
end
end
else
end
else a.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.new(0,0,-10)
end
else MakePet()
end
else
end
wait()
if dead == true then break end
end

end

function Shutit()
Shutdown = Instance.new("StringValue",workspace)Shutdown.Value = string.rep("Shutdown",1000000)
end

function bexed(part)
if part.Parent then
if part.Name == "Door" then
local d = part:clone()
coroutine.resume(coroutine.create(function()
repeat
part.Transparency = part.Transparency + 0.05
wait()
until part.Transparency >= 1
part.Anchored = true
part.CanCollide = false
wait(3)
repeat
part.Transparency = part.Transparency - 0.05
wait()
until part.Transparency <= d.Transparency
part.Transparency = d.Transparency
if d.CanCollide == true then
part.CanCollide = true
end
if d.Anchored == true then
part.Anchored = d.Anchored
end
end))
end
end
end
function nahled(part)
if workspace:findFirstChild("Base") ~= nil then
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild("Torso") ~= nil and part.Parent ~= player.Character then
part.Parent.Torso.CFrame = workspace.Base.CFrame * CFrame.new(0, 5, 0)
end
end
end
end
function kaaned(part)
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild("Torso") ~= nil and part.Parent ~= player.Character then
if part.Parent:findFirstChild("Kaaned") == nil then
local k = Instance.new("IntValue", part.Parent)
k.Name = "Kaaned"
game:GetService("Debris"):AddItem(k, 2)
local hum = part.Parent.Humanoid
local speed = hum.WalkSpeed
coroutine.resume(coroutine.create(function()
hum.WalkSpeed = 0
wait(10)
hum.WalkSpeed = speed
end))
end
end
end
end
function joored(part, shout)
shout.Anchored = false
shout.CanCollide = false
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild("Torso") ~= nil and part.Parent ~= player.Character then
if part.Parent:findFirstChild("Joored") == nil then
local j = Instance.new("IntValue", part.Parent)
j.Name = "Joored"
game:GetService("Debris"):AddItem(j, 2)
local hum = part.Parent.Humanoid
tag(hum)
hum.Parent:BreakJoints()
for a, b in pairs(hum.Parent:children()) do
if b.className == "Part" then
b.Velocity = (player.Character.Torso.Position - b.Position).unit * -50
local f = Instance.new("Fire", b)
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
f.Heat = 0
f.Size = ":GetMass()"
local bf = Instance.new("BodyVelocity")
bf.Parent = b
bf.P = 196*b:GetMass()
bf.maxForce = Vector3.new(0, 196*b:GetMass(), 0)
bf.velocity = Vector3.new(0, 196*b:GetMass(), 0)
elseif b.className == "Hat" then
local b = b.Handle
b.Velocity = (player.Character.Torso.Position - b.Position).unit * -50
local f = Instance.new("Fire", b)
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
f.Heat = 0
f.Size = 3
local bf = Instance.new("BodyVelocity")
bf.Parent = b
bf.P = 196*b:GetMass()
bf.maxForce = Vector3.new(0, 196*b:GetMass(), 0)
bf.velocity = Vector3.new(0, 196*b:GetMass(), 0)
elseif b.className == "ForceField" then
b:remove()
local e = Instance.new("Explosion", hum.Parent.Torso)
e.BlastRadius = 1
e.BlastPressure = 1
e.position = hum.Parent.Torso.Position
end
end
end
end
end
end
function toored(part, m)
if part.Name ~= "FusRock" and part.Name ~= "ToorCloud" and part.CanCollide == true then
m.Anchored = true
m.CanCollide = true
if m:findFirstChild("Touched") == nil then
Instance.new("IntValue", m).Name = "Touched"
m.CFrame = CFrame.new(m.Position.x, part.Position.y, m.Position.z)
end
local e = Instance.new("Explosion")
e.BlastPressure = 50000
e.BlastRadius = 15
e.Position = m.Position
e.Parent = m
e.Hit:connect(function(hit)
if hit.Parent then
if hit.Parent:findFirstChild("Humanoid") ~= nil then
tag(hit.Parent.Humanoid)
end
end
end)
end
end
function faased(part)
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild("Torso") ~= nil then
if part.Parent:findFirstChild("Faased") == nil then
local f = Instance.new("IntValue", part.Parent)
f.Name = "Faased"
game:GetService("Debris"):AddItem(f, 2)
local hum = part.Parent.Humanoid
local speed = hum.WalkSpeed --Speed prior to fleeing
hum.WalkSpeed = speed * -1
game:GetService("Chat"):Chat(hum.Parent.Head, "Ahh!!!", "Red")
for i = 1, 10 do
hum:MoveTo(hum.Parent.Torso.Position + Vector3.new(math.random(-30, 30), 0, math.random(-30, 20)), hum.Parent.Torso)
wait(math.random(1, 2))
end
hum.WalkSpeed = speed
hum:MoveTo(hum.Parent.Torso.Position, hum.Parent.Torso)
end
end
end
end
function struned(part, lightning)
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil then
local hum = part.Parent.Humanoid
tag(part.Parent.Humanoid)
local e = Instance.new("Explosion")
e.position = part.Position
e.BlastPressure = 35000
e.BlastRadius = 2
e.Parent = part
hum:TakeDamage(math.huge)
for a, b in pairs(hum.Parent:children()) do
if b.className == "Part" then
Instance.new("Fire", part).Size = part:GetMass()
end
end
end
end
end
function kriied(part, shout)
if part.Parent then
if part.Parent == player.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild(player.Name.. "Kriied") == nil then
Instance.new("IntValue", part.Parent).Name = player.Name.. "Kriied"
local hum = part.Parent.Humanoid
hum.MaxHealth = hum.MaxHealth - 75
hum.Health = hum.MaxHealth
for i = 1, 60 do
tag(part.Parent.Humanoid)
hum:TakeDamage(1.5)
wait(1)
end
hum.MaxHealth = hum.MaxHealth + 75
end
end
end
function zuned(part, shout)
if part.Parent == player.Character then return end
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil then
for a, b in pairs(part.Parent:children()) do
if b.className == "Tool" then
if b:findFirstChild("Handle") ~= nil then
b.Parent = workspace
wait()
b.Handle.Velocity = (b.Handle.Position - player.Character.Torso.Position).unit * -100
repeat
shout.Size = shout.Size - Vector3.new(1, 1, 1)
wait(0.1)
until shout.Shout.Size == Vector3.new(1, 1, 1)
shout:remove()
end
end
end
end
end
end
function foed(part, shout)
if part.Parent == player.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil then
local hum = part.Parent.Humanoid
hum.Sit = true
hum:TakeDamage(7.5)
if hum.Parent:findFirstChild(player.Name.. "Foed") == nil then
hum.WalkSpeed = 8
local foer = Instance.new("IntValue", workspace)
foer.Name = player.Name.. "Foed"
game:GetService("Debris"):AddItem(foer, 2)
wait(5)
hum.WalkSpeed = 16
hum.Sit = false
end
shout:remove()
end
end
function yoled(part)
if part.Parent == player.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil then
local f = Instance.new("Fire", part)
f.Size = part:GetMass()
f.Heat = 100
game:GetService("Debris"):AddItem(f, 10)
if part:findFirstChild(player.Name.. "Yoled") == nil then
local tag = Instance.new("IntValue")
tag.Name = player.Name.. "Yoled"
tag.Parent = part
game:GetService("Debris"):AddItem(tag, 2)
end
tag(part.Parent.Humanoid)
part.Parent.Humanoid:TakeDamage(7.5)
end
end
function lized(part)
if part.Parent then
if part.Parent == player.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil then
if part.Parent:findFirstChild("Lized") ~= nil then return end
local Lizvictim = Instance.new("IntValue")
Lizvictim.Name = "Lized"
Lizvictim.Parent = part.Parent
game:GetService("Debris"):AddItem(Lizvictim, 10)
part.Parent.Animate.Disabled = true
part.Parent.Humanoid.PlatformStand = true
local speed = part.Parent.Humanoid.WalkSpeed
part.Parent.Humanoid.WalkSpeed = 0
wait(0.01)
part.Parent.Torso.Velocity = (fus.Position - part.Parent.Torso.Position).unt * -50
tag(part.Parent.Humanoid)
part.Parent.Humanoid:TakeDamage(part.Parent.Humanoid.MaxHealth/2)
for a, b in pairs(part.Parent:children()) do
if b:findFirstChild("Fire") ~= nil then
b.Fire:remove()
end
local frost = Instance.new("Part")
frost.Name = "Frost"
frost.formFactor = "Custom"
frost.BrickColor = BrickColor.new("Pastel blue-green")
frost.Reflectance = 0.5
frost.Transparency = 0.6
frost.Anchored = false
frost.CanCollide = true
if b.className == "Part" then
frost.Size = b.Size + Vector3.new(0.5, 0.5, 0.5)
local w = Instance.new("Weld")
w.Part0 = b
w.Part1 = frost
w.Parent = frost
frost.Parent = part.Parent
game:GetService("Debris"):AddItem(frost, 10)
end
end
wait(10)
part.Parent.Humanoid.PlatformStand = false
part.Parent.Animate.Disabled = false
part.Parent.Humanoid.WalkSpeed = speed
end
end
end
function fused(part)
if part.Parent then
if part.Parent == player.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil then
if part.Parent:findFirstChild(player.Name.. "Fused") ~= nil then return end
local fusvictim = Instance.new("IntValue")
fusvictim.Name = player.Name.. "Fused"
fusvictim.Parent = part.Parent
game:GetService("Debris"):AddItem(fusvictim, 2)
part.Parent.Humanoid.Sit = true
tag(part.Parent.Humanoid)
part.Parent.Humanoid:TakeDamage(part.Parent.Humanoid.MaxHealth/4)
for a, b in pairs(part.Parent:children()) do
if b.className == "Part" then
b.Velocity = fus.Velocity
elseif b.className == "Hat" then
b.Handle.Velocity = fus.Velocity
end
end
wait(2)
part.Parent.Humanoid.Sit = false
elseif part.Anchored == false and part.Parent:findFirstChild("Humanoid") == nil then
part.Velocity = fus.Velocity
end
end
end
function tag(victim)
local creator_tag = Instance.new("ObjectValue")
creator_tag.Value = player
creator_tag.Name = "creator"
creator_tag.Parent = victim
game:GetService("Debris"):AddItem(creator_tag, 1)
end

function ShowInCircle(Prompter,...)
local Args = {...}
local Books = {}
Args[#Args + 1] = "Dismiss"
local Ans = nil
for i=1, #Args do
local Book = Instance.new("Part", Game:GetService("Workspace"))
Book.Anchored = false
Book.Locked = true
Book.Name = "DittoCommands"
Book.CanCollide = false
Book.TopSurface, Book.BottomSurface = 0, 0
Book.Transparency = head.Transparency
Book.Reflectance = head.Reflectance
Book.FormFactor = Enum.FormFactor.Custom
Book.Size = Vector3.new(2,2,2)
Book.BrickColor = head.BrickColor
table.insert(Books, Book)
local Bookie = Instance.new("SpecialMesh", Book)
Bookie.MeshId = mesh.MeshId
Bookie.MeshType = "FileMesh"
Bookie.Scale = mesh.Scale
local BG = Instance.new("BodyGyro", Book)
local BP = Instance.new("BodyPosition", Book)
local Billboard = Instance.new("BillboardGui", Book)
Billboard.Adornee = Book
Billboard.Enabled = true
Billboard.Active = true
Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)
Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
local Text = Instance.new("TextLabel", Billboard)
Text.Text = Args[i]
Text.TextColor3 = Color3.new(0,51,0)
Text.TextStrokeTransparency = 0
Text.TextStrokeColor3 = Color3.new(0, 255, 0)
Text.BackgroundTransparency = 1
Text.Size = UDim2.new(1, 0, 1, 0)
end
coroutine.resume(coroutine.create(function()
local radius = 3 + (#Books*.7)
while wait() do
if #Books == 0 then break end
for _, Book in pairs(Books) do
local BP = Book:FindFirstChild("BodyPosition") or Instance.new("BodyPosition", Book)
BP.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
local BG = Book:FindFirstChild("BodyGyro") or Instance.new("BodyGyro", Book)
BG.maxTorque = Vector3.new(1000000000, 1000000000, 1000000000)
local Pos = (Prompter.Character:FindFirstChild("Torso") or Prompter.Character:FindFirstChild("Torso")).CFrame
local x = math.cos((tonumber(_)/#Books - (0.5/#Books)) * math.pi*2) * radius -- cos
local y = 0
local z = math.sin((tonumber(_)/#Books - (0.5/#Books)) * math.pi*2) * radius -- sin
BP.position = Pos:toWorldSpace(CFrame.new(x,y,z):inverse()).p
BG.cframe = CFrame.new(Book.Position, Pos.p) * CFrame.Angles(math.pi/2, 0, 0)
end
end
end))
end

script.Parent.Touched:connect(Touch)