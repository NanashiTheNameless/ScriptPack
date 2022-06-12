--[[Improved by Cit, You can press a key to respawn, and you don't lose your animation.]]
--[[Good for places with lots of explosions or things that would otherwise kill you in normal math.huge godmode.]]

--[[ Press p to turn on godmode. Quickly doubletap p to respawn. ]]



----------------------------------------------

local p = game.Players.LocalPlayer
local char = game.Players.LocalPlayer.Character
local isReset = false
local mouse = p:GetMouse()
local torso = char.Torso
local torw = char.HumanoidRootPart.RootJoint
local char_hum = char:WaitForChild'Humanoid'
local selfname = game.Players.LocalPlayer.Name
isGod = false

----------------------------------------------

mouse.KeyDown:connect(function(k)
	if k=='p' then
		if isGod == false then
		isGod = true
		

		
char_hum:Destroy()
local fakehum=Instance.new('Humanoid',char)
fakehum:SetStateEnabled(Enum.HumanoidStateType.Dead,false)
char_hum = fakehum

wlds={}
for i,v in pairs(torso:children())do
    local cl = v:Clone()
    table.insert(wlds,cl)
end local clj = torw:Clone()

local con
function onDeath(h)
    -- for i,v in pairs(torso:children())do v:Destroy()end
	
    if h <= 0 then
    for i,v in pairs(wlds)do
        local cl = v:Clone()cl.Parent=torso
    end
    -- for i,v in pairs(char:children())do if v:IsA'BasePart'then v:MakeJoints()end end
    local cl=clj:Clone()cl.Parent=char
    char_hum.Health = 100
    -- con:disconnect()
    -- con=char_hum.HealthChanged:connect(function(h)onDeath(h)end)
    end
end
con = char_hum.HealthChanged:connect(function(h)onDeath(h)end)

wait(0.1)
char.Parent = game.Lighting
wait(0.1)
char.Parent = game.Workspace

print("Godded.")

		end
	end

end)
		
mouse.KeyDown:connect(function(k)
	if k=='p' then
		if isGod == true then
		isGod = false
		wlds = {}
		print("Un-godded and respawned")
		game.Players.LocalPlayer.Character.Parent = game.Lighting
		p:LoadCharacter()
		local redo = script:Clone()
		redo.Parent = game.Players.LocalPlayer.Character
		script:Destroy()

		end
	end


end)