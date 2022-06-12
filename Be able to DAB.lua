local plr = game.Players.LocalPlayer
local chr = plr.Character
local mouse = plr:GetMouse()

q = Instance.new('HopperBin', plr.Backpack)
q.Name = 'Dab'
Bin=q


dabbing=Instance.new('Sound', plr.Character.Torso)
dabbing.Volume = 5
dabbing.Pitch = 0.7
dabbing.SoundId = 'rbxassetid://437235476'

function stopAnimations()
for _,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
v:Stop()
end
end

Bin.Selected:connect(function(mouse) 
mouse.Button1Down:connect(function() 
local chr = game.Players.LocalPlayer.Character
chr.Animate.Disabled = true
chr.Torso["Left Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
chr.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
game:GetService("Chat"):Chat(plr.Character.Head, "DAAAB", Enum.ChatColor.Blue)
chr.Torso["Neck"].C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
dabbing:Play()
wait(0.3)
local chr = game.Players.LocalPlayer.Character
stopAnimations()
chr.Animate.Disabled = true
chr.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.699999988, 0, 0.939692616, 0, -0.342020124, -0.330366075, -0.258819044, -0.907673359, -0.0885213241, 0.965925813, -0.243210346)
chr.Torso["Right Shoulder"].C1 = CFrame.new(-0.600000024, 0.5, -0.200000003, 0.664462984, 0.241844743, 0.707106769, -0.664462984, -0.241844788, 0.707106769, 0.342020154, -0.939692616, -3.09086197e-008)
chr.Torso["Neck"].C1 = CFrame.new(0, -0.600000024, 0, -0.866025388, 0.5, 0, -0.171010137, -0.29619807, 0.939692616, 0.469846278, 0.813797653, 0.342020124)
wait(2)
stopAnimations()
chr.Torso["Left Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
chr.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
chr.Torso["Neck"].C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
chr.Animate.Disabled = false
end) 
end)