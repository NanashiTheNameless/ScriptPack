if not script.Parent:IsA("Tool") then
	NewTool=Instance.new("Tool")
	NewTool.GripForward=Vector3.new(-1, 0, 0)
	NewTool.GripPos=Vector3.new(0, 0, -2.35)
	NewTool.GripRight=Vector3.new(0, 1, 0)
	NewTool.GripUp=Vector3.new(0, 0, 1)
	NewTool.ToolTip=""
	NewTool.Name="Tempest Blade"
	NewTool.TextureId=""
	NewTool.Archivable=false
	NewTool.CanBeDropped=false
	NewTool.Enabled=true
	handle=Instance.new("Part", NewTool)
	handle.BrickColor=BrickColor.new("Dark stone grey")
	handle.Material="Plastic"
	handle.Reflectance=0.7
	handle.Transparency=0
	handle.Name="Handle"
	handle.Position=Vector3.new(0, 0, 0)
	handle.RotVelocity=Vector3.new(1, 1, 1)
	handle.Velocity=Vector3.new(0, 0, 0)
	handle.Anchored=false
	handle.Archivable=false
	handle.CanCollide=true
	handle.Locked=true
	handle.Elasticity=0.5
	handle.FormFactor="Custom"
	handle.Friction=0.3
	handle.Shape="Block"
	handle.Size=Vector3.new(0.75, 0.33, 4.43)
	handle.BackParamA=-0.5
	handle.BackParamB=0.5
	handle.BackSurfaceInput="NoInput"
	handle.BottomParamA=-0.5
	handle.BottomParamB=0.5
	handle.BottomSurfaceInput="NoInput"
	handle.FrontParamA=-0.5
	handle.FrontParamB=0.5
	handle.FrontSurfaceInput="NoInput"
	handle.LeftParamA=-0.5
	handle.LeftParamB=0.5
	handle.LeftSurfaceInput="NoInput"
	handle.RightParamA=-0.5
	handle.RightParamB=0.5
	handle.RightSurfaceInput="NoInput"
	handle.TopParamA=-0.5
	handle.TopParamB=0.5
	handle.TopSurfaceInput="NoInput"
	handle.BackSurface="Smooth"
	handle.BottomSurface="Smooth"
	handle.FrontSurface="Smooth"
	handle.LeftSurface="Smooth"
	handle.RightSurface="Smooth"
	handle.TopSurface="Smooth"
	handlemesh=Instance.new("SpecialMesh", handle)
	handlemesh.MeshId="http://www.roblox.com/asset/?id=68253413 "
	handlemesh.MeshType="FileMesh"
	handlemesh.Name="Mesh"
	handlemesh.Offset=Vector3.new(0, 0, 0)
	handlemesh.Scale=Vector3.new(0.6, 0.6, 0.6)
	handlemesh.TextureId="http://www.roblox.com/asset/?id=68253521 "
	handlemesh.VertexColor=Vector3.new(1, 1, 1)
	handlemesh.Archivable=false
	function NewAnim(Id, Name)
		NewAnimation=Instance.new("Animation", NewTool)
		NewAnimation.AnimationId=Id
		NewAnimation.Name=Name
	end
	NewAnim("http://www.roblox.com/Asset?ID=54584713", "AxeSlash")
	NewAnim("http://www.roblox.com/Asset?ID=48138189", "HoldAnim")
	NewAnim("http://www.roblox.com/Asset?ID=45873069", "LungeSlash")
	NewAnim("http://www.roblox.com/Asset?ID=68484538", "SlashAnim")
	NewAnim("http://www.roblox.com/Asset?ID=68390013", "SlashAnim2")
	NewAnim("http://www.roblox.com/Asset?ID=48146273", "SwingAnim")
	NewAnim("http://www.roblox.com/Asset?ID=68387894", "SwordWalk")
	NewAnim("http://www.roblox.com/Asset?ID=68387734", "UnfoldAnim")
	NewAnim("http://www.roblox.com/Asset?ID=71379944", "UpperSlash")
	function NewSound(Id)
		game:GetService("ContentProvider"):Preload(Id)
	end
	NewSound("http://www.roblox.com/asset/?id=2974000")
	NewSound("http://www.roblox.com/asset/?id=1369158")
	NewSound("http://www.roblox.com/sounds/HalloweenThunder.wav")
	NewSound("http://www.roblox.com/asset/?id=45941812")
	NewSound("http://www.roblox.com/sounds/unsheath.wav")
	script.Parent=NewTool
	script.Disabled=true
	script.Disabled=false
	NewTool.Parent=game.Players.LocalPlayer.Character
end

function Add(Item, Delay)
game:GetService("Debris"):AddItem(Item, Delay)
end

InUse=false
Special=true
KeyDownH=false
KeyDownG=false

tool = script.Parent;
handle = tool.Handle;
script.Parent=nil;
keys = {}

function getPlayer()
	return tool.Parent:IsA("Backpack") and tool.Parent.Parent.Parent or game.Players:GetPlayerFromCharacter(tool.Parent)
end

function onHandleTouched(other)
	local human = other.Parent:FindFirstChild("Humanoid")
	if human and not human:IsDescendantOf(game.Players.LocalPlayer.Character) then for i=1, 15 do human:TakeDamage(0.6) wait() end end
	local player = game.Players:GetPlayerFromCharacter(other.Parent)
	if not player then return end
end

Humanoid=game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
Slash3=Humanoid:LoadAnimation(tool.AxeSlash)
Hold=Humanoid:LoadAnimation(tool.HoldAnim)
Lunge=Humanoid:LoadAnimation(tool.LungeSlash)
Slash=Humanoid:LoadAnimation(tool.SlashAnim)
Slash2=Humanoid:LoadAnimation(tool.SlashAnim2)
Swing=Humanoid:LoadAnimation(tool.SwingAnim)
Walk=Humanoid:LoadAnimation(tool.SwordWalk)
Unfold=Humanoid:LoadAnimation(tool.UnfoldAnim)
Slash4=Humanoid:LoadAnimation(tool.UpperSlash)

function onActivated()
	if KeyDownG==true then
		InUse=true
		position=mouse.hit.p
		Instance.new("Explosion", Workspace).Position=position
		wait(3)
		InUse=false
	end
	if not InUse==true and KeyDownG==false then
		InUse=true
		random=math.random(1, 3)
		if random==1 then
			Swing:Play()
			Sound=Instance.new("Sound", tool.Parent.Head)
			Sound.SoundId="http://www.roblox.com/asset/?id=45941812"
			Sound:Play()
			print('Swing')
			wait(1.25)
			Sound:Destroy()
			InUse=false
			elseif random==2 then
			Slash3:Play()
			print('Slash')
			wait(1.4)
			InUse=false
			elseif random==3 then
			Slash4:Play() print('Upper slash')
			wait(1.5)
			InUse=false
			else InUse=false error()
		end
	end
end

function onDeactivated()
end

function onKeyDown(key)
if key=="q" and not InUse==true then
InUse=true
print('Special1')
game.Players.LocalPlayer.Character.Torso.Anchored=true
WS=game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=0
local LightningS=Instance.new("Sound", tool.Parent:FindFirstChild("Head"))
LightningS.SoundId="rbxasset://sounds/HalloweenThunder.wav"
local lightning=Instance.new("Part")
lightning.Anchored=true
lightning.BrickColor=BrickColor.new("New Yeller")
lightning.Size=Vector3.new(0, 0, 0)
lightning.CFrame=CFrame.new(tool.Parent.Torso.CFrame.X+14, tool.Parent.Torso.CFrame.Y+383, tool.Parent.Torso.CFrame.Z, 1, 0, 0, 0, 0, 1, 0, -1, 0)
local LightningM=Instance.new("SpecialMesh", lightning)
LightningM.MeshId="http://www.roblox.com/asset/?id=65419828"
LightningM.MeshType="FileMesh"
LightningM.Name="Mesh"
LightningM.Offset=Vector3.new(0, 0, 0)
LightningM.Scale=Vector3.new(10, 10, 50)
LightningM.TextureId=""
LightningM.VertexColor=Vector3.new(1, 1, 1)
LightningM.Archivable=false
lightning.Parent=tool.Parent
LightningS:Play()
Players=game.Players:GetPlayers()
for i=1, #Players do
if Players[i]==game.Players.LocalPlayer then Player=nil else Player=Players[i] end
if Player then
if not Players[i].Character then return end
if not Players[i].Character:FindFirstChild("Torso") then return end
local magnitude = (Players[i].Character.Torso.Position - game.Players.LocalPlayer.Character.Torso.Position).magnitude
if magnitude<=25 then Players[i].Character:BreakJoints() end
end
end
wait(0.5)
lightning.CFrame=CFrame.new(tool.Parent.Torso.CFrame.X-14, tool.Parent.Torso.CFrame.Y+383, tool.Parent.Torso.CFrame.Z, 1, 0, 0, 0, 0, 1, 0, -1, 0)
LightningM.Scale=Vector3.new(-10, 10, 50)
Players=game.Players:GetPlayers()
for i=1, #Players do
if Players[i]==game.Players.LocalPlayer then Player=nil else Player=Players[i] end
if Player then
if not Players[i].Character then return end
if not Players[i].Character:FindFirstChild("Torso") then return end
local magnitude = (Players[i].Character.Torso.Position - game.Players.LocalPlayer.Character.Torso.Position).magnitude
if magnitude<=25 then Players[i].Character:BreakJoints() end
end
end
wait(1.5)
LightningS:Destroy()
LightningS=nil
lightning:Destroy()
lightning=nil
LightningM=nil
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=WS
WS=nil
game.Players.LocalPlayer.Character.Torso.Anchored=false
InUse=false
wait(3)
Specal=true
elseif key=="e" and not InUse==true then
InUse=true
print('Special2')
game.Players.LocalPlayer.Character.Torso.Anchored=true
WS=game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=0
game:GetService("Chat"):Chat(game.Players.LocalPlayer.Character.Head,"RAGE OF FURY!",Enum.ChatColor.Red)
wait(0.2)
LaserS=Instance.new("Sound", tool.Parent:FindFirstChild("Head"))
LaserS.SoundId="http://www.roblox.com/asset/?id=2974000"
Laser=Instance.new("Part", game.Players.LocalPlayer.Character)
Laser.Anchored=true
Laser.CanCollide=false
Laser.Shape="Ball"
Laser.TopSurface="Smooth"
Laser.BottomSurface="Smooth"
Laser.Size=Vector3.new(25, 25, 25)
Laser.BrickColor=BrickColor.new("Really red")
Laser.Transparency=0.4
Laser.CFrame=game.Players.LocalPlayer.Character.Torso.CFrame
LaserS:Play()
Players=game.Players:GetPlayers()
for i=1, #Players do
if Players[i]==game.Players.LocalPlayer then Player=nil else Player=Players[i] end
if Player then
if not Players[i].Character then return end
if not Players[i].Character:FindFirstChild("Torso") then return end
local magnitude = (Players[i].Character.Torso.Position - game.Players.LocalPlayer.Character.Torso.Position).magnitude
if magnitude<=25 then Players[i].Character:BreakJoints() end
end
end
wait(2)
LaserS:Destroy()
Laser:Destroy()
LaserS=nil
Laser=nil
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=WS
WS=nil
game.Players.LocalPlayer.Character.Torso.Anchored=false
InUse=false
elseif key=="h" and not InUse==true then InUse=true KeyDownH=true
elseif key=="g" and not InUse==true then InUse=true KeyDownG=true
end
end
while KeyDownH==true do
wait()
if game.Players.LocalPlayer.Character.Humanoid.Health<game.Players.LocalPlayer.Character.Humanoid.MaxHealth-0.5 then
game.Players.LocalPlayer.Character.Humanoid.Health=game.Players.LocalPlayer.Character.Humanoid.Health+0.5
else game.Players.LocalPlayer.Character.Humanoid.Health=game.Players.LocalPlayer.Character.Humanoid.MaxHealth
end
end

function onKeyUp(key)
if key=="h" and InUse==true then InUse=false KeyDownH=false
elseif key=="g" and InUse==true then InUse=false KeyDownG=false
end
end

function onEquipped(m)
	mouse=m
	Hold:Play()
	Sound=Instance.new("Sound", tool.Parent.Head)
	Sound.SoundId="http://www.roblox.com/asset/?id=45941812"
	Sound:Play()
	wait(1.5)
	Sound:Destroy()
end

function onUnequipped()
	mouse=nil
	Hold:Stop()
	Lunge:Stop()
	Slash:Stop()
	Slash2:Stop()
	Swing:Stop()
	Walk:Stop()
	Unfold:Stop()
	Slash3:Stop()
	Sound=Instance.new("Sound", game.Players.LocalPlayer.Character.Head)
	Sound.SoundId="rbxasset://sounds/unsheath.wav"
	Sound:Play()
	Add(Sound, 1)
end

tool.Equipped:connect(function (m)
	m.KeyDown:connect(function (k) keys[k] = true onKeyDown(k) end)
	m.KeyUp:connect(function (k) keys[k] = nil onKeyUp(k) end)
	equipped = true onEquipped(m)
end)
tool.Unequipped:connect(function () equipped = false onUnequipped() end)
tool.Activated:connect(function () holding = true onActivated() end)
tool.Deactivated:connect(function () holding = false onDeactivated() end)
handle.Touched:connect(function (...) onHandleTouched(...) end)

--mediafire gtfo password