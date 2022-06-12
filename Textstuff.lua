

local player = game:GetService("Players").LocalPlayer

local char = player.Character

local index = 1

colour = "Really red"


version = "3.4: Beta"

local pics = {"http://www.roblox.com/asset/?id=55500353","http://www.roblox.com/asset/?id=81723897","http://www.roblox.com/asset/?id=81732454","http://www.roblox.com/asset/?id=81732506","http://www.roblox.com/asset/?id=81733276","http://www.robox.com/asset/?id=81831303","http://www.roblox.com/asset/?id=81831381","http://www.roblox.com/asset/?id=81831348","http://www.roblox.com/asset/?id=81831322"} --[[ add pics into this table for maor ids to shuffle through]]


local scr = Instance.new("BillboardGui", char.Head)

scr.Adornee = char.Head

scr.Size = UDim2.new(3, 0, 3, 0)

scr.StudsOffset = Vector3.new(0, 5, 0) -- how high it is

scr.Name = "billboardgui"


script.Parent = scr


local pic = Instance.new("ImageLabel", scr)

pic.Image = "http://www.roblox.com/asset/?id=55500353"

pic.Size = UDim2.new(1, 0, 1, 0)

pic.BorderSizePixel = 0

pic.BackgroundTransparency = 1


--[[while wait(2.7) do

    pic.Image = pics[math.random(1,#pics)]

end]]



s = Instance.new("Sound", script)

s.SoundId = "http://www.roblox.com/asset/?id=45819151"

s.Volume = 1

s.Pitch = 1.1

s.Looped = true

wait(1)

s:Play()


local Billboard = Instance.new("BillboardGui", char.Head)

Billboard.Adornee = char.Head

Billboard.Enabled = true

Billboard.Active = true

Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)

Billboard.ExtentsOffset = Vector3.new(-3.5, 2.5, 0)

local Text = Instance.new("TextLabel", Billboard)

Text.Text = "WHOA WHOA WHOA, THERE'S A BRONY IN THE HOUSE NAMED "..string.upper(player.Name).."!"

Text.TextColor3 = BrickColor.new("Cyan").Color

Text.BackgroundTransparency = 1

Text.Size = UDim2.new(30, 0, 3, 0)

Text.FontSize = "Size14"

Text.Font = "ArialBold"



local billbard = Instance.new("BillboardGui", char.Head)


billbard.Adornee=char.Head


billbard.Enabled=true


billbard.Active=true


billbard.Sie=UDim2.new(0.3,0,0.05,0)


billbard.ExtentsOffset=Vector3.new(-3.5,3.5,0)


local text = Instance.new("TextLabel", billbard)


text.Text = "Version: "..version.."!"


text.TextColor3 = BrickColor.new("Really red").Color


text.BackgroundTransparency = 1


text.Size = UDim2.new(30, 0, 3, 0)


text.FontSize = "Size14"


text.Font = "ArialBold"

coroutine.resume(coroutine.create(function() 

    while wait(1.7) do

        Text.TextColor3 = BrickColor.random().Color

    end

end))

coroutine.resume(coroutine.create(function()

    while wait(4) do --zomg, number signs and pecentages-mindbroken

        pic.Image = pics[(index%(#pics))+1]

        index = index + 1

    end

end))
