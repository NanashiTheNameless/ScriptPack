wait(3)
print("Ready")
local Width=2
local Max=100
local MainOwner=game.Players:WaitForChild("RapidOrange")
math.randomseed(tick())
local Commanders={}
local char=MainOwner.Character
local TorsoCF=char.Torso.CFrame
local RandomColor=BrickColor.Blue().Color
spawn(function()
   while true do
         --RandomColor=BrickColor.Random().Color
			RandomColor=BrickColor.Blue().Color
   wait(0.2)
   end
end)
local parts=Instance.new("Model",workspace.Terrain)
-- Objects


----------------------------------------------------------------
local SoundFile=MainOwner.Character.Torso

function MakeSound(id,volume,parent)
	local Sound=Instance.new("Sound",parent)
	Sound.Name="CurrentSong"
	Sound.SoundId="rbxassetid://"..id
	Sound.Volume=volume
	Sound:Play()
	Sound.Looped=true
end

--build bars

function BuildBars()
local amnt=math.abs(Max/Width)
TorsoCF=char.Torso:GetRenderCFrame()
for i = 1,amnt do
	SpawnBar(0,(i*Width))
	wait()
end
end

------------------

function PlayMusic(msg)
	if msg:sub(1,5)=="play/" then
		if SoundFile:findFirstChild("CurrentSong") then
			SoundFile.CurrentSong:Stop()
			SoundFile.CurrentSong:Destroy()
			spawn(function()
				wait(1)
				parts:ClearAllChildren()
			end)
		end
		local SoundId=msg:sub(6)
		MakeSound(SoundId,10,SoundFile)
		BuildBars()
	elseif
		msg:sub(1,5)=="stop/" then
		if SoundFile:findFirstChild("CurrentSong") then
			SoundFile.CurrentSong:Stop()
			SoundFile.CurrentSong:Destroy()
			spawn(function()
				wait(1)
				parts:ClearAllChildren()
			end)
		end
	end
end

function AddPlayers(msg)
	if msg:sub(1,4)=="add/" then
		local plrName=msg:sub(5)
		local player=game.Players:findFirstChild(plrName)
		if player then
			player.Chatted:connect(PlayMusic)
		else
			print("Player Not Found")
		end
	end
end

MainOwner.Chatted:connect(PlayMusic)
MainOwner.Chatted:connect(AddPlayers)

local VolumeValue=Instance.new("IntValue",script)
VolumeValue.Name="volume"
VolumeValue.Value=0

function SpawnBar(Height,x)
	local Bar = Instance.new("Part",parts)
	Bar.Name = "Bar"
	Bar.BrickColor=BrickColor.new(RandomColor)
	Bar.Size=Vector3.new(Width,0,Width)
	Bar.CFrame=TorsoCF*CFrame.new(x,0,0)
	Bar.Anchored=true
	Bar.CanCollide=false
        Bar.Locked=true
	Bar.TopSurface="SmoothNoOutlines"
	Bar.BottomSurface="SmoothNoOutlines"
	Bar.BackSurface="SmoothNoOutlines"
	Bar.FrontSurface="SmoothNoOutlines"
	Bar.LeftSurface="SmoothNoOutlines"
	Bar.RightSurface="SmoothNoOutlines"
	Bar.Material="SmoothPlastic"
	--[[spawn(function()
		wait(0.1)
		Bar:TweenSize(UDim2.new(0,50,0,Height),"Out","Quad",.2,false)
	end)]]
	--[[spawn(function()
		wait(0.1)
		Bar:TweenPosition(UDim2.new(0,-70,1,-Height),"Out","Quad",.2,false)
		print("Tweened")
	end)]]
end

function lerp(a, b, t)
    return a * (1-t) + (b*t)
end


spawn(function()
--while true do
game:GetService("RunService").RenderStepped:connect(function()
	local CSound=SoundFile:findFirstChild("CurrentSong")
	if CSound then
		repeat wait()until #parts:GetChildren() == math.abs(Max/Width)
		for i,bar in pairs(parts:GetChildren()) do
			spawn(function()
                        local CF=bar.CFrame
			if i == math.abs(Max/Width) then
				bar.Size=bar.Size:lerp(Vector3.new(Width,math.abs(CSound.PlaybackLoudness/5),30),i/15*CSound.PlaybackLoudness/3000)
			else
				bar.Size=bar.Size:lerp(Vector3.new(Width,parts:GetChildren()[i+1].Size.Y,30),i/15*CSound.PlaybackLoudness/3000+0.4)
			end
                        bar.CFrame=CF
		wait(0.05)
			end)
		end
		
		
		
	end
--wait(.1) 
--end
end)
end)