local Volume = tonumber("1")
local Looped = true
local sound1 = Instance.new("Sound",game.Workspace)
sound1.Volume = Volume
sound1.Looped = Looped
sound1.SoundId = "rbxassetid://316403490"
sound1.Name = "Ranter1"
local sound2 = Instance.new("Sound",game.Workspace)
sound2.Volume = Volume
sound2.Looped = Looped
sound2.SoundId = "rbxassetid://316403787"
sound2.Name = "Ranter2"
local sound3 = Instance.new("Sound",game.Workspace)
sound3.Volume = Volume
sound3.Looped = Looped
sound3.SoundId = "rbxassetid://316403844"
sound3.Name = "Ranter3"
local sound4 = Instance.new("Sound",game.Workspace)
sound4.Volume = Volume
sound4.Looped = Looped
sound4.SoundId = "rbxassetid://316403916"
sound4.Name = "Ranter4"
if Looped == true then
    while true do
        wait(1)
        sound1:Play()
        wait(3.7)
        sound1:Stop()
        sound2:Play()
        wait(3.7)
        sound2:Stop()
        sound3:Play()
        wait(3.448)
        sound3:Stop()
        sound4:Play()
        wait(4.911)
        sound4:Stop()
        end
else
    sound1:Play()
    wait(3.7)
    sound1:Stop()
    sound2:Play()
    wait(3.7)
    sound2:Stop()
    sound3:Play()
    wait(3.448)
    sound3:Stop()
    sound4:Play()
    wait(4.911)
    sound4:Stop()
end