gen = function()
	local p1 = Instance.new("ScreenGui")
	
	local p2 = Instance.new("Frame")
	p2.Active = true
	p2.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
	p2.BackgroundTransparency = 0.15000000596046
	p2.BorderSizePixel = 0
	p2.Name = "febypass"
	p2.Position = UDim2.new(0.5, -175, 0.5, -175)
	p2.Selectable = true
	p2.Size = UDim2.new(0, 300, 0, 250)
	p2.Draggable = true
	p2.Parent = p1
	
	local p3 = Instance.new("Frame")
        p3.Visible=true
	p3.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
	p3.BorderSizePixel = 0
	p3.Name = "title"
	p3.Size = UDim2.new(1, 0, 0, 25)
	p3.Parent = p2
	
	local p4 = Instance.new("TextLabel")
	p4.BackgroundTransparency = 1
	p4.BorderSizePixel = 0
	p4.Name = "tlab"
	p4.Size = UDim2.new(1, -25, 1, 0)
	p4.Font = Enum.Font.SourceSansBold
	p4.Text = "MegaTrap10.0"
	p4.FontSize = Enum.FontSize.Size24
	p4.TextColor3 = Color3.new(4, 4, 1)
	p4.Parent = p3
	
	local p5 = Instance.new("TextButton")
	p5.Active = true
	p5.BackgroundColor3 = Color3.new(0.792157, 0, 0)
	p5.BorderSizePixel = 0
	p5.Name = "exit"
	p5.Position = UDim2.new(1, -25, 0, 0)
	p5.Selectable = true
	p5.Size = UDim2.new(0, 25, 0, 25)
	p5.Style = Enum.ButtonStyle.Custom
	p5.Text = "X"
	p5.Parent = p3
	
	local p6 = Instance.new("Frame")
	p6.BackgroundTransparency = 1
	p6.Name = "content"
	p6.Position = UDim2.new(0, 0, 0, 25)
	p6.Size = UDim2.new(1, 0, 1, -25)
	p6.Parent = p2
	
	local p7 = Instance.new("Frame")
	p7.BackgroundTransparency = 1
	p7.BorderSizePixel = 0
	p7.Name = "selector"
	p7.Size = UDim2.new(1, 0, 0, 30)
	p7.Parent = p6
	
	local p8 = Instance.new("TextButton")
	p8.BackgroundColor3 = Color3.new(74, 0, 210)
	p8.BorderSizePixel = 0
	p8.Name = "localplayer"
	p8.Size = UDim2.new(0.333000004, 0, 1, 0)
	p8.Font = Enum.Font.SourceSansItalic
        p8.FontSize = Enum.FontSize.Size18
	p8.Text = "LocalPlayer"
	p8.Parent = p7
	
	local p9 = Instance.new("TextButton")
	p9.BackgroundColor3 = Color3.new(74, 0, 210)
	p9.BorderSizePixel = 0
	p9.Name = "all"
	p9.Position = UDim2.new(0.333000004, 0, 0, 0)
	p9.Size = UDim2.new(0.333000004, 0, 1, 0)
	p9.Font = Enum.Font.SourceSansItalic
        p9.FontSize = Enum.FontSize.Size18
	p9.Text = "All"
	p9.Parent = p7
	
	local p10 = Instance.new("TextButton")
	p10.BackgroundColor3 = Color3.new(74, 0, 210)
	p10.BorderSizePixel = 0
	p10.Name = "others"
	p10.Position = UDim2.new(0.666000009, 0, 0, 0)
	p10.Size = UDim2.new(0.333000004, 0, 1, 0)
	p10.Font = Enum.Font.SourceSansItalic
        p10.FontSize = Enum.FontSize.Size18
	p10.Text = "Others"
	p10.Parent = p7
	
	local p11 = Instance.new("ScrollingFrame")
	p11.BackgroundColor3 = Color3.new(61, 255, 132)
	p11.BackgroundTransparency = 1
	p11.BorderSizePixel = 0
	p11.Name = "buttons"
	p11.ScrollBarThickness = 5
	p11.Position = UDim2.new(0, 0, 0, 30)
	p11.Selectable = true
	p11.Size = UDim2.new(1, 0, 1, -30)
	p11.CanvasSize = UDim2.new(0, 0, 0, 0)
	p11.ClipsDescendants = true
	p11.Parent = p6
	
	local p12 = Instance.new("Frame")
	p12.BackgroundTransparency = 1
	p12.Name = "buttontemplate"
	p12.Size = UDim2.new(1, 0, 0, 30)
	p12.Parent = p11
	
	local p13 = Instance.new("TextButton")
	p13.Active = true
	p13.Name = "b1"
	p13.Selectable = true
	p13.Size = UDim2.new(0.5, 0, 0, 30)
	p13.Style = Enum.ButtonStyle.RobloxRoundButton
	p13.Text = "{{btn}}"
	p13.TextColor3 = Color3.new(1, 1, 1)
	p13.Parent = p12
	
	local p14 = Instance.new("TextButton")
	p14.Active = true
	p14.Name = "b2"
	p14.Position = UDim2.new(0.5, 0, 0, 0)
	p14.Selectable = true
	p14.Size = UDim2.new(0.5, -5, 0, 30)
	p14.Style = Enum.ButtonStyle.RobloxRoundButton
	p14.Text = "{{btn}}"
	p14.TextColor3 = Color3.new(61, 255, 132)
	p14.Parent = p12
	
	local p15 = Instance.new("TextButton")
	p15.Active = true
	p15.BorderSizePixel = 0
	p15.Name = "open"
	p15.Position = UDim2.new(0.5, -50, 1, -50)
	p15.Selectable = true
	p15.Size = UDim2.new(0, 100, 0, 50)
	p15.Style = Enum.ButtonStyle.Custom
	p15.Font = Enum.Font.SourceSansBold
	p15.FontSize = Enum.FontSize.Size18
	p15.Text = "Open"
	p15.Parent = p1
	
	return p1
end

zz=function(d)
	for i,v in pairs(d:GetChildren()) do
		pcall(function()v.FontSize=Enum.FontSize.Size14 if v.Name=="exit" then
			v.FontSize=Enum.FontSize.Size8
		end if (v.Name=="b1")or(v.Name=="b2")then v.FontSize=Enum.FontSize.Size12 end end)
		if #(v:GetChildren())>0 then
			zz(v)
		end
	end
end

local base = gen()
zz(base)
base.Parent = game.CoreGui
local open = base.open
base.febypass.Visible = false
base.febypass.title.exit.MouseButton1Down:connect(function()
	base.febypass.Visible=false
	open.Visible=true
end)

local content = base.febypass.content
local sel = content.selector
local current = ""
local running=false
local buttonpairs = {
	{{"Sanic", "Sanic"}, {"RemoveSoul", "RemoveSoul"}},
	{{"StopAll", "CancleCmds"}, {"Superjump", "sjump"}},
	{{"SuperManJump", "SuperManJump"}, {"Thaw", "sit"}},
	{{"Kill", "Kill"}, {"Freeze", "jump"}},
	{{"Swim!", "Swim"}, {"Noobify", "run"}},
	{{"ForceField", "ForceField"}, {"Noclip", "noclip"}},
	{{"Fire", "Fire"}, {"TMRank", "levy"}},
	{{"God", "god"}, {"Ghostify", "hjump"}},
	{{"ApocKill", "killapoc"}, {"ApocGod"}, "godapoc"},
	{{"ApocItemUi", "igui"}, {"ApocLoadout", "loadout"}},
	{{"Fog", "Fog"}, {"Nofog", "NoFog"}},
        {{"BodyTroll", "LOL"}, {"FallingState", "TEST"}},
        {{"FogColorRandom", "LOL1"}, {"Glide", "TEST1"}},
        {{"KillLeftArm", "LOL2"}, {"KillRightArm", "TEST2"}},
        {{"BigHead", "LOL3"}, {"NightDayDisco", "TEST3"}},
        {{"Night", "LOL4"}, {"Day", "TEST4"}},
        {{"PepeParticles", "LOL5"}, {"PepeSky", "TEST5"}},
        {{"GabenParticles", "Gaben1"}, {"GabenSky", "Gaben2"}},
        {{"GabenSong", "Gaben3"}, {"PepeSong", "Pepe1"}},
        {{"Invisible", "invis"}, {"PepeJump", "Pepe2"}},
        {{"RemoveLegs", "NoLegs"}, {"InvisibleHead", "NoHead"}},
        {{"UnAnchorWs", "unanchor"}, {"AnchorWs", "anchor"}},
        {{"LockWs", "lockws"}, {"UnLockWs", "unlock"}},
        {{"Btools", "Btools"}, {"Credits", "creds"}},
        {{"EvilBlocks", "Evil"}, {"NiceBlock", "Nice"}},
        {{"TrollBox", "troll"}, {"SkyBoxDisco", "sky"}},
        {{"JailAll", "jail"}, {"MLGMusic", "mlgmusic"}},
        {{"MLGSkybox", "mlgsky"}, {"AndroidRemix", "Remix"}},
        {{"ApocSprint", "sprint"}, {"UnKnown", "Unknown"}},
}
local getp = function()
	if current==nil then return {} end
	local t={
		['all']=game.Players:GetPlayers(),
		['localplayer']={game.Players.LocalPlayer},
		['others']=(function()local o={} for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name~=game.Players.LocalPlayer.Name then table.insert(o,v) end
		end return o end)()
	}
	return t[current]
end
local buttons = content.buttons
local templ = buttons.buttontemplate:Clone()
buttons.buttontemplate:Destroy()
for i,v in pairs(sel:GetChildren()) do
	v.BackgroundTransparency=0.2
	v.MouseButton1Down:connect(function()
		if current~="" then
			sel[current].BackgroundTransparency = 0.2
		end
		v.BackgroundTransparency = 0
		current = v.Name
	end)
end
open.MouseButton1Down:connect(function()
	if base.febypass.Visible==false then
		base.febypass.Visible=true
		open.Visible=false
	else
		base.febypass.Visible=false
		open.Visible=true
	end
end)

-- hax [xml]
-- nosyliam was here [help]
local funcs = {
	['CancleCmds']=(function(players)
				running = false

	end),
	['hjump']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					
					v.Character.Head.Transparency = 0.22
					game.Players.LocalPlayer.Character["Left Arm"].Transparency = 0.22
v.Character["Right Arm"].Transparency = 0.22
v.Character["Left Leg"].Transparency = 0.22
v.Character["Right Leg"].Transparency = 0.22
v.Character["Torso"].Transparency = 0.22
				end)
			end)
		end
	end),
		['Remix']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					local music = Instance.new("Sound", workspace)
music.SoundId = "http://www.roblox.com/asset/?id=338624931"
music.Volume = 20
music.Looped = false
music:Play()
end)

					
			end)
		end
	end),
		['mlgsky']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					local Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = "http://www.roblox.com/asset/?id=210386476"
Sky.SkyboxDn = "http://www.roblox.com/asset/?id=210386476"
Sky.SkyboxFt = "http://www.roblox.com/asset/?id=210386476"
Sky.SkyboxLf = "http://www.roblox.com/asset/?id=210386476"
Sky.SkyboxRt = "http://www.roblox.com/asset/?id=210386476"
Sky.SkyboxUp = "http://www.roblox.com/asset/?id=210386476"
Sky.StarCount = 0
				end)
			end)
		end
	end),
	['mlgmusic']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				
				ypcall(function()
					
local music = Instance.new("Sound", workspace)
music.SoundId = "http://www.roblox.com/asset/?id=187429740"
music.Volume = 20
music.Looped = false
music:Play()

					
					
				end)
				
			end)
		end
	end),
			['sjump']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				repeat
					ypcall(function()
						wait()
						v.Character.Humanoid:ChangeState(13)
					end)
				until running == false
			end)
		end
	end),
	['creds']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					print("Creator Of Gui Xml & Nosyliam")
					print("Creator Of 30% Of Cmds And Coder For 20% Iam")
					print("Helper Of 40% Of Code Deflex")
					print("Helper For TM Cmds DeathOfLink")

				end)
			end)
		end
	end),
	['sprint']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					game.Players.LocalPlayer.PlayerGui.HitEqualsYouDie.WalkspeedEdit:Remove()
game.Players.LocalPlayer.PlayerGui.HitEqualsYouDie.JumpLimiter:Remove()
game.Workspace.LocalPlayer.Humanoid.WalkSpeed.Value = 25

				end)
			end)
		end
	end),
	['lockws']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				
					ypcall(function()
						
						function scan(o)---Scans
	for _,v in pairs(o:GetChildren()) do --Get all "Objects" in game
		if v:IsA('BasePart') then -- Looks for "PartClass"
			v.Locked = true -- Locks all "PartClass" Objects
		end
		scan(v)
	end
	
end

scan(workspace)
					end)
				
			end)
		end
	end),
		['troll']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				
					ypcall(function()
						
						Instance.new("Part",game.Workspace)
Instance.new("SpawnLocation",game.Workspace)
game.workspace.SpawnLocation.Name = "Spawn1"
game.workspace.Part.Name = "Brick"
game.workspace.Brick.Locked = true
game.workspace.Spawn1.Locked = true
game.workspace.Brick.Anchored = true
game.workspace.Spawn1.Anchored = true
game.workspace.Brick.Size = Vector3.new(74, 1, 75)
game.workspace.Brick.Position = Vector3.new(62.8, 181.9, -72)
game.workspace.Spawn1.Position = Vector3.new(62.8, 181.9, -72)
game.workspace.Brick.Locked = true
game.workspace.Spawn1.Locked = true
game.workspace.Brick.Anchored = true
game.workspace.Spawn1.Anchored = true
Instance.new("Part",game.Workspace)
game.workspace.Part.Anchored = true
game.workspace.Part.Name = "Wall1"
game.workspace.Wall1.Transparency = 0.580
game.workspace.Wall1.Anchored = true
game.workspace.Wall1.Locked = true
game.workspace.Wall1.Size = Vector3.new(1.4, 52.2, 74.8)
game.workspace.Wall1.Position = Vector3.new(25.1, 207.3, -71.6)
Instance.new("Decal",game.workspace.Wall1)
game.workspace.Wall1.Decal.Texture = "http://www.roblox.com/asset/?id=94758247" 
game.workspace.Wall1.Decal.Face = "Right"
Instance.new("Part",game.Workspace)
game.workspace.Part.Anchored = true
game.workspace.Part.Name = "Wall2"
game.workspace.Wall2.Transparency = 0.580
game.workspace.Wall2.Anchored = true
game.workspace.Wall2.Locked = true
game.workspace.Wall2.Size = Vector3.new(1.4, 52.2, 74.8)
game.workspace.Wall2.Position = Vector3.new(100.1, 207.5, -71.6)
Instance.new("Decal",game.workspace.Wall2)
game.workspace.Wall2.Decal.Texture = "http://www.roblox.com/asset/?id=94758247" 
game.workspace.Wall2.Decal.Face = "Left"
Instance.new("Part",game.Workspace)
game.workspace.Part.Anchored = true
game.workspace.Part.Name = "Wall3"
game.workspace.Wall3.Transparency = 0.580
game.workspace.Wall3.Anchored = true
game.workspace.Wall3.Locked = true
game.workspace.Wall3.Size = Vector3.new(74.8, 52.2, 1.8)
game.workspace.Wall3.Position = Vector3.new(62.6, 207.7, -110.1)
Instance.new("Decal",game.workspace.Wall3)
game.workspace.Wall3.Decal.Texture = "http://www.roblox.com/asset/?id=94758247" 
game.workspace.Wall3.Decal.Face = "Back"
Instance.new("Part",game.Workspace)
game.workspace.Part.Anchored = true
game.workspace.Part.Name = "Wall4"
game.workspace.Wall4.Transparency = 0.580
game.workspace.Wall4.Anchored = true
game.workspace.Wall4.Locked = true
game.workspace.Wall4.Size = Vector3.new(74.8, 52.2, 1.8)
game.workspace.Wall4.Position = Vector3.new(62.6, 207.7, -33.1)
Instance.new("Decal",game.workspace.Wall4)
game.workspace.Wall4.Decal.Texture = "http://www.roblox.com/asset/?id=94758247" 
game.workspace.Wall4.Decal.Face = "Front"
target = CFrame.new(62.8, 191.1, -72) --could be near a brick or in a new area
for i, player in ipairs(game.Players:GetChildren()) do
   --Make sure the character exists and its torso exists
   if player.Character and player.Character:FindFirstChild("Torso") then
       --add an offset of 5 for each character
      player.Character.Torso.CFrame = target + Vector3.new(0, i * 5, 0)

   end
end

					end)
				
			end)
		end
	end),
	['jail']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				
					ypcall(function()
						
						Instance.new("Part",game.Workspace)
					game.workspace.Part.Name = "Brick8"
				game.workspace.Brick8.Size = Vector3.new(8, 1, 9)
game.workspace.Brick8.Position = Vector3.new(105, 0.5, 8.5)
game.workspace.Brick8.Anchored = true
Instance.new("Part",game.Workspace)
game.workspace.Part.Name = "Brick9"
				game.workspace.Brick9.Size = Vector3.new(8, 14, 1)
game.workspace.Brick9.Position = Vector3.new(105, 7, 13.5)
game.workspace.Brick9.Transparency = 0.340
game.workspace.Brick9.Anchored = true
Instance.new("Part",game.Workspace)
game.workspace.Part.Name = "Brick0"
game.workspace.Brick0.Transparency = 0.340
				game.workspace.Brick0.Size = Vector3.new(8, 14, 1)
game.workspace.Brick0.Position = Vector3.new(105, 7, 3.5)
game.workspace.Brick0.Anchored = true
Instance.new("Part",game.Workspace)
game.workspace.Part.Name = "Brick3"
game.workspace.Brick3.Transparency = 0.340
				game.workspace.Brick3.Size = Vector3.new(1, 14, 11)
game.workspace.Brick3.Position = Vector3.new(100.5, 7, 8.5)
game.workspace.Brick3.Anchored = true
Instance.new("Part",game.Workspace)
game.workspace.Part.Name = "Brick10"
game.workspace.Brick10.Transparency = 0.340
				game.workspace.Brick10.Size = Vector3.new(1, 14, 11)
game.workspace.Brick10.Position = Vector3.new(109.5, 7, 8.5)
game.workspace.Brick10.Anchored = true
Instance.new("Part",game.Workspace)
game.workspace.Part.Name = "Brick11"
game.workspace.Brick11.Transparency = 0.340
				game.workspace.Brick11.Size = Vector3.new(8, 1, 9)
game.workspace.Brick11.Position = Vector3.new(105, 13.5, 8.5)
game.workspace.Brick11.Anchored = true
Instance.new("Decal",game.workspace.Brick11)
game.workspace.Brick11.Decal.Texture = "http://www.roblox.com/asset/?id=67451652" 
game.workspace.Brick11.Decal.Face = "Bottom"
target = CFrame.new(105, 1.5, 8) --could be near a brick or in a new area
for i, player in ipairs(game.Players:GetChildren()) do
   --Make sure the character exists and its torso exists
   if player.Character and player.Character:FindFirstChild("Torso") then
       --add an offset of 5 for each character
      player.Character.Torso.CFrame = target + Vector3.new(0, i * 5, 0)

   end
end
					end)
				
			end)
		end
	end),
	['unlock']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
					ypcall(function()
						
						 

    function scan(o)---Scans
	for _,v in pairs(o:GetChildren()) do --Get all "Objects" in game
		if v:IsA('BasePart') then -- Looks for "PartClass"
			v.Locked = false -- Locks all "PartClass" Objects
		end
		scan(v)
	end
	
end

scan(workspace)

					end)
				
			end)
		end
	end),
['Btools']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				a = Instance.new("HopperBin")
a.Parent = game.Players.LocalPlayer.Backpack
a.BinType = "Hammer"
b = Instance.new("HopperBin")
b.Parent = game.Players.LocalPlayer.Backpack
b.BinType = "Clone"
c = Instance.new("HopperBin")
c.Parent = game.Players.LocalPlayer.Backpack
c.BinType = "Grab"
					ypcall(function()
						
						v.Character.Humanoid:ChangeState(13)
					end)
				
			end)
		end
	end),
	['SuperManJump']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					v.Character.Humanoid.JumpPower = 150
				end)
			end)
		end
	end),
	['Kill']=(function(players)
			for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					Instance.new("Explosion",v.Character.Torso)
					v.Character.Humanoid.Health = 0
				end)
			end)
		end
	end),
['Nice']=(function(players)
			for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					Instance.new("Tool",game.Workspace)
Instance.new("Part",game.Workspace.Tool)
Instance.new("Sparkles",game.Workspace.Tool.Part)
wait(4)
workspace.Tool.Part.Name = "Handle"
Instance.new("Part",game.Workspace.Tool)
				end)
			end)
		end
end),
['Evil']=(function(players)
			for i, v in pairs(players) do
			spawn(function()
				repeat
				ypcall(function()
					wait(0)
				    Instance.new("Part",v.Character)
                          v.Character.Part.Name = "Part1"
					wait(2)
					Instance.new("Part",game.Players.LocalPlayer.Character)
game.Players.LocalPlayer.Character.Part.Name = "Part2"


			end)
			until running == false
			end)
		end
	end),
	['jump']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					v.Character.Humanoid.WalkSpeed = 0
					v.Character["Left Arm"].BrickColor = BrickColor.new("Toothpaste")
                                        v.Character["Right Arm"].BrickColor = BrickColor.new("Toothpaste")
v.Character["Head"].BrickColor = BrickColor.new("Toothpaste")
v.Character["Torso"].BrickColor = BrickColor.new("Toothpaste")
v.Character["Right Leg"].BrickColor = BrickColor.new("Toothpaste")
v.Character["Left Leg"].BrickColor = BrickColor.new("Toothpaste")
v.Character["Shirt"]:Destroy()
v.Character["Pants"]:Destroy()
				end)
			end)
		end
	end),
	['Sanic']=(function(players)

				for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
							Instance.new("Sparkles",v.Character.Torso)
Instance.new("Smoke",v.Character.Torso)
					v.Character.Humanoid.WalkSpeed = 75
					v.Character["Left Arm"].BrickColor = BrickColor.new("Really blue")
                                        v.Character["Right Arm"].BrickColor = BrickColor.new("Really blue")
v.Character["Head"].BrickColor = BrickColor.new("Really blue")
v.Character["Torso"].BrickColor = BrickColor.new("Really blue")

									end)
			end)
		end
	end),
		['Swim']=(function(players)
for i, v in pairs(players) do
			spawn(function()
				repeat
					ypcall(function()
						wait(0)
						v.Character.Humanoid:ChangeState(4)
					end)
				until running == false
			end)
		end
	end),
	['RemoveSoul']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					v.Character.Humanoid:Destroy()
				end)
			end)
		end
	end),
['unanchor']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					 function scan(o)---Scans
	for _,v in pairs(o:GetChildren()) do --Get all "Objects" in game
		if v:IsA('BasePart') then -- Looks for "PartClass"
			v.Anchored = false -- Locks all "PartClass" Objects
		end
		scan(v)
	end
	
end

scan(workspace)
				end)
			end)
		end
	end),
['anchor']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					function scan(o)---Scans
	for _,v in pairs(o:GetChildren()) do --Get all "Objects" in game
		if v:IsA('BasePart') then -- Looks for "PartClass"
			v.Anchored = true -- Locks all "PartClass" Objects
		end
		scan(v)
	end
	
end

scan(workspace)
				end)
			end)
		end
	end),
		['Fire']=(function(players)
			for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
            Instance.new("Fire",v.Character.Torso)
Instance.new("Smoke",v.Character.Torso)
				end)
			end)
		end
	end),
	['run']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
						ypcall(function()
						wait(0)
					
v.Character["Pants"]:remove()
v.Character["Shirt"]:remove()
						v.Character["Torso"].BrickColor = BrickColor.new("New Yeller")
						v.Character["Head"].BrickColor = BrickColor.new("New Yeller")
						v.Character["Right Arm"].BrickColor = BrickColor.new("New Yeller")
						v.Character["Left Arm"].BrickColor = BrickColor.new("New Yeller")
						v.Character["Right Leg"].BrickColor = BrickColor.new("New Yeller")
						v.Character["Left Leg"].BrickColor = BrickColor.new("New Yeller")
					end)
				
			end)
		end
	end),
	['godapoc']=(function(players)
		if game.Workspace:FindFirstChild("Remote") then
		for i, v in pairs(players) do
			spawn(function()
				repeat
					ypcall(function()
						wait(0)
						workspace.Remote.AddHealth:FireServer(game.Players.LocalPlayer.Chracter.Humanoid, 100)
					end)
				until running == false
			end)
		end
		end
	end),
	['killapoc']=(function(players)
		if game.Workspace:FindFirstChild("Remote") then
			for i, v in pairs(players) do
				if v.Name ~= game.Players.LocalPlayer.Name then
					workspace.Remote.ChangeProperty:FireServer(workspace[v.Name].Humanoid, "Health", 0)
				end
			end
			wait(6)
			for i, v in pairs(game.Workspace:GetChildren()) do
				if (v.Name):lower() == "corpse" then
					v:MoveTo(workspace[game.Players.LocalPlayer.Name].Torso.Position + 
						Vector3.new(math.random(-10,10),0,math.random(-10,10)))
				end
			end
		end
	end),
	['ForceField']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
            Instance.new("ForceField",game.Players.LocalPlayer.Character)
				end)
			end)
		end
	end),
		
	['levy']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				repeat
					ypcall(function()
						wait(0)
						v.leaderstats.Rank.Value= 2469
					end)
				until running == false
			end)
		end
	end),
	['noclip']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				repeat
					ypcall(function()
						wait(0)
						v.Character.Humanoid:ChangeState(11)
					end)
				until running == false
			end)
		end
	end),
['invis']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				
					ypcall(function()
						v.Character["Torso"].Transparency = 1
						v.Character["Right Leg"].Transparency = 1
						v.Character["Left Leg"].Transparency = 1
						v.Character["Right Arm"].Transparency = 1
						v.Character["Left Arm"].Transparency = 1
						v.Character["Head"].Transparency = 1
					end)
				
			end)
		end
	end),
	['sit']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					v.Character.Humanoid.WalkSpeed = 18
					v.Character["Left Arm"].BrickColor = BrickColor.new("Pastel brown")
                                        v.Character["Right Arm"].BrickColor = BrickColor.new("Pastel brown")
v.Character["Head"].BrickColor = BrickColor.new("Pastel brown")
v.Character["Torso"].BrickColor = BrickColor.new("Pastel brown")
v.Character["Right Leg"].BrickColor = BrickColor.new("Pastel brown")
v.Character["Left Leg"].BrickColor = BrickColor.new("Pastel brown")
				end)
			end)
		end
	end),
	['god']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				repeat
				ypcall(function()
					wait(0.1)
					v.Character.Humanoid.Health =  math.huge
v.Character.Humanoid.Health =  11111111111111111111111111111111
v.Character.Humanoid.Health =  11111111111111111111111111111111111111111111
v.Character.Humanoid.Health =  math.huge
				end)
				until running == false
			end)
		end
	end),
['LOL']=(function(players)

for i, v in pairs(players) do
			spawn(function()
				
					ypcall(function()
						wait()
						v.Character["Torso"].Size = Vector3.new(2,2,2)
					end)
				
			end)
		end
	end),
['TEST']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				repeat
					ypcall(function()
						wait()
						v.Character.Humanoid:ChangeState(5);
					end)
				until running == false
			end)
		end
	end),
['TEST1']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				repeat
					ypcall(function()
						wait()
						v.Character.Humanoid:ChangeState(12)
					end)
				until running == false
			end)
		end
	end),
['TEST3']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				repeat
					ypcall(function()
						wait()
						game.Lighting.TimeOfDay="06:00:00"
						wait(3)
						game.Lighting.TimeOfDay="11:00:00"
wait(3)
					end)
				until running == false
			end)
		end
	end),
['LOL1']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				repeat
				ypcall(function()
					
						wait()
						 h = Instance.new("Hint") 
h.Parent = game.Workspace 
h.Text = "By Rexin"

function Color(r, g, b)
	return Color3.new(r/255, g/255, b/255)
end
repeat
wait(4)

   game.Lighting.FogColor=Color(math.random(255), math.random(255), math.random(255))
      h.Text = "By Rexin"


until game.Lighting.FogColor=="1,1,1"
				end)
				until running == false
				end)
		end
	end),
	['Fog']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					game.Lighting.FogEnd = 50
				
				end)
			end)
		end
	end),
['TEST2']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					v.Character["Right Arm"].Size = Vector3.new(1.7,1.7,1.7)
				
				end)
			end)
		end
	end),
['LOL2']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					v.Character["Left Arm"].Size = Vector3.new(1.7,1.7,1.7)
								end)
			end)
		end
end),
['NoFog']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					game.Lighting.FogEnd = 50
				
				end)
			end)
		end
	end),
['LOL3']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					v.Character["Head"].Size = Vector3.new(3,3,3)
								end)
			end)
		end
	end),
['LOL4']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					game.Lighting.TimeOfDay="06:00:00"
								end)
			end)
		end
end),
['NoHead']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
									v.Character["Head"].Transparency = 1
								end)
			end)
		end
end),
['NoLegs']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
									v.Character["Left Leg"].Transparency = 1
									v.Character["Right Leg"].Transparency = 1
								end)
			end)
		end
end),

['LOL5']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					t1 = "http://www.roblox.com/asset/?id=244905904"
t2 = "http://www.roblox.com/asset/?id=244905904"
t3 = "http://www.roblox.com/asset/?id=244905904"
local p = game.Players:GetChildren()
local w = game.Workspace:GetChildren()
for i,v in pairs(p) do
pe = Instance.new("ParticleEmitter", v.Character.Torso)
pe.Texture = t3
pe.VelocitySpread = 10
end


								end)
			end)
		end
	end),
['TEST4']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					game.Lighting.TimeOfDay="11:00:00"
								end)
			end)
		end
	end),
['Gaben1']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					t1 = "http://www.roblox.com/asset/?id=238182091"
t2 = "http://www.roblox.com/asset/?id=238182091"
t3 = "http://www.roblox.com/asset/?id=238182091"
local p = game.Players:GetChildren()
local w = game.Workspace:GetChildren()
for i,v in pairs(p) do
pe = Instance.new("ParticleEmitter", v.Character.Torso)
pe.Texture = t3
pe.VelocitySpread = 10
end

								end)
			end)
		end
	end),
['Gaben2']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					local Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = "http://www.roblox.com/asset/?id=331019701"
Sky.SkyboxDn = "http://www.roblox.com/asset/?id=331019701"
Sky.SkyboxFt = "http://www.roblox.com/asset/?id=331019701"
Sky.SkyboxLf = "http://www.roblox.com/asset/?id=331019701"
Sky.SkyboxRt = "http://www.roblox.com/asset/?id=331019701"
Sky.SkyboxUp = "http://www.roblox.com/asset/?id=331019701"
Sky.StarCount = 0
								end)
			end)
		end
end),
['sky']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				repeat
				ypcall(function()
					wait(0)
					local Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = "http://www.roblox.com/asset/?id=48219210"
Sky.SkyboxDn = "http://www.roblox.com/asset/?id=48219210"
Sky.SkyboxFt = "http://www.roblox.com/asset/?id=48219210"
Sky.SkyboxLf = "http://www.roblox.com/asset/?id=48219210"
Sky.SkyboxRt = "http://www.roblox.com/asset/?id=48219210"
Sky.SkyboxUp = "http://www.roblox.com/asset/?id=48219210"
Sky.StarCount = 0
wait(6)
local Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = "http://www.roblox.com/asset/?id=48925944"
Sky.SkyboxDn = "http://www.roblox.com/asset/?id=48925944"
Sky.SkyboxFt = "http://www.roblox.com/asset/?id=48925944"
Sky.SkyboxLf = "http://www.roblox.com/asset/?id=48925944"
Sky.SkyboxRt = "http://www.roblox.com/asset/?id=48925944"
Sky.SkyboxUp = "http://www.roblox.com/asset/?id=48925944"
Sky.StarCount = 0
wait(9)
local Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = "http://www.roblox.com/asset/?id=119121451"
Sky.SkyboxDn = "http://www.roblox.com/asset/?id=119121451"
Sky.SkyboxFt = "http://www.roblox.com/asset/?id=119121451"
Sky.SkyboxLf = "http://www.roblox.com/asset/?id=119121451"
Sky.SkyboxRt = "http://www.roblox.com/asset/?id=119121451"
Sky.SkyboxUp = "http://www.roblox.com/asset/?id=119121451"
Sky.StarCount = 0
wait(8)
				end)
				until running == false
			end)
		end
	end),
['Gaben3']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					local music = Instance.new("Sound", workspace)
music.SoundId = "http://www.roblox.com/asset/?id=250478588"
music.Volume = 20
music.Looped = false
music:Play()
								end)
			end)
		end
end),
['Pepe1']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					local music = Instance.new("Sound", workspace)
music.SoundId = "http://www.roblox.com/asset/?id=264246827"
music.Volume = 20
music.Looped = false
music:Play()
								end)
			end)
		end
	end),
['Pepe2']=(function(players)
		for i, v in pairs(players) do
			spawn(function()
				repeat
					ypcall(function()
						wait(0)
						v.Character.Humanoid.Jump = true
						
											end)
				until running == false
			end)
		end
	end),
['TEST5']=(function(players)
			for i, v in pairs(players) do
			spawn(function()
				ypcall(function()
					wait(0)
					local Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = "http://www.roblox.com/asset/?id=244905904"
Sky.SkyboxDn = "http://www.roblox.com/asset/?id=244905904"
Sky.SkyboxFt = "http://www.roblox.com/asset/?id=244905904"
Sky.SkyboxLf = "http://www.roblox.com/asset/?id=244905904"
Sky.SkyboxRt = "http://www.roblox.com/asset/?id=244905904"
Sky.SkyboxUp = "http://www.roblox.com/asset/?id=244905904"
Sky.StarCount = 0
								end)
			end)
		end
	end)
	

}

for i,v in pairs(buttonpairs) do
	local tempy=templ:Clone()
	tempy.Parent=content.buttons
	tempy.b1.Text=v[1][1]
	tempy.b1.MouseButton1Down:connect(function()
		running=true
		funcs[v[1][2]](getp())
	end)
	tempy.b2.MouseButton1Down:connect(function()
		running=true
		funcs[v[2][2]](getp())
	end)
	tempy.b2.Text=v[2][1]
	tempy.Position=UDim2.new(0,0,0,(i-1)*30)
end

content.buttons.CanvasSize = UDim2.new(0,0,0,#buttonpairs*30)