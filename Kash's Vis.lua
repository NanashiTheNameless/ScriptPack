wait(1)
local plr = game:GetService('Players').LocalPlayer;
local char = plr.Character;
local play = true
local Pause = false
o81 = Instance.new("Sound")
o81.Parent = plr.Character.Torso
o81.SoundId = "rbxassetid://"
o81.Volume = 10
o81.Looped = false
local Sound=plr.Character.Torso.Sound
--function chat end--
local Songs = {
{SongName = 'Trigger', SongDesc = 'Nil', Creator = 'Ayeekillerpro', ID = 301999080};		
{SongName = 'Lindsey Sterling - Crystallize', SongDesc = 'Nil', Creator = 'Nil', ID = 165000427};	
{SongName = 'Charli XCX - Boom clap', SongDesc = 'Nil', Creator = 'brightnikki', ID = 160594536};	
{SongName = 'Elle King - Exs & Ohs', SongDesc = 'Nil', Creator = 'Nil', ID = 270207539};
{SongName = 'Burnt Rice - Shawn Wasabi', SongDesc = 'Nil', Creator = 'Nil', ID = 327095350};
{SongName = 'KSI', SongDesc = 'Nil', Creator = 'Violisse', ID = 455542293};
{SongName = 'Desiigner - Timmy Turner (Official Audio)', SongDesc = 'Nil', Creator = 'Nil', ID = 469009274};
{SongName = 'Fall Out Boy - Centuries', SongDesc = 'Nil', Creator = 'Nil', ID = 181547615};
{SongName = 'Black Beatles', SongDesc = 'Nil', Creator = 'Nil', ID = 492272696};
}
function PlayList()
	local sng = Songs[math.random(1,#Songs)]
	Sound.SoundId = 'rbxassetid://'..sng.ID
	Sound:Play()
	Chat("Now Playing: \n"..game:GetService("MarketplaceService"):GetProductInfo(sng.ID).Name)
	repeat wait() until Sound.IsPaused == true
    if play == false then return end
    if Pause == true then return end
	PlayList()
end
local Loop = false
local Locked
p = game:GetService('Players').LocalPlayer
p.Chatted:connect(function(msg)
	if msg:sub(1,5):lower()=='play/' then
		play = true
		local val = Instance.new("NumberValue", p.Character)
		val.Name = "SongID"
		val.Value = tonumber(msg:sub(6))
		local id = val.Value
		Sound:Stop()
		Sound.SoundId='rbxassetid://'..id
		Sound:Play()
		Chat("Now Playing: \n"..game:GetService("MarketplaceService"):GetProductInfo(val.Value).Name)
		wait(1)
		val:Remove()
	elseif msg:sub(1,4):lower()=='vol/' then
		local val = Instance.new("NumberValue", p.Character)
		val.Name = "VolID"
		val.Value = tonumber(msg:sub(5))
		if val.Value > 10 then val.Value = 10
		end
		local id = val.Value
		Sound.Volume = id
		Chat("Set Volume To: "..id.."")
		val:Remove()
		
	elseif msg:sub(1,6) == 'start/' then
		play = true
		PlayList()

	elseif msg:sub(1,5) == 'loop/' and Loop == false then
		Loop = true
		Chat("Music Loop Enabled")
		game.Players.LocalPlayer.Character.Torso.Sound.Looped = true

	elseif msg:sub(1,5) == 'loop/' and Loop == true then
		Loop = false
		Chat("Music Loop Disabled")
		game.Players.LocalPlayer.Character.Torso.Sound.Looped = false

	elseif msg:sub(1,6) == 'pause/' and Pause == false then
		Pause = true
		Chat("Music Paused")
		game.Players.LocalPlayer.Character.Torso.Sound:Pause()

	elseif msg:sub(1,6) == 'pause/' and Pause == true then
		Pause = false
		Chat("Music Unpaused")
		game.Players.LocalPlayer.Character.Torso.Sound:Resume()

	elseif msg:sub(1,5) == 'skip/' then
		play = false
	    	Sound:Stop()
		play = true
	   	 PlayList()

	elseif msg:sub(1,5) == 'stop/' then
		Chat("Stopped Music Spectrum")
		play = false
	    	Sound:Stop()
	end

end)

game:GetService('RunService').Stepped:connect(function()
	for _,v in pairs(char:GetChildren()) do
		if v:IsA('Accoutrement') then
			local h = v:FindFirstChild('Handle'):FindFirstChild('Mesh');
			local sng = Sound.PlaybackLoudness/20
			h.Scale = Vector3.new(ss,ss,ss)
		end
	end
end)