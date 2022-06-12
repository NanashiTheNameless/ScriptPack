local player = script.Owner.Value
local gui = game.Players[player].PlayerGui.Screated.MainFrame
local fun = loadstring(script.ScriptCode.Value)
local env = getfenv(fun)
env.print = function (...)
        local Arguments = {...}
        local printout = tostring(Arguments[1])
        for i = 2, #Arguments do printout = printout.. "\t" .. tostring(Arguments[i]) end
                local name = script.Owner.Value
                local display = game.Players[name].PlayerGui.Output.MainFrame
                display.OutputText.Text = printout
                display.Visible = true
                wait(3)
                display.Visible = false
        return printout
end
function Run(scr)
local a
local b
a, b = loadstring(script.ScriptCode.Value, script.ScriptCode.Value) 
--[[Sor being a stringvalue with the player's script]]
                if not a then
                        local hi = game.Players[player].PlayerGui.Output.MainFrame
                        hi.OutputText.Text= tostring(b)
                        hi.Visible = true
                        gui.ScriptText.Text = script.Name.. " Has errored"
                        gui.Visible = true
                        coroutine.resume(coroutine.create(function()
                        wait(5)
                        hi.Visible = false
                        hi.OutputText.Text = ""
                        script:Remove()
                        gui.Visible = false
                        end))
                return
        end
        local c = coroutine.create(a)
        local d,e = coroutine.resume(c)
        if not d then
                        local hi = game.Players[player].PlayerGui.Output.MainFrame
                        hi.OutputText.Text= tostring(e)
                        hi.Visible = true
                        gui.ScriptText.Text = script.Name.. " Has errored"
                        gui.Visible = true
                        coroutine.resume(coroutine.create(function()
                        wait(5)
                        hi.Visible = false
                        hi.OutputText.Text = ""
                        script:Remove()
                        gui.Visible = false
                        end))
                return
        end
        gui.ScriptText.Text = script.Name .. " Has been created"
        gui.Visible = true
        wait(1)
        gui.Visible = false
end
Run(scr)
