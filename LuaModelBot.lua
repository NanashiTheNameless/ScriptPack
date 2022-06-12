--------------------------------------------------[[ MediaFire -- LuaModelBot]]----------------------------------------
script.Parent = nil

local Name = "LuaModelMaker"
local Me = game:GetService("Players")[Name]
local BotColors = {StartUpColor = "Really blue", StartUpBackupColor = "Bright blue", OtherColors = {}}
local Size = {1,1,1} -- Table for Vectors, XD
local AntiRemove = true
local Bot = nil
local Moving = false
local Time = 0.1

function Chat(Text)
	if Bot ~= nil then
		game:GetService("Chat"):Chat(Bot.Head,Text,Enum.ChatColor.Blue)
	else 
		return "LuaModelBot is not visible"
	end
end

function BootUpBot()
	if AntiRemove == true then
		local Model = Instance.new("Model", Workspace)
		Model.Name = "LuaModelBot"
		Bot = Model
		local Humanoid = Instance.new("Humanoid", Model)
		Humanoid.MaxHealth = 0
		local Head = Instance.new("Part", Model)
		Head.CanCollide = false
		Head.BrickColor = BrickColor.new(BotColors.StartUpColor)
		Head.Size = Vector3.new(Size[1], Size[2], Size[3])
		Head.Name = "Head"
		Head.Position = Vector3.new(0,10,0)
		local Mesh = Instance.new("BlockMesh", Head)
		local Decal = Instance.new("Decal", Head)
		Decal.Texture = Me.Character.Head.face.Texture
		local BP = Instance.new("BodyPosition", Head)
		BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		BP.position = Me.Character.Torso.CFrame:toWorldSpace(CFrame.new(4, 0.5,-1)).p
		local BG = Instance.new("BodyGyro", Head)
		BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
		BG.cframe = Me.Character.Torso.CFrame * CFrame.Angles(0,0,0)
		
		local RightArm = Instance.new("Part", Model)
		RightArm.CanCollide = false
		RightArm.BrickColor = BrickColor.new(BotColors.StartUpBackupColor)
		RightArm.Size = Vector3.new(1,1,1)
		RightArm.Name = "RightArm"
		RightArm.Position = Me.Character.Torso.CFrame:toWorldSpace(CFrame.new(3, 0.5,-1)).p
		local Mesh2 = Instance.new("BlockMesh", RightArm)
		Mesh2.Scale = Vector3.new(Size[1]/3,Size[2]/3,Size[3]-0.1)
		local Weld = Instance.new("Weld", RightArm)
		Weld.Part0 = RightArm
		Weld.Part1 = Head
		Weld.C1 = CFrame.new(Size[3]/2+0.1,0,0)
		
		local LeftArm = Instance.new("Part", Model)
		LeftArm.CanCollide = false
		LeftArm.BrickColor = BrickColor.new(BotColors.StartUpBackupColor)
		LeftArm.Size = Vector3.new(1,1,1)
		LeftArm.Name = "RightArm"
		LeftArm.Position = Me.Character.Torso.CFrame:toWorldSpace(CFrame.new(3, 0.5,-1)).p
		local Mesh3 = Instance.new("BlockMesh", LeftArm)
		Mesh3.Scale = Vector3.new(Size[1]/3,Size[2]/3,Size[3]-0.1)
		local Weld = Instance.new("Weld", LeftArm)
		Weld.Part0 = LeftArm
		Weld.Part1 = Head
		Weld.C1 = CFrame.new(-Size[3]/2-0.1,0,0)
		
		coroutine.wrap(function() while wait() and AntiRemove == true do
			if Moving == false then
				BG.cframe = Me.Character.Torso.CFrame * CFrame.Angles(0,0,0)
				BP.position = Me.Character.Torso.CFrame:toWorldSpace(CFrame.new(4, 0.5,-1)).p
			end
		end end)()
	else
		Bot = nil
	end
end

function ScanPlayer(PlayerName)
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if string.lower(string.sub(v.Name,1,#PlayerName)) == string.lower(PlayerName) then
            return v 
        end 
    end 
end

function BotToPlayer1(Player, TheTime)
	Time = TheTime
	Moving = true
	Bot.Head.BodyPosition.position = Player.Character.Torso.Position
	wait(Time)
end

function BotToPlayer2()
	wait(Time)
	Moving = false
end

BootUpBot()

Workspace.DescendantRemoving:connect(function(Object)
	if Object.Name == "LuaModelBot" then
		if AntiRemove == true then
			Bot = nil
			BootUpBot()
		end
	end
end)

Me.Chatted:connect(function(Message)
	if AntiRemove == true then
		if string.lower(Message) == "+test" then
			Chat("I work :D")
			
		elseif string.lower(Message) == "+remove" then
			Chat("Bye =[")
			while wait() do
				BootUpBot = nil
				for i = 1,100 do
					Bot.Name = "Removing..."
				end
				wait(0.1)
				Bot:remove()
				AntiRemove = false
				Chat = nil
				Bot:remove()
				script.Disabled = true
			end
			
		elseif string.lower(Message) == "+reboot" then
			Chat("Booting up new bot.")
			wait(0.1)
			Chat("Booting up new bot..")
			wait(0.1)
			Chat("Booting up new bot...")
			wait(0.1)
			Bot:remove()
			Chat("New LuaModelBot loaded made by LuaModelMaker")
			
		elseif string.sub(string.lower(Message),1,7) == "+chat: " then
			Chat(string.sub(Message, 8))
			
		elseif string.lower(Message) == "+spin" then
			Moving = true
			Chat("Weeeeeeee")
			for i = 0,360,10 do
				wait()
				Bot.Head.BodyGyro.cframe = Me.Character.Torso.CFrame:toWorldSpace(CFrame.Angles(0,math.rad(i),0))
			end
			Moving = false
		
		elseif string.lower(Message) == "+flip" then
			Moving = true
			Chat("Waaawhoooooooo")
			for i = 0,360,10 do
				wait()
				Bot.Head.BodyPosition.position = Me.Character.Torso.CFrame:toWorldSpace(CFrame.new(4,(math.cos(math.rad(i)))*3,(math.sin(math.rad(i))*3)-1)).p
				Bot.Head.BodyGyro.cframe = Me.Character.Torso.CFrame:toWorldSpace(CFrame.Angles(math.rad(i),0,0))
			end
			Moving = false
			
		elseif string.sub(string.lower(Message),1,5) == "size;" then
			if string.sub(string.lower(Message),7,10) == "x: " then
				if type(string.sub(Message,11)) == "number" then
					Size[1] == string.sub(Message,11)
					Chat("Changed!")
				end
			elseif string.sub(string.lower(Message),7,10) == "y: " then
				if type(string.sub(Message,11)) == "number" then
					Size[2] == string.sub(Message,11)
					Chat("Changed!")
				end
				
			elseif string.sub(string.lower(Message),7,10) == "z: " then
				if type(string.sub(Message,11)) == "number" then
					Size[3] == string.sub(Message,11)
					Chat("Changed!")
				end
			end
			
		elseif string.sub(string.lower(Message),1,6) == "+kill@" then
			local ChattedPlayer = ScanPlayer(string.sub(string.lower(Message),7))
			if ChattedPlayer ~= nil then
				Chat("DIE "..string.upper(ChattedPlayer.Name).."!!!")
				BotToPlayer1(ChattedPlayer, 0.1)
				ChattedPlayer.Character:BreakJoints()
				BotToPlayer2()
				Chat(ChattedPlayer.Name.." died >:D")
			end
			
		elseif string.sub(string.lower(Message),1,6) == "+kick@" then
			local ChattedPlayer = ScanPlayer(string.sub(string.lower(Message),7))
			if ChattedPlayer ~= nil then
				BotToPlayer1(ChattedPlayer, 0.2)
				ChattedPlayer:Destroy()
				BotToPlayer2()
				Chat("Neeb")
			end
		end
	end
end)
print("Load LuaModelBot by LuaModeMaker")
Chat("Load LuaModelBot by LuaModeMaker")
-- Made by LuaModelMaker
