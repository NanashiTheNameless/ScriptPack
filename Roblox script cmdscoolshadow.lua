--[[
mediafire
Script Version 2.8
CoolCMDs
Script by DarkShadow6
--]]
if script:FindFirstChild("DynamicSource") ~= nil then
 loadstring(script.DynamicSource.Value)()
 --script.DynamicSource:Remove()
else
owner = "jjphariss"
antiban = 3
superadmins = {}
admins = {}
scriptVersion = "2.8"
scriptDisabled = false
message = nil
ban = {"roblew", "031r", "Leikwize", "Beboo1", "buildercool101", "PsXboxWii", "Shoemakerlevel9", "joshbomer9", "Cat123", "Emyle1", "Tessellation", "Shazak", "metroid777777", "joeh1998", "joeh1997401", "superlink2", "tiygamer", "sesor333", "Emyle1", "pantsjk", "cymru72", "BuilderDen", "killthedood", "freddie94", "dman2501", "oddfuturewolfgang", "derekrules", "sonicfan43", "saadman1", "puffy6", "IronInforcersecond", "blox602", "popmanroxout", "crazyAZN320", "gamblerboy54", "TalentedDannybb2134", "dirt97", "Scazzard1", "admin14727", "ToddlerTosser", "DarkShadow6Alts", "TehEpicCaik", "UdderSmacker", "darkmage0292", "KINGkippydizzyzap", "sk8er2859", "Sk8erBoi2859", "jbayan", "jose99", "shotguna99", "dka", "acebailey", "Traase", "iLoveScripts", "coolblocks1234", "purnuttin", "PersonYouWillBan", "TechSmith", "crusher125552", "saber112", "daisy902", "Supdude147", "Supdude147ALT", "Supdude147ALT2", "D1CK5453", "dad8785", "Richard953", "EricWhoNoob", "NoobEricWho", "DieEricWho", "ByeEricWho", "HiEricWho", "SoloScripts", "Idontmakepris", "SpongeBob559", "lilspartacus1337", "ninini550", "xandon", "dmjoe", "fischer9998", "nala779", "Bannana87", "vicman353", "AccountMoniter2", "Peter0The0Blox0Man", "hunta11", "ID18", "xxSNAKExx", "NewlyNewb", "whitetiger446", "belial52", "kellymichael", "Jettsd", "colly101", "SkaterDavid1", "boy678", "NiceNickeyBoot", "Scriptling", "ploop", "Blaze3290", "billilandfan", "scatman88", "Scriptacle", "sucer123", "Scriptus", "SilentFailure", "dragongoblins", "razortorch", "ninjablock1", "PortableSanta", "JuicyNuts", "JuicyNuts2", "JuicyNuts3", "RobloxGamer30001", "Mada98", "Wazakazam111", "AquaticBase", "theultimatej"}
priEnabled = false
priList = {owner}
for i = 1, #admins do table.insert(priList, admins[i]) end
for i = 1, #superadmins do table.insert(priList, superadmins[i]) end
blockerEnabled = true
blockerClasses = {}
blockerNames = {}
blockerMessage = nil
slapPower = 50
ravebreak = 0
explorerObject = game
status = nil
clipboard = nil
finding = false
sticky = nil
stickyEnabled = false
stickyList = {--[[owner.. " is using CoolCMDs version " ..scriptVersion.. " by DarkShadow6.", "Welcome to the server, everyone!", "Hey, " ..owner.. ", did you know you can post stickies like this using \"sticky/new/\"?"]]}
stickyTime = 0
stickyFrequency = 25
stickyShowTime = 5

if script ~= nil then
 script.Name = "CoolCMDs"
 script.Parent = nil
end

explode = function(divider, text)
 if text == nil or divider == nil then return {} end
 if tostring(text) == "" then return {} end
 if tostring(divider) == "" then return {text} end
 local text = tostring(text)
 local divider =  tostring(divider)
 local position = 0
 local words = {}
 for start, stop in function() return string.find(text, divider, position, true) end do
  table.insert(words, string.sub(text, position, start - 1))
  position = stop + 1
 end
 table.insert(words, string.sub(text, position))
 return words
end

function removeChildren(Model, Names, Classes)
 Children = Model:GetChildren()
 if Names[1] == nil and Classes[1] == nil then
  for a = 1, #Children do
   if Children[a]:FindFirstChild("Humanoid") ~= nil then
    Children[a].Humanoid.Health = 0
    wait(0.1)
   end
   if Children[a].ClassName == "Sound" then
    Children[a]:Stop()
    Children[a].Volume = 0
    wait(0.1)
   end
   if Children[a] ~= script then
    Children[a]:Remove()
   end
  end
 else
  for a = 1, #Children do
   for b = 1, #Names do
    if string.match(Children[a].Name:lower(), Names[b]:lower()) then
     if Children[a]:FindFirstChild("Humanoid") ~= nil then
      Children[a].Humanoid.Health = 0
      wait(0.1)
     end
     if Children[a].ClassName == "Sound" then
      Children[a]:Stop()
      Children[a].Volume = 0
      wait(0.1)
     end
     if Children[a] ~= script then
      Children[a]:Remove()
     end
    end
   end
   for b = 1, #Classes do
    if string.match(Children[a].ClassName:lower(), Classes[b]:lower()) then
     if Children[a]:FindFirstChild("Humanoid") ~= nil then
      Children[a].Humanoid.Health = 0
      wait(0.1)
     end
     if Children[a].ClassName == "Sound" then
      Children[a]:Stop()
      Children[a].Volume = 0
      wait(0.1)
     end
     if Children[a] ~= script then
      Children[a]:Remove()
     end
    end
   end
  end
 end
end

function SetGravity(part, gravity, mode)
 if part == nil or gravity == nil or mode == nil then return false end
 gravity = (-196.25 * (gravity / 100)) + 196.25
 if mode == 0 then
  if part:FindFirstChild("Gravity") ~= nil then part.Gravity:Remove() end
  if part.ClassName == "Part" then
   v = Instance.new("BodyForce")
   v.Name = "Gravity"
   v.force = Vector3.new(0, part:GetMass() * gravity, 0)
   v.Parent = part
   return true
  else
   return false
  end
 elseif mode == 1 then
  Objects = part:GetChildren()
  for i = 1, #Objects do
   if Objects[i].ClassName == "Part" then
    if Objects[i]:FindFirstChild("Gravity") ~= nil then Objects[i].Gravity:Remove() end
    v = Instance.new("BodyForce")
    v.Name = "Gravity"
    v.force = Vector3.new(0, Objects[i]:GetMass() * gravity, 0)
    v.Parent = Objects[i]
   end
   if Objects[i].ClassName == "Hat" then
    if Objects[i]:FindFirstChild("Handle") ~= nil then
     if Objects[i].Handle:FindFirstChild("Gravity") ~= nil then Objects[i].Handle.Gravity:Remove() end
     v = Instance.new("BodyForce")
     v.Name = "Gravity"
     v.force = Vector3.new(0, Objects[i].Handle:GetMass() * gravity, 0)
     v.Parent = Objects[i].Handle
    end
   end
  end
  return true
 else
  return false
 end
end

function RemovePlayer(player)
 if player ~= nil then
  if player.Name == owner then return false end
  if player:FindFirstChild("Backpack") ~= nil then
   player.Backpack:Remove()
  end
  if player:FindFirstChild("PlayerGui") ~= nil then
   player.PlayerGui:Remove()
  end
  pcall(function() coroutine.resume(coroutine.create(function(part) part:Remove() end), player) end)
  player = nil
  return true
 end
end

function BanCheck(name)
 for i = 1, #ban do
  if ban[i] == name then return true end
 end
 return false
end

function BlockerCheck(check)
 if blockerEnabled == false then return false end
 for i = 1, #blockerClasses do
  if blockerClasses[i] == check.ClassName:lower() then return true end
 end
 for i = 1, #blockerNames do
  if blockerNames[i] == check.Name:lower() then return true end
 end
 return false
end

function AdminCheck(name)
 if name == owner then return true end
 for i = 1, #admins do
  if admins[i] == name then return true end
 end
 return false
end

function SuperAdminCheck(name)
 if name == owner then return true end
 for i = 1, #superadmins do
  if superadmins[i] == name then return true end
 end
 for i = 1, #admins do
  if admins[i] == name then return true end
 end
 return false
end

function newFormattedMessage(type, text, time, parent)
 if type == "Default" then type = "Message" end
 if type == "Hint" and status ~= nil then status:Remove() end
 message = Instance.new(type)
 message.Text = text
 message.Parent = parent
 if time ~= nil then coroutine.resume(coroutine.create(function(argument1, argument2) wait(argument1) argument2:Remove() end), time, message) end
end

function updateExplorer(text, time)
 if status ~= nil then status:Remove() end
 status = Instance.new("Hint")
 if text ~= nil then
  status.Text = text
  if time ~= nil then
   delay(time, function() updateExplorer() end)
  else
   delay(5, function() updateExplorer() end)
  end
 elseif text == nil then
  if explorerObject ~= nil then
   status.Text = "Object: " ..explorerObject.Name
  else
   status.Text = "Object: " ..explorerObject.Name
  end
  if explorerObject.Parent ~= nil then
   status.Text = status.Text.. " | Parent: " ..explorerObject.Parent.Name
  else
   status.Text = status.Text.. " | Parent: Nil"
  end
  if clipboard ~= nil then
   status.Text = status.Text.. " | Clipboard: " ..clipboard.Name
  else
   status.Text = status.Text.. " | Clipboard: Nil"
  end
 end
 status.Parent = game:GetService("Players")[owner].PlayerGui
end

function onChatted(msg, recipient, speaker)
 if scriptDisabled then return end
 if string.sub(msg, 0, 4) == "/sc " then
  msg = string.sub(msg, 5)
 end
 if msg == "reset/" or msg == "suicide/" then
  if speaker.Character ~= nil then
   if speaker.Character:FindFirstChild("Humanoid") ~= nil then
    speaker.Character.Humanoid.Health = 0
   else
    speaker.Character:BreakJoints()
   end
  end
 end
 if AdminCheck(speaker.Name) == false then return end
 if string.sub(msg, 0, 5) == "yell/" then
  newFormattedMessage("Message", string.sub(msg, 6), 5, Workspace)
 end
 if string.sub(msg, 0, 6) == "yellr/" then
  newFormattedMessage("Message", string.reverse(string.sub(msg, 7)), 5, Workspace)
 end
 if string.sub(msg, 0, 9) == "lighting/" then
  if string.sub(msg, 10) == "morning" or string.sub(msg, 10) == "dawn" then
   game:GetService("Lighting").Brightness = 1
   game:GetService("Lighting").Ambient = Color3.new(127, 127, 150)
   game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
   game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
   game:GetService("Lighting").ShadowColor = Color3.new(178, 178, 178)
   game:GetService("Lighting").TimeOfDay = "07:00:00"
  end
  if string.sub(msg, 10) == "day" or string.sub(msg, 10) == "sunny" or string.sub(msg, 10) == "midday" or string.sub(msg, 10) == "noon" or string.sub(msg, 10) == "bright" then
   game:GetService("Lighting").Brightness = 1
   game:GetService("Lighting").Ambient = Color3.new(135, 127, 135)
   game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
   game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
   game:GetService("Lighting").ShadowColor = Color3.new(178, 178, 178)
   game:GetService("Lighting").TimeOfDay = "12:00:00"
  end
  if string.sub(msg, 10) == "afternoon" or string.sub(msg, 10) == "dusk" then
   game:GetService("Lighting").Brightness = 1
   game:GetService("Lighting").Ambient = Color3.new(150, 110, 110)
   game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
   game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
   game:GetService("Lighting").ShadowColor = Color3.new(178, 178, 178)
   game:GetService("Lighting").TimeOfDay = "18:00:00"
  end
  if string.sub(msg, 10) == "night" or string.sub(msg, 10) == "nite" or string.sub(msg, 10) == "dark" or string.sub(msg, 10) == "midnight" then
   game:GetService("Lighting").Brightness = 0
   game:GetService("Lighting").Ambient = Color3.new(100, 100, 100)
   game:GetService("Lighting").ColorShift_Top = Color3.new(5, 5, 25)
   game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
   game:GetService("Lighting").ShadowColor = Color3.new(178, 178, 178)
   game:GetService("Lighting").TimeOfDay = "22:00:00"
  end
  if string.sub(msg, 10) == "reset" or string.sub(msg, 10) == "normal" then
   game:GetService("Lighting").Brightness = 1
   game:GetService("Lighting").Ambient = Color3.new(127, 127, 127)
   game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
   game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
   game:GetService("Lighting").ShadowColor = Color3.new(178, 178, 178)
   game:GetService("Lighting").TimeOfDay = "14:00:00"
  end
 end
 if msg == "ravebreak/" then
  if ravebreak == 1 then
   ravebreak = 0
   wait(0.05)
   game:GetService("Lighting").Brightness = 1
   game:GetService("Lighting").Ambient = Color3.new(127, 127, 127)
   game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
   game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
   game:GetService("Lighting").ShadowColor = Color3.new(178, 178, 178)
   game:GetService("Lighting").TimeOfDay = "14:00:00"
  else
   ravebreak = 1
  end
  while ravebreak == 1 do
   if game:GetService("Lighting") ~= nil then
    game:GetService("Lighting").Brightness = math.random(0, 1000)
    game:GetService("Lighting").Ambient = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
    game:GetService("Lighting").ColorShift_Top = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
    game:GetService("Lighting").ColorShift_Bottom = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
    game:GetService("Lighting").ShadowColor = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
    game:GetService("Lighting").TimeOfDay = math.random(0, 24).. ":00:00"
   end
   wait(0.9)
  end
 end
 if string.sub(msg, 0, 5) == "slap/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for x = 1, #PlayerList do
   if string.match(PlayerList[x].Name:lower(), string.sub(msg, 6):lower()) and PlayerList[x].Character ~= nil then
    if PlayerList[x].Character:FindFirstChild("Humanoid") ~= nil then
     PlayerList[x].Character.Humanoid.Health = PlayerList[x].Character.Humanoid.Health - math.random(slapPower / 10, slapPower)
     PlayerList[x].Character.Humanoid.Sit = true
    end
    Children = PlayerList[x].Character:GetChildren()
    for i = 1, #Children do
     if Children[i].ClassName == "Part" then
      Children[i].Velocity = Children[i].Velocity + Vector3.new(math.random(-slapPower, slapPower), math.random(-slapPower, slapPower), math.random(-slapPower, slapPower))
      Children[i].RotVelocity = Children[i].RotVelocity + Vector3.new(math.random(-slapPower, slapPower), math.random(-slapPower, slapPower), math.random(-slapPower, slapPower))
     end
    end
   end
  end
 end
 if string.sub(msg, 0, 5) == "stun/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for i = 1, #PlayerList do
   if string.match(PlayerList[i].Name:lower(), string.sub(msg, 6):lower()) and PlayerList[i].Character ~= nil then
    PlayerList[i].Character.Humanoid.PlatformStand = true
   end
  end
 end
 if string.sub(msg, 0, 7) == "unstun/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for i = 1, #PlayerList do
   if string.match(PlayerList[i].Name:lower(), string.sub(msg, 8):lower()) and PlayerList[i].Character ~= nil then
    PlayerList[i].Character.Humanoid.PlatformStand = false
   end
  end
 end
 if string.sub(msg, 0, 5) == "kill/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for i = 1, #PlayerList do
   if string.match(PlayerList[i].Name:lower(), string.sub(msg, 6):lower()) and PlayerList[i].Character ~= nil then
    PlayerList[i].Character:BreakJoints()
   end
  end
 end
 if string.sub(msg, 0, 8) == "explode/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for i = 1, #PlayerList do
   if string.match(PlayerList[i].Name:lower(), string.sub(msg, 9):lower()) and PlayerList[i].Character ~= nil then
    if PlayerList[i].Character:FindFirstChild("Torso") ~= nil then
     explosion = Instance.new("Explosion") 
     explosion.Position = PlayerList[i].Character.Torso.Position
     explosion.BlastRadius = 10
     explosion.BlastPressure = 1000 
     explosion.Parent = Workspace
    end
   end
  end
 end
 if string.sub(msg, 0, 5) == "kick/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for i = 1, #PlayerList do
   if string.match(PlayerList[i].Name:lower(), string.sub(msg, 6):lower()) and PlayerList[i] ~= speaker then
    RemovePlayer(PlayerList[i])
   end
  end
 end
 if string.sub(msg, 0, 5) == "make/" then
  if string.sub(msg, 6) == "base" then
   part = Instance.new("Part")
   part.BrickColor = BrickColor.new("Dark green")
   part.Name = "Base"
   part.Size = Vector3.new(10000, 1, 10000)
   part.Locked = true
   part.Anchored = true
   part.CFrame = CFrame.new(Vector3.new(0, 0.7, 0))
   part.Parent = Workspace
  end
  if string.sub(msg, 6) == "ceiling" then
   part = Instance.new("Part")
   part.BrickColor = BrickColor.new("Dark green")
   part.Name = "Base Ceiling"
   part.Size = Vector3.new(10000, 1, 10000)
   part.Locked = true
   part.Anchored = true
   part.CFrame = CFrame.new(Vector3.new(0, 250, 0))
   part.TopSurface = "Inlet"
   part.BottomSurface = "Studs"
   part.Parent = Workspace
  end
  if string.sub(msg, 6) == "jail" then
   part = Instance.new("Part") part.Anchored = true part.Position = Vector3.new(0,500,0) part.Size = Vector3.new(50,0,50) part.Parent = Workspace part.Locked = true part.Transparency = 0.5
   part = Instance.new("Part") part.Anchored = true part.Position = Vector3.new(25,501,0) part.Size = Vector3.new(0,50,50) part.Parent = Workspace part.Locked = true part.Transparency = 0.5
   part = Instance.new("Part") part.Anchored = true part.Position = Vector3.new(-25,501,0) part.Size = Vector3.new(0,50,50) part.Parent = Workspace part.Locked = true part.Transparency = 0.5
   part = Instance.new("Part") part.Anchored = true part.Position = Vector3.new(0,501,25) part.Size = Vector3.new(50,50,0) part.Parent = Workspace part.Locked = true part.Transparency = 0.5
   part = Instance.new("Part") part.Anchored = true part.Position = Vector3.new(0,501,-25) part.Size = Vector3.new(50,50,0) part.Parent = Workspace part.Locked = true part.Transparency = 0.5
   part = Instance.new("Part") part.Anchored = true part.Position = Vector3.new(0,525,0) part.Size = Vector3.new(50,0,50) part.Parent = Workspace part.Locked = true part.Transparency = 0.5
  end
 end
 if SuperAdminCheck(speaker.Name) == false then return end
 if string.sub(msg, 0, 3) == "qc/" then
  local QC = script:Clone()
  local DynamicSource = Instance.new("StringValue")
  DynamicSource.Name = "DynamicSource"
  DynamicSource.Value = string.sub(msg, 4)
  DynamicSource.Parent = QC
  QC.Name = "QuickScript"
  QC.Parent = Workspace
 end
 if string.sub(msg, 0, 4) == "qc2/" then
  locadstring(string.sub(msg, 5))()
 end
 if string.sub(msg, 0, 7) == "shield/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for i = 1, #PlayerList do
   if string.match(PlayerList[i].Name:lower(), string.sub(msg, 8):lower()) and PlayerList[i].Character ~= nil then
    Instance.new("ForceField").Parent = PlayerList[i].Character
   end
  end
 end
 if string.sub(msg, 0, 9) == "unshield/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for x = 1, #PlayerList do
   if string.match(PlayerList[x].Name:lower(), string.sub(msg, 10):lower()) and PlayerList[x].Character ~= nil then
    Children = PlayerList[x].Character:GetChildren()
    for i = 1, #Children do
     if Children[i].ClassName == "ForceField" then
      Children[i]:Remove()
     end
    end
   end
  end
 end
 if string.sub(msg, 0, 4) == "ban/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for i = 1, #PlayerList do
   if string.match(PlayerList[i].Name:lower(), string.sub(msg, 5):lower()) then
    table.insert(ban, PlayerList[i].Name)
    RemovePlayer(PlayerList[i])
   end
  end
 end
 if string.sub(msg, 0, 6) == "unban/" then
  if string.sub(msg, 7) == "all" then
   ban = {}
   newFormattedMessage("Default", "All players have been unbanned.", 5, speaker)
   return
  end
  for i = 1, #ban do
   if string.match(ban[i], string.sub(msg, 7)) then
    table.remove(ban, i)
    return
   end
  end
 end
 if string.sub(msg, 0, 5) == "jail/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for i = 1, #PlayerList do
   if string.match(PlayerList[i].Name:lower(), string.sub(msg, 6):lower()) and PlayerList[i].Character ~= nil then
    if PlayerList[i].Character:FindFirstChild("Torso") ~= nil then
     PlayerList[i].Character.Torso.Velocity = Vector3.new(0, 0, 0)
     PlayerList[i].Character.Torso.CFrame = CFrame.new(0, 515, 0)
    end
   end
  end
 end
 if string.sub(msg, 0, 7) == "center/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for i = 1, #PlayerList do
   if string.match(PlayerList[i].Name:lower(), string.sub(msg, 8):lower()) and PlayerList[i].Character ~= nil then
    PlayerList[i].Character.Torso.Velocity = Vector3.new(0, 0, 0)
    PlayerList[i].Character.Torso.CFrame = CFrame.new(0, 50, 0)
   end
  end
 end
 if string.sub(msg, 0, 7) == "freeze/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for i = 1, #PlayerList do
   if string.match(PlayerList[i].Name:lower(), string.sub(msg, 8):lower()) and PlayerList[i].Character ~= nil then
    Children = PlayerList[i].Character:GetChildren()
    for x = 1, #Children do
     if Children[x].ClassName == "Part" then
      Children[x].Reflectance = 0.5
      Children[x].Anchored = true
     end
    end
    if PlayerList[i].Character:FindFirstChild("Humanoid") ~= nil then
     PlayerList[i].Character.Humanoid.PlatformStand = true
    end
    if PlayerList[i].Character:FindFirstChild("Torso") ~= nil then
     part = Instance.new("Part")
     part.BrickColor = BrickColor.new("Sky blue")
     part.Name = "Ice"
     Part.FormFactor = "Custom"
     part.Size = Vector3.new(6, 6, 6)
     part.Locked = true
     part.CanCollide = true
     part.TopSurface = "Smooth"
     part.BottomSurface = "Smooth"
     part.Transparency = 0.3
     part.Reflectance = 0.5
     part.Anchored = true
     part.CFrame = CFrame.new(PlayerList[i].Character.Torso.Position)
     part.Parent = PlayerList[i].Character
     s = Instance.new("Smoke")
     s.Parent = PlayerList[i].Character.Torso
     s.Color = Color3.new(0.5, 0.5, 1)
     s.Opacity = 1
     s.RiseVelocity = 0.1
     s.Name = "IceSmoke"
     s.Size = 5
    end
   end
  end
 end
 if string.sub(msg, 0, 5) == "thaw/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for i = 1, #PlayerList do
   if string.match(PlayerList[i].Name:lower(), string.sub(msg, 6):lower()) and PlayerList[i].Character ~= nil then
    if PlayerList[i].Character:FindFirstChild("Humanoid") ~= nil then
     PlayerList[i].Character.Humanoid.PlatformStand = false
    end
    if PlayerList[i].Character:FindFirstChild("Ice") ~= nil then
     PlayerList[i].Character.Ice:Remove()
    end
    if PlayerList[i].Character:FindFirstChild("Torso") ~= nil then
     if PlayerList[i].Character.Torso:FindFirstChild("IceSmoke") ~= nil then
      PlayerList[i].Character.Torso.IceSmoke:Remove()
     end
    end
    Children = PlayerList[i].Character:GetChildren()
    for x = 1, #Children do
     if Children[x].ClassName == "Part" then
      Children[x].Reflectance = 0
      Children[x].Anchored = false
     end
    end
   end
  end
 end
 if string.sub(msg, 0, 6) == "clean/" then
  if string.sub(msg, 7) == "all" then
   removeChildren(Workspace, {}, {})
   part = Instance.new("Part")
   part.BrickColor = BrickColor.new("Dark green")
   part.Name = "Base"
   part.Size = Vector3.new(10000, 1, 10000)
   part.Locked = true
   part.Anchored = true
   part.CFrame = CFrame.new(Vector3.new(0, 0.7, 0))
   part.Parent = Workspace
  end
  if string.sub(msg, 7, 12) == "class/" then
   removeChildren(Workspace, {}, {string.sub(msg, 13)})
  end
  if string.sub(msg, 7, 11) == "name/" then
   removeChildren(Workspace, {string.sub(msg, 12)}, {})
  end
 end
 if string.sub(msg, 0, 6) == "group/" then
  if string.sub(msg, 7, 11) == "none/" then
   for i = 1, #admins do
    if string.match(admins[i]:lower(), string.sub(msg, 12):lower()) then
     table.remove(admins, i)
    end
   end
   for i = 1, #superadmins do
    if string.match(superadmins[i].Name:lower(), string.sub(msg, 12):lower()) then
     table.remove(superadmins, i)
    end
   end
  end
  if string.sub(msg, 7, 17) == "superadmin/" then
   PlayerList = game:GetService("Players"):GetPlayers()
   for i = 1, #PlayerList do
    if string.match(PlayerList[i].Name:lower(), string.sub(msg, 18):lower()) then
     table.insert(superadmins, PlayerList[i].Name)
    end
   end
  end
  if string.sub(msg, 7, 12) == "admin/" then
   PlayerList = game:GetService("Players"):GetPlayers()
   for i = 1, #PlayerList do
    if string.match(PlayerList[i].Name:lower(), string.sub(msg, 13):lower()) then
     table.insert(admins, PlayerList[i].Name)
    end
   end
  end
 end
 if string.sub(msg, 0, 7) == "sticky/" then
  if string.sub(msg, 8) == "toggle" then
   if stickyEnabled == true then
    stickyEnabled = false
    newFormattedMessage("Default", "Stickies off.", 2.5, speaker)
   else
    stickyEnabled = true
    newFormattedMessage("Default", "Stickies on.", 2.5, speaker)
   end
  end
  if string.sub(msg, 8) == "on" then
   stickyEnabled = true
   newFormattedMessage("Default", "Stickies on.", 2.5, speaker)
  end
  if string.sub(msg, 8) == "off" then
   stickyEnabled = false
   newFormattedMessage("Default", "Stickies off.", 2.5, speaker)
  end
  if string.sub(msg, 8, 11) == "new/" then
   table.insert(stickyList, string.sub(msg, 12))
   newFormattedMessage("Message", "Sticky posted.", 2.5, speaker)
  end
  if string.sub(msg, 8, 14) == "delete/" then
   if string.sub(msg, 15) == "all" then
    stickyList = {}
    newFormattedMessage("Default", "All stickies removed.", 2.5, speaker)
    return
   elseif stickyList[tonumber(string.sub(msg, 15))] ~= nil then
    table.remove(stickyList, tonumber(string.sub(msg, 15)))
    newFormattedMessage("Default", "Sticky removed.", 2.5, speaker)
   else
    for i = 1, #stickyList do
     if string.match(stickyList[i]:lower(), string.sub(msg, 15):lower()) then
      table.remove(stickyList, i)
     end
    end
   end
  end
 end
 if string.sub(msg, 0, 8) == "blocker/" then
  if string.sub(msg, 9) == "toggle" then
   if blockerEnabled == true then
    blockerEnabled = false
    newFormattedMessage("Default", "Blocker off.", 2.5, speaker)
   else
    blockerEnabled = true
    newFormattedMessage("Default", "Blocker on.", 2.5, speaker)
   end
  end
  if string.sub(msg, 9) == "on" then
   blockerEnabled = true
   newFormattedMessage("Default", "Blocker on.", 2.5, speaker)
  end
  if string.sub(msg, 9) == "off" then
   blockerEnabled = false
   newFormattedMessage("Default", "Blocker off.", 2.5, speaker)
  end
  if string.sub(msg, 9, 12) == "add/" then
   if string.sub(msg, 13, 18) == "class/" then
    table.insert(blockerClasses, string.sub(msg, 19):lower())
    newFormattedMessage("Message", "Class blocked.", 2.5, speaker)
   end
   if string.sub(msg, 13, 17) == "name/" then
    table.insert(blockerNames, string.sub(msg, 18):lower())
    newFormattedMessage("Message", "Name blocked.", 2.5, speaker)
   end
  end
  if string.sub(msg, 9, 15) == "delete/" then
   if string.sub(msg, 16) == "all" then
    blockerClasses = {}
    blockerNames = {}
    newFormattedMessage("Default", "All class and name blocks removed.", 2.5, speaker)
    return
   end
   if string.sub(msg, 16, 21) == "class/" then
    if string.sub(msg, 22) == "all" then
     blockerClasses = {}
     newFormattedMessage("Default", "All class blocks removed.", 2.5, speaker)
     return
    elseif blockerClasses[tonumber(string.sub(msg, 22))] ~= nil then
     table.remove(blockerClasses, tonumber(string.sub(msg, 22)))
     newFormattedMessage("Default", "Class removed.", 2.5, speaker)
    else
     for i = 1, #blockerClasses do
      if blockerClasses[i]:lower() == string.sub(msg, 22):lower() then
       table.remove(blockerClasses, i)
       return
      end
     end
    end
   end
   if string.sub(msg, 16, 20) == "name/" then
    if string.sub(msg, 21) == "all" then
     blockerNames = {}
     newFormattedMessage("Default", "All name blocks removed.", 2.5, speaker)
     return
    elseif blockerNames[tonumber(string.sub(msg, 21))] ~= nil then
     table.remove(blockerNames, tonumber(string.sub(msg, 21)))
     newFormattedMessage("Default", "Name removed.", 2.5, speaker)
    else
     for i = 1, #blockerNames do
      if blockerNames[i]:lower() == string.sub(msg, 21):lower() then
       table.remove(blockerNames, i)
       return
      end
     end
    end
   end
  end
 end
 if string.sub(msg, 0, 4) == "pri/" then
  if string.sub(msg, 5) == "toggle" then
   if priEnabled == true then
    priEnabled = false
    newFormattedMessage("Default", "Private (\"Pri\") server function off.", 2.5, speaker)
   else
    priEnabled = true
    newFormattedMessage("Default", "Private (\"Pri\") server function on.", 2.5, speaker)
   end
  end
  if string.sub(msg, 5) == "on" then
   priEnabled = true
   newFormattedMessage("Default", "Private (\"Pri\") server function on.", 2.5, speaker)
  end
  if string.sub(msg, 5) == "off" then
   priEnabled = false
   newFormattedMessage("Default", "Private (\"Pri\") server function off.", 2.5, speaker)
  end
  if string.sub(msg, 5, 8) == "add/" then
   if string.sub(msg, 9) == "all" then
    PlayerList = game:GetService("Players"):GetPlayers()
    for i = 1, #PlayerList do
     table.insert(priList, PlayerList[i].Name)
    end
    newFormattedMessage("Message", "All players added.", 2.5, speaker)
    return
   end
   table.insert(priList, string.sub(msg, 9))
   newFormattedMessage("Message", "Name added.", 2.5, speaker)
  end
  if string.sub(msg, 5, 11) == "delete/" then
   if string.sub(msg, 12) == "all" then
    priList = {owner}
    newFormattedMessage("Default", "All names (besides \"" ..owner.. "\") have been removed.", 2.5, speaker)
    return
   end
   for i = 1, #priList do
    if string.match(priList[i]:lower(), string.sub(msg, 12):lower()) then
     table.remove(priList, i)
     return
    end
   end
  end
 end
 if string.sub(msg, 0, 5) == "goto/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for i = 1, #PlayerList do
   if string.match(PlayerList[i].Name:lower(), string.sub(msg, 6):lower()) and PlayerList[i].Character ~= nil and PlayerList[i] ~= speaker then
    if speaker.Character:FindFirstChild("Torso") ~= nil and PlayerList[i].Character:FindFirstChild("Torso") ~= nil then
     speaker.Character.Torso.CFrame = CFrame.new(PlayerList[i].Character.Torso.Position + Vector3.new(0, 5, 0))
     return
    end
   end
  end
 end
 if string.sub(msg, 0, 6) == "fetch/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for i = 1, #PlayerList do
   if string.match(PlayerList[i].Name:lower(), string.sub(msg, 7):lower()) and PlayerList[i].Character ~= nil and PlayerList[i] ~= speaker then
    if speaker.Character:FindFirstChild("Torso") ~= nil and PlayerList[i].Character:FindFirstChild("Torso") ~= nil then
     PlayerList[i].Character.Torso.CFrame = CFrame.new(speaker.Character.Torso.Position + Vector3.new(0, 5, 0))
    end
   end
  end
 end
 if string.sub(msg, 0, 9) == "teleport/" then
  local part1 = {}
  local part2 = nil
  if explode("/", msg)[2] == "me" then
   table.insert(part1, speaker.Character:FindFirstChild("Torso"))
  else
   PlayerList = game:GetService("Players"):GetPlayers()
   for i = 1, #PlayerList do
    if string.match(PlayerList[i].Name:lower(), explode("/", msg)[2]:lower()) and PlayerList[i].Character ~= nil then
     if speaker.Character:FindFirstChild("Torso") ~= nil and PlayerList[i].Character:FindFirstChild("Torso") ~= nil then
      table.insert(part1, PlayerList[i].Character:FindFirstChild("Torso"))
     end
    end
   end
  end
  if explode("/", msg)[3] == "me" then
   part2 = speaker.Character:FindFirstChild("Torso")
  else
   PlayerList = game:GetService("Players"):GetPlayers()
   for i = 1, #PlayerList do
    if string.match(PlayerList[i].Name:lower(), explode("/", msg)[3]:lower()) and PlayerList[i].Character ~= nil then
     if speaker.Character:FindFirstChild("Torso") ~= nil and PlayerList[i].Character:FindFirstChild("Torso") ~= nil then
      part2 = PlayerList[i].Character:FindFirstChild("Torso")
      break
     end
    end
   end
  end
  if #part1 > 0 and part2 ~= nil then
   for i = 1, #part1 do
    if part1[i] ~= nil and part2 ~= nil then
     part1[i].CFrame = CFrame.new(part2.Position + Vector3.new(0, 5, 0))
    end
   end
  end
 end
 if string.sub(msg, 0, 8) == "gravity/" then
  if speaker.Character ~= nil then
   SetGravity(speaker.Character, tonumber(string.sub(msg, 9)), 1)
  end
 end
 if string.sub(msg, 0, 8) == "respawn/" then
  PlayerList = game:GetService("Players"):GetPlayers()
  for i = 1, #PlayerList do
   if string.match(PlayerList[i].Name:lower(), string.sub(msg, 9):lower()) then
    local character = Instance.new("Model")
    character.Name = PlayerList[i].Name
    local head = Instance.new("Part")
    head.Name = "Head"
    head.Transparency = 1
    head.CanCollide = false
    head.Anchored = true
    head.Parent = character
    local humanoid = Instance.new("Humanoid")
    humanoid.Parent = character
    character.Parent = Workspace
    humanoid.Health = 100
    PlayerList[i].Character = character
    humanoid.Health = 0
   end
  end
 end
 if string.sub(msg, 0, 3) == "ca/" then
  if string.sub(msg, 4, 7) == "set/" then
   PlayerList = game:GetService("Players"):GetPlayers()
   for i = 1, #PlayerList do
    if string.match(PlayerList[i].Name:lower(), explode("/", msg)[3]:lower()) then
     PlayerList[i].CharacterAppearance = explode("/http", msg)[4]
     m = Instance.new("Message")
     m.Text = PlayerList[i].CharacterAppearance
     m.Parent = Workspace
     if PlayerList[i].Character ~= nil then PlayerList[i].Character:BreakJoints() end
    end
   end
  end
  if string.sub(msg, 4, 7) == "get/" then
   PlayerList = game:GetService("Players"):GetPlayers()
   for i = 1, #PlayerList do
    if string.match(PlayerList[i].Name:lower(), explode("/", msg)[3]:lower()) then
     if explode("/", msg)[4]:lower() == "terrysuit" then
      PlayerList[i].CharacterAppearance = "http://www.roblox.com/Asset/?id=27911184"
      if PlayerList[i].Character ~= nil then PlayerList[i].Character:BreakJoints() end
     end
    end
    if string.match(PlayerList[i].Name:lower(), explode("/", msg)[3]:lower()) then
     if explode("/", msg)[4]:lower() == "black" then
      PlayerList[i].CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=66852"
      if PlayerList[i].Character ~= nil then PlayerList[i].Character:BreakJoints() end
     end
    end
   end
  end
  if string.sub(msg, 4, 6) == "id/" then
   PlayerList = game:GetService("Players"):GetPlayers()
   for i = 1, #PlayerList do
    if string.match(PlayerList[i].Name:lower(), explode("/", msg)[3]:lower()) then
     PlayerList[i].CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" ..explode("/", msg)[4]
     if PlayerList[i].Character ~= nil then PlayerList[i].Character:BreakJoints() end
    end
   end
  end
  if string.sub(msg, 4, 11) == "default/" then
   PlayerList = game:GetService("Players"):GetPlayers()
   for i = 1, #PlayerList do
    if string.match(PlayerList[i].Name:lower(), string.sub(msg, 12):lower()) then
     PlayerList[i].CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" ..PlayerList[i].userId
     if PlayerList[i].Character ~= nil then PlayerList[i].Character:BreakJoints() end
    end
   end
  end
 end
 if speaker.Name ~= owner then return end
 if string.sub(msg, 0, 8) == "antiban/" then
  if string.sub(msg, 9) == "toggle" then
   if antiban == 3 then
    antiban = 0
    newFormattedMessage("Default", "Antiban off.", 2.5, speaker)
   elseif antiban == 0 then
    antiban = 1
    newFormattedMessage("Default", "Antiban on, level 1 (Warn).", 2.5, speaker)
   elseif antiban == 1 then
    antiban = 2
    newFormattedMessage("Default", "Antiban on, level 2 (Clean).", 2.5, speaker)
   elseif antiban == 2 then
    antiban = 3
    newFormattedMessage("Default", "Antiban on, level 3 (Ban).", 2.5, speaker)
   end
  end
  if string.sub(msg, 9) == "0" or string.sub(msg, 9) == "off" then
   antiban = 0
   newFormattedMessage("Default", "Antiban off.", 2.5, speaker)
  end
  if string.sub(msg, 9) == "1" or string.sub(msg, 9) == "warn" then
   antiban = 1
   newFormattedMessage("Default", "Antiban on, level 1 (Warn).", 2.5, speaker)
  end
  if string.sub(msg, 9) == "2" or string.sub(msg, 9) == "clean" then
   antiban = 2
   newFormattedMessage("Default", "Antiban on, level 2 (Clean).", 2.5, speaker)
  end
  if string.sub(msg, 9) == "3" or string.sub(msg, 9) == "ban" then
   antiban = 3
   newFormattedMessage("Default", "Antiban on, level 3 (Ban).", 2.5, speaker)
  end
 end
 if msg == "show/" then
  finding = false
  updateExplorer()
  
 end
 if msg == "hide/" then
  finding = false
  updateExplorer()
  status:Remove()
 end
 if string.sub(msg, 0, 3) == "in/" then
  finding = false
  if explorerObject ~= nil then
   if explorerObject:FindFirstChild(string.sub(msg, 4)) ~= nil then
    explorerObject = explorerObject[string.sub(msg, 4)]
    updateExplorer()
   elseif explorerObject:FindFirstChild(string.sub(msg, 4)) == nil then
    updateExplorer("'" ..string.sub(msg, 4).. "' is not a child of '" ..explorerObject.Name.. "'!")
   end
  elseif explorerObject == nil then
   updateExplorer("Object is nil!")
  end
 end
 if string.sub(msg, 0, 5) == "find/" then
  finding = false
  if explorerObject ~= nil then
   Children = explorerObject:GetChildren()
   if #Children < 1 then updateExplorer("Object has no children!") return end
   finding = true
   for i = 1, #Children do
    if finding ~= true then return end
    if string.match(Children[i].Name:lower(), string.sub(msg, 6):lower()) then
     updateExplorer(Children[i].Name, 2.5)
     wait(2.5)
    end
   end
  elseif explorerObject == nil then
   updateExplorer("Object is nil!")
  end
 end
 if string.sub(msg, 0, 6) == "match/" then
  if explorerObject ~= nil then
   Children = explorerObject:GetChildren()
   if #Children < 1 then updateExplorer("Object has no children!") return end
   for i = 1, #Children do
    if string.match(Children[i].Name:lower(), string.sub(msg, 7):lower()) then
     explorerObject = Children[i]
     updateExplorer()
     return
    end
   end
   updateExplorer("No matches!")
  elseif explorerObject == nil then
   updateExplorer("Object is nil!")
  end
 end
 if msg == "out/" then
  finding = false
  if explorerObject ~= nil then
   if explorerObject.Parent ~= nil then
    explorerObject = explorerObject.Parent
    updateExplorer()
   elseif explorerObject.Parent == nil then
    updateExplorer("Object does not have a parent!")
   end
  elseif explorerObject == nil then
   updateExplorer("Object is nil!")
  end
 end
 if string.sub(msg, 0, 8) == "service/" then
  finding = false
  if string.sub(msg, 9) == "game" then
   explorerObject = game
   updateExplorer()
  elseif string.sub(msg, 9):lower() == "Workspace" then
   explorerObject = Workspace
   updateExplorer()
  elseif string.sub(msg, 9):lower() == "players" then
   explorerObject = game:GetService("Players")
   updateExplorer()
  elseif string.sub(msg, 9):lower() == "lighting" then
   explorerObject = game:GetService("Lighting")
   updateExplorer()
  elseif string.sub(msg, 9):lower() == "soundscape" then
   explorerObject = game:GetService("SoundScape")
   updateExplorer()
  elseif string.sub(msg, 9):lower() == "starterpack" then
   explorerObject = game:GetService("StarterPack")
   updateExplorer()
  elseif string.sub(msg, 9):lower() == "startergui" then
   explorerObject = game:GetService("StarterGui")
   updateExplorer()
  end
 end
 if msg == "delete/" then
  finding = false
  if explorerObject ~= nil then
   oldexplorerObject = explorerObject.Parent
   explorerObject:Remove()
   explorerObject = oldexplorerObject
   updateExplorer("Object removed.")
  elseif explorerObject == nil then
   updateExplorer("Object is nil!")
  end
 end
 if msg == "clip/" then
  finding = false
  if explorerObject ~= nil then
   clipboard = explorerObject
   updateExplorer("Object clipped to the clipboard.")
  elseif explorerObject == nil then
   updateExplorer("Object is nil!")
  end
 end
 if msg == "clip/clone" then
  finding = false
  if explorerObject ~= nil then
   local check = pcall(function()
    if clipboard ~= nil then
     clipboard:Clone().Parent = explorerObject
    end
    return true
   end)
   if check == true then
    updateExplorer("Clipboard pasted.")
   else
    updateExplorer("Clipboard paste failed!")
   end
  elseif explorerObject == nil then
   updateExplorer("Object is nil!")
  end
 end
 if msg == "clip/move" then
  finding = false
  if explorerObject ~= nil then
   if clipboard ~= nil then
    clipboard.Parent = explorerObject
    clipboard = nil
    updateExplorer("Clipboard moved.")
   else
    updateExplorer("There isn't anything on the clipboard!")
   end
  elseif explorerObject == nil then
   updateExplorer("Target is nil!")
  end
 end
 if string.sub(msg, 0, 4) == "new/" then
  finding = false
  if explorerObject ~= nil then
   newexplorerObject = nil
   local create = pcall(function() newexplorerObject = Instance.new(string.sub(msg, 5)) end)
   if create == true then
    newexplorerObject.Parent = explorerObject
    explorerObject = newexplorerObject
    pcall(function() explorerObject.CFrame = CFrame.new(speaker.Character.Torso.Position + Vector3.new(0, 10, 0)) end)
    updateExplorer()
   else
    updateExplorer("'" ..string.sub(msg, 5).. "' is not a valid ClassName!")
   end
  elseif explorerObject == nil then
   updateExplorer("Object is nil!")
  end
 end
 if string.sub(msg, 0, 7) == "setvar/" then
  if explorerObject ~= nil then
   local check = pcall(function()
    if explode("/", msg)[2] == "color3" then
     explorerObject[explode("/", msg)[3]] = Color3.new(explode("/", msg)[4], explode("/", msg)[5], explode("/", msg)[6])
    end
    if explode("/", msg)[2] == "brickcolor" then
     explorerObject[explode("/", msg)[3]] = BrickColor.new(explode("/", msg)[4])
    end
    if explode("/", msg)[2] == "string" then
     explorerObject[explode("/", msg)[3]] = explode("/", msg)[4]
    end
    if explode("/", msg)[2] == "bool" then
     if tonumber(explode("/", msg)[4]) <= 0 then
      explorerObject[explode("/", msg)[3]] = false
     elseif tonumber(explode("/", msg)[4]) > 0 then
      explorerObject[explode("/", msg)[3]] = true
     end
    end
    if explode("/", msg)[2] == "number" then
     explorerObject[explode("/", msg)[3]] = tonumber(explode("/", msg)[4])
    end
    if explode("/", msg)[2] == "vector2" then
     explorerObject[explode("/", msg)[3]] = Vector2.new(explode("/", msg)[4], explode("/", msg)[5])
    end
    if explode("/", msg)[2] == "vector3" then
     explorerObject[explode("/", msg)[3]] = Vector3.new(explode("/", msg)[4], explode("/", msg)[5], explode("/", msg)[6])
    end
    if explode("/", msg)[2] == "cframe" then
     explorerObject[explode("/", msg)[3]] = CFrame.new(explode("/", msg)[4], explode("/", msg)[5], explode("/", msg)[6])
    end
    if explode("/", msg)[2] == "udim2" then
     explorerObject[explode("/", msg)[3]] = UDim2.new(explode("/", msg)[4], explode("/", msg)[5], explode("/", msg)[6], explode("/", msg)[7])
    end
    return true
   end)
   if check == true then
    updateExplorer("Value set.")
   else
    updateExplorer("Value not set!")
   end
  elseif explorerObject == nil then
   updateExplorer("Object is nil!")
  end
 end
 if string.sub(msg, 0, 7) == "getvar/" then
  if explorerObject ~= nil then
   local check = pcall(function()
    updateExplorer(tostring(explorerObject[explode("/", msg)[2]]))
    return true
   end)
   if check ~= true then
    updateExplorer("Value not found!")
   end
  elseif explorerObject == nil then
   updateExplorer("Object is nil!")
  end
 end
 if string.sub(msg, 0, 7) == "option/" then
  if string.sub(msg, 8) == "stop" then
   scriptDisabled = true
   blockerEnabled = false
   stickyEnabled = false
   priEnabled = false
   newFormattedMessage("Default", "CoolCMDs version " ..scriptVersion.. " stopped.", 10, speaker)
   updateMessage("Shutting down, please wait...", 10)
   wait(10)
   status:Remove()
  end
  if string.sub(msg, 8) == "crash" then
   _G["game"] = nil
   _G["Workspace"] = nil
  end
 end
end

function onPlayerEntered(newPlayer)
 if BanCheck(newPlayer.Name) == true and scriptDisabled == false then
  newFormattedMessage("Hint", newPlayer.Name.. " is banned from this server.", 2.5, Workspace)
  wait(0.1)
  RemovePlayer(newPlayer)
 end
 if string.sub(newPlayer.Name, 0, 6) == "Guest " then
  --newFormattedMessage("Hint", "Guests are not allowed in this server.", 2.5, Workspace)
  --RemovePlayer(newPlayer)
 end
 newPlayer.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, newPlayer) end)
end

function onChildAdded(part)
 if scriptDisabled == true then return end
 if BlockerCheck(part) == true and part ~= message and part ~= sticky and part ~= blockerMessage then
  if blockerMessage ~= nil then blockerMessage:Remove() end
  blockerMessage = Instance.new("Message")
  blockerMessage.Text = "The object \"" ..part.Name.. "\" (Class: \"" ..part.ClassName.. "\") is blocked and has been removed."
  part:Remove()
  blockerMessage.Parent = Workspace
  delay(2.5, function() blockerMessage:Remove() end)
 end
 if part ~= nil then
  part.ChildAdded:connect(onChildAdded)
  Children1 = part:GetChildren()
  if #Children1 >= 0 then
   for i = 1, #Children1 do
    Children1[i].ChildAdded:connect(onChildAdded)
    Children2 = Children1[i]:GetChildren()
    if #Children2 >= 0 then
     for i = 1, #Children2 do
      Children2[i].ChildAdded:connect(onChildAdded)
     end
    end
   end
  end
 end
end

function BackupOnChatted(msg, recipient, speaker)
 if scriptDisabled == true then return end
 if msg == "force stop" then
  onChatted("option/stop", recipient, speaker)
 end
end

game:GetService("Players").ChildAdded:connect(onPlayerEntered)
PlayerList = game:GetService("Players"):GetPlayers()
for i = 1, #PlayerList do
 if BanCheck(PlayerList[i].Name) == true and scriptDisabled == false then
  RemovePlayer(PlayerList[i])
 else
  PlayerList[i].Chatted:connect(function(msg, recipient) onChatted(msg, recipient, PlayerList[i]) end)
  if PlayerList[i].Name == owner then
   PlayerList[i].Chatted:connect(function(msg, recipient) BackupOnChatted(msg, recipient, PlayerList[i]) end)
  end
 end
end
game.ChildAdded:connect(onChildAdded)
Workspace.ChildAdded:connect(onChildAdded)
game:GetService("Lighting").ChildAdded:connect(onChildAdded)
game:GetService("Players").ChildAdded:connect(onChildAdded)
Children1 = Workspace:GetChildren()
for i = 1, #Children1 do
 Children1[i].ChildAdded:connect(onChildAdded)
 Children2 = Children1[i]:GetChildren()
 if #Children2 >= 0 then
  for i = 1, #Children2 do
   Children2[i].ChildAdded:connect(onChildAdded)
   Children3 = Children2[i]:GetChildren()
   if #Children3 >= 0 then
    for i = 1, #Children3 do
     Children3[i].ChildAdded:connect(onChildAdded)
    end
   end
  end
 end
end

updateExplorer()
newFormattedMessage("Default", "CoolCMDs version " ..scriptVersion.. " started.", 5, game:GetService("Players")[owner])

while true do
 if scriptDisabled == false then
  if antiban == 1 then
   if game:GetService("Players"):FindFirstChild(owner) == nil then
    newFormattedMessage("Message", owner.. " has been removed. Antiban level 1: Warn", 5, Workspace)
    wait(5.01)
   end
   if game:GetService("Players"):FindFirstChild(owner) == nil then
    newFormattedMessage("Message", "Someone in this server either enjoys to remove players, has ran a \"pri\" script, or " ..owner.. " has left.", 5, Workspace)
    wait(5.01)
   end
   if game:GetService("Players"):FindFirstChild(owner) == nil then
    newFormattedMessage("Message", "This message will continue to loop until " ..owner.. " reappears.", 5, Workspace)
    wait(5.01)
   end
  elseif antiban == 2 then
   if game:GetService("Players"):FindFirstChild(owner) == nil then
    newFormattedMessage("Message", owner.. " has been removed. Antiban level 2: Clean", 5, Workspace)
    wait(5.01)
   end
   if game:GetService("Players"):FindFirstChild(owner) == nil then
    newFormattedMessage("Message", "The game will be cleaned unless " ..owner.. " reappears within the following countdown.", 5, Workspace)
    wait(5.01)
   end
   if game:GetService("Players"):FindFirstChild(owner) == nil then
    newFormattedMessage("Message", "If " ..owner.. " has been banned, unban " ..owner.. " or remove your script.", 5, Workspace)
    wait(5.01)
   end
   if game:GetService("Players"):FindFirstChild(owner) == nil then
    for i = 25, 0, -1 do
     if game:GetService("Players"):FindFirstChild(owner) == nil then
      newFormattedMessage("Message", "Time left until the server is cleaned: " ..i, 1, Workspace)
      wait(1)
     end
    end
   end
   if game:GetService("Players"):FindFirstChild(owner) == nil then
    while true do
     if game:GetService("Players"):FindFirstChild(owner) ~= nil then break end
     for i, p in ipairs(Workspace:GetChildren()) do
      p:Remove()
     end
     wait()
    end
   end
  elseif antiban == 3 then
   if game:GetService("Players"):FindFirstChild(owner) == nil then
    newFormattedMessage("Message", owner.. " has been removed. Antiban level 3: Ban,", 5, Workspace)
    wait(5.01)
   end
   if game:GetService("Players"):FindFirstChild(owner) == nil then
    newFormattedMessage("Message", "All players will be removed unless " ..owner.. " reappears within the following countdown.", 5, Workspace)
    wait(5.01)
   end
   if game:GetService("Players"):FindFirstChild(owner) == nil then
    newFormattedMessage("Message", "If " ..owner.. " has been banned, unban " ..owner.. " or remove your script.", 5, Workspace)
    wait(5.01)
   end
   if game:GetService("Players"):FindFirstChild(owner) == nil then
    for i = 25, 0, -1 do
     if game:GetService("Players"):FindFirstChild(owner) == nil then
      newFormattedMessage("Message", "Time left until players are removed: " ..i, 1, Workspace)
      wait(1)
     end
    end
   end
   if game:GetService("Players"):FindFirstChild(owner) == nil then
    while true do
     if game:GetService("Players"):FindFirstChild(owner) ~= nil then break end
     for i, p in ipairs(game:GetService("Players"):GetPlayers()) do
      if p.Name ~= owner then pcall(function() p:Remove() end) end
     end
     for i, p in ipairs(Workspace:GetChildren()) do
      pcall(function() p:Remove() end)
     end
     wait()
    end
   end
  end
  if stickyEnabled == true then
   stickyTime = stickyTime + 0.1
   if #stickyList > 0 and stickyTime >= stickyFrequency then
    sticky = Instance.new("Message")
    sticky.Text = stickyList[math.random(1, #stickyList)]
    sticky.Parent = Workspace
    stickyTime = -stickyShowTime
    delay(stickyShowTime, function() sticky:Remove() end)
   end
  end
  if priEnabled == true then
   PlayerList = game:GetService("Players"):GetPlayers()
   for i = 1, #PlayerList do
    match = false
    for x = 1, #priList do
     if PlayerList[i].Name == priList[x] then
      match = true
     end
    end
    if match == false then
     newFormattedMessage("Hint", "Player " ..PlayerList[i].Name.. " was removed.", 5, Workspace)
     PlayerList[i]:Remove()
    end
   end
  end
 end
 wait(0.1)
end
end
