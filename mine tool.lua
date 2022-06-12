local bin = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
bin.Name = "Mining"

local Selection = Instance.new("SurfaceSelection", game:GetService("CoreGui"))

bin.Selected:connect(function(m)
    Selection.Parent = game:GetService("CoreGui")
        m.Button1Down:connect(function()
                local targ = m.Target
                if targ ~= nil then
                    if targ.Parent.Name == "Mine" then
                        local Val = Instance.new("StringValue")
                        Val.Name = "MinedFrom"
                        Val.Value = m.TargetSurface.Name
                        Val.Parent = targ
                    end
                end
        end)
        m.Move:connect(function()
                local targ = m.Target
                if targ ~= nil then
                    if targ.Parent.Name == "Mine" then
                        Selection.Adornee = targ
                        Selection.TargetSurface = m.TargetSurface
                    end
                else
                    Selection.Adornee = nil
                end
        end)
end)

bin.Deselected:connect(function()
    Selection.Parent = nil
    Selection.Adornee = nil
end)
