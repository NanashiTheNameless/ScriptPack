while not getmetatable(shared) do
  wait()
end
shared(script)
char = game.Players.LocalPlayer.Character
plr = game.Players.LocalPlayer
function Part()
  p = Instance.new("Part", char)
  p.TopSurface = "SmoothNoOutlines"
  p.BottomSurface = "SmoothNoOutlines"
  p.BrickColor = BrickColor.new("New Yeller")
  p.Material = "Neon"
  p.Anchored = true
  p.CanCollide = false
  p.Shape = "Ball"
end
function Part2()
  p2 = Instance.new("Part", char)
  p2.TopSurface = "SmoothNoOutlines"
  p2.BottomSurface = "SmoothNoOutlines"
  p2.BrickColor = BrickColor.new("Really black")
  p2.Material = "Neon"
  p2.Anchored = true
  p2.CanCollide = false
  p2.Shape = "Ball"
end
function Part3()
  p3 = Instance.new("Part", char)
  p3.TopSurface = "SmoothNoOutlines"
  p3.BottomSurface = "SmoothNoOutlines"
  p3.BrickColor = BrickColor.new("Really black")
  p3.Material = "Neon"
  p3.Anchored = true
  p3.CanCollide = false
  p3.Shape = "Ball"
end
local Size = 2
local Songs = {
  {
    SongName = "Skeleton of a Town",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 526102667
  },
  {
    SongName = "Call of Magic",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 526106096
  },
  {
    SongName = "Nightcore - Everytime We Touch",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 511955255
  },
  {
    SongName = "Kasger & Limitless - Miles Away",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 504744582
  },
  {
    SongName = "Mendum - One Third",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 504742829
  },
  {
    SongName = "When Times Were Calm",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 497495161
  },
  {
    SongName = "Sub.Sound - Utopia",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 489438162
  },
  {
    SongName = "mus_ruins (Undertale)",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 427858689
  },
  {
    SongName = "Dawin - Dessert",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 398985560
  },
  {
    SongName = "Flo Rida - My House",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 360755593
  },
  {
    SongName = "Soulja Boy Tell'em - Crank That",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 342687922
  },
  {
    SongName = "Do It In Hollywood - Faber Drive",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 264055218
  },
  {
    SongName = "Faber Drive - Life Is Waiting",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 257639026
  },
  {
    SongName = "Titanfall - PILOTS",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 223206390
  },
  {
    SongName = "Titanfall - FALL TO RISE",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 223206271
  },
  {
    SongName = "OST Titanfall",
    SongDesc = "Nil",
    Creator = "iAmAura",
    ID = 223206183
  }
}
local sound = Instance.new("Sound", char.Torso)
sound.Volume = 10
function PlayList()
  local sng = Songs[math.random(1, #Songs)]
  sound.SoundId = "rbxassetid://" .. sng.ID
  sound:Play()
  wait(sound.TimeLength)
  PlayList()
end
local rs = game:GetService("RunService").RenderStepped
Part()
Part2()
Part3()
spawn(function()
  while rs:wait() do
    rs:wait()
    Size = sound.PlaybackLoudness / 20
    asd = sound.PlaybackLoudness / 65
    p.Size = Vector3.new(asd, 0.2, asd)
    p2.Size = Vector3.new(asd, 0.2, asd)
    p3.Size = Vector3.new(asd, 0.2, asd)
    if Size < 2 then
      Size = 2
    end
    if not char:FindFirstChild("Part") then
      Part()
      wait()
    end
    if Size > 20 then
      p.BrickColor = BrickColor.new("Really red")
    elseif Size > 10 then
      p.BrickColor = BrickColor.new("Institutional white")
    else
      p.BrickColor = BrickColor.new("Toothpaste")
    end
  end
end)
spawn(function()
  while rs:wait() do
    rs:wait()
    for i = 1, 360 do
      wait()
      p.CFrame = char.Torso.CFrame * CFrame.new(0, 9.9, 0) * CFrame.Angles(math.rad(90) + i, 0, math.rad(50))
    end
  end
end)
spawn(function()
  while rs:wait() do
    rs:wait()
    for i = 1, 360 do
      wait()
      p2.CFrame = char.Torso.CFrame * CFrame.new(0, 9.9, 0) * CFrame.Angles(math.rad(90) + i, 0, math.rad(60))
    end
  end
end)
spawn(function()
  while rs:wait() do
    rs:wait()
    for i = 1, 360 do
      wait()
      p3.CFrame = char.Torso.CFrame * CFrame.new(0, 9.9, 0) * CFrame.Angles(math.rad(90) + i, 0, math.rad(70))
    end
  end
end)
local bet = ";"
plr.Chatted:connect(function(m)
  if m:sub(1, 10) == "StartLoop" .. bet then
    PlayList()
  end
  if m:sub(1, 5) == "Play" .. bet then
    local ID = tostring(m:sub(6))
    sound.SoundId = "rbxassetid://" .. ID
    sound:Play()
  end
  if m:sub(1, 5) == "Stop" .. bet then
    sound:Stop()
  end
end)