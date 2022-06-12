local plr = game.Players.LocalPlayer
local char = plr.Character
local gui = Instance.new('ScreenGui',plr.PlayerGui)

local b = Instance.new('BillboardGui')
b.Size = UDim2.new(5,0,6,0)
local f = Instance.new('Frame',b)
f.Size = UDim2.new(1,0,1,0)
f.BackgroundColor3 = Color3.new(0,220/255,220/255)
f.BackgroundTransparency = .65
local t=Instance.new('TextLabel',f)
t.Size=UDim2.new(1,0,.2,0)
t.TextColor3=Color3.new(1,1,1)
t.TextStrokeColor3=Color3.new(0,0,0)
t.TextStrokeTransparency=.75
t.TextScaled=true
t.Name='tx'
t.BackgroundTransparency=1

function sp()
    function mg(p)
        if p then
            local es = b:clone()
            es.Parent = gui
            es.Adornee = p.Torso
            es.AlwaysOnTop = true
            es.Frame.tx.Text = p.Name
        end
    end

    for i,v in pairs(game.Players:players'') do
        if v~=plr then
            mg(v.Character)
            v.CharacterAdded:connect(function()
                wait(.25)mg(v.Character)
            end)
        end
    end
end
sp()