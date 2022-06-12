if string.sub(cmd,1,6) == "local/" or string.sub(cmd,1,12) == "localscript/" then
                pcall(function() ls.Owner.Value = plyr.Name end)
                if string.find(cmd,"local/") then
                        ls.ScriptCode.Value = string.gsub(msg,"local/","")
                end
                if string.find(cmd,"localscript/") then
                        ls.ScriptCode.Value = string.gsub(msg,"localscript/","")
                end
                ls.Parent = game.Players[plyr.Name].Backpack
                ls.Disabled = true
                wait(.05)
                ls.Disabled = false
        end
