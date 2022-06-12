--Made by OpTic Wisdom/LikeATrollFace

game:GetObjects("rbxassetid://497382476")[1].Parent=game.Players.LocalPlayer.Backpack

BoomSound = Instance.new("Sound" ,game.Players.LocalPlayer.Backpack["Sword Execution"])
BoomSound.SoundId = "rbxasset://sounds/Rocket shot.wav"
BoomSound.Name = "Boom"
BeepSound = Instance.new("Sound" ,game.Players.LocalPlayer.Backpack["Sword Execution"])
BeepSound.SoundId = "http://www.roblox.com/asset/?id=94137771"
BeepSound.Name = "Beep"
SwordAnim = Instance.new("Animation" ,game.Players.LocalPlayer.Backpack["Sword Execution"])
SwordAnim.AnimationId = "http://www.roblox.com/Asset?ID=89289879"
SwordAnim.Name = "AxeSwing"







local Tool = game.Players.LocalPlayer.Backpack["Sword Execution"];

enabled = true
function onButton1Down(mouse)
	if not enabled then
		return
	end

	enabled = false
	mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"

	wait(1)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	enabled = true

end

function onEquippedLocal(mouse)

	if mouse == nil then
		print("Mouse not found")
		return 
	end

	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end


Tool.Equipped:connect(onEquippedLocal)

--[[Super Util]]--
function WaitForChild(parent,child)
	while not parent:FindFirstChild(child) do  wait(1/30) end
	return parent[child]
end

function MakeValue(class,name,value,parent)
	local temp = Instance.new(class)
	temp.Name = name
	temp.Value = value
	temp.Parent = parent
	return temp
end	

function TweenProperty(obj, propName, inita, enda, length)
	local startTime = tick()
	while startTime - tick()<length do
		obj[propName] = (startTime - tick())/length
		wait(1/30)
	end
	obj[propName] = enda	
end

local function weldBetween(a, b)
    local weld = Instance.new("ManualWeld")
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = CFrame.new()
    weld.C1 = b.CFrame:inverse() * a.CFrame
    weld.Parent = a
    return weld;
end

--[[Constants]]--
local COOLDOWN=.5
local SWING_COOLDOWN = 2.5
local DAMAGE = 99
--[[Workspace Variables]]--

local Tool = game.Players.LocalPlayer.Backpack["Sword Execution"]
local Handle = WaitForChild(game.Players.LocalPlayer.Backpack["Sword Execution"],'Handle')
local SwingAni = WaitForChild(Tool,'AxeSwing')
local SwingAniTrack = nil
local SwingSound = WaitForChild(Handle,'Swing')
local ExplodeSound = WaitForChild(Tool,'Boom')
local BeepSound = WaitForChild(Tool,'Beep')

local lastSwing = 0

--[[Script Variables]]--

local lastHit = tick()
local lastDamage = tick()
--[[Script Functions]]--

function flashColor(obj,color)
	if obj:IsA('Part') then
		obj.BrickColor = BrickColor.new(color)
	elseif obj:IsA('FileMesh') then
		obj.VertexColor=Vector3.new(color.r*3,color.g*3,color.b*3)
	end
	for _,i in pairs(obj:GetChildren()) do
		flashColor(i,color)
	end
end


Handle.Touched:connect(function(part)
	if part.Parent == Tool.Parent then return end
	if not part.Parent:FindFirstChild('Humanoid') then return end
	if part.Parent:FindFirstChild('ForceField') then return end
	if tick()-lastDamage < COOLDOWN then return end
	if tick()-lastSwing>SWING_COOLDOWN then return end
	lastDamage=tick()
	part.Parent.Humanoid:TakeDamage(DAMAGE)
	if not part.Parent:FindFirstChild('Head') then return end
	if part.Parent.Head.Transparency==1 then return end
	SwingSound:Play()
	lastHit=tick()
	local nhead=part.Parent.Head:Clone()
	for _,i in pairs(part.Parent:GetChildren()) do
		if i:IsA('Hat') and i:FindFirstChild('Handle') then
			local that =i.Handle
			that.Parent = nhead
			weldBetween(nhead,that)
			i:Destroy()
		end
	end
	
	part.Parent.Head.Transparency=1
	part.Parent.Head:ClearAllChildren()
	nhead.Velocity = Vector3.new(math.random()*25-15,25,math.random()*25-15)
	nhead.Parent = game.Workspace
	local nbeep = BeepSound:Clone()
	nbeep.Parent = nhead   
        salil = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)
        salil.Name = "salil"
        salil.Volume = 100
        salil.SoundId = "rbxassetid://403330704"
        salil:Play()
	for i=1,10,1 do
		flashColor(nhead,Color3.new(1,0,0))
		nbeep:Play()
		wait(1/i)
		flashColor(nhead,Color3.new(1,1,1))
		wait(1/i)
	end
	local nsound = ExplodeSound:Clone()
	nsound.Parent = nhead
	nsound:Play()
        salil:Pause()
        salil:Destroy()
	local explode = Instance.new('Explosion')
	explode.Position = nhead.CFrame.p
	explode.Parent = nhead
	game.Debris:AddItem(nhead,1)
end)


--[[Running Logic]]--

Tool.Activated:connect(function()
	if tick()-lastSwing<SWING_COOLDOWN then return end
	lastSwing = tick()
	if not SwingAniTrack then
		local player = Tool.Parent
		local humanoid = player:FindFirstChild('Humanoid')
		SwingAniTrack = humanoid:LoadAnimation(SwingAni)
	end
	SwingAniTrack:Play()	
end)

Tool.Unequipped:connect(function()
	if SwingAniTrack then
		SwingAniTrack:Stop()
		SwingAniTrack:Destroy()
	end
end)

