-- PART BENDING MADE BY HSOUND
Player = game:GetService("Players").LocalPlayer 
Cha = Player.Character
mouse = game.Players.LocalPlayer:GetMouse() 
function onKeyDown(key)
    if key == "r" then
    p = Instance.new("Part",Workspace)
    p.Size = Vector3.new(6,6,6)
    p:BreakJoints()
    p.CFrame = Cha.Torso.CFrame *CFrame.new(0,0,-10) --this is what i did
    r = Instance.new("BodyVelocity",p)
    r.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    r.velocity = Cha.Torso.CFrame.lookVector * 120
    e = Instance.new("Part",Workspace)
    e:BreakJoints()
    e.Size = Vector3.new(6,6,6)
    e.CFrame = Cha.Torso.CFrame *CFrame.new(0,0,-10) --this is what i did
    q = Instance.new("BodyVelocity",e)
    q.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    q.velocity = Cha.Torso.CFrame.lookVector * 100
    l = Instance.new("Part",Workspace)
    l:BreakJoints()
    l.Size = Vector3.new(6,6,6)
    l.CFrame = Cha.Torso.CFrame *CFrame.new(0,0,-10) --this is what i did
    k = Instance.new("BodyVelocity",l)
    k.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    k.velocity = Cha.Torso.CFrame.lookVector * 80
    f= Instance.new("Part",Workspace)
    f:BreakJoints()
    f.Size = Vector3.new(6,6,6)
    f.CFrame = Cha.Torso.CFrame *CFrame.new(0,0,-10) --this is what i did
    g = Instance.new("BodyVelocity",f)
    g.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    g.velocity = Cha.Torso.CFrame.lookVector * 60
    b = Instance.new("Part",Workspace)
    b.Size = Vector3.new(6,6,6)
    b:BreakJoints()
    b.CFrame = Cha.Torso.CFrame *CFrame.new(0,0,-10) --this is what i did
    n = Instance.new("BodyVelocity",b)
    n.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    n.velocity = Cha.Torso.CFrame.lookVector * 40
    wait(7)
    p:Destroy()
    e:Destroy()
    l:Destroy()
    f:Destroy()
    b:Destroy()
    end
    if key == " " then
    v = Instance.new("Part",Workspace)
    v.Size = Vector3.new(6,6,6)
    v.CFrame = Cha.Torso.CFrame *CFrame.new(0,-4,0) --this is what i did
    y = Instance.new("BodyVelocity",b)
    y.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    y.velocity = Cha.Torso.CFrame.lookVector * 120
    wait(7)
    v:Destroy()
    end
end
mouse.KeyDown:connect(onKeyDown)
Player = game:GetService("Players").LocalPlayer 
Cha = Player.Character
mouse = game.Players.LocalPlayer:GetMouse() 
function onKeyDown(key)
    if key == "r" then
    p = Instance.new("Part",Workspace)
    p.Size = Vector3.new(6,6,6)
    p:BreakJoints()
    p.CFrame = Cha.Torso.CFrame *CFrame.new(0,0,-10) --this is what i did
    r = Instance.new("BodyVelocity",p)
    r.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    r.velocity = Cha.Torso.CFrame.lookVector * 120
    e = Instance.new("Part",Workspace)
    e:BreakJoints()
    e.Size = Vector3.new(6,6,6)
    e.CFrame = Cha.Torso.CFrame *CFrame.new(0,0,-10) --this is what i did
    q = Instance.new("BodyVelocity",e)
    q.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    q.velocity = Cha.Torso.CFrame.lookVector * 100
    l = Instance.new("Part",Workspace)
    l:BreakJoints()
    l.Size = Vector3.new(6,6,6)
    l.CFrame = Cha.Torso.CFrame *CFrame.new(0,0,-10) --this is what i did
    k = Instance.new("BodyVelocity",l)
    k.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    k.velocity = Cha.Torso.CFrame.lookVector * 80
    f= Instance.new("Part",Workspace)
    f:BreakJoints()
    f.Size = Vector3.new(6,6,6)
    f.CFrame = Cha.Torso.CFrame *CFrame.new(0,0,-10) --this is what i did
    g = Instance.new("BodyVelocity",f)
    g.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    g.velocity = Cha.Torso.CFrame.lookVector * 60
    b = Instance.new("Part",Workspace)
    b.Size = Vector3.new(6,6,6)
    b:BreakJoints()
    b.CFrame = Cha.Torso.CFrame *CFrame.new(0,0,-10) --this is what i did
    n = Instance.new("BodyVelocity",b)
    n.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    n.velocity = Cha.Torso.CFrame.lookVector * 40
    wait(7)
    p:Destroy()
    e:Destroy()
    l:Destroy()
    f:Destroy()
    b:Destroy()
    end
    if key == "q" then
    v = Instance.new("Part",Workspace)
    v.Size = Vector3.new(6,6,6)
    v.CFrame = Cha.Torso.CFrame *CFrame.new(0,-4,0) --this is what i did
    y = Instance.new("BodyVelocity",b)
    y.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    y.velocity = Cha.Torso.CFrame.lookVector * 120
    wait(7)
    v:Destroy()
    end
end
mouse.KeyDown:connect(onKeyDown)
