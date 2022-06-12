nommer = "yfc"

------ DECLARATIONS ------

local nomplyr = game.Players:FindFirstChild(nommer)

local nomchar = nomplyr.Character

local BillboardGui = Instance.new("BillboardGui")

BillboardGui.Parent = nomchar

BillboardGui.Adornee = BillboardGui.Parent:FindFirstChild("Head")

BillboardGui.Size = UDim2.new(1, 0, 1, 0)

BillboardGui.StudsOffset = Vector3.new(0, 3, 0)

local TextLabel = Instance.new("TextLabel")

TextLabel.Parent = BillboardGui

TextLabel.Position = UDim2.new(0, 0, 0, 0)

TextLabel.Size = UDim2.new(1, 0, 1, 0)

TextLabel.FontSize = "Size14"

TextLabel.TextColor3 = nomchar.Head.Color

TextLabel.BackgroundTransparency = 1

TextLabel.Text = "MunchMunchMan"

local sound = Instance.new("Sound")

sound.Parent = nomchar

sound.SoundId = "http://www.roblox.com/asset/?id=12544690"

sound.Pitch = 2

sound.Volume = 2

sound.Name = "Noms"

nomchar.Humanoid.WalkSpeed = 50

local flame = Instance.new("Fire")

flame.Color = Color3.new(22,1,22) -- DOUBLE RAAINBOOOWW

flame.Enabled = false

flame.Parent = nomchar.Torso

local base = Instance.new("Part")

local badflame = Instance.new("Fire")

badflame.Color = Color3.new(255,0,0)

badflame.Enabled = false

badflame.Parent = nomchar.Torso

badflame.Size = 13



------ SUIT ------

-- Suit stuff will go here! :3

local SuitHead = Instance.new("Part")

SuitHead.Parent = nomchar

SuitHead.Name = "NNCHead"

SuitHead.BrickColor = BrickColor.new("Institutional white")

SuitHead.CFrame = nomchar.Head.CFrame

local SHMesh = Instance.new("SpecialMesh")

SHMesh.Parent = SuitHead

SHMesh.MeshId = "http://www.roblox.com/asset/?id=21057410"

SHMesh.Scale = Vector3.new(1.05,1.05,1.05)

local SHWeld = Instance.new("Weld")

SHWeld.Parent = SuitHead

SHWeld.Part0 = SuitHead

SHWeld.Part1 = nomchar.Head

nomchar.Head.Transparency = 1



------ FUNCTIONS ------

function onTouched(part)

if part.Name ~= "Base" then

part:Destroy()

sound:Play()

flame.Enabled = true

local Speak = math.random(1, 40)

if Speak == 1 then

TextLabel.Text = " "..part.Name.." was very tasty! >:3"

elseif Speak == 2 then

TextLabel.Text = "FEEL MY TUNGSTEN WRATH! >:0"

elseif Speak == 3 then

TextLabel.Text = "*Belch*"

elseif Speak == 4 then

TextLabel.Text = "Buahahah! I eat your soul! >:3"

elseif Speak == 5 then

TextLabel.Text = "Nom nom nom~! :3"

elseif Speak == 6 then

TextLabel.Text = " "..part.Name.." was delicious! :0"

elseif Speak == 7 then

TextLabel.Text = "AHH! HOT HOT HOT! SPICY! D:"

badflame.Enabled = true

nomchar.Humanoid:TakeDamage(49.5069376)

wait(5)

badflame.Enabled = false

elseif Speak == 8 then

TextLabel.Text = "I own "..part.Name.."'s soul. ALL OF IT~!"

elseif Speak == 9 then

TextLabel.Text = "Blegh! D:"

elseif Speak == 10 then

TextLabel.Text = "Tasty tasty~!"

elseif Speak == 11 then

TextLabel.Text = "Hnnng... Indigestion! D8"

nomchar.Humanoid:TakeDamage(10)

wait(0.5)

nomchar.Humanoid:TakeDamage(10)

wait(0.5)

nomchar.Humanoid:TakeDamage(10)

elseif Speak == 12 then

TextLabel.Text = "Muahaha! >:3"

elseif Speak == 13 then

TextLabel.Text = "All your soul is belong to me!"

elseif Speak == 14 then

TextLabel.Text = "Sour! :c"

elseif Speak == 15 then

TextLabel.Text = "Tastes like chicken."

elseif Speak == 16 then

TextLabel.Text = "Pie!"

elseif Speak == 17 then

TextLabel.Text = "This would go great with a sprig of mint! :D" -- Because we're just that posh.

elseif Speak == 18 then

TextLabel.Text = "Needs salt."

elseif Speak == 19 then

TextLabel.Text = "Blech. Disgusting! >:("

elseif Speak == 20 then

TextLabel.Text = "Your soul. It is mine. c:"

elseif Speak == 21 then

TextLabel.Text = "Glomp! :3"--You cretin....

elseif Speak == 22 then

TextLabel .Text = "Wait...why am I eating plastic? >:U"

elseif Speak == 23 then

TextLabel.Text = "Yummy yummy in mah tummy! :3"

--elseif Speak == 24 then

--TextLabel.Text = "Who's next? >:D"

--nomchar.Head.BrickColor = BrickColor.new("Earth green")

--nomchar.Head.face.Texture = "http://www.roblox.com/asset/?id=65605836" --Lookie here, Pen; BodyColors wouldn't work, so I have to put in a color. Ok?

--wait(5)

--nomchar.Head.BrickColor = BrickColor.new("Pastel brown")

--nomchar.Head.face.Texture = "rbxasset://textures/face.png" -- I don't like this one, as it makes me look a bit stupid, let's make it get the previous face and the previous

--head colour.

--How? I can't figure out how.. :c

--We'll do it in a bit, when we're both online

elseif Speak == 24 then

TextLabel.Text = "Yum~!" -- Temporary

elseif Speak == 25 then

TextLabel.Text = "Munchy munch munch!"

elseif Speak == 26 then

TextLabel.Text = "Ooh...I need a side of fries.."

elseif Speak == 27 then

TextLabel.Text = "This would go great in a lasagna!..."

elseif Speak == 28 then

TextLabel.Text = "I regret nothing! D:<"

elseif Speak == 29 then

TextLabel.Text = "I am "..nommer..", destroyer of "..part.Name.."s!"

elseif Speak == 30 then

TextLabel.Text = "Food glorious food~!..."

elseif Speak == 31 then

TextLabel.Text = "RAWR!"

elseif Speak == 32 then

TextLabel.Text = "Ich essen "..part.Name.."! "..part.Name.." ist sehr gut!"

elseif Speak == 33 then

TextLabel.Text = "Eat ALL the "..part.Name.."s~!"

elseif Speak == 34 then

TextLabel.Text = "Honf snarf homm..."

elseif Speak == 35 then

TextLabel.Text = "C'est delicieux!"

elseif Speak == 36 then

TextLabel.Text = "UMG H4X!11!11!1!!!!111!"

elseif Speak == 37 then

TextLabel.Text = " "..nommer.." is not responsible for any damages upon "..part.Name.."."

elseif Speak == 38 then

TextLabel.Text = "Ja! Ich mag "..part.Name.."!"

elseif Speak == 39 then

TextLabel.Text = "If only my cat were here to taste this marvelous "..part.Name.." "

elseif Speak == 40 then

TextLabel.Text = "I want a return on this. D:"

end

nomchar.Humanoid.Health = nomchar.Humanoid.Health + 10

nomchar.Humanoid.MaxHealth = nomchar.Humanoid.MaxHealth + 5

wait(2)

TextLabel.Text = ""



flame.Enabled = false

end

end

nomchar.Torso.Touched:connect(onTouched)



--function onChatted(msg)

--end

--nomplyr.Chatted:connect(onChatted)