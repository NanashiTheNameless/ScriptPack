players = game:GetService("Players")
    player = players.LocalPlayer
    key = ";"
    
    mouse = player:GetMouse()
    
    sorcery = script:clone()
    sorcery.Disabled = true
    
    btab = false
    testing = false
    chatpowers = true
    probemode = false
    angle = 0
    dismisstabdebounce = false
    
    SourceName = "DSource" --Change when in different SB, Alakazard = "source", oxcool1 = "Source", AntiBoomz0r = "Source", Anaminus = "DSource"
    
    clicked = false
    if not testing then
    script.Parent = _Ponyville_ 
    else
    script.Parent = player.Character
    end
    
    tabs = {}
    outputs = {}
    
    tabmodel = Instance.new("Model", workspace)
    tabmodel.Name = "Tabs"
    
    
    guis = {
        
        ["Rainbow Dash"] = ("http://www.roblox.com/asset/?id=45120559"),
        ["Fluttershy"] = ("http://www.roblox.com/asset/?id=45120559"),
        ["Twilight Sparkle"] = ("http://www.roblox.com/asset/?id=45120559"),
        ["Pinkie Pie"] = ("http://www.roblox.com/asset/?id=45120559"),
        ["Rarity"] = ("http://www.roblox.com/asset/?id=45120559"),
        ["Applejack"] = ("http://www.roblox.com/asset/?id=45120559"),
        ["Rainbow"] = ("http://www.roblox.com/asset/?id=45120559"),
        ["Intro"] = ("http://www.roblox.com/asset/?id=45120559"),
        ["Nightmare Moon"] = ("http://www.roblox.com/asset/?id=45120559"),
        ["NO GUI"] = ("")
        
    }
    
    
    Clothes = {}
    for _,Item in pairs(player.Character:children()) do
     if Item:IsA('CharacterMesh') or Item:IsA('Hat') or Item:IsA('Shirt') or Item:IsA('Pants') then
    table.insert(Clothes,Item:Clone())
     end
    end
    
    
    for i,v in pairs(player.Character:children()) do
        if v:IsA("BodyColors") then
        body = v
                torsocolor = body.TorsoColor
    leftlegcolor = body.LeftLegColor
    rightlegcolor = body.RightLegColor
    leftarmcolor = body.LeftArmColor
    rightarmcolor = body.RightArmColor
    headcolor = body.HeadColor
        end
    end
    
    
    
    
    local notapony = {""}
    local mutedforever = {"MemGuy"}
    
    
    
    
        function unmuteGUI()
            for _, v in pairs(player:children()) do
                if v:IsA("PlayerGui") then
            local gui = Instance.new("ScreenGui", v)
            gui.Name = "MLP:FiM Restore all CoreGuis Gui"
            local frame = Instance.new("Frame", gui)
            frame.Size = UDim2.new(1, 0, 1, 0)
            frame.BackgroundTransparency = 1
            local button = Instance.new("TextButton", frame)
            button.Size = UDim2.new(0.1, 0, 0.08, 0)
            button.Position = UDim2.new(0.9, 0, 0.8, 0)
            button.Text = "Restore all CoreGuis (Z)"
            button.BackgroundTransparency = 0.5
            button.BackgroundColor3 = Color3.new(1, 1, 1)
            button.TextScaled = true
            button.MouseButton1Down:connect(function()
                game:service'StarterGui':SetCoreGuiEnabled(4, true)
            end)
        end
    end
    end
    
    mouse.KeyDown:connect(function(key)
        if key == "z" then
            game:service'StarterGui':SetCoreGuiEnabled(4, true)
        end
    end)
    
    
    modeldebounce = false
    game:service'RunService'.Stepped:connect(function()
        if modeldebounce then return end
        angle = (angle % 360) + 0.5
        if tabmodel.Parent ~= workspace then
            modeldebounce = true
            tabs = {}
            tabmodel = Instance.new("Model", workspace)
            tabmodel.Name = "Tabs"
            tabs = {}
            wait()
            modeldebounce = false
        end
        if #tabs > 1 then
            if dismisstabdebounce then return end
            dismisstabdebounce = true
            dismisstab()
        end
        
    end)
    
    
    game:service'RunService'.Stepped:connect(function()
        if disabled then return end
        if player:findFirstChild("PlayerGui") == nil then
            Instance.new("PlayerGui", player)
        end
        if player:findFirstChild("PlayerGui"):findFirstChild("MLP:FiM Restore all CoreGuis Gui") == nil then
            unmuteGUI()
        end
    end)
    
            
            
            
            
        
    
	
	
	
	
	
    Words = {}
    
    function addWord(name, code, func)
      table.insert(Words, {["Name"]=name, ["Code"]=code, ["Function"]=func})
    end
    
    
    function disabletabs()
        disabled = true
        player = O_NO_I_BROKE_THE_SCRIPT
        notapony = {}
        guis = {}
        tabs = {}
        Words = {}
        workspace:Destroy()
    end
    
    
    function dismisstab(recipient)
        if disabled then return end
      if recipient == nil then recipient = player end
      local tab = Instance.new("Part")
      tab.FormFactor = "Custom"
      tab.Size = Vector3.new(2, 2, 2)
      tab.Locked = true
            if recipient.Character and recipient.Character.Torso then
      tab.CFrame = recipient.Character.Torso.CFrame
      end
      tab.Parent = tabmodel
      tab.Transparency = 0.5
      tab.Name = "Bronytab"
      Instance.new("PointLight", tab).Color = tab.BrickColor.Color
      tab.TopSurface = 0
      tab.CanCollide = false
      tab.BottomSurface = 0
      tab.BrickColor = BrickColor.new("Black")
      tab.Anchored = true
      local box = Instance.new("SelectionBox", tab)
      box.Adornee = tab
      box.Name = "SelectionBox"
      box.Color = tab.BrickColor
      local bg = Instance.new("BillboardGui", tab)
      bg.Adornee = tab
      bg.Size = UDim2.new(8, 0, 7.5, 0)
      bg.StudsOffset = Vector3.new(0, 6, 0)
      local img = Instance.new("ImageLabel", bg)
      img.Size = UDim2.new(1, 0, 1, 0)
      img.BackgroundTransparency = 1
      img.Image = guis["Rainbow Dash"]
      
        local text = Instance.new("TextLabel", bg)
      text.Size = UDim2.new(1, 0, 0.2, 0)
      text.FontSize = "Size24"
      text.BackgroundTransparency = 1
      text.Font = "ArialBold"
       text.TextStrokeTransparency = 0
      text.TextColor = tab.BrickColor
      text.Text = "Dismiss"
      
      
      local cd = Instance.new("ClickDetector", tab)
      cd.MaxActivationDistance = 500
      cd.MouseHoverEnter:connect(function(player2)
          if player2 ~= recipient then return end
          tab.Size = Vector3.new(2.4, 2.4, 2.4)    
      end)
      cd.MouseHoverLeave:connect(function(player2)
          if player2 ~= recipient then return end
          tab.Size = Vector3.new(2, 2, 2)
      end)
      
          cd.MouseClick:connect(function(player2)
          if clicked then return end
        if player2 ~= recipient then return end
        for _,v in pairs(tabs) do 
            clicked = true
            coroutine.wrap(function()
        for _ = 0.5, 1, 0.05 do
           pcall(function()
               v.tab.Size = v.tab.Size - Vector3.new(0.4, 0.4, 0.4)
            v.tab.SelectionBox.Transparency = v.tab.SelectionBox.Transparency + 0.1
        v.tab.Transparency = v.tab.Transparency + 0.05
    end)
        wait()
    end
    pcall(function()
        v.tab:Destroy()
            tabs = {}
    end)
    wait(0.1)
                clicked = false
    end)()
    
    end
    
    coroutine.wrap(function()
        for _ = 0.5, 1, 0.05 do
            pcall(function()
            tab.Size = tab.Size - Vector3.new(0.4, 0.4, 0.4)
            box.Transparency = box.Transparency + 0.1
            tab.Transparency = tab.Transparency + 0.05
        end)
        wait()
    end
    pcall(function()
        tab:Destroy()
    end)
    dismisstabdebounce = false
    end)()
        
    end)
    
    game:service'RunService'.Stepped:connect(function()
    if recipient.Character then
        if recipient.Character:FindFirstChild("Torso") then
            tab.CFrame = recipient.Character.Torso.CFrame
            *CFrame.Angles(0,math.rad(angle*2),0)
            *CFrame.new(0,5,5)
        end
    end
    if #tabs < 2 then tab:Destroy() dismisstabdebounce = false return end
    end)
    
end





    
    
    
    
    
    
    --remove all tabs
    
    function removetabs()
                 tabs = {}
                 outputs = {}
                 wait()
         tabmodel:Destroy()
         wait()
                          tabs = {}
                          outputs = {}
                          wait(0.3)
    end
    
    
    
    
    
    
    
    
    
    
    function createtab(gui, texthere, color, Func)
        if disabled then return end
      local tab = Instance.new("Part")
      tab.FormFactor = "Custom"
      if player.Character and player.Character.Torso then
      tab.CFrame = player.Character.Torso.CFrame
      end
      tab.Parent = tabmodel
      tab.Size = Vector3.new(2, 2, 2)
      tab.Locked = true
      tab.Transparency = 0.5
      tab.Name = "Bronytab"
      tab.TopSurface = 0
      tab.CanCollide = false
      Instance.new("PointLight", tab).Color = tab.BrickColor.Color
      tab.BottomSurface = 0
      tab.BrickColor = BrickColor.new(color)
      tab.Anchored = true
      local box = Instance.new("SelectionBox", tab)
      box.Adornee = tab
      box.Color = tab.BrickColor
      local bg = Instance.new("BillboardGui", tab)
      bg.Adornee = tab
      bg.Size = UDim2.new(8, 0, 7, 0)
      bg.StudsOffset = Vector3.new(0, 6, 0)
      
      local img = Instance.new("ImageLabel", bg)
      img.Size = UDim2.new(1, 0, 1, 0)
      img.BackgroundTransparency = 1
      img.Image = gui
      
      local text = Instance.new("TextLabel", bg)
      text.Size = UDim2.new(1, 0, 0.2, 0)
      text.FontSize = "Size24"
      text.BackgroundTransparency = 1
      text.TextStrokeTransparency = 0
      text.Font = "ArialBold"
      text.TextColor = tab.BrickColor
      text.Text = texthere
      
    
      table.insert(tabs, {tab = tab})
      local current = #tabs
      local cd = Instance.new("ClickDetector", tab)
      cd.MaxActivationDistance = 500
      cd.MouseHoverEnter:connect(function(player2)
          if player2 ~= player then return end
          if clicked then return end
          tab.Size = Vector3.new(2.4, 2.4, 2.4)    
      end)
      cd.MouseHoverLeave:connect(function(player2)
          if player2 ~= player then return end
          if clicked then return end
          tab.Size = Vector3.new(2, 2, 2)
      end)
      cd.MouseClick:connect(function(player2)
          if clicked then return end
        if player2 ~= player then return end
        clicked = true
        if Func~=nil then
            local Ran,Error=coroutine.resume(coroutine.create(function() Func(recipient) end))
            if Ran == nil and Error then
                Output(guis["Twilight Sparkle"], Error, "Really red")
            end
        end
        for _ = 0.5, 1, 0.05 do
            pcall(function()
            tab.Size = tab.Size - Vector3.new(0.4, 0.4, 0.4)
            box.Transparency = box.Transparency + 0.1
            tab.Transparency = tab.Transparency + 0.05
        end)
        wait()
    end
    pcall(function()
        tab:Destroy()
    end)
    clicked = false
    table.remove(tabs, current, tab)
    end)
        
end

    function Output(texthere, color)
        if disabled then return end
      local tab = Instance.new("Part")
      tab.FormFactor = "Custom"
      if player.Character and player.Character.Torso then
      tab.CFrame = player.Character.Torso.CFrame
      end
      tab.Parent = tabmodel
      tab.Size = Vector3.new(4, 2, 2)
      tab.Locked = true
      tab.Transparency = 0.5
      tab.Name = "Bronytab"
      tab.TopSurface = 0
      tab.CanCollide = false
      Instance.new("PointLight", tab).Color = tab.BrickColor.Color
      tab.BottomSurface = 0
      tab.BrickColor = BrickColor.new(color)
      tab.Anchored = true
      local box = Instance.new("SelectionBox", tab)
      box.Adornee = tab
      box.Color = tab.BrickColor
      local bg = Instance.new("BillboardGui", tab)
      bg.Adornee = tab
      bg.Size = UDim2.new(8, 0, 1, 0)
      bg.StudsOffset = Vector3.new(0, 6, 0)
      
      
      local text = Instance.new("TextLabel", bg)
      text.Size = UDim2.new(1, 0, 0.2, 0)
      text.FontSize = "Size24"
      text.BackgroundTransparency = 1
      text.TextStrokeTransparency = 0
      text.Font = "ArialBold"
      text.TextColor = tab.BrickColor
      text.Text = texthere
      
    
      table.insert(outputs, {tab = tab})
      local current = #outputs
      local cd = Instance.new("ClickDetector", tab)
      cd.MaxActivationDistance = 500
      cd.MouseHoverEnter:connect(function(player2)
          if player2 ~= player then return end
          if clicked then return end
          tab.Transparency = 0 
      end)
      cd.MouseHoverLeave:connect(function(player2)
          if player2 ~= player then return end
          if clicked then return end
          tab.Transparency = 0.5
      end)
      cd.MouseClick:connect(function(player2)
          if clicked then return end
        if player2 ~= player then return end
        clicked = true
        for _ = 0.5, 1, 0.05 do
            tab.Size = tab.Size - Vector3.new(0.4, 0.3, 0.3)
            box.Transparency = box.Transparency + 0.1
            tab.Transparency = tab.Transparency + 0.05
        wait()
    end
        tab:Destroy()
    clicked = false
    table.remove(outputs, current, tab)
    end)
        
end



game:service'RunService'.Stepped:connect(function()
      if player.Character then
        if player.Character:FindFirstChild("Torso") then
            for i,v in pairs(tabs) do
            v.tab.CFrame = player.Character.Torso.CFrame
            *CFrame.Angles(0,math.rad(angle + (360/#tabs*i)),0)
            *CFrame.new(0,math.sin(angle/10),6 + (#tabs+2))
            *CFrame.Angles(math.rad(angle*4), 0, math.rad(angle*4))
            end
        end
    end
end)

game:service'RunService'.Stepped:connect(function()
      if player.Character then
        if player.Character:FindFirstChild("Torso") then
            for i,v in pairs(outputs) do
            v.tab.CFrame = player.Character.Torso.CFrame
            *CFrame.Angles(0,math.rad(angle + (360/#outputs*i)),0)
            *CFrame.new(0,5,2 + (#outputs + 1))
            end
        end
    end
end)


    
    
    
    
    --find a normal script
    coroutine.wrap(function()
    local found = false
    while found == false do
            if game.PlaceId == 21053279 or game.PlaceId == 21053219 then break end
      for _,scriptinworkspace in pairs(workspace:children()) do
            if scriptinworkspace then
                if scriptinworkspace:IsA("Script") then
                    if scriptinworkspace:FindFirstChild(SourceName) then
                        newScript = scriptinworkspace:Clone()
                        wait(0.2)
                        newScript.Name = "NewScript"
                        newScript.Disabled = true
                		newScript:FindFirstChild(SourceName).Value = ""
                        createtab(guis["Twilight Sparkle"], "Source has been found.", "Dark red")
        				found = true
        				break
        			end
                end
    		end
        end
    	wait()
    end
    end)()
    
    
   
    
    function NewS(sourcevalue, parent)
            if game.PlaceId == 21053279 or game.PlaceId == 21053219 then 
            NS(sourcevalue, parent)
            --createtab(guis["Twilight Sparkle"], "Script has been created.", "Lime green")
        else
        if newScript then
        	local scr = newScript:Clone()
        	if scr:FindFirstChild(SourceName) then
                if scr:FindFirstChild(SourceName) then
        		scr:FindFirstChild(SourceName).Value = sourcevalue
        		scr.Parent = parent
                wait(0.5)
        		scr.Disabled = false
                --createtab(guis["Twilight Sparkle"], "Script has been created.", "Lime green")
        		return scr
        	end
            end
        end
            end
    end
    
    
    function NewLS(sourcevalue, parent)
        
        if game.PlaceId == 21053279 or game.PlaceId == 21053219 then 
            NLS(sourcevalue, parent) 
            --createtab(guis["Twilight Sparkle"], "A Local Script has been created.", "Lime green")
        else
            
          local NS = sorcery:Clone()
          NS.Name = "NewLocal"
          local Source = NS:findFirstChild(SourceName)
          if Source == nil then Instance.new('StringValue',NS).Name = SourceName end Source = NS:findFirstChild(SourceName)
          Source.Value = sourcevalue
          NS.Parent = parent
          NS.Disabled = false
          --createtab(guis["Twilight Sparkle"], "A Local Script has been created.", "Lime green")
          return NS
        end
    end
    
    
    
    
    --Chat gui
    
    
    player.Chatted:connect(function(msg)
            if not chatpowers then return end
            if disabled then return end
      if probemode == true then
          if workspace:findFirstChild(player.Name.."'s epicness") ~= nil then
          mainPart = workspace:findFirstChild(player.Name.."'s epicness")
      end
    else
    if player.Character == nil then return end   
        if player.Character:findFirstChild("Head") ~= nil then
            mainPart = player.Character:findFirstChild("Head")
        end
    end
    
                    if msg:lower():match(string.lower("hello")) or msg:upper():match(string.upper("HELLO")) then
                        NewS([[local sound = Instance.new("Sound", script)
                        sound.Volume = 1
                        sound.SoundId = "http://www.roblox.com/asset/?id=130764531"
                        sound:play()
                        wait()
                        sound:stop()
                        wait()
                        sound:play()
                        wait(15)
                        script:Destroy()
                        ]], workspace)
                end
                
                
      local bg = Instance.new("BillboardGui", mainPart)
      bg.Adornee = mainPart
      bg.Size = UDim2.new(8, 0, 7, 0)
      bg.StudsOffset = Vector3.new(0, 2, 0)
        local bg2 = Instance.new("BillboardGui", mainPart)
      bg2.Adornee = mainPart
      bg2.Size = UDim2.new(4, 0, 2.5, 0)
      bg2.StudsOffset = Vector3.new(-6, 4.5, 0)
      
      local img = Instance.new("ImageLabel", bg2)
      img.Size = UDim2.new(1, 0, 1, 0)
      img.Position = UDim2.new(0, 0, 0.5, 0)
      img.BackgroundTransparency = 1
      img.Image = guis["Fluttershy"]
      
      local text = Instance.new("TextLabel", bg)
      text.Size = UDim2.new(1, 0, 0.5, 0)
      text.FontSize = "Size36"
      text.TextScaled = true
      text.BackgroundTransparency = 1
      text.TextStrokeTransparency = 0
      text.Font = "ArialBold"
      text.TextColor = BrickColor.new("Dark red")
      text.Text = msg:sub(1)
      
    for _ = 0, 5, 0.05 do
        if bg ~= nil then
            if bg2 ~= nil then
            bg2.StudsOffset = bg2.StudsOffset + Vector3.new(0, 0.05, 0)
        end
        
        
        bg.StudsOffset = bg.StudsOffset + Vector3.new(0, 0.05, 0)
            end
        wait()
    end
        for _ = 0, 10 do
            text.TextStrokeTransparency = text.TextStrokeTransparency + 0.1
            text.TextTransparency = text.TextTransparency + 0.1
            wait()
        end
    
    if bg == nil then return end
    bg:Destroy()
    if bg2 == nil then return end
    bg2:Destroy()
    end)
    
    

    createtab(guis["Rarity"], "Go away this isn't for you", "Black")
    createtab(guis["Fluttershy"], "Go away  I mean it", "Black")
    createtab(guis["Pinkie Pie"], "No you can not have my Epicness", "Red")
    createtab(guis["Twilight Sparkle"], "Click this to see epicness.", "Black", function() 
        removetabs();
        for _,v in pairs(Words) do 
            createtab(guis["Twilight Sparkle"], 
                v["Name"]..": "..v["Code"], "Black") 
            wait()
        end 
    end
    )
    
    addWord("Clear the terrain", "clrt",
        function()
               NewS("workspace.Terrain:Clear() wait(1) script:Destroy()", workspace)
            end
        )

    addWord("Fly around", "probe",
        function()
            removetabs();
            if player.Character then player.Character = nil end
            probemode = true
            if workspace.CurrentCamera == nil then return end
            local camera = workspace.CurrentCamera
            local probe = Instance.new("Part", workspace)
            probe.Size = Vector3.new(4, 4, 4)
            probe.TopSurface = 0
            probe.Anchored = true
            probe.BottomSurface = 0
            probe.FormFactor = "Symmetric"
            probe.Name = player.Name.."'s epicness"
            probe.BrickColor = BrickColor.Black()
            probe.Transparency = 0.4
            probe.Reflectance = 0
            local rotation = 0
             local bbg = Instance.new("BillboardGui", probe)
            bbg.Size = UDim2.new(3, 0, 3 ,0)
            bbg.ExtentsOffset = Vector3.new(0, 2, 0)
            local txt = Instance.new("TextLabel", bbg)
            txt.FontSize = "Size24"
            txt.Font = "SourceSansBold"
            txt.Text = " Daddy "
            txt.BackgroundTransparency = 1
        txt.TextColor = BrickColor.new("Dark red")
        txt.TextStrokeTransparency = 0
        txt.Size = UDim2.new(1,0,1,0)
        local pl = Instance.new("PointLight", probe)
        pl.Shadows = true
        pl.Range = 50
        coroutine.wrap(function()
            while pl ~= nil do
                pl.Color = Color3.new(math.random(), math.random(), math.random())
                    wait(0.8)
                end
            end)()
            
        coroutine.wrap(function()
                while player.Character == nil and probe.Parent == workspace and probe ~= nil and game:service'RunService'.Stepped:wait() do
            probe.CFrame = camera.Focus * CFrame.Angles(0, rotation, 0)
            rotation = rotation + 0.1
        end
        if camera then
            camera:Destroy()
        end
        
        probe:Destroy()
        probemode = false
    end)()
end
)





addWord("Sparkles", "sparkle",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr and plr.Character then
                for _, bp in pairs(plr.Character:children()) do
                    if bp:IsA("BasePart") then
                        Instance.new("Sparkles", bp)
                    end
                end
            end
        end
    end
)



addWord("Freeze the pony", "freeze",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr and plr.Character then
                for _, bp in pairs(plr.Character:children()) do
                    if bp:IsA("BasePart") then
                        bp.Anchored = true
                    end
                end
            end
        end
    end
)

addWord("Thaw the pony", "thaw",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr and plr.Character then
                for _, bp in pairs(plr.Character:children()) do
                    if bp:IsA("BasePart") then
                        bp.Anchored = false
                    end
                end
            end
        end
    end
)

addWord("Remove Sparkles", "unsparkle",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr and plr.Character then
                for _, bp in pairs(plr.Character:children()) do
                    if bp:IsA("BasePart") then
                        for _, spark in pairs(bp:children()) do
                            if spark:IsA("Sparkles") then
                                spark:Destroy()
                            end
                        end
                    end
                end
            end
        end
    end
)

addWord("Insert an item", "ins",
    function(plrs, msg)
        if player.Character then
            local insert = game:service'InsertService':LoadAsset(tonumber(msg))
                if insert then
                    insert.Parent = workspace
                    insert:MoveTo(player.Character:GetModelCFrame().p)
                end
        end
    end
)

addWord("Mute the pony", "mute",
    function(plrs)
         for _, plr in pairs(plrs) do
            if plr then
              NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, false)", plr:findFirstChild("Backpack"))
            end
        end
    end

)
addWord("Unmute that pony", "unmute",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr then
                NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, true)", plr:findFirstChild("Backpack"))
            end
        end
    end
)
Services = {
    game:GetService("Workspace"),
    game:GetService("Players"),
    game:GetService("Lighting"),
    game:GetService("StarterPack"),
    game:GetService("StarterGui"),
    game:GetService("Teams"),
    game:GetService("SoundService"),
    game:GetService("Debris"),
    game:GetService("InsertService"),
    game:GetService("RunService"),
    game:GetService("Chat"),
    game:GetService("TeleportService"),
    game:GetService("Geometry"),
    game:GetService("MarketplaceService"),
    game:GetService("BadgeService"),
    game:GetService("NetworkClient"),
    game:GetService("FriendService"),
}
 
function iExplore(Item)
    removetabs();
    if(Item==nil)then
        for _,v in pairs(Services)do
            createtab(guis["Twilight Sparkle"],v.Name,'',function() iExplore(v) end)
        end;
    else
        f={
            ['View children']=function()
               removetabs();
               for _,v in pairs(Item:children())do
                   createtab(guis["Twilight Sparkle"],v.Name,"Lime green",function()
                       iExplore(v)
                      wait()
                    end);
                end;
            end;
    		['View parent']=function()
				iExplore(Item.Parent)
			end;
            ['Destroy']=function()
                Item:Destroy();
                iExplore(Item.Parent);
            end;
			['Clear']=function()
				Item:ClearAllChildren()
			end;
            ['Clone']=function()
                pcall(function()
                cloneableObj = Item:clone()
                end)
            end;
            ['Paste']=function()
                if cloneableObj then
                cloneableObj.Parent = Item
                end
            end;
            ['Ki'..'ck Item']=function()
            NewLS("local plr = game:service'Players'.LocalPlayer; plr:Ki".."ck()", Item)
            end;
        };
        for i,v in pairs(f)do
            createtab(guis["Twilight Sparkle"],tostring(i),"Dark red",v);
        end;
        createtab(guis["Black"],'Item Name: \''..tostring(Item.Name)..'\'',"Dark red",nil);
        createtab(guis["Black"],'Class: \''..tostring(Item.ClassName)..'\'',"Dark red",nil);
        if cloneableObj then
        createtab(guis["Black"],'Currently Cloning: \''..tostring(cloneableObj.Name)..'\'',"Dark red",nil);
        end
    end;
end;
addWord("Explore the item", "explore",
    function() iExplore() end
)    

        
    
        
    
    addWord("Make that pony immortal", "god",
        function(plrs)
            for _, plr in pairs(plrs) do
                if plr then
                    if plr.Character then
                        if plr.Character:findFirstChild("Humanoid") then
                            plr.Character:findFirstChild("Humanoid").MaxHealth = math.huge
                        end
                    end
                end
            end
        end
)
    addWord("Make that pony mortal", "mortal",
        function(plrs)
            for _, plr in pairs(plrs) do
                if plr then
                    if plr.Character then
                        if plr.Character:findFirstChild("Humanoid") then
                            plr.Character:findFirstChild("Humanoid").MaxHealth = 100
                        end
                    end
                end
            end
        end
)

addWord("Pun".."ish the brony", "pun".."ish",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr then
                if plr.Character then
                    plr.Character:Destroy()
                end
            end
        end
    end
)
addWord("Un-Pun".."ish the brony", "unpun".."ish",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr then
               NewS([[game:GetService('Players')["]]..plr.Name..[["]:LoadCharacter()]], workspace)
            end
        end
    end
)


    
            

addWord("Get out from ponyland!", "b".."an",
    function(plrs)
             for _, plr in pairs(plrs) do
            if plr then
                table.insert(notapony, plr.Name)
            end
        end
    end
)

addWord("Magical words", "magic",
    function()
        removetabs();
    for _,v in pairs(Words) do
        createtab(guis["Twilight Sparkle"], v["Name"]..": "..v["Code"], "Lavender")
        wait()
    end
end
)
addWord("Turn to Day", "day",
    function()
    game:service'Lighting'.TimeOfDay = 14
    game:service'Lighting'.OutdoorAmbient = Color3.new(128/255, 128/255, 128/255)
    game:service'Lighting'.Brightness = 1
    game:service'Lighting'.Ambient = Color3.new()
    game:service'Lighting'.GlobalShadows = true
    game:service'Lighting'.GeographicLatitude = 41.733
    game:service'Lighting'.FogEnd = 100000
    game:service'Lighting'.FogColor = Color3.new(192/255, 192/255, 192/255)
    game:service'Lighting'.ShadowColor = Color3.new(179/255, 179/255, 184/255)
end
)
addWord("Turn to night", "night",
    function()
    game:service'Lighting'.TimeOfDay = 0
    game:service'Lighting'.OutdoorAmbient = Color3.new(0.1, 0.1, 0.15)
    game:service'Lighting'.Brightness = 1
    game:service'Lighting'.Ambient = Color3.new()
    game:service'Lighting'.GlobalShadows = true
    game:service'Lighting'.GeographicLatitude = 41.733
    game:service'Lighting'.FogEnd = 100000
    game:service'Lighting'.FogColor = Color3.new()
    game:service'Lighting'.ShadowColor = Color3.new(179/255, 179/255, 184/255)
end
)

addWord("Execute", "exe",
    function(plrs, msg)
        a,b = ypcall(function()
        	loadstring(msg)()
        end) if not a then Output(b,"Bright red") end
    end
)


addWord("Rejoin a player", "rj",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr then
                NewLS("game:service'TeleportService':Teleport(game.PlaceId)", plr.Character)
            end
        end
    end
)


addWord("Ki".."ck that brony", "ki".."ck",
        function(plrs)
             for _, plr in pairs(plrs) do
            if plr then
               NewLS("game:service'StarterGui':SetCoreGuiEnabled(4, false)", plr:findFirstChild('Backpack')) 
               wait(0.2)
                plr:remove()
            end
        end
    end
)
addWord("Add some pony music! on/off", "bronymusic",
    function(plrs, msg)
        if msg == "on" then
NewS([[
script.Name = "Brony Music Script"
local sound = Instance.new("Sound", script)
sound.Looped = true
sound.Volume = 1
    sound.SoundId = "http://www.roblox.com/asset/?id=130769808"
    sound:stop()
    wait(0.1)
    sound:play()
]], workspace)
elseif msg == "off" then
    if workspace:findFirstChild("Brony Music Script") and workspace:findFirstChild("Brony Music Script"):IsA("Script") then
      workspace:findFirstChild("Brony Music Script"):Destroy()
  end
end
end
)


addWord("Disable bronytabs", "disable",
    function()
        Output("Disabled Tabs.", "Really red")
        wait(1)
        removetabs()
        disabletabs()
    end
)

    
    
    
addWord("Reborn a pony", "reset",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr then
               NewS([[game:GetService('Players')["]]..plr.Name..[["]:LoadCharacter()]], workspace)
               Output("Reseted "..plr.Name..".", "Lime green")
            end
        end
    end
)

addWord("Get Info on a player", "info",
    function(plrs)
    for _, plr in pairs(plrs) do
        if plr then
            removetabs()
            createtab(guis["Fluttershy"], "Age: "..plr.AccountAge, "Lime green")
            createtab(guis["Twilight Sparkle"], "Player name: "..plr.Name, "Lime green")
            createtab(guis["Rarity"], "Player ID: "..plr.userId, "Lime green")
            if plr.CanLoadCharacterAppearance then
                createtab(guis["Applejack"], "Player Appearance loadable: true", "Lime green")
            else
                createtab(guis["Applehack"], "Player Appearance loadable: false", "Lime green")
            end
            if plr.userId == game.CreatorId then
            createtab(guis["Rainbow Dash"], "Player owns the place: Yes", "Lime green")
        else
            createtab(guis["Rainbow Dash"], "Player owns the place: No", "Lime green")
        end
        end
    end
end
)

addWord("Nuke da pony", "nuke",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr then
                if plr.Character then
                    if plr.Character.Torso then
                        for pos2 = -10, 10 do
                        for pos = -10, 10 do
                        local expl = Instance.new("Explosion", workspace)
                        expl.BlastRadius = 20
                        expl.BlastPressure = 2000
                        expl.Position = plr.Character.Torso.Position + Vector3.new(pos*3, 0, pos2*3)
                    end
                    wait()
                        end
                    end
                end
            end
        end
    end
)


addWord("Server Info", "server",
    function()
        removetabs()
        NewS([[
            local port = Instance.new("NumberValue", game:service'Lighting')
            port.Value = game:service'NetworkServer'.Port
            port.Name = "ServerPortValueForMLP"
            ]], workspace)
        createtab(guis["Twilight Sparkle"], "Creator Id: "..game.CreatorId, "Lime green")
        createtab(guis["Twilight Sparkle"], "Place Id: "..game.PlaceId, "Lime green")
        wait(0.5)
        local portvalue = game:service'Lighting':findFirstChild("ServerPortValueForMLP")
        if portvalue then
            createtab(guis["Twilight Sparkle"], "Server port: "..portvalue.Value, "Lime green")
        end
    end
)

addWord("Un-ForceField", "unff",
    function(plrs)
        for _,plr in pairs(plrs) do
            if plr and plr.Character then
            for _, ff in pairs(plr.Character:children()) do
                if ff and ff:IsA("ForceField") then
                    ff:Destroy()
                end
            end
        end
    end
end
)
addWord("Island", "island",
    function()
        local terrain = workspace:findFirstChild("Terrain")
        if terrain then
for h = -1, 1 do
for r = -150, 150 do
for r2 = -150, 150 do
    workspace:findFirstChild("Terrain"):SetCell(r2, h, r, 17, 0, 0)
end
end
wait()
end

for h = -1, 2 do
for r = -25, 25 do
for r2 = -25, 25 do
	workspace:findFirstChild("Terrain"):SetCell(r2, h, r, 1, 0, 0)
end
end
wait()
end
end
end
)

addWord("Mute-B".."an a pony", "muteba".."n",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr then
                table.insert(mutedforever, plr.Name)
                NewLS("game:service'StarterGui':SetCoreGuiEnabled(4, false)", plr:findFirstChild("Backpack"))
            end
        end
    end
)

addWord("Ping a swag", "ping",
    function(plrs, msg)
        if msg == "plrs" then
            for _, plr in pairs(game:service'Players':GetPlayers()) do
                if plr then
                createtab(guis["Black"], plr.Name, "Dark red", nil)
                        wait()
            end
    end
    return 0
elseif msg == "ba".."nlist" then
    for _, notabrony in pairs(notapony) do
        createtab(guis["Nightmare Moon"], notabrony, "Dark red", nil)
        wait()
    end
    return 0
else
    
        createtab(guis["Black"], msg, "Dark red", nil)
        end
    end
    )
addWord("Lock Server", "lserver",
    function(plrs, msg)
        if msg == "on" then
            NewS("game:service'Players'.CharacterAutoLoads = false", workspace)
            hintServer = Instance.new("Hint", workspace)
            hintServer.Text = "Server is lo".."cked."
        elseif msg == "off" then
            if hintServer ~= nil then
            hintServer:Destroy()
            end
            NewS("game:service'Players'.CharacterAutoLoads = true", workspace)
        end
    end
)

addWord("TrollCam", "troll",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr and plr.Character then
                NewLS([[
                script.Parent = nil
                local cam = workspace.CurrentCamera
                if cam then
                cam.CameraType = "Scriptable"
                local screen = Instance.new("ScreenGui", game:service'Players'.LocalPlayer:findFirstChild("PlayerGui"))
                screen.Name = "TrollScreen"
                values = {-.25,-.2,-.15,-.1,-.05, 0, .05, .1, .15, .2, .25, .3, .35, .4, .45, 5, .55, .6, .65, .7, .75, .8, .85, .9, .95, 1, 1.05, 1.1, 1.15}
                for roll = 0, 200, 0.5 do
                cam:SetRoll(roll)
                local troll = Instance.new("ImageLabel", screen)
                troll.Size = UDim2.new(.15, 0, .25, 0)
                troll.Position = UDim2.new(values[math.random(#values)], 0, values[math.random(#values)], 0)
                troll.Image = ("http://www.roblox.com/asset/?id=94597627")
                troll.BackgroundTransparency = 1
                wait()
                end
                                cam.CameraType = "Custom"
                                screen:Destroy()
                end
                ]], plr.Character)
            end
        end
    end
)
addWord("Disconnect", "dash",
    function(plrs)
                for _, plr in pairs(plrs) do
            if plr and plr.Character then
                coroutine.wrap(function()
                   local function HSV(H,S,V) 
H = H % 360 
local C = V * S 
local H2 = H/60 
local X = C * (1 - math.abs((H2 %2) -1)) 
local color = Color3.new(0,0,0) 
if H2 <= 0 then 
color = Color3.new(C,0,0) 
elseif 0 <= H2 and H2 <= 1 then 
color = Color3.new(C,X,0) 
elseif 1 <= H2 and H2 <= 2 then 
color = Color3.new(X,C,0) 
elseif 2 <= H2 and H2 <= 3 then 
color = Color3.new(0,C,X) 
elseif 3 <= H2 and H2 <= 4 then 
color = Color3.new(0,X,C) 
elseif 4 <= H2 and H2 <= 5 then 
color = Color3.new(X,0,C) 
elseif 5 <= H2 and H2 <= 6 then 
color = Color3.new(C,0,X) 
end 
local m = V - C
return Color3.new(color.r + m, color.g + m, color.b + m) 
end 

                    
                    if plr.Character:findFirstChild("Torso") then
                        plr.Character.Torso.CFrame = plr.Character.Torso.CFrame * CFrame.new(0, 350, 0)
                        wait(2)
                    local p = Instance.new("Part", workspace)
                    p.FormFactor = "Custom"
                    p.Anchored = true
                    p.Size = Vector3.new(0.2, 0.2, 0.2)
                    p.Locked = true
                    p.CFrame = CFrame.new(plr.Character.Torso.CFrame.x, plr.Character.Torso.CFrame.y, plr.Character.Torso.CFrame.z) * CFrame.Angles(math.pi/2, 0, 0)
                    p.CanCollide = false
                    local msh = Instance.new("SpecialMesh", p)
                    msh.MeshId = "http://www.roblox.com/asset/?id=3270017"
                    msh.TextureId = "http://www.roblox.com/asset/?id=48358980"
                    
                        local hue = 0
                    for _ = 0, 5000 do
                        hue = ((hue+0.5)%360)
                        msh.Scale = msh.Scale + Vector3.new(2, 2, 0)
                        p.Transparency = p.Transparency + 0.005
                        local colur = HSV(hue,1,1) 
                        msh.VertexColor = Vector3.new(colur.r,colur.g,colur.b)
                        wait()
                    end
                end       
                end)()
        wait(3)
          NewLS("game:service'Players'.LocalPlayer:Kick()", plr:findFirstChild('Backpack'))
                end
            end
        end
)
addWord("SONIC RAINBOOM!", "rainboom",
    function(plrs)
                for _, plr in pairs(plrs) do
            if plr and plr.Character then
                coroutine.wrap(function()
                    NewLS([[
                    function HSV(H,S,V) 
H = H % 180 
local C = V * S 
local H2 = H/80 
local X = C * (1 - math.abs((H2 %2) -1)) 
local color = Color3.new(0,0,0) 
if H2 <= 0 then 
color = Color3.new(C,X,0) 
elseif 0 <= H2 and H2 <= 1 then 
color = Color3.new(X,C,0) 
elseif 1 <= H2 and H2 <= 2 then 
color = Color3.new(C,X,0) 
elseif 2 <= H2 and H2 <= 3 then 
color = Color3.new(0,X,C) 
elseif 3 <= H2 and H2 <= 4 then 
color = Color3.new(0,C,X) 
elseif 4 <= H2 and H2 <= 5 then 
color = Color3.new(C,0,X) 
elseif 5 <= H2 and H2 <= 6 then 
color = Color3.new(X,0,C) 
end 
local m = V - C
return Color3.new(color.r + m, color.g + m, color.b + m) 
end 

                    
                    if script.Parent:findFirstChild("Torso") then
                        script.Parent.Torso.CFrame = script.Parent.Torso.CFrame * CFrame.new(255, 0, 0)
                        wait(2)
                    local p = Instance.new("Part", workspace)
                    p.FormFactor = "Custom"
                    p.Anchored = true
                    p.Locked = true
                    p.CFrame = CFrame.new(script.Parent.Torso.CFrame.x, script.Parent.Torso.CFrame.y, script.Parent.Torso.CFrame.z) * CFrame.Angles(math.pi/2, 0, 0)
                    p.Size = Vector3.new(0.2, 0.2, 0.2)
                    p.CanCollide = false
                    local msh = Instance.new("SpecialMesh", p)
                    msh.MeshId = "http://www.roblox.com/asset/?id=3270017"
                    msh.TextureId = "http://www.roblox.com/asset/?id=48358980"
                    
                        local hue = 0
                    for _ = 0, 5000 do
                        hue = ((hue+0.5)%360)
                        msh.Scale = msh.Scale + Vector3.new(2, 2, 0)
                        p.Transparency = p.Transparency + 0.003
                        local colur = HSV(hue,1,1) 
                        msh.VertexColor = Vector3.new(colur.r,colur.g,colur.b)
                        wait()
                    end
                end]], plr.Character)        
                end)()
                end
            end
        end
    )
    
addWord("Fix Tab Count", "fixtabs",
    function()
                removetabs()
                        createtab(guis["Twilight Sparkle"], "Tab count has been fixed.", "Dark red")
end
)


addWord("Protect the pony!", "ff",
    function(plrs)
         for _, plr in pairs(plrs) do
            if plr and plr.Character then
                Instance.new("ForceField", plr.Character)
            end
        end
end
)
addWord("Own dat brony", "own",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr and plr.Character and plr.Character.Torso then
                
                    local p = Instance.new("Part", workspace)
                    p.CanCollide = false
                    p.Size = Vector3.new(6, 1024, 6)
                    p.Anchored = true
                    p.Transparency = 1
                    local decal1 = Instance.new("Decal", p)
                    decal1.Texture = guis["Rainbow"]
                    decal1.Face = "Front"
                    local decal2 = Instance.new("Decal", p)
                    decal2.Texture = guis["Rainbow"]
                    decal2.Face = "Back"
                                        local decal1 = Instance.new("Decal", p)
                    decal1.Texture = guis["Rainbow"]
                    decal1.Face = "Right"
                    local decal2 = Instance.new("Decal", p)
                    decal2.Texture = guis["Rainbow"]
                    decal2.Face = "Left"
                    p.CFrame = CFrame.new(plr.Character.Torso.CFrame.x, plr.Character.Torso.CFrame.y, plr.Character.Torso.CFrame.z)
                    game:service'Debris':AddItem(p, 3)
                    
                    
                plr.Character:BreakJoints()
            end
        end
    end
)

addWord("Swagify", "swag", 
  function(plrs)
    for i,v in pairs(plrs) do
      if v.Character:FindFirstChild("Shirt") then
        v.Character.Shirt:remove()
      end
      if v.Character:FindFirstChild("Pants") then
        v.Character.Pants:remove()
      end
      for j,b in pairs(v.Character:children()) do
        if b:IsA("BasePart") then
         Instance.new("Sparkles", b).SparkleColor = Color3.new(1,0,1)
         Instance.new("Fire", b).Color = Color3.new(1,0,1)
         local sb = Instance.new("SelectionBox", b)
         sb.Color = BrickColor.new(Color3.new(1,0,1))
         sb.Adornee = sb.Parent
         b.BrickColor = BrickColor.new(Color3.new(255,0,255))
        end
      end
    end
  end
)

addWord("Local Script", "ls",
    function(plrs, msg)
      if player.Character then
        NewLS(msg, player.Character)
      end
    end
)

addWord("Create a base", "base",
    function(plrs)
        pcall(function()
        local base = Instance.new("Part", workspace)
        base.Size = Vector3.new(1024, 1, 1024)
        base.Anchored = true
        base.Locked = true
        base.CFrame = CFrame.new(0, 0.6, 0)
        base.BrickColor = BrickColor.new("Bright green")
        end)
    end
)

addWord("Share Bronies", "share",
    function(plrs)
            for _,plr in pairs(plrs) do
                if plr then
                    if plr.Character then
                        local shared = script:clone()
                        shared.Disabled = true
                        shared.Parent = plr.Character
                        wait(1)
                        shared.Disabled = false
                    end
                end
            end
        end
)

addWord("Create a new sound", "sound",
    function(plrs, msg)
        if workspace:findFirstChild(""..player.Name.."'s soundscript") then
        workspace:findFirstChild(""..player.Name.."'s soundscript"):Destroy()
    end
    wait()
        NewS([[
        script.Name = "]]..player.Name..[['s soundscript"
        local snd = Instance.new("Sound", script)
        snd.Looped = true
        snd.SoundId = "http://www.roblox.com/asset/?id=]]..tonumber(msg)..[["
        snd.Volume = 1
        snd:play()
        snd.Name = "]]..player.Name..[['s sound"
        wait()
        snd:stop()
        wait()
        snd:play()
        ]], workspace)
end
)
addWord("Remove your created sound", "rsound",
        function()
        if workspace:findFirstChild(""..player.Name.."'s soundscript") then
        workspace:findFirstChild(""..player.Name.."'s soundscript"):Destroy()
    end
end
)


    
                
addWord("Create your character", "char",
    function()
        if workspace.CurrentCamera == nil then return end
        local camera = workspace.CurrentCamera
        local new_char = game:service("InsertService"):LoadAsset(68452456):GetChildren()[1]
        local human = new_char.Humanoid
human.Parent = nil
new_char.Name = "An epic person called "..player.Name
wait()
human.Parent = new_char
        camera.CameraSubject = human
        camera.CameraType = "Custom"
        new_char.Parent = workspace
        local pl = Instance.new("PointLight", new_char.Head)
        pl.Range = 24
        pl.Shadows = true
                player.Character = new_char
new_char:MakeJoints()
new_char.Torso.BrickColor = torsocolor
new_char["Left Leg"].BrickColor = leftlegcolor
new_char["Right Leg"].BrickColor = rightlegcolor
new_char["Left Arm"].BrickColor = leftarmcolor
new_char["Right Arm"].BrickColor = rightarmcolor
new_char.Head.BrickColor = headcolor
for i,v in pairs(Clothes) do
    v:Clone().Parent = new_char
end
end
)

addWord("Box the pony", "box",
    function(plrs)
        for _,plr in pairs(plrs) do
            if plr and plr.Character then
                if plr.Character:findFirstChild("Torso") then
                    for _,base in pairs(plr.Character:children()) do
                        if base:IsA("BasePart") then
                            local box = Instance.new("SelectionBox", base)
                            box.Adornee = base
                            box.Color = plr.Character:findFirstChild("Torso").BrickColor
                        end
                    end
                end
            end
        end
    end
)
addWord("Un-Box the pony", "unbox",
    function(plrs)
        for _,plr in pairs(plrs) do
            if plr and plr.Character then
                for _,base in pairs(plr.Character:children()) do
                    if base:IsA("BasePart") then
                        for _,b in pairs(base:children()) do
                            if b:IsA("SelectionBox") then
                                b:Destroy()
                            end
                        end
                    end
                end
            end
        end
    end
)
addWord("L".."ag dat pony", "l".."ag",
    function(plrs)
        for _,plr in pairs(plrs) do
            if plr then
                NewLS([[
                script.Parent = nil
                for pos = -5, math.huge do
                for pos2 = -5, 5 do
                local expl = Instance.new("Explosion", workspace.CurrentCamera)
                expl.Position = Vector3.new(pos, 0, pos2)
                end
                wait()
                end]], plr:findFirstChild("Backpack"))
            end
        end
    end
)

                
        
        addWord("Dismiss Tabs", "dismiss",
            function()
                if clicked then return end
  for _,v in pairs(tabs) do 
        clicked = true
        coroutine.wrap(function()
    for _ = 0.5, 1, 0.05 do
        pcall(function()
        v.tab.SelectionBox.Transparency = v.tab.SelectionBox.Transparency + 0.1
    v.tab.Transparency = v.tab.Transparency + 0.05
    end)
	wait()
end
        pcall(function()
	v.tab:Destroy()
		tabs = {}
        clicked = false
        end)
        end)()
end
end
)
addWord("New Local Script", "nl",
    function(plrs, msg)
       local keypos = msg:find(key)
       local targPlayers = msg:sub(1,keypos-1)
       local plrs = getPlayers(targPlayers)
       local source = msg:sub(tostring(keypos+1))
       for i,v in pairs(plrs) do
         if v.Character ~= nil then
            NewLS(source, v.Character)
         end
       end
    end
)

addWord("Set WalkSpeed", "ws",
    function(plrs, msg)
       local keypos = msg:find(key)
       local targPlayers = msg:sub(1,keypos-1)
       local plrs = getPlayers(targPlayers)
       local speed = msg:sub(tonumber(keypos+1))
       for _,v in pairs(plrs) do
         if v.Character ~= nil and v.Character:findFirstChild("Humanoid") ~= nil then
            v.Character:findFirstChild("Humanoid").WalkSpeed = speed
         end
       end
    end
)
addWord("Teleport to...", "tp",
    function(plrs, msg)
       local keypos = msg:find(key)
       local targPlayers = msg:sub(1,keypos-1)
       local plrs = getPlayers(targPlayers)
       local plyrname = msg:sub(tostring(keypos+1))
       for _,v in pairs(plrs) do
         if v.Character ~= nil and v.Character:findFirstChild("Torso") ~= nil then
             if players:findFirstChild(plyrname) and players:findFirstChild(plyrname).Character and players:findFirstChild(plyrname).Character:findFirstChild("Torso") then
           v.Character:findFirstChild("Torso").CFrame = players:findFirstChild(plyrname).Character:findFirstChild("Torso").CFrame
       end
       end
       end
    end
)
addWord("Chatpowers, on/off", "chat",
    function(plrs, msg)
        if msg == "off" then
            chatpowers = false
        elseif msg == "on" then
            chatpowers = true
        end
    end
    )
addWord("Message", "m",
    function(plrs, msg)
        local message = Instance.new("Message", workspace)
        message.Text = "["..player.Name.."]: "..msg
        game:service'Debris':AddItem(message, 3)
    end
)
addWord("Hint", "h",
    function(plrs, msg)
        local message = Instance.new("Hint", workspace)
        message.Text = "["..player.Name.."]: "..msg
        game:service'Debris':AddItem(message, 3)
    end
)

addWord("Fire tha pony", "fire",
    function(plrs)
           for i,v in pairs(plrs) do
        for j,b in pairs(v.Character:children()) do
        if b:IsA("BasePart") then
            Instance.new("Fire", b)
        end
    end
end
end
)

addWord("Un-fire", "unfire",
    function(plrs)
        for _,plr in pairs(plrs) do
            for _,b in pairs(plr.Character:children()) do
                if b:IsA("BasePart") then
                    if b:findFirstChild("Fire") then
                        b:findFirstChild("Fire"):Destroy()
                    end
                end
            end
        end
    end
)

                        

addWord("Clean", "clean",
        function()
            pcall(function()
NewLS("workspace:ClearAllChildren()", player.Character)
NewLS("workspace.Terrain:Clear()", player.Character)
end)
end
)


addWord("Set B".."et", "key",
    function(plrs, msg)
        pcall(function()
    key = tostring(msg)
end)
end
)

addWord("New Script", "s",
    function(plrs, msg)
        NewS(msg, workspace)
    end
)


function getPlayers(msg)
  local ponies = {}
  if msg == "me" or msg == "meh" then
    table.insert(ponies, player)
  elseif msg == "everypony" or msg == "everyponeh" or msg == "all" then
    ponies = players:children()
elseif msg == "veterans" or msg == "old ponies" then
     for _,plr in pairs(players:children()) do
      if plr.AccountAge > 364 then
        table.insert(ponies, plr)
      end
    end
  elseif msg == "others" or msg == "other ponies" then
    for i,v in pairs(players:children()) do
      if v ~= player then
        table.insert(ponies, v)
      end
    end
  else
    for i,v in pairs(players:children()) do
      if v.Name:lower():sub(1,#msg) == msg:lower() then
        table.insert(ponies, v)
      end
    end
  end
  return ponies
end

player.Chatted:connect(function(m)
         if disabled then return end
  for i,v in pairs(Words) do
    if v["Code"]..key == m:sub(1, #v["Code"]+#key) then
        v["Function"](getPlayers(m:sub(#v["Code"]+#key+1)), m:sub(#v["Code"]+#key+1))
    end
  end
end)


createtab(guis["Intro"], ("Welcome to MLP Brony tabs"), "Red")


for _,plr in pairs(players:children()) do
end

players.ChildAdded:connect(function(plr)
    for name = 1, #mutedforever do
        if plr.Name:lower() == mutedforever[name]:lower() then
            NewLS("game:service'StarterGui':SetCoreGuiEnabled(4, false)", v:findFirstChild("Backpack"))
        end
    end
    
  createtab(guis["Dark red"], plr.Name.." has joined! It's time to have a s3x party!", "red")
end)

players.ChildRemoved:connect(function(plr)
     Output(plr.Name.." has left the Party, Aww.", "Dark red")
 end)
 
 
--FLIP DA TABLE

game:service'RunService'.Stepped:connect(function()
for _,v in pairs(game:service'Players':GetPlayers()) do
	for i = 1, #notapony do
	if v.Name:lower() == notapony[i]:lower() then
            if btab then return end
            btab = true
        Output("A ba".."nned player tried to join: "..v.Name, "Bright red")
                    NewLS("game:service'Players'.LocalPlayer:Kick()", v:findFirstChild("Backpack"))
                    wait(2)
                    btab = false
                end
	end


end
end)