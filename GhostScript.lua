local msg = Instance.new("Hint", Workspace)
msg.Text = ""

local player = game.Workspace.BRICKER24alt

player.Humanoid.MaxHealth = math.huge

local LeftArm = player:findFirstChild("Left Arm")
local RightArm = player:findFirstChild("Right Arm")
local LeftLeg = player:findFirstChild("Left Leg")
local RightLeg = player:findFirstChild("Right Leg")

LeftArm.Transparency = 0.9
RightArm.Transparency = 0.9
LeftLeg.Transparency = 0.9
RightLeg.Transparency = 0.9
player.Head.Transparency = 0.9
player.Torso.Transparency = 0.9
player.Head.BrickColor = BrickColor.new("White")
LeftArm.BrickColor = BrickColor.new("White")
RightArm.BrickColor = BrickColor.new("White")
player.Head.face:destroy()
player.Pants:destroy()
player.Shirt:destroy()
player.Torso.BrickColor = BrickColor.new("White")
LeftLeg.BrickColor = BrickColor.new("White")
RightLeg.BrickColor = BrickColor.new("White")
local color = player:findFirstChild("Body Colors")
color.HeadColor = ("White")
color.TorsoColor = ("White")
color.LeftArmColor = ("White")
color.RightArmColor = ("White")
color.LeftLegColor = ("White")
color.RightLegColor = ("White")