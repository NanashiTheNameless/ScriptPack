--   /$$$$$$  /$$$$$$ /$$      /$$ /$$      /$$  /$$$$$$  /$$$$$$$  /$$   /$$  /$$$$$$         /$$$$$$       /$$
--  /$$__  $$|_  $$_/| $$$    /$$$| $$  /$ | $$ /$$__  $$| $$__  $$| $$  /$$/ /$$__  $$       /$$__  $$    /$$$$
-- | $$  \ $$  | $$  | $$$$  /$$$$| $$ /$$$| $$| $$  \ $$| $$  \ $$| $$ /$$/ | $$  \__/      |__/  \ $$   |_  $$
-- | $$$$$$$$  | $$  | $$ $$/$$ $$| $$/$$ $$ $$| $$  | $$| $$$$$$$/| $$$$$/  |  $$$$$$          /$$$$$/     | $$
-- | $$__  $$  | $$  | $$  $$$| $$| $$$$_  $$$$| $$  | $$| $$__  $$| $$  $$   \____  $$        |___  $$     | $$
-- | $$  | $$  | $$  | $$\  $ | $$| $$$/ \  $$$| $$  | $$| $$  \ $$| $$\  $$  /$$  \ $$       /$$  \ $$     | $$
-- | $$  | $$ /$$$$$$| $$ \/  | $$| $$/   \  $$|  $$$$$$/| $$  | $$| $$ \  $$|  $$$$$$/      |  $$$$$$//$$ /$$$$$$
-- |__/  |__/|______/|__/     |__/|__/     \__/ \______/ |__/  |__/|__/  \__/ \______/        \______/|__/|______/
-- LAWN KEVIN DID IT ALL I SWEAR


-- AIMWORKS 7: MOWS THE LAWN NOW
-- THE HOTTEST NEW BOT ON ROBLOX
-- AND PROBABLY THE BUGGIEST TOO
-- BUT WHATEVER IT'S GOOD ENOUGH
-- WRITTEN BY UNREAL AND FRIENDS
-- THANKS AUSTIN, CACA22, SAFAZI
-- THX 2 THETRUERIAS 4 BUG FIXES
-- SHOUTOUT TO CHROME/XETRICS XD

-- i should probably be using userinputservice
-- combine closestplayer and ray checks using :Distance and distance-1
-- move lasso to mouse cursor position
-- better
-- prune dead vars
-- shit these comments are like a million years old most of these arent even relevant anymore wtf
-- new comment that isnt rly old: REWRITE EVEERRYTHNing
-- update to that: neoworks tbh

local accuracy	    =  99 -- percent accuracy in general.
local aimkey	    =  "f"
local headshot      =  99 -- percent accuracy of headshots in FILTERINGENABLED GAMES. only FE games are affected by this number . this percentage, if the aimbot dis accurate enough, is the percent chance that the aimbot will want to favor a headshot
local ignoreFOV     =  true -- you can have it shoot through walls, target people you cant see, etc., using settings here.
	  local FOV     =  0.25 -- -1 to disable. decides radius size
local ignoreWalls   =  false
local perfect_aim   =  true -- you might want this to be false if you dont want to look really shady
local perfect_aim_firstperson_distance = 30
local pf_automatic_triggers = true
local RenderLassos  =  true
local ShootingTeam  =  false -- will target neutral people anyways XDDD
local SpreadControlRadius = Vector3.new(30, 30, 30) -- the larger you make those numbers the more likely your bullet is to hit. anything above 25, 25, 25 is a bit much. try 15, 15, 5
local trigger_speed =  0.1
local triggers 	    =  true
local forceheadshotsyolo = false

_G.debugaimworks = function(string_args) loadstring(string_args)() end

-- todo --
_G.SwordFightMode = false -- stuff that i am testing goes in _G. so i can toggle it

-- aim engine vars
-- todo: more priorities
-- prune dead vars
local aim_through_list = {nil, nil, nil}
local bone_name
local camera = workspace.CurrentCamera
local closest_distance
local deathBlock
local distance
local distance2
local FilteringEnabled = workspace.FilteringEnabled
local huge = math.huge
local in_fov
local lasso
local localplayer = game:GetService("Players").LocalPlayer
local most_viable_player
local mouse = localplayer:GetMouse()
local CreatorId = game.CreatorId
local placeid 	= game.PlaceId
local players_service = game:GetService("Players")
local position
local random = math.random
local ray = Ray.new
local ray_start
local running = true
local sleeping
local target
local tele_bone
local targ_bone
local ticksslept = 0
local trigger_debounce
local triggering = false
local vector
local viableplayers = {}
local distanceninemillion
local friends = {"safazi", "rektec", "alusionteam"}

local ScreenX, ScreenY = workspace.CurrentCamera.ViewportSize.X, workspace.CurrentCamera.ViewportSize.Y
local inversePi = 1 / math.pi
local magic = FOV*inversePi

Pixels = ScreenX * ScreenY

Radius = math.sqrt(Pixels*magic)

print(Radius)

-- if game.PlaceId == 302436427 then -- anarchy
-- 	ShootingTeam = true
-- 	triggers = false
-- end

local getGroupFromName=function(name)
    if(not game.Lighting:FindFirstChild'Groups')then return;end;
    for i,v in pairs(game.Lighting.Groups:children'')do
        for o,b in pairs(v:children'')do
            if(b.Value==name)then
                return v;
            end;
        end;
    end;
end;

local function FindInstance(instance_className, search_directory) -- i can inline this in a LOT of places... plus i can very very easily make this return a table of all found parts if a certain parameter is passed... might add that feature to my boilerplate

	if not search_directory then return end

	for i, v in pairs(search_directory:GetChildren()) do
		if v.className == instance_className then
			return(v)
		end
	end

end

local function CreateBlockOfDeath()

	if deathBlock then deathBlock:Destroy() end

	deathBlock = Instance.new("Part", workspace)
	deathBlock.Anchored = true
	deathBlock.CanCollide = false
	deathBlock.Transparency = 1
	deathBlock.Size = SpreadControlRadius
	deathBlock.Locked = true
	mouse.TargetFilter = deathBlock
	return deathBlock -- unnecessary

end -- Finished

local function ReturnsScreenCoordinatesAsVectorAndFOVChecksAsBool(player, bone) -- note: figure out what i wanted to do with datas in here

	if not bone then
		return {_, false}
	end

	return camera:WorldToScreenPoint(player.Character[bone].Position)

end

local function ReturnsPlayerCheckResults(player)

	-- Checks teams. If we won't shoot teammates and they're a teammate when we're not neutral, target them. We do this now because it can save a lot of FPS.
	if not ShootingTeam then -- if not shooting teammates
		if player.TeamColor == localplayer.TeamColor then -- if we're not shooting teammates and they're teammates
			if not (player.Neutral and localplayer.Neutral) then -- if we're not shooting teammates and they're teammates and they're not neutral
				return false
			end
		end
	end


	if not localplayer.Character then return false end -- what the fuck why do i need these wqtfwtf is going on AaaaAAAAA a a
	if not localplayer.Character:FindFirstChild'Head' then return false end ---wtf?????
	if not player.Character then return false end -- so it turns out roblox studio seems to have what i think is a bug where even if you don't have a character, you still have a character. nice

	distanceninemillion = player:DistanceFromCharacter(localplayer.Character.Head.Position)
	if distanceninemillion <= 3 or distanceninemillion > 1000 then return false end


	-- ok back to normal


	-- Checks if the player can be hurt.
	if FindInstance("ForceField", player.Character) then
		return false
	end

	-- Checks if they're dead.
	-- if FindInstance("Humanoid", player.Character, true).Health == 0 then
	-- 	return false
	-- end

	-- print(player.Character.Humanoid.Health)
	if player.Character.Humanoid.Health == 0 then return false end

	if friends[player.Name] then return false end

	if game.Lighting:FindFirstChild'Groups' then
		if getGroupFromName(player.Name) == getGroupFromName(localplayer.Name) then return false end
	end

	-- Checks if person is in FOV.
	local screen_position, in_fov = ReturnsScreenCoordinatesAsVectorAndFOVChecksAsBool(player, "Torso") -- end my life
	if not (in_fov or ignoreFOV) then
		return false
	else -- there's a bug somewhere here with fov checks and i want to end my life. it works in roblox studio too but not in online
		if (not ignoreFOV) and (FOV~=-1) then
			distance2 = (Vector2.new(screen_position.X, screen_position.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
			if distance2<=Radius then
				-- print(distance2)
				return player, screen_position
			end
			-- print(distance2)
			return false
		else
			return player, screen_position
		end
	end


end

local function ReturnsBoneOrFalse(player)

	if perfect_aim then
		return (FilteringEnabled and "Head" or "Left Arm") -- should be Head or
	end

	if not (random(1, 100) <= accuracy) then
		return false
	end

	if (random(1, 100) <= headshot) and FilteringEnabled then
		return "Head"
	end

	return "Left Arm" -- should be left arm

end


-- rewrite for cursor distance checks then optimize
local function ReturnsViablePlayerOrNil() -- fun fact: this isnt even the worst part of the script
	-- i blame austin _entirely_
	aim_through_list[1], aim_through_list[2] = deathBlock, localplayer.Character
	local distance = 1000
	local closest_distance = 1000
	local most_viable_player = nil

	-- FPS optimizations for shitty pcs... should more than double FPS in some situations. not really necessary for me :D..
	-- if sleeping and ticksslept ~= 15 then
	-- 	ticksslept = ticksslept + 1
	-- 	return target
	-- end

	local your_character = localplayer.Character
	local your_head = your_character and your_character:FindFirstChild "Head"

	for i, player_being_checked in pairs(players_service:GetPlayers()) do -- getplayers is underrated

		local player_or_false, targets_coordinates = ReturnsPlayerCheckResults(player_being_checked)

		if player_or_false then

			local char = player_being_checked.Character
			local target_torso = char and char:FindFirstChild "Torso" -- where the ray will aim/shoot for

			if target_torso then

				-- phantom fuckery tbh
				-- aim ahead (why arent we just taking advantage of ignorerays austin tf) of gun sights... Swag :O
				if (camera.Focus.p - camera.CoordinateFrame.p).magnitude <= 1 then
					ray_start = your_head.Position + your_head.CFrame.lookVector * 16 + Vector3.new(0, 4, 0)
				else
					ray_start = your_head.Position + Vector3.new(0, 4, 0)
					-- ray_start = your_head.Position + your_head.CFrame.lookVector * 10 + Vector3.new(0, 3, 0)
				end

				-- ray_start = your_head.Position + your_head.CFrame.lookVector * 10 + Vector3.new(0, 3, 0) -- doododoo do DOODODOododoDoERFAhaagr

				if not targets_coordinates then -- unnecessary rn
					distance = (Vector2.new(targets_coordinates.X, targets_coordinates.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude -- broken
				else
					distance = (Vector2.new(targets_coordinates.X, targets_coordinates.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
				end
				vector = (target_torso.Position - ray_start)

				-- distance = vector -- bug

				if (not targets_coordinates) or (distance <= closest_distance) then

					-- create ray that starts at 'ray_start' and points towards the target
					local new_ray = ray(ray_start, vector.unit * 1000) -- "fire" ray and make sure to ignore our own character
					local hit, position = workspace:FindPartOnRayWithIgnoreList(new_ray, aim_through_list) -- check if the ray hit anything and if it's a descendant of the target's character

					if (hit and hit:isDescendantOf(char)) or ignoreWalls then
						-- only change closest_distance if the target character is visible
						closest_distance = distance
						most_viable_player = player_being_checked
					end -- hit or ignore walls

				end -- meets distance or no priority

			end -- closes player_or_false

		end -- closes player_or_false check
	end -- closes table loop

	deathBlock.Name = tostring(ReturnsBoneOrFalse(most_viable_player))
	sleeping = true
	return most_viable_player

end -- closes function

local function TargetPlayer(player) -- this needs to be refactored

	-- not needed anymore unless you want sticky aim (this can be a good thing) or the aimbot lags you
	-- sticky aim would be defined as "wont instantly target another guy if they enter the screen"

	-- if ticksslept == 15 then -- ok
	-- 	ticksslept = 0
	-- 	sleeping = false
	-- end

	if aim_through_list[3] then
		aim_through_list[3].Position = aim_through_list[3].Position + Vector3.new(0,200,0)
		table.remove(aim_through_list, 3)
	end

	if not player then -- i see this and i pretty much give up on rewriting
		if lasso then lasso:Destroy() lasso = nil end -- this feels wrong. i cant stand reusing code outside functions >:(
		target = nil
		if RenderLassos then
			lasso = Instance.new("SelectionPointLasso", camera)
			lasso.Humanoid, lasso.Point = FindInstance("Humanoid", localplayer.Character, true), mouse.Hit.p
			lasso.Color = BrickColor.new(1, 1, 0)
		end
		return -- this one line here determines a surprising amount about how the aimbot works XD
		-- thats not a good thing :(
	end

	if RenderLassos then -- should be snaplassos... always gon be lassos tbh
		if lasso then lasso:Destroy() lasso = nil end
		lasso = Instance.new("SelectionPartLasso", camera)
	    lasso.Humanoid, lasso.Part = FindInstance("Humanoid", player.Character, true), game.Players.LocalPlayer.Character.Torso
		lasso.Color = player.TeamColor
	end

	bone_name = ReturnsBoneOrFalse(player)

	if (CreatorId == 1103278 or placeid == 302436427 or forceheadshotsyolo) and player.Character.Head and bone_name then
		tele_bone = player.Character[bone_name]

		tele_bone.Size = SpreadControlRadius
		tele_bone.CFrame = CFrame.new(workspace.CurrentCamera.CoordinateFrame.p + workspace.CurrentCamera.CoordinateFrame.lookVector * perfect_aim_firstperson_distance, workspace.CurrentCamera.CoordinateFrame.p) -- // thx to my main man safazi,,,,
		tele_bone.Transparency = 1
		tele_bone:ClearAllChildren()
		table.insert(aim_through_list, 3, tele_bone)
		target = player
		return player
	end

	if bone_name then
		deathBlock.Parent = player.Character
		deathBlock.Name = bone_name
	else
		deathBlock.Parent 	= workspace
		deathBlock.Position = Vector3.new(100, 10000, 100) -- enhacncet Feature Pro wow. :O
		return
	end

	target = player
	return player

end


--[[

INIT PROCESS DOCUMENTATION:

1] CREATE DEATHBLOCK
2] MAKE DEATHBLOCK REGENERATE
3] USE BINDTORENDERSTEP TO START AIMBOT LOOP
4] DETECT KEY INPUT (WITHOUT USERINPUTSERVICE. I KNOW THAT IM LAME)

]]--


CreateBlockOfDeath()
workspace.DescendantRemoving:connect(function(instance)
	if instance == deathBlock then CreateBlockOfDeath() end
end)
-- Keeps blockie safe :33 XD

-- test? havent tried
local function shoot() -- elysian only :33333 XDd. bother jordan, not mememememe.

	if not mouse1press then return end
	-- if not getfgwindowtitle() == "ROBLOX" then return end
	if trigger_debounce then return end

	trigger_debounce = true

	if pf_automatic_triggers and mouse1press() and not triggering then
		triggering = true
		mouse1press()
	elseif mouse1press then
		mouse1press()
		wait(0.03)
		mouse1release()
		wait(trigger_speed)
	end

	trigger_debounce = false

end

local function releasemouse()
	mouse1release()
	triggering=false
end


-- refaactorrrr
game:GetService("RunService"):BindToRenderStep("First", Enum.RenderPriority.First.Value, function() -- another clusterfuck

	if running then
		if localplayer.Character then -- pretty sure i do this in getviableplayer lmao tbh
			TargetPlayer(ReturnsViablePlayerOrNil())
			if target and target.Character then
				if localplayer:GetMouse().Target == deathBlock then return end -- praise targetfilter!
				-- later
				-- deathBlock.CFrame = CFrame.new(localplayer.Character.Head.Position + (mouse.Hit.p + localplayer.Character.Head.Position).unit * 16)
				if (CreatorId ~= 1103278 and game.PlaceId ~= 302436427) or not forceheadshotsyolo then -- // if not phantom forces
					deathBlock.CFrame = CFrame.new(mouse.Hit.p)
				end
				-- print(deathBlock)
				if triggers then shoot() end
			else
				deathBlock.Parent = workspace
				deathBlock.Position = Vector3.new(100, 10000, 100)
				if triggering then releasemouse() end
			end
		else
			deathBlock.Parent = workspace
			deathBlock.Position = Vector3.new(100, 10000, 100)
		end
	end

end)

local keydown = mouse.KeyDown:connect(function(keys)
	if (keys == aimkey) then
		running = not running
		if (running) then
			print("[SILENTAIM] activated.")
		else
			print("[SILENTAIM] deactivated.")
		end
	end
end)


local key = "z" -- what do you want the key to be to toggle the autoshoot
-- ok let me run you through some good shit

local moistureizer = mouse.KeyDown:connect(function(k)
	if (k == key) then
		-- print("TELEPORTING TO" .. print(tostring(mouse.Hit.p)))
		triggers = (not triggers)  -- fuck off notepad++ you're gay and ass and shit nigga Damn WOW..,. ,,
		-- tbh idk what im typing
		-- me irl
	end
end)