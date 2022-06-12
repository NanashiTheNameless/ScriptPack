Colors = {"Really black", "Lime green", "Really black", "Lime green", "Really black", "Lime green", "Really black"}
                                Player = game:GetService("Players").LocalPlayer
                                Char = Player.Character
                                Torso = Char.Torso
                                Mouse = Player:GetMouse()

                                pcall(function()Char.Platform:Destroy() end)
                                Main = Instance.new("Model",Char)
                                Main.Name = "Platform"
                                script.Parent = Main 
                                Mode = 1
                                Mode2 = 0
                                With = 5 -- Must be 5 and larger. Idk why.
                                Highth = .5
                                OnColor = 1

                                MainP = Instance.new("Part",Main)
                                MainP.FormFactor = "Custom"
                                MainP.Size = Vector3.new(With,Highth,With)
                                MainP.BrickColor = BrickColor.new(Colors[OnColor])
                                MainP.Anchored = true
                                MainP:BreakJoints()
                                Instance.new("CylinderMesh",MainP)

                                game:GetService("RunService").Stepped:connect(function()
                                        if Mode == 1 then
                                                if Mode2 == 1 then
                                                        Torso.CFrame = Torso.CFrame*CFrame.new(0,-.5,0)
                                                elseif Mode2 == 2 then
                                                        Torso.CFrame = Torso.CFrame*CFrame.new(0,.5,0)
                                                end
                                                        MainP.CFrame = Torso.CFrame * CFrame.new(0,-3+-.225,0)
                                        elseif Mode == 2 then
                                                MainP.CFrame = Torso.CFrame * CFrame.new(5,5,5)        
                                        else
                                                Mode = 1
                                                MainP.CFrame = Torso.CFrame * CFrame.new(0,-3+-.225,0)
                                        end
                                end)

                                LastPart = MainP
                                Num = 4
                                game:GetService("RunService").Stepped:connect(function()
                                        local a = OnColor+1
                                        if #Colors < a then
                                                OnColor = 1
                                        else
                                                OnColor = OnColor+1
                                        end
                                        a = MainP:Clone()
                                        a.Mesh.Scale = Vector3.new(.8,.8,.8)
                                        a.Parent = MainP.Parent
                                        a.BrickColor = BrickColor.new(Colors[OnColor])
                                        a.CanCollide = false
                                        aPOS = a.CFrame
                                        coroutine.wrap(function()
                                                for i = 0,1,1/15 do wait()
                                                        a.Transparency = i
                                                end
                                                a:Destroy()
                                        end)()
                                        coroutine.wrap(function()
                                                for i = .8,0,.8/-15 do wait()
                                                        a.Mesh.Scale = Vector3.new(i,i-.05,i)
                                                end
                                        end)()
                                end)
                                local BHold = false
                                Mouse.KeyDown:connect(function(Key)
                                        if Key == "c" and Mode == 1 then
                                                BHold = true
                                                repeat wait() Mode2 = 1 until BHold == false
                                                Mode2 = 0
                                        elseif Key == "z" and Mode == 1 then
                                                BHold = true
                                                repeat wait() Mode2 = 2 until BHold == false
                                                Mode2 = 0
                                        elseif Key == "p" then
                                                if Mode == 1 then
                                                        Mode = 2
                                                        coroutine.wrap(function()
                                                                while Mode == 2 do
                                                                        wait()
                                                                        if Char:GetModelCFrame().p.y < -10 then
                                                                                Mode = 1
                                                                        end
                                                                end
                                                        end)()
                                                else
                                                        Mode = 1
                                                end
                                        end
                                end)
                                Mouse.KeyUp:connect(function(Key)
                                        if Key == "c" or Key == "z" then
                                                BHold = false
                                        end
                                end)
