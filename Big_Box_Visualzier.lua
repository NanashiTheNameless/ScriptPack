local plr = game:GetService('Players').LocalPlayer;
local char = plr.Character;
function cycle(num)
    local section=num % 1 * 3;
    local secondary=0.5 * math.pi * (section % 1);
    if section < 1 then
        return 1,1 - math.cos(secondary),1 - math.sin(secondary);
    elseif section < 2 then
        return 1 - math.sin(secondary),1,1 - math.cos(secondary);
    else
        return 1 - math.cos(secondary),1 - math.sin(secondary),1;
    end
end
wait(1)
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
{SongName = 'jojo2', Creator ='Nil', ID = 193424165};
{SongName = 'jojo3', Creator ='Nil', ID = 238225411};
{SongName = 'Burnt Rice - Shawn Wasabi', SongDesc = 'Nil', Creator = 'Nil', ID = 327095350};
{SongName = 'jojo', Creator ='Nil', ID = 215717985};
{SongName = 'Condemnation Wings', Creator ='Nil', ID = 379881622};
{SongName = 'Fall Out Boy - Centuries', SongDesc = 'Nil', Creator = 'Nil', ID = 181547615};
{SongName = 'Black Beatles', SongDesc = 'Nil', Creator = 'Nil', ID = 492272696};
{SongName = 'Tristam & Braken - Frame of Mind', Creator = 'Nil', ID = 453388373};
{SongName = 'Tristam - Crave', Creator = 'Nil', ID = 453400867};
{SongName = 'Kent - Don\'t Mind', Creator = 'Nil', ID = 400157162};
{SongName = 'Pegboard Nerds - Disconnected', Creator = 'Nil', ID = 146006186};
{SongName = 'Stairs of time', Creator ='Nil', ID = 262343262};
{SongName = 'Mumen', Creator ='Nil', ID = 337732102};
{SongName = 'Crossing Field', Creator ='Nil', ID = 155183751};
{SongName = 'Courage', Creator ='Nil', ID = 202462405};
{SongName = 'Tristam & Braken - Flight', Creator ='Nil', ID = 326260126};
{SongName = 'Tristam & Rogue - Rewel', Creator= 'Nil', ID = 202972804};
{SongName = 'Tristam - Before We Fade', Creator= 'Nil', ID = 457004310};
{SongName = 'Tristam - The Vine', Creator ='Nil', ID = 332854144};
{SongName = 'Dialga', Creator ='Nil', ID = 183889292};
{SongName = 'Simple and Clean', Creator ='Nil', ID = 201584441};
{SongName = 'Tristam - Till It\'s Over', Creator ='Nil', ID = 186430325};
{SongName = 'Tokyo Machine - Party', Creator= 'Nil', ID = 499446130};
{SongName = 'Ignite', Creator ='Nil', ID = 164833056};
{SongName = 'Echobo', Creator ='Nil', ID = 472381158};
}
function PlayList()
	local sng = Songs[math.random(1,#Songs)]
	Sound.SoundId = 'rbxassetid://'..sng.ID
	Sound:Play()
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
		val:Remove()
		
	elseif msg:sub(1,6) == 'start/' then
		play = true
		PlayList()

	elseif msg:sub(1,5) == 'loop/' and Loop == false then
		Loop = true
		game.Players.LocalPlayer.Character.Torso.Sound.Looped = true

	elseif msg:sub(1,5) == 'loop/' and Loop == true then
		Loop = false
		game.Players.LocalPlayer.Character.Torso.Sound.Looped = false

	elseif msg:sub(1,6) == 'pause/' and Pause == false then
		Pause = true
		game.Players.LocalPlayer.Character.Torso.Sound:Pause()

	elseif msg:sub(1,6) == 'pause/' and Pause == true then
		Pause = false
		game.Players.LocalPlayer.Character.Torso.Sound:Resume()

	elseif msg:sub(1,5) == 'skip/' then
		play = false
	    	Sound:Stop()
		play = true
	   	 PlayList()

	elseif msg:sub(1,5) == 'stop/' then
		play = false
	    	Sound:Stop()
	end

end)

--Visulisers
local Feedback = Instance.new("Part",char)
Feedback.Anchored = true
Feedback.TopSurface='Smooth'
Feedback.BrickColor=BrickColor.new("Bright red")
Feedback.Material = Enum.Material.Neon
local Feedback1 = Instance.new("Part")
Feedback1.Anchored = true
Feedback1.TopSurface='Smooth'
Feedback1.BrickColor=BrickColor.new("Bright red")
Feedback1.Material = Enum.Material.Neon
local Feedback2 = Instance.new("Part",char)
Feedback2.Anchored = true
Feedback2.TopSurface='Smooth'
Feedback2.BrickColor=BrickColor.new("Bright red")
Feedback2.Material = Enum.Material.Neon
local Feedback3 = Instance.new("Part",char)
Feedback3.Anchored = true
Feedback3.TopSurface='Smooth'
Feedback3.BrickColor=BrickColor.new("Bright red")
Feedback3.Material = Enum.Material.Neon
local Feedback4 = Instance.new("Part",char)
Feedback4.Anchored = true
Feedback4.TopSurface='Smooth'
Feedback4.BrickColor=BrickColor.new("Bright red")
Feedback4.Material = Enum.Material.Neon
local Feedback5 = Instance.new("Part",char)
Feedback5.Anchored = true
Feedback5.TopSurface='Smooth'
Feedback5.BrickColor=BrickColor.new("Bright red")
Feedback5.Material = Enum.Material.Neon
local Feedback6 = Instance.new("Part",char)
Feedback6.Anchored = true
Feedback6.TopSurface='Smooth'
Feedback6.BrickColor=BrickColor.new("Bright red")
Feedback6.Material = Enum.Material.Neon
local Feedback7 = Instance.new("Part",char)
Feedback7.Anchored = true
Feedback7.TopSurface='Smooth'
Feedback7.BrickColor=BrickColor.new("Bright red")
Feedback7.Material = Enum.Material.Neon
local Feedback8 = Instance.new("Part",char)
Feedback8.Anchored = true
Feedback8.TopSurface='Smooth'
Feedback8.BrickColor=BrickColor.new("Bright red")
Feedback8.Material = Enum.Material.Neon
local Feedback9 = Instance.new("Part",char)
Feedback9.Anchored = true
Feedback9.TopSurface='Smooth'
Feedback9.BrickColor=BrickColor.new("Bright red")
Feedback9.Material = Enum.Material.Neon
local Feedback10 = Instance.new("Part",char)
Feedback10.Anchored = true
Feedback10.TopSurface='Smooth'
Feedback10.BrickColor=BrickColor.new("Bright red")
Feedback10.Material = Enum.Material.Neon
local Feedback11 = Instance.new("Part",char)
Feedback11.Anchored = true
Feedback11.TopSurface='Smooth'
Feedback11.BrickColor=BrickColor.new("Bright red")
Feedback11.Material = Enum.Material.Neon
local Feedback12 = Instance.new("Part",char)
Feedback12.Anchored = true
Feedback12.TopSurface='Smooth'
Feedback12.BrickColor=BrickColor.new("Bright red")
Feedback12.Material = Enum.Material.Neon
local Feedback13 = Instance.new("Part",char)
Feedback13.Anchored = true
Feedback13.TopSurface='Smooth'
Feedback13.BrickColor=BrickColor.new("Bright red")
Feedback13.Material = Enum.Material.Neon
local Feedback14 = Instance.new("Part",char)
Feedback14.Anchored = true
Feedback14.TopSurface='Smooth'
Feedback14.BrickColor=BrickColor.new("Bright red")
Feedback14.Material = Enum.Material.Neon
local Feedback15 = Instance.new("Part",char)
Feedback15.Anchored = true
Feedback15.TopSurface='Smooth'
Feedback15.BrickColor=BrickColor.new("Bright red")
Feedback15.Material = Enum.Material.Neon
local Feedback16 = Instance.new("Part",char)
Feedback16.Anchored = true
Feedback16.TopSurface='Smooth'
Feedback16.BrickColor=BrickColor.new("Bright red")
Feedback16.Material = Enum.Material.Neon
local Feedback17 = Instance.new("Part",char)
Feedback17.Anchored = true
Feedback17.TopSurface='Smooth'
Feedback17.BrickColor=BrickColor.new("Bright red")
Feedback17.Material = Enum.Material.Neon
local Feedback18 = Instance.new("Part",char)
Feedback18.Anchored = true
Feedback18.TopSurface='Smooth'
Feedback18.BrickColor=BrickColor.new("Bright red")
Feedback18.Material = Enum.Material.Neon
local Feedback19 = Instance.new("Part",char)
Feedback19.Anchored = true
Feedback19.TopSurface='Smooth'
Feedback19.BrickColor=BrickColor.new("Bright red")
Feedback19.Material = Enum.Material.Neon
local Feedback20 = Instance.new("Part",char)
Feedback20.Anchored = true
Feedback20.TopSurface='Smooth'
Feedback20.BrickColor=BrickColor.new("Bright red")
Feedback20.Material = Enum.Material.Neon
local Feedback21 = Instance.new("Part",char)
Feedback21.Anchored = true
Feedback21.TopSurface='Smooth'
Feedback21.BrickColor=BrickColor.new("Bright red")
Feedback21.Material = Enum.Material.Neon
local Feedback22 = Instance.new("Part",char)
Feedback22.Anchored = true
Feedback22.TopSurface='Smooth'
Feedback22.BrickColor=BrickColor.new("Bright red")
Feedback22.Material = Enum.Material.Neon
local Feedback23 = Instance.new("Part",char)
Feedback23.Anchored = true
Feedback23.TopSurface='Smooth'
Feedback23.BrickColor=BrickColor.new("Bright red")
Feedback23.Material = Enum.Material.Neon
-------------------------------------------------PlatForm----------------
local plat1 = Instance.new("Part",char)
plat1.Anchored=true
plat1.Size = Vector3.new(74,3,6)
plat1.BrickColor=BrickColor.new("Black")
plat1.TopSurface='Smooth'
plat1.CFrame = CFrame.new(33,0,-80)
plat1.Material = Enum.Material.Marble

local plat2 = Instance.new("Part",char)
plat2.Anchored=true
plat2.Size = Vector3.new(74,47,2)
plat2.CFrame = CFrame.new(33,23,-82)
plat2.BrickColor=BrickColor.new("Black")
plat2.Material = Enum.Material.Marble

local plat3 = Instance.new("Part",char)
plat3.Anchored=true
plat3.Size = Vector3.new(2,47,4)
plat3.CFrame = CFrame.new(-3,23,-79)
plat3.BrickColor=BrickColor.new("Black")
plat3.Material = Enum.Material.Marble

local plat4 = Instance.new("Part",char)
plat4.Anchored=true
plat4.Size = Vector3.new(2,47,4)
plat4.CFrame = CFrame.new(69,23,-79)
plat4.BrickColor=BrickColor.new("Black")
plat4.Material = Enum.Material.Marble

local plat5 = Instance.new("Part",char)
plat5.Anchored=true
plat5.Size = Vector3.new(70,44,2)
plat5.CFrame = CFrame.new(33,23.5,-78)
plat5.Transparency=.9
local plat6 = Instance.new("Part",char)
plat6.Anchored=true
plat6.Size = Vector3.new(74,1,6)
plat6.CFrame = CFrame.new(33,46,-80)
plat6.BrickColor=BrickColor.new("Black")
plat6.Material = Enum.Material.Marble

local BaseCFrame = CFrame.new(5,0,5)


--Scripting---------------------
Sound.Parent = char
Feedback.Parent = char
Feedback1.Parent = char
Feedback2.Parent = char
Feedback3.Parent = char
Feedback4.Parent = char
Feedback5.Parent = char
Feedback6.Parent = char
Feedback7.Parent = char
Feedback8.Parent = char
Feedback9.Parent = char
Feedback10.Parent = char
Feedback11.Parent = char
Feedback12.Parent = char
Feedback13.Parent = char
Feedback14.Parent = char
Feedback15.Parent = char
Feedback16.Parent = char
Feedback17.Parent = char
Feedback18.Parent = char
Feedback19.Parent = char
Feedback20.Parent = char
Feedback21.Parent = char
Feedback22.Parent = char
Feedback23.Parent = char
--------------Platform Parent------------------------------------
plat1.Parent = char
plat2.Parent = char
plat3.Parent = char
plat4.Parent = char
plat5.Parent = char
plat6.Parent = char

local MaxHeight = 1.5


while wait() do
Feedback.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback1.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback2.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback3.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback4.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback5.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback6.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback7.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback8.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback9.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback10.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback11.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback12.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback13.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback14.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback15.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback16.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback17.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback18.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback19.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback20.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback21.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback22.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback23.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
local Height = Sound.PlaybackLoudness/10 * MaxHeight
local Height2 = Sound.PlaybackLoudness/20 * MaxHeight
local Height3 = Sound.PlaybackLoudness/30 * MaxHeight
local Height4 = Sound.PlaybackLoudness/40 * MaxHeight
local Height5 = Sound.PlaybackLoudness/50 * MaxHeight
local Height6 = Sound.PlaybackLoudness/60 * MaxHeight
local Height7 = Sound.PlaybackLoudness/70 * MaxHeight
local Height8 = Sound.PlaybackLoudness/100 * MaxHeight
local Height9 = Sound.PlaybackLoudness/150 * MaxHeight
local Height10 = Sound.PlaybackLoudness/200 * MaxHeight
local Height11 = Sound.PlaybackLoudness/250 * MaxHeight
local Height12 = Sound.PlaybackLoudness/300 * MaxHeight
local Height13 = Sound.PlaybackLoudness/350 * MaxHeight
local Height14 = Sound.PlaybackLoudness/400 * MaxHeight
local Height15 = Sound.PlaybackLoudness/450 * MaxHeight
local Height16 = Sound.PlaybackLoudness/500 * MaxHeight
local Height17 = Sound.PlaybackLoudness/550 * MaxHeight
local Height18 = Sound.PlaybackLoudness/600 * MaxHeight
local Height19 = Sound.PlaybackLoudness/650 * MaxHeight
local Height20 = Sound.PlaybackLoudness/700 * MaxHeight
local Height21 = Sound.PlaybackLoudness/760 * MaxHeight
local Height22 = Sound.PlaybackLoudness/800 * MaxHeight
local Height23 = Sound.PlaybackLoudness/950 * MaxHeight
local Height24 = Sound.PlaybackLoudness/1000 * MaxHeight

Feedback.Size = Vector3.new(2, (Height ~= 0 and Height or 1), 2)
Feedback.CFrame = CFrame.new(0,1.5,-80) +Vector3.new(0,(Height == 0 and 0 or Height/2),0)

Feedback1.Size = Vector3.new(2, (Height2/10 ~= 0 and Height2 or 1), 2)
Feedback1.CFrame = CFrame.new(3,1.5,-80) +Vector3.new(0,(Height2 == 0 and 0 or Height2/2),0)

Feedback2.Size = Vector3.new(2, (Height3/4 ~= 0 and Height3 or 1), 2)
Feedback2.CFrame = CFrame.new(6,1.5,-80) +Vector3.new(0,(Height3 == 0 and 0 or Height3/2),0)

Feedback3.Size = Vector3.new(2, (Height4 ~= 0 and Height4 or 1), 2)
Feedback3.CFrame = CFrame.new(9,1.5,-80) +Vector3.new(0,(Height4 == 0 and 0 or Height4/2),0)

Feedback4.Size = Vector3.new(2, (Height5 ~= 0 and Height5 or 1), 2)
Feedback4.CFrame = CFrame.new(12,1.5,-80) +Vector3.new(0,(Height5 == 0 and 0 or Height5/2),0)

Feedback5.Size = Vector3.new(2, (Height6 ~= 0 and Height6 or 1), 2)
Feedback5.CFrame = CFrame.new(15,1.5,-80) +Vector3.new(0,(Height6 == 0 and 0 or Height6/2),0)

Feedback6.Size = Vector3.new(2, (Height7 ~= 0 and Height7 or 1), 2)
Feedback6.CFrame = CFrame.new(18,1.5,-80) +Vector3.new(0,(Height7 == 0 and 0 or Height7/2),0)

Feedback7.Size = Vector3.new(2, (Height8 ~= 0 and Height8 or 1), 2)
Feedback7.CFrame = CFrame.new(21,1.5,-80) +Vector3.new(0,(Height8 == 0 and 0 or Height8/2),0)

Feedback8.Size = Vector3.new(2, (Height9 ~= 0 and Height9 or 1), 2)
Feedback8.CFrame = CFrame.new(24,1.5,-80) +Vector3.new(0,(Height9 == 0 and 0 or Height9/2),0)

Feedback9.Size = Vector3.new(2, (Height10 ~= 0 and Height10 or 1), 2)
Feedback9.CFrame = CFrame.new(27,1.5,-80) +Vector3.new(0,(Height10 == 0 and 0 or Height10/2),0)

Feedback10.Size = Vector3.new(2, (Height11 ~= 0 and Height11 or 1), 2)
Feedback10.CFrame = CFrame.new(30,1.5,-80) +Vector3.new(0,(Height11 == 0 and 0 or Height11/2),0)

Feedback11.Size = Vector3.new(2, (Height12 ~= 0 and Height12 or 1), 2)
Feedback11.CFrame = CFrame.new(33,1.5,-80) +Vector3.new(0,(Height12 == 0 and 0 or Height12/2),0)

Feedback12.Size = Vector3.new(2, (Height13 ~= 0 and Height13 or 1), 2)
Feedback12.CFrame = CFrame.new(36,1.5,-80) +Vector3.new(0,(Height13 == 0 and 0 or Height13/2),0)

Feedback13.Size = Vector3.new(2, (Height14 ~= 0 and Height14 or 1), 2)
Feedback13.CFrame = CFrame.new(39,1.5,-80) +Vector3.new(0,(Height14 == 0 and 0 or Height14/2),0)

Feedback14.Size = Vector3.new(2, (Height15 ~= 0 and Height15 or 1), 2)
Feedback14.CFrame = CFrame.new(42,1.5,-80) +Vector3.new(0,(Height15 == 0 and 0 or Height15/2),0)

Feedback15.Size = Vector3.new(2, (Height16 ~= 0 and Height16 or 1), 2)
Feedback15.CFrame = CFrame.new(45,1.5,-80) +Vector3.new(0,(Height16 == 0 and 0 or Height16/2),0)

Feedback16.Size = Vector3.new(2, (Height17 ~= 0 and Height17 or 1), 2)
Feedback16.CFrame = CFrame.new(18,1.5,-80) +Vector3.new(0,(Height17 == 0 and 0 or Height17/2),0)

Feedback17.Size = Vector3.new(2, (Height18 ~= 0 and Height18 or 1), 2)
Feedback17.CFrame = CFrame.new(48,1.5,-80) +Vector3.new(0,(Height18 == 0 and 0 or Height18/2),0)

Feedback18.Size = Vector3.new(2, (Height19 ~= 0 and Height19 or 1), 2)
Feedback18.CFrame = CFrame.new(51,1.5,-80) +Vector3.new(0,(Height19 == 0 and 0 or Height19/2),0)

Feedback19.Size = Vector3.new(2, (Height20 ~= 0 and Height20 or 1), 2)
Feedback19.CFrame = CFrame.new(54,1.5,-80) +Vector3.new(0,(Height20 == 0 and 0 or Height20/2),0)

Feedback20.Size = Vector3.new(2, (Height21 ~= 0 and Height21 or 1), 2)
Feedback20.CFrame = CFrame.new(57,1.5,-80) +Vector3.new(0,(Height21 == 0 and 0 or Height21/2),0)

Feedback21.Size = Vector3.new(2, (Height22 ~= 0 and Height22 or 1), 2)
Feedback21.CFrame = CFrame.new(60,1.5,-80) +Vector3.new(0,(Height22 == 0 and 0 or Height22/2),0)

Feedback22.Size = Vector3.new(2, (Height23 ~= 0 and Height23 or 1), 2)
Feedback22.CFrame = CFrame.new(63,1.5,-80) +Vector3.new(0,(Height23 == 0 and 0 or Height23/2),0)

Feedback23.Size = Vector3.new(2, (Height24 ~= 0 and Height24 or 1), 2)
Feedback23.CFrame = CFrame.new(66,1.5,-80) +Vector3.new(0,(Height24 == 0 and 0 or Height24/2),0)

end
--- Working 100%