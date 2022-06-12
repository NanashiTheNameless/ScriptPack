Parts={}
function GetDiscoColor(hue)
    local section = hue % 1 * 3
    local secondary = 0.5 * math.pi * (section % 1)
    if section < 1 then
        return Vector3.new(1, 1 - math.cos(secondary), 1 - math.sin(secondary))
    elseif section < 2 then
        return Vector3.new(1 - math.sin(secondary), 1, 1 - math.cos(secondary))
    else
        return Vector3.new(1 - math.cos(secondary), 1 - math.sin(secondary), 1)
    end
end
Part = function(x,y,z,color,tr,cc,an,parent)
    local p = Instance.new('Part',parent or Weapon)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(x,y,z)
    p.BrickColor = BrickColor.new(color)
    p.CanCollide = cc
    p.Transparency = tr
    p.Anchored = an
    p.TopSurface,p.BottomSurface = 0,0
    p:BreakJoints''
    table.insert(Parts,p)
    return p
end
Weld = function(p0,p1)
    local w = Instance.new('Motor',p0)
    w.Part0 = p0
    w.Part1 = p1
    return w 
end
Mesh = function(par,num,x,y,z)
    local msh = 0
    if num == 1 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId='rbxasset://fonts/torso.mesh'
        msh.TextureId='rbxasset://25701026'
    end
    if num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId='rbxasset://fonts/head.mesh'
        msh.TextureId='rbxassetid://25701026'
    end
    msh.Scale = Vector3.new(x,y,z)
    return msh
end
plr=Game.Players.LocalPlayer
char=plr.Character
for _,v in pairs(char:GetChildren()) do
    if v.ClassName=="Part" then
        v.Transparency=1
    elseif v.ClassName=="Hat" then
        v.Handle.Mesh.TextureId='rbxassetid://25701026'
        table.insert(Parts,v.Handle)
    end
end
t=Part(1,1,1,'',0,false,false,char)
Mesh(t,1,1,1,1)
Weld(char.Torso,t)
a=Part(1,1,1,'',0,false,false,char)
Mesh(a,1,.5,1,1)
Weld(char['Right Arm'],a)
a=Part(1,1,1,'',0,false,false,char)
Mesh(a,1,.5,1,1)
Weld(char['Left Arm'],a)
l=Part(1,1,1,'',0,false,false,char)
Mesh(l,1,.5,1,1)
Weld(char['Right Leg'],l)
l=Part(1,1,1,'',0,false,false,char)
Mesh(l,1,.5,1,1)
Weld(char['Left Leg'],l)
h=Part(1,1,1,'',0,false,false,char)
Mesh(h,2,1,1,1)
Weld(char.Head,h)
Spawn(function()
    while(coroutine.yield())do
        for i=1,#Parts do
            Parts[i].Mesh.VertexColor=GetDiscoColor(tick()*.5)--vertex 4 lyfe
        end
    end;
end);