--
--
--
--
--
--
print'Starting.'
-----------------
-------------------------------------------------------------


local plr = game.Players.LocalPlayer
local char = plr.Character
local chat = game:GetService("Chat")
local bet = "'"
local music = "Play"
local rndmsng = {"183114767", "283517369", "206059929", "262754712", "180578946", "258864560", "231711691", "147407805", "200577485", "149811427", "295552951", "295551366", "143669401", "220154175", "173660317", "142312526", "269328052", "274504661", "168499021", "146695656", "234726248", "237522990", "225386578", "166286546", "236530642", "198322245", "221960145", "269220078", "257169477", "280700489", "262304072", "224165466", "180138047", "258987972", "254695481", "157665034", "176264441", "157447648", "142309560", "259096041", "165228339", "162900405", "169118878", "247810634", "176465395", "148284458", "169240756", "255613585", "241335018", "255556481", "162555471", "277991318", "224165466"}
parent = Instance.new("BoolValue", char)
par = Instance.new("BoolValue", char)
snply = Instance.new("BoolValue", char)
rand = Instance.new("BoolValue", char)

rand.Name = "Random Song"
rand.Value = true

gui = Instance.new("ScreenGui", plr.PlayerGui)
f = Instance.new("Frame", gui)
f.Size = UDim2.new(1, 0, 1, 0)
f.BackgroundColor3 = Color3.new(55, 85, 0)
f.BackgroundTransparency = .7
f.BorderColor3 = Color3.new(25, 85 ,0)
tl = Instance.new("TextLabel", f)
tl.Position = UDim2.new(0, 600, 0, 150)
tl.Size = UDim2.new(0, 200, 0, 50)
tl.BackgroundTransparency = 1
tl.Font = "Legacy"
tl.FontSize = "Size48"
tl.Text = "Des DJ V?.?.3"
tl.TextColor3 = Color3.new(70, 0, 255)
tl.BorderColor3 = Color3.new(25, 25, 255)
tl.TextScaled = false
tl.TextStrokeTransparency = Color3.new(255, 255, 255)
tl.TextWrapped = false
tl1 = Instance.new("TextLabel", f)
tl1.Position = UDim2.new(0, 600, 0, 250)
tl1.Size = UDim2.new(0, 200, 0, 50)
tl1.BackgroundTransparency = 1
tl1.Font = "Legacy"
tl1.FontSize = "Size48"
tl1.Text = "Might Be Compatible With Script Builder!?!"
tl1.TextColor3 = Color3.new(17, 0, 255)
tl1.BorderColor3 = Color3.new(25, 55, 255)
tl1.TextScaled = false
tl1.TextStrokeTransparency = Color3.new(255, 255, 255)
tl1.TextWrapped = false
tl2 = Instance.new("TextLabel", f)
tl2.Position = UDim2.new(0, 600, 0, 50)
tl2.Size = UDim2.new(0, 200, 0, 50)
tl2.BackgroundTransparency = 1
tl2.Font = "Legacy"
tl2.FontSize = "Size48"
tl2.Text = ":-)"
tl2.TextColor3 = Color3.new(10, 0, 255)
tl2.BorderColor3 = Color3.new(25, 255, 25)
tl2.TextScaled = true
tl2.TextStrokeTransparency = Color3.new(25, 255, 255)
tl2.TextWrapped = true
wait(5)
gui:Destroy()
print("Des DJ Loaded")
wait(2)
print("Musiclist")
print("jhbgvgvgvgvgvgvrdcufvgbuhkcedvcyugebuc   NNNNAAAAAAAMMMMMEEESSS HEEERRRRREEEE")

function Chatted(msg)
		if msg == bet.."Random" and rand.Value == false then
			rand.Value = true
			print("[][Des DJ][]: Loaded "..rand.Name.." Genre!")
		end

		if msg == bet.."Random Song" and rand.Value == true then
		if snply.Value == false then
			snply.Value = true	
			if parent.Value == true then
				print("Des DJ: Finding A Random Song In The Library")
				wait(1)
				mu = Instance.new("Sound", game.Workspace)
				mu.Volume = 1
				mu.Looped = true
				mu.SoundId = "rbxassetid://"..rndmsng[math.random(1,#rndmsng)]
				mu:Play()
				print("Des DJ: Playing, "..mu.Name)
			elseif parent.Value == false then
				mu = Instance.new("Sound", char.Torso)
				mu.Name = "Des DJ Random Song"
				mu.Volume = 1
				mu.Looped = true
				mu.SoundId = "rbxassetid://"..rndmsng[math.random(1,#rndmsng)]
				mu:Play()
				print("Des DJ: Playing, "..mu.Name)
			end
				print("Des DJ: Found A Random Song")
		end
	elseif rand.Value == false then
		print("Des DJ: "..rand.Name.." Genre Not Loaded!")
	end

	if msg == bet.."Genre All" then
		rand.Value = true
		print("Des DJ: All Genres Loaded!")
	end

	if msg == bet.."Stop" then
		mu.Volume = mu.Volume -.1
		wait(.1)
		mu.Volume = mu.Volume -.1
		wait(.1)
		mu.Volume = mu.Volume -.1
		wait(.1)
		mu.Volume = mu.Volume -.1
		wait(.1)
		mu.Volume = mu.Volume -.1
		wait(.1)
		mu.Volume = mu.Volume -.1
		wait(.1)
		mu.Volume = mu.Volume -.1
		wait(.1)
		mu.Volume = mu.Volume -.1
		wait(.1)
		mu.Volume = mu.Volume -.1
		wait(.1)
		mu.Volume = mu.Volume -.1
		wait(.1)
		mu:remove()
		snply.Value = false
		print("Des DJ: "..mu.Name..", Has Stopped")
	end

	if msg == bet.."Exit" then
		hh.Value = false
		a.Value = false
		me.Value = false
		nc.Value = false
		c.Value = false
		gm.Value = false
		hs.Value = false
		rand.Value = false
		dedm.Value = false
		re.Value = false
		j.Value = false
		r.Value = false
		r2.Value = false
		po.Value = false
		ds.Value = false
		tc.Value = false
		print("Des DJ: Exitted All Genres!")
	end

	if msg == bet.."Loc" and par.Value == false then
		parent.Value = true
		print("Des DJ: Music's Parent Changed To A Special Place")
	end

	if msg == bet.."LocR" and par.Value == false then
		parent.Value = false
		print("Des DJ: Music Will Now Display In "..plr.Name.."'s Torso")
	end

	if msg == bet.."V-" then
		mu.Volume = mu.Volume -.1
		print("Des DJ: "..mu.Name.."'s Volume Is Now; "..mu.Volume)
	end

	if msg == bet.."V+" then
		mu.Volume = mu.Volume +.1
		print("Des DJ: "..mu.Name.."'s Volume Is Now; "..mu.Volume)
	end

	if msg == bet.."V Max" then
		mu.Volume = 1
		print("Des DJ: "..mu.Name.."'s Volume Is Now; "..mu.Volume)
	end

	if msg == bet.."V None" then
		mu.Volume = 0
		print("Des DJ: "..mu.Name.."'s Volume Is Now; "..mu.Volume)
	end

	if msg == bet.."V Half" then
		mu.Volume = .5
		print("Des DJ: "..mu.Name.."'s Volume Is Now; "..mu.Volume)
	end

	if msg == bet.."P Max" then
		mu.Pitch = 1
		print("Des DJ: "..mu.Name.."'s Pitch Is Now; "..mu.Pitch)
	end

	if msg == bet.."P None" then
		mu.Pitch = 0
		print("Des DJ: "..mu.Name.."'s Pitch Is Now; "..mu.Pitch)
	end

	if msg == bet.."P Half" then
		mu.Pitch = .5
		print("Des DJ: "..mu.Name.."'s Pitch Is Now; "..mu.Pitch)
	end
	
	if msg == bet.."P-" then
		mu.Pitch = mu.Pitch -.1
		print("Des DJ: "..mu.Name.."'s Pitch Is Now; "..mu.Pitch)
	end

	if msg == bet.."P+" then
		mu.Pitch = mu.Pitch +.1
		print("Des DJ: "..mu.Name.."'s Pitch Is Now; "..mu.Pitch)
	end

	if msg == bet.."SoundId" then
		h = Instance.new("Hint", game.Workspace)
		h.Text = "The ID for "..mu.Name.." is; "..mu.SoundId
		print("Des DJ: Displaying ID")
		wait(5)
		h:remove()
	end

	if msg == bet.."Sound Name" then
		h = Instance.new("Hint", game.Workspace)
		h.Text = "Current Song Playing On Des DJ: "..mu.Name
		print("Des DJ: Displaying Name")
		wait(5)
		h:remove()
	end

--[[ if msg == bet.."Playlist" then
		print("Des DJ: Displaying Playlist!")
		wait(1)
		print("Playlist")
		wait(.5)
		print("Techno: Satisfy")
		wait(.5)
		print("Pop: Glamorous, Mi Mi Mi, Cheerleader, It's Raining Men, Friday, Numa Numa, Twerk It Like Miley, Somebody's Watching Me, Fight Song, Mmm Yeah Yeah, Uma Thurman")
		wait(.5)
		print("Dubstep: Fade, Borderline, First of the Year, Dum Dee Dum")
		wait(.5)
		print("Rock: Sail, Guarded, Dead Bite, Monster, Burn It Down, Session, Afterlife, Before I Forget")
		wait(.5)		
		print("Hip Hop: A.D.H.D.")
		wait(.5)
		print("Rap: 679, Pound Cake, Flex")
		wait(.5)
		print("Jazz: Fly Me To The Moon, Blue Moon")
		wait(.5)
		print("Remix: Promises (Remix), Dark Horse (Trap Remix)")
		wait(.5)
		print("Dance & EDM: You and Me, Nekozilla, Heart, Turn Down For What, Visions, Rave After Rave, Freaks")
		wait(.5)
		print("House: Where Are U Now, Memories, Raveology")
		wait(.5)
		print("Game Music: Saints Row IV")
		wait(.5)
		print("Country: That's My Kind of Night, Take A Little Ride")
		wait(.5)
		print("Nightcore: Hi Fi Raver, Call The Doctor, La La La, Pina Colada Boy")
		wait(.5)
		print("Meme: Just Do It!, Rainbow Tylenol")
		wait(.5)
		print("Anime: Senpai Gone Love It, AoT Theme (Violin), Angel Beats Theme (Violin)")
	end
	--]]
end


plr.Chatted:connect(Chatted)
