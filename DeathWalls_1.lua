script.Parent=nil
function load()
        m=Instance.new("Message",workspace)
        m.Text="HERE COME THE WALLS OF DEATH"
        wait(.3)
        m:Remove()
        aaaaa=Instance.new("Part",workspace)
        aaaaa.Size=Vector3.new(508,512,40)
        aaaaa.CFrame=CFrame.new(0,0,0)+Vector3.new(0,-400+512/2,256)
        aaaaa.BottomSurface="Smooth"
        aaaaa.Anchored=true
        aaaaa.Velocity=Vector3.new(0,0,-5)
        pcall(function()
                aaaaa.BrickColor=workspace.Base.BrickColor
        end)
        aaaaa.Name="Base"
        for i=1,24 do 
                wait()
                Head=Instance.new("Part",workspace)
                Head.Name="Base"
                Head.BrickColor=aaaaa.BrickColor
                Head.Size=Vector3.new(512,512,44)
                Head.CFrame=CFrame.new(0,0,0)+Vector3.new(0,-400+512/2,256)
                Head.BottomSurface="Smooth"
                Head.Anchored=true
                Head.Transparency=1
                Head.CanCollide=false
                Hw = Instance.new("Weld")
                Hw.Parent = aaaaa
                Hw.Part0 = aaaaa
                Hw.Part1 = Head
                Hw.C0 = CFrame.new(0,0,0)
        end 
        wait(7)
        local i=0
        while wait() do
        i=i+1
                aaaaa.CFrame=CFrame.new(0,0,0)+Vector3.new(0,-400+512/2,256-5*i)
                if i>=120 then 
                        aaaaa:Remove()
                        load()
                end 
        end 
end
function onChatted(msg) 
        if msg=="stopwod" then
                workspace.Base.Parent=game.Lighting
                for i,v in pairs(workspace:children()) do
                    if v.Name=="Base" then 
                        v:Remove()
                    end
                end
                game.Lighting.Base.Parent=game.Workspace
                print("Stopped")
                load = nil
                script.Disabled=true
                script:Destroy()
        end 
end
game.Players.LocalPlayer.Chatted:connect(onChatted) 
load()
 
--mediafire 