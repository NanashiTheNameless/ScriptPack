local lp = game.Players.LocalPlayer
local chr = lp.Character
local mouse = lp:GetMouse()
local euler = CFrame.fromEulerAnglesXYZ
local rad = math.rad
local trso = chr.Torso
local la = Instance.new("Weld",chr['Left Arm'])
la.Part0=chr['Left Arm']
la.Part1=chr.Torso
la.C0=CFrame.new(1.5,0,0)
local rot = 0

local ContentProvider = Game:GetService("ContentProvider")
 
local function LoadAssets(AssetList)
	-- Takes an asset list and preloads it. Will not wait for them to load. 
 
	for _, AssetId in pairs(AssetList) do
		ContentProvider:Preload("http://www.roblox.com/asset/?id=" .. AssetId)
	end
end

LoadAssets({203654824, 192187815, 179678714, 193107910, 187990139})




if chr:FindFirstChild("Shirt") then
chr.Shirt:destroy()
end

if chr:FindFirstChild("Pants") then
chr.Pants:destroy()
end

colors = chr['Body Colors']

colors.HeadColor = BrickColor.new("Brown")
colors.TorsoColor = BrickColor.new("Brown")
colors.LeftArmColor = BrickColor.new("Brown")
colors.RightArmColor = BrickColor.new("Brown")
colors.LeftLegColor = BrickColor.new("Brown")
colors.RightLegColor = BrickColor.new("Brown")


local face = chr.Head:FindFirstChild("face")

if face then
face.Texture = "http://www.roblox.com/asset/?id=187990139"
end

for i,v in pairs(chr:children()) do
	if v.ClassName == "Hat" then
		print(v.Name.." has been removed, #baldforbieber")
		v:destroy()
	end
end





local hd = Instance.new("Weld",chr.Head)
hd.Part0=chr.Head
hd.Part1=chr.Torso
hd.C0=CFrame.new(0,-1.5,0)


hum = chr.Humanoid



function CreateMesh(parent, id, x, y, z, texture)
local m=Instance.new("SpecialMesh", parent)
m.MeshType = "FileMesh"
m.MeshId="http://www.roblox.com/asset/?id="..id
if texture ~= nil then
m.TextureId="http://www.roblox.com/asset/?id="..texture
end
m.Scale = Vector3.new(x,y,z)
end

Microphone=function()
mic = Instance.new("Part", chr)
CreateMesh(mic, 43996479, 0.3, 0.3, 0.3, 43997070)
mic.Name = "Microphone"
mic.Locked = true
mic.CanCollide=true
mic.Size=Vector3.new(1,1,1)
micw = Instance.new("Weld",mic)
micw.Part0=mic
micw.Part1=chr['Left Arm']
micw.C0=CFrame.new(0,0,0)
micw.C1=euler(rad(0),rad(0),rad(0))
end

Hat=function()
hat = Instance.new("Part", chr)
CreateMesh(hat, 1028713, 1, 1, 1)
hat.Name = "Top hat"
hat.Locked = true
hat.BrickColor = BrickColor.new("Really black")
hat.CanCollide=true
hat.Size=Vector3.new(1,1,1)
hatw = Instance.new("Weld",hat)
hatw.Part0=hat
hatw.Part1=chr['Head']
hatw.C0=CFrame.new(0,-0.7,0)
hatw.C1=euler(rad(0),rad(0),rad(0))
end

Hat()
Microphone()


function Name(msg)
        if hat.Parent then
        pcall(function()
        local Gui = Instance.new('BillboardGui', hat)
        Gui.ExtentsOffset = Vector3.new(0,1.5,0)
        Gui.Size = UDim2.new(0,200,0,300)
        local Frame = Instance.new('Frame',Gui)
        Frame.BackgroundTransparency = 1
        Frame.Size = UDim2.new(1,0,1,0)
        local Txt = Instance.new('TextLabel',Frame)
        Txt.BackgroundTransparency = 1
        Txt.Size = UDim2.new(1,0,1,0)
        Txt.Font = 'ArialBold'
        Txt.FontSize = 'Size24'
        Txt.Text = msg
        Txt.TextColor3 = BrickColor.new("Brown").Color
        Txt.TextStrokeColor3 = Color3.new(0/255,0/255,0/255)
        Txt.TextStrokeTransparency = .5
        Txt.TextWrapped = true
        Txt.TextScaled = false
        end)
        else
        end
end

function Chat(msg) -- Credit to jillmiles1, kthxbye
        if hat.Parent then
        pcall(function()
		if hat:FindFirstChild("Fazbear Chat Gui") then
		hat['Fazbear Chat Gui']:destroy()
		end
        local Gui = Instance.new('BillboardGui', hat)
		Gui.Name = "Fazbear Chat Gui"
        Gui.ExtentsOffset = Vector3.new(0,3,0)
        Gui.Size = UDim2.new(0,200,0,300)
        local Frame = Instance.new('Frame',Gui)
        Frame.BackgroundTransparency = 1
        Frame.Size = UDim2.new(1,0,1,0)
        local Txt = Instance.new('TextLabel',Frame)
        Txt.BackgroundTransparency = 1
        Txt.Size = UDim2.new(1,0,1,0)
        Txt.Font = 'ArialBold'
		Txt.Name = "ChatGui"
        Txt.FontSize = 'Size24'
        Txt.Text = ''
        Txt.TextColor3 = BrickColor.new("Brown").Color
        Txt.TextStrokeColor3 = Color3.new(0/255,0/255,0/255)
        Txt.TextStrokeTransparency = .5
        Txt.TextWrapped = true
        Txt.TextScaled = false
        delay(wait(),function()
                for v = 1, #msg do
                        Txt.Text=string.sub(msg,1,v)
                        wait(.07)
                end;
                wait(1)
                for v = 1, #Txt.Text do
                        Txt.Text=string.sub(msg,-1,v)
                        wait(.05)
                end;
                Gui:remove()
        end)
        end)
        else
        end
end


local crouch = function()
 la.C1=euler(rad(-90),rad(0),rad(0))
 hd.C1=euler(rad(0),rad(-3),rad(10))
 micw.C1=euler(rad(0),rad(0),rad(0))
 micw.C0=CFrame.new(0,-1,0)
 la.C0=CFrame.new(1.5,-.5,-.5)
end

local stand = function()
 la.C1=euler(rad(0),rad(0),rad(0))
  hd.C1=euler(rad(0),rad(0),rad(0))
  micw.C1=euler(rad(180),rad(0),rad(0))
 la.C0=CFrame.new(1.5,0,0)
 micw.C0=CFrame.new(0,-1,0)
end

function PlaySound(id, pitch, looped)
        epicsound = Instance.new("Sound")
        epicsound.Name = "FazbearSound"
  epicsound.SoundId = "rbxassetid://"..id
     epicsound.Volume = 1
     epicsound.Pitch = pitch
	 if looped == nil then
	 looped = true
	 else
	 looped = looped
	 end
	 wait()
  epicsound.Looped = looped
  epicsound.Parent = workspace
  if epicsound.SoundId=="rbxassetid://tt" then -- TELL ME, TELL ME, WHERE DA FREAKS AT!
      epicsound.SoundId="rbxassetid://181158033"
  elseif epicsound.SoundId=="rbxassetid://fabulous" then -- FA-FA-FABULOUS!
      epicsound.SoundId="rbxassetid://191819419"
     elseif epicsound.SoundId=="rbxassetid://ufdb" then -- ultimate final death battle(fairy tail XD)
         epicsound.SoundId="rbxassetid://153085393"
        elseif epicsound.SoundId=="rbxassetid://nnm" then
           epicsound.SoundId="rbxassetid://210189234" 
       elseif epicsound.SoundId=="rbxassetid://tun" then -- tunak tunak tun
           epicsound.SoundId="rbxassetid://162682002"
       elseif epicsound.SoundId=="rbxassetid://zelda" then
           epicsound.SoundId="rbxassetid://158215156"
       elseif epicsound.SoundId=="rbxassetid://cc" then
           epicsound.SoundId="rbxassetid://177080835"
     end
  es=epicsound:clone()
  es:Stop()
  es.Parent = chr.Torso
  wait()
  es:Play()
end

hum.WalkSpeed=50
hum.MaxHealth = math.huge
hum.Health = math.huge

 
lp.Chatted:connect(function(msg)
        Chat(msg)
end)

goldie=true
crouch()

function StopMusic()
	if chr.Torso:FindFirstChild("FazbearSound") then
		if chr.Torso.FazbearSound.ClassName == "Sound" then
			chr.Torso.FazbearSound:Stop()
			wait()
			chr.Torso.FazbearSound:Destroy()
		end
	end
end

Name("Freddy Fazbear")


mouse.KeyDown:connect(function(key)
if key == "g" then
if goldie==false then
goldie=true
crouch()
elseif goldie==true then
goldie=false
stand()
end
elseif key == "r" then -- Plays a song
StopMusic()
PlaySound(203654824, 1, true)
Chat("Now Playing: The Show Must Go On - FNAF | 203654824")
elseif key == "f" then -- Plays a song
StopMusic()
PlaySound(192187815, 1, true)
Chat("Now Playing: Fnaf 2: It's Been so Long | 192187815")
elseif key == "l" then -- Plays a laugh
StopMusic()
PlaySound(179678714, 0.39, false)
Chat("*laugh*")
elseif key == "v" then -- Plays a scream
StopMusic()
PlaySound(193107910, 1, false)
Chat("*screams*")
elseif key == "q" then -- Stops any sound(s) playing from your torso
StopMusic()
Chat("All sounds stopped!")
end
end)



hum.Died:connect(function()
	es.Pitch = 10
	wait()
	es:Pause()
	es:Stop()
	es.Name = "Ded"
	wait()
	es:Destroy()
end)