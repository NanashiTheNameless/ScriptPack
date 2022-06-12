--Made by LuisPambid[L]--

--Player Settings
local modelName="Winter Staff" --Name here
repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
local player=game.Players.LocalPlayer
local char=player.Character

--CharacterParts
local humanoid=char.Humanoid
local head=char.Head
local torso=char.Torso
local LA=char:findFirstChild("Left Arm")
local RA=char:findFirstChild("Right Arm")
local LL=char:findFirstChild("Left Leg")
local RL=char:findFirstChild("Right Leg")

--Joints
local LS=torso:findFirstChild("Left Shoulder")
local RS=torso:findFirstChild("Right Shoulder")
local LH=torso:findFirstChild("Left Hip")
local RH=torso:findFirstChild("Right Hip")
LS.Part0=torso RS.Part0=torso LH.Part0=torso RH.Part0=torso

--Local Functions
local s=function(f) Spawn(f) end
local c=function(f) coroutine.resume(coroutine.create(f)) end
pcall(function() player.Backpack[modelName]:remove() end) 
pcall(function() char["CharacterParts"]:remove() end)
pcall(function() char[modelName]:remove() end)
pcall(function() player.PlayerGui[modelName]:remove() end)
pcall(function() for i, v in pairs(char:children()) do if v:isA("BasePart") then v.Transparency=0 end end end)
--Settings
local model=Instance.new("Model", char) model.Name="CharacterParts"
local model2=Instance.new("Model", char) model2.Name=modelName
local bin=Instance.new("HopperBin", player.Backpack) bin.Name=modelName
local gui=Instance.new("ScreenGui") gui.Name=modelName
local skincolor="Really black"
local body={}
local animate={}
local obj={}
local onTrail=false
local onKey=false
local onHit=false
local onBlock=false
local onHold=false
local colorSet={
        Handle="Brown";
        Blade="Mid gray";
        Extra="Reddish brown";
}
local combo=0
local dmg=math.random(10, 15)
local mouse

local add={
        Part=function(par, a, c, col, t, s, cf, ms)
                local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
                local m=Instance.new("BlockMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) end)
                return p
        end;
        Wedge=function(par, a, c, col, t, s, cf, ms)
                local p=Instance.new("WedgePart", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
                local m=Instance.new("SpecialMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) m.MeshType="Wedge" end)
                return p
        end;
        Gui=function(ins, par, bc, bg, tc, fs, text, t, s, pos)
                local g=Instance.new(ins, par) pcall(function() g.BorderColor=BrickColor.new(bc) g.BackgroundColor=BrickColor.new(bg) g.TextColor=BrickColor.new(tc) g.FontSize=fs g.Font="ArialBold" g.Text=text g.BackgroundTransparency=t g.Size=s g.Position=pos  end)
                return g
        end;
        Weld=function(par, p1, cf)
                local w=Instance.new("Weld", par) pcall(function() w.Part0=w.Parent or par w.Part1=p1 w.C1=cf or CFrame.new() end)
                return w
        end;
        Mesh=function(ins, par, s, of, t, id, tid)
                local m=Instance.new(ins, par) pcall(function() m.Scale=s or Vector3.new(1, 1, 1) m.Offset=of or Vector3.new() m.MeshId=id or "" m.TextureId=tid or "" m.MeshType=t end)
                return m
        end;
        Sound=function(parent, id, pitch, volume)
                local s=Instance.new("Sound", parent) pcall(function() s.SoundId=id s.Volume=volume s.Pitch=pitch end)
                return s
        end;
}

--Sounds
local Sounds={
        Slash="rbxasset://sounds//swordslash.wav";
        Hit="http://www.roblox.com/asset/?id=11113679 ";
        Equip="rbxasset://sounds/unsheath.wav";
        Charge="http://www.roblox.com/asset/?id=2101137";
        ElectricShortage="http://roblox.com/asset/?id=10209481";
        ElectricSound="http://www.roblox.com/asset/?id=10756118";
        Electric="http://www.roblox.com/asset/?id=2800815";
        Abscond="http://www.roblox.com/asset/?id=2767090";
        Cannon="http://www.roblox.com/asset/?id=2920959";
        Bash="http://www.roblox.com/asset/?id=25270310";
        Suirize="http://roblox.com/asset/?id=10209605";
        Heli="http://www.roblox.com/asset/?id=27112125";
}

--Decals
local Decals={
        Slash="http://www.roblox.com/asset/?id=25539335";
}

--MeshIds
local Meshes={
        Charge="http://www.roblox.com/asset/?id=20329976";
        Noob="http://www.roblox.com/asset/?id=29515710";
        Ring="http://www.roblox.com/asset/?id=3270017";
        Crown="http://www.roblox.com/asset/?id=1323306";
        Spring="http://www.roblox.com/Asset/?id=9753878";
        Sword="rbxasset://fonts/sword.mesh";
        Shield="http://www.roblox.com/asset/?id=50798797";
}

------------------------CreateParts------------------------
body.Torso=add.Part(model2, false, false, skincolor, 1, Vector3.new(2, 2, 1), nil)
body.TorsoW=add.Weld(body.Torso, torso, nil)
function createParts()
        for i, v in pairs(char:children()) do if v:isA("CharacterMesh") then v:remove() end end
        torso.Transparency=1 body.Torso.Transparency=0
        --Parts--
        gui.Parent=player.PlayerGui
        body.Head=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
        body.LA, body.RA=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
        body.LL, body.RL=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
        
        --Welds--
        body.HeadW=add.Weld(body.Head, body.Torso, CFrame.new(0, 1.5, 0))
        body.LAW, body.RAW=add.Weld(body.LA, body.Torso, CFrame.new(-1.5, .5, 0)), add.Weld(body.RA, body.Torso, CFrame.new(1.5, .5, 0))
        body.LLW, body.RLW=add.Weld(body.LL, body.Torso, CFrame.new(-.5, -1.5, 0)), add.Weld(body.RL, body.Torso, CFrame.new(.5, -1.5, 0))
        
        --Welds2--
        add.Weld(body.Head, head, nil)
        add.Weld(LA, body.LA, CFrame.new(0, -.5, 0))
        add.Weld(RA, body.RA, CFrame.new(0, -.5, 0))
        LH.Part0=body.Torso
        RH.Part0=body.Torso
        
        --Sign--
        body.Part=add.Part(model, false, false, "White", 0, Vector3.new(.2, 1, .2))
        add.Weld(body.Part, body.Torso, CFrame.new(.25, 0, -.45))
        body.Part=add.Part(model, false, false, "White", 0, Vector3.new(.7, .2, .2))
        add.Weld(body.Part, body.Torso, CFrame.new(0, -.5, -.45))
        
        --Animation--
        animate={
                ["Head"]=function(cf)
                        body.HeadW.C1=CFrame.new(0, 1.5, 0)*cf
                end;
                ["Torso"]=function(cf)
                        body.TorsoW.C1=(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
                end;
                ["LA"]=function(cf)
                        body.LAW.C1=CFrame.new(-1.5, .5, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
                end;
                ["RA"]=function(cf)
                        body.RAW.C1=CFrame.new(1.5, .5, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
                end;
                ["LL"]=function(cf)
                        LLW=add.Weld(LL, body.LL, CFrame.new(0, -1, 0))
                        body.LLW.C1=CFrame.new(-.5, -1, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
                        c(function()
                                wait()
                                LLW:remove()
                        end)
                end;
                ["RL"]=function(cf)
                        RLW=add.Weld(RL, body.RL, CFrame.new(0, -1, 0))
                        body.RLW.C1=CFrame.new(.5, -1, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
                        c(function()
                                wait()
                                RLW:remove()
                        end)
                end;
        }
        --GuiLabels--
        obj.AL=add.Gui("TextLabel", gui, "Really black", "Really black", "White", "Size18", "Attack(Click)", 0, UDim2.new(0, 150, 0, 50), UDim2.new(0, 0, 0, 150))
        obj.AL2=add.Gui("TextLabel", obj.AL, "Really black", "Really black", "White", "Size18", "Block(F)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL3=add.Gui("TextLabel", obj.AL2, "Really black", "Really black", "White", "Size18", "Smash(Q)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL4=add.Gui("TextLabel", obj.AL3, "Really black", "Really black", "White", "Size18", "WinterSpike(E)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL5=add.Gui("TextLabel", obj.AL4, "Really black", "Really black", "White", "Size18", "Blast(R)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL6=add.Gui("TextLabel", obj.AL5, "Really black", "Really black", "White", "Size18", "WinterBoard(Z)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        --WeaponDesgin--
        for i, v in pairs(model2:children()) do
                if i~=1 then return end
        end
        obj.H=add.Part(model2, false, false, colorSet.Handle, 0, Vector3.new(.2, 5, .2))
        obj.HM=add.Mesh("CylinderMesh", obj.H)
        obj.HW=add.Weld(obj.H, torso, CFrame.new(0, 0, .5)*CFrame.Angles(0, 0, -math.rad(45)))

        obj.Extra=add.Part(model2, false, false, colorSet.Handle, 0, Vector3.new(.2, 1.5, .2))
        obj.ExtraM=add.Mesh("CylinderMesh", obj.Extra)
        obj.ExtraW=add.Weld(obj.Extra, obj.H, CFrame.new(0, 2.6, .5)*CFrame.Angles(math.rad(45), 0, 0))
        obj.Con=add.Part(model2, false, false, colorSet.Handle, 0, Vector3.new(.25, .25, .25))
        obj.ConM=add.Mesh("SpecialMesh", obj.Con, nil, nil, "Sphere")
        obj.ConW=add.Weld(obj.Con, obj.Extra, CFrame.new(0, .75, 0))

        obj.Extra=add.Part(model2, false, false, colorSet.Handle, 0, Vector3.new(.2, 1.5, .2))
        obj.ExtraM=add.Mesh("CylinderMesh", obj.Extra)
        obj.ExtraW=add.Weld(obj.Extra, obj.H, CFrame.new(0, 3.8, 1))
        obj.Con=add.Part(model2, false, false, colorSet.Handle, 0, Vector3.new(.25, .25, .25))
        obj.ConM=add.Mesh("SpecialMesh", obj.Con, nil, nil, "Sphere")
        obj.ConW=add.Weld(obj.Con, obj.Extra, CFrame.new(0, .75, 0))

        obj.Extra=add.Part(model2, false, false, colorSet.Handle, 0, Vector3.new(.2, 1.5, .2))
        obj.ExtraM=add.Mesh("CylinderMesh", obj.Extra)
        obj.ExtraW=add.Weld(obj.Extra, obj.H, CFrame.new(0, 5, .5)*CFrame.Angles(-math.rad(45), 0, 0))
        obj.Con=add.Part(model2, false, false, colorSet.Handle, 0, Vector3.new(.25, .25, .25))
        obj.ConM=add.Mesh("SpecialMesh", obj.Con, nil, nil, "Sphere")
        obj.ConW=add.Weld(obj.Con, obj.Extra, CFrame.new(0, .75, 0))

        obj.Extra=add.Part(model2, false, false, colorSet.Handle, 0, Vector3.new(.2, 1.5, .2))
        obj.ExtraM=add.Mesh("CylinderMesh", obj.Extra)
        obj.ExtraW=add.Weld(obj.Extra, obj.H, CFrame.new(0, 5, -.5)*CFrame.Angles(math.rad(45), 0, 0))

        obj.H2=add.Part(model2, false, false, colorSet.Extra, 0, Vector3.new(.2, 5, .2))
        obj.H2M=add.Mesh("SpecialMesh", obj.H2, Vector3.new(.5, 5, .5), nil, "File", Meshes.Spring)
        obj.H2W=add.Weld(obj.H2, obj.H)
end

------------------------Functions------------------------
function removeParts()
        pcall(function()
                if torso then
                        LS.Part0=torso
                        RS.Part0=torso LH.Part0=torso
                        RH.Part0=torso
                        torso.Transparency=0
                        body.Torso.Transparency=1
                end
                player.PlayerGui[modelName]:remove()
                for i, v in pairs(model:children()) do
                        v:remove()
                end
        end)
end
function play(soundid, pitch, vol)
        local sound=add.Sound(workspace, soundid, pitch or 1, volume or 1)
        sound:play()
        s(function() wait(5) sound:remove() end)
end
function fade(part, incr)
        if part:isA("BasePart") then
                for i=part.Transparency, 1, incr do wait() part.Transparency=i end
        elseif part:isA("Model") then
                for i, v in pairs(part:children() or part) do
                        if v:isA("BasePart") then
                                for i=part.Transparency, 1, incr do wait() v.Transparency=i end
                        end
                end
        end
end
function appear(part, incr)
        if part:isA("BasePart") then
                for i=part.Transparency, 0, -incr do wait() part.Transparency=i end
        elseif part:isA("Model") then
                for i, v in pairs(part:children() or part) do
                        if v:isA("BasePart") then
                                for i=part.Transparency, 0, -incr do wait() v.Transparency=i end
                        end
                end
        end
end
function computePos(pos, pos2)
        local pos3=Vector3.new(pos2.x, pos.y, pos2.z) 
        return CFrame.new(pos, pos3)
end
function rayCast(pos, dir, max, ingore)
        return workspace:findPartOnRay(Ray.new(pos, dir.unit*(max or 9999)), ignore)
end
function nearPos(pos, dis)
        local temp
        local distance=dis
        for i, v in pairs(workspace:children()) do
                if v:isA("Model") then
                        temp=v:findFirstChild("Torso")
                        local humanoid=v:findFirstChild("Humanoid")
                        if temp and humanoid and v~=char and (temp.CFrame.p-pos).magnitude<distance then
                                distance=(temp.CFrame.p-pos).magnitude
                                return temp.Parent 
                        end
                end
        end
end
function lightningGen(startPos, endPos, col)
        local magnitude=(startPos-endPos).magnitude
        local distance=(startPos+endPos)/2
        local pattern=add.Part(workspace, true, false, "White", 1, Vector3.new(.2, .2, magnitude), CFrame.new(distance, startPos))
        local startPosProx=startPos
        for i=1, 9 do
                local startPosProx2=startPosProx local random=Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
                local findSize=pattern.Size.z/10 local findOffSet=pattern.CFrame.lookVector*-1
                local compute=i*findSize*findOffSet local newStartPos=startPos
                local newEndPos=CFrame.new(random+compute+newStartPos).p
                local magnitude=(startPosProx2-newEndPos).magnitude
                local distance=(startPosProx2+newEndPos)/2
                local lightning=add.Part(workspace, true, false, col or "Bright yellow", 0, Vector3.new(.2, .2, magnitude), CFrame.new(distance, startPosProx2))
                s(function()
                        fade(lightning, .1) lightning:remove()
                end)
                startPosProx=newEndPos
        end 
        pattern:remove()
end
function trail(pos, cf, col, thick)
        onTrail=true
        s(function()
                local old=(pos.CFrame*(cf or CFrame.new())).p 
                while onTrail do wait()
                        local new=(pos.CFrame*(cf or CFrame.new())).p
                        local mag=(old-new).magnitude
                        local dis=(old+new)/2 local trail=add.Part(char, true, false, col or "White", 0, Vector3.new(1, mag, 1), CFrame.new(dis, new)*CFrame.Angles(math.pi/2, 0, 0))
                        trail.Name="Effect" local tMesh=add.Mesh("CylinderMesh", trail, Vector3.new(thick or 1, 1, thick or 1), nil, nil)
                        old=new
                        s(function()
                                for i=1, 0, -.1 do wait() tMesh.Scale=tMesh.Scale*Vector3.new(i, 1, i) end trail:remove()
                        end)
                        s(function()
                                fade(trail, .1)
                        end)
                end
        end)
end
function stickHit(from, to)
        local stickW=add.Weld(from, to, to.CFrame:inverse()*from.CFrame)
        stickW.C0=from.CFrame:inverse()*from.CFrame
        return stickW
end
function glowMesh(prt, size, speed)
        local glow=prt:clone() add.Weld(prt, glow)
        glow.Parent=workspace
        glow.Anchored=false
        glow.CanCollide=false
        for i, v in pairs(glow:children()) do
                if v:isA("SpecialMesh") or v:isA("BlockMesh") or v:isA("CylinderMesh") then
                        s(function()
                                for i=0, size, speed do wait() v.Scale=v.Scale+Vector3.new(i, i, i) end
                        end)
                        s(function()
                                fade(glow, .1) glow:remove()
                        end)
                end
        end
end
function charge(prt, cf, col, start, endval, incr)
        local aura=add.Part(workspace, false, false, col or "Bright yellow", 0, Vector3.new(1, 1, 1), cf or torso.CFrame)
        local auraM=add.Mesh("SpecialMesh", aura, Vector3.new(start, .5, start), nil, "File") auraM.MeshId=Meshes.Charge
        add.Weld(aura, prt or torso, cf*CFrame.Angles(0, math.rad(math.random(-45, 45)), 0))
        s(function()
                for i=start, endval, incr do wait()
                        auraM.Scale=Vector3.new(i, auraM.Scale.y, i)
                end
                aura:remove()
        end)
        s(function()
                fade(aura, .1)
        end)
end
function makeCircle(prt, prts, dis, incr)
        local radius=dis+(prts+incr)
        for i=1, prts do
                local prt2=prt:clone()
                prt2.Parent=model
                local x = math.sin((360/prts + 360/prts*i)/(180/math.pi))*radius
                local y = 0
                local z = math.cos((360/prts + 360/prts*i)/(180/math.pi))*radius
                prt2.CFrame=prt.CFrame:toWorldSpace(CFrame.new(x,y,z))
                prt:remove()
                return prt2
        end
end
function antiExplosion(model)
        local ffs={}
        for i, v in pairs(model:children()) do
                pcall(function()
                        local ff2=Instance.new("ForceField", v.Handle)
                        table.insert(ffs, ff2) end)
                        if v:isA("BasePart") then
                                local ff=Instance.new("ForceField", v)
                                table.insert(ffs, ff)
                        end
                end
        return ffs
end
function dmgHit(prt)
        prt.Touched:connect(function(h)
                if onKey==true and h.Parent:findFirstChild("Humanoid") and onHit==false and h.Parent~=char then
                        onHit=true
                        local fakeM=Instance.new("Model", workspace) 
                        fakeM.Name=-dmg
                        local hHuman=h.Parent:findFirstChild("Humanoid")
                        hHuman.Health=hHuman.Health-dmg
                        local hTorso=h.Parent:findFirstChild("Torso")
                        local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
                        local label=add.Part(fakeM, true, false, "Bright red", 0, Vector3.new(.5, .5, .5), h.CFrame*CFrame.new(math.random(-4, 4), 4, math.random(-4, 4))) label.Name="Head"
                        --Freeze
                        play(Sounds.Abscond, 1, 1)
                        local f=add.Part(workspace, true, false, "Cyan", .5, Vector3.new(6, 6, 6), hTorso.CFrame) hTorso.Anchored=true
                        s(function() for i=.5, 1, .01 do wait() f.Transparency=i end f:remove() hTorso.Anchored=false end)
                        game.Debris:addItem(fakeM, 1)
                        wait(.1)
                        onHit=false
                end
        end)
end
function blockHit(prt)
        prt.Touched:connect(function(h)
                if onKey==true and not h.Parent:findFirstChild("Humanoid") and onHit==false and h.Parent~=char then
                        onHit=true
                        play(Sounds.Hit, 1, 1)
                        print'Blocked'
                        local bp=Instance.new("BodyPosition", h) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=(CFrame.new(torso.CFrame.p, h.CFrame.p)*CFrame.new(0, 0, -math.random(100, 200))).p
                        local bg=Instance.new("BodyGyro", h) bg.maxTorque=Vector3.new(math.huge, math.huge, math.huge) bg.cframe=CFrame.new(h.CFrame.p, torso.CFrame.p)
                        game.Debris:addItem(bp, .2) game.Debris:addItem(bg, .2)
                        wait(.1)
                        onHit=false
                end
        end)
end
function idle()
        animate.LA(CFrame.Angles(-math.rad(15), 0, -math.rad(15)))
        animate.RA(CFrame.Angles(math.rad(15), 0, math.rad(15)))
end
function Smash()
        humanoid.WalkSpeed=0
        for i=0, 1, .1 do wait()
                animate.Torso(CFrame.new(0, 5*i, 0))
                animate.LA(CFrame.new(.5*i, 1*i, -.5*i)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i))
                animate.RA(CFrame.new(-.5*i, 1*i, -.5*i)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i))
                obj.HW.C1=CFrame.new(0, -1, 0)*CFrame.Angles(-math.pi/2, -math.rad(45)*i, 0)
        end
        play(Sounds.Cannon, .3, 1)
        for i=0, 1, .2 do wait()
                animate.Torso(CFrame.new(0, 5-6*i, 0))
                animate.LA(CFrame.new(.5, 1-1.5*i, -.5)*CFrame.Angles(math.rad(135-45*i), 0, math.rad(45)))
                animate.RA(CFrame.new(-.5, 1-1.5*i, -.5)*CFrame.Angles(math.rad(135-45*i), 0, -math.rad(45)))
                animate.LL(CFrame.Angles(-math.rad(90)*i, 0, 0))
                animate.RL(CFrame.new(0, 1*i, -1*i))
                obj.HW.C1=CFrame.new(0, -1, 0)*CFrame.Angles(-math.pi/2, -math.rad(45), 0)
        end
        local b=add.Part(workspace, true, false, "Cyan", .5, Vector3.new(80, 80, 80), torso.CFrame*CFrame.new(0, -3, 0)*CFrame.Angles(-math.rad(90), 0, 0)+torso.CFrame.lookVector*1.5)
        local bM=add.Mesh("SpecialMesh", b, Vector3.new(1, 1, 1), nil, nil, Meshes.Ring)
        local b2=add.Part(workspace, true, false, "Cyan", .5, Vector3.new(80, 80, 80), torso.CFrame*CFrame.new(0, -3, 0)+torso.CFrame.lookVector*1.5)
        local b2M=add.Mesh("SpecialMesh", b2, Vector3.new(1, 2, 1), nil, nil, Meshes.Crown)
        dmgHit(b) dmgHit(b2)
        s(function()
                for i=1, 80, 2 do wait()
                        bM.Scale=Vector3.new(i, i, i)
                        b2M.Scale=Vector3.new(i, 2, i)
                end
                b:remove() b2:remove()
        end)
        for i=1, 0, -.1 do wait()
                animate.Torso(CFrame.new(0, -1*i, 0))
                animate.LA(CFrame.new(.5*i, -.5*i, -.5*i)*CFrame.Angles(math.rad(90*i), 0, math.rad(45)*i))
                animate.RA(CFrame.new(-.5*i, -.5*i, -.5*i)*CFrame.Angles(math.rad(90*i), 0, -math.rad(45)*i))
                animate.LL(CFrame.Angles(-math.rad(90)*i, 0, 0))
                animate.RL(CFrame.new(0, 1*i, -1*i))
                obj.HW.C1=CFrame.new(0, -1, 0)*CFrame.Angles(-math.pi/2, -math.rad(45)*i, 0)
        end
        humanoid.WalkSpeed=16
        idle()
end
function WinterSpike()
        humanoid.WalkSpeed=0
        local bg=Instance.new("BodyGyro", torso) bg.maxTorque=Vector3.new(math.huge, math.huge, math.huge) bg.D=100
        for i=0, 1, .05 do wait()
                play(Sounds.Suirize, 1, 1)
                bg.cframe=computePos(torso.CFrame.p, mouse.Hit.p)
                animate.RA(CFrame.Angles(math.rad(180)*i, 0, 0))
                local b=add.Part(workspace, true, false, "Cyan", .5, Vector3.new(10, 10, 10), torso.CFrame*CFrame.new(0, -3, 0)*CFrame.Angles(-math.rad(90), 0, 0)+torso.CFrame.lookVector*(120*i))
                local bM=add.Mesh("SpecialMesh", b, Vector3.new(10, 10, 10), nil, nil, Meshes.Ring)
                local b2=add.Part(workspace, true, false, "Cyan", .5, Vector3.new(10, 10, 10), torso.CFrame*CFrame.new(0, -3, 0)+torso.CFrame.lookVector*(120*i))
                local b2M=add.Mesh("SpecialMesh", b2, Vector3.new(1, 2, 1), nil, nil, Meshes.Crown)
                local b3=add.Part(workspace, true, false, "Cyan", .5, Vector3.new(1, .8, 4), torso.CFrame*CFrame.new(0, -3, 0)*CFrame.Angles(-math.rad(90), 0, 0)+torso.CFrame.lookVector*(120*i))
                local b3M=add.Mesh("SpecialMesh", b3, Vector3.new(1, 1, 1), nil, nil, Meshes.Sword)
                dmgHit(b) dmgHit(b2) dmgHit(b3)
                s(function()
                        for i=1, 10, .5 do wait()
                                b2M.Scale=Vector3.new(i, 2, i)
                                b3.CFrame=b3.CFrame*CFrame.new(0, 0, i/20)
                        end
                        b:remove() b2:remove() b3:remove()
                end)
        end
        bg:remove()
        for i=1, 0, -.1 do wait()
                animate.RA(CFrame.Angles(math.rad(180)*i, 0, 0))
        end
        humanoid.WalkSpeed=16
        idle()
end
function Blast()
        humanoid.WalkSpeed=0
        local bg=Instance.new("BodyGyro", torso) bg.maxTorque=Vector3.new(math.huge, math.huge, math.huge) bg.D=100
        for i=0, 1, .1 do wait()
                animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
                animate.Head(CFrame.Angles(0, -math.rad(45)*i, 0))
                animate.RA(CFrame.Angles(math.rad(45)*i, 0, math.rad(45)*i))
                obj.HW.C1=CFrame.new(0, -1, 0)*CFrame.Angles(-math.rad(90+45*i), 0, 0)
        end
        local pressure=0
        play(Sounds.Heli, .5, 1)
        if pressure>50 then onHold=false end
        while onHold do wait(.1)
                pressure=pressure+.1
                dmg=dmg+.5
                local ss=add.Part(workspace, true, false, "Cyan", 0, Vector3.new(pressure, pressure, pressure), torso.CFrame+torso.CFrame.lookVector*10)
                local ssM=add.Mesh("SpecialMesh", ss, nil, nil, "Sphere")
                local e=add.Part(workspace, false, false, "Cyan", 0, Vector3.new(2, 2, 2), ss.CFrame*CFrame.new(math.random(-pressure-10, pressure+10), math.random(-pressure-10, pressure+10), math.random(-pressure-10, pressure+10))*CFrame.Angles(math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))))
                local bp=Instance.new("BodyPosition", e) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=ss.Position
                s(function()
                        for i=0, 1, .1 do wait()
                                ss.Transparency=i
                                e.Transparency=i
                        end
                        ss:remove() e:remove()
                end)
                bg.cframe=computePos(torso.CFrame.p, mouse.Hit.p)
        end
        local ss=add.Part(workspace, false, false, "Cyan", .5, Vector3.new(pressure, pressure, pressure), torso.CFrame+torso.CFrame.lookVector*10)
        local ssM=add.Mesh("SpecialMesh", ss, nil, nil, "Sphere")
        trail(ss, nil, "Cyan", pressure)
        local bf=Instance.new("BodyForce", ss) bf.force=Vector3.new(0, ss:getMass()*196.25, 0)
        local bv=Instance.new("BodyVelocity", ss) bv.maxForce=bv.maxForce*math.huge bv.velocity=ss.CFrame.lookVector*100
        ss.Touched:connect(function(h)
                if h.Parent:findFirstChild("Humanoid") and onHit==false and h.Parent~=char then
                        onHit=true
                        local fakeM=Instance.new("Model", workspace) 
                        fakeM.Name=-dmg
                        local hHuman=h.Parent:findFirstChild("Humanoid")
                        hHuman.Health=hHuman.Health-dmg
                        local hTorso=h.Parent:findFirstChild("Torso")
                        local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
                        local label=add.Part(fakeM, true, false, "Bright red", 0, Vector3.new(.5, .5, .5), h.CFrame*CFrame.new(math.random(-4, 4), 4, math.random(-4, 4))) label.Name="Head"
                        --Freeze
                        play(Sounds.Abscond, 1, 1)
                        local f=add.Part(workspace, true, false, "Cyan", .5, Vector3.new(6, 6, 6), hTorso.CFrame) hTorso.Anchored=true
                        s(function() for i=.5, 1, .01 do wait() f.Transparency=i end f:remove() hTorso.Anchored=false end)
                        game.Debris:addItem(fakeM, 1)
                        wait(.1)
                        onHit=false
                end
        end)
        s(function() wait(5) onTrail=false ss:remove() dmg=math.random(10, 15) end)
        bg:remove()
        for i=1, 0, -.1 do wait()
                animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
                animate.Head(CFrame.Angles(0, -math.rad(45)*i, 0))
                animate.RA(CFrame.Angles(math.rad(45)*i, 0, math.rad(45)*i))
                obj.HW.C1=CFrame.new(0, -1, 0)*CFrame.Angles(-math.rad(90+45*i), 0, 0)
        end
        humanoid.WalkSpeed=16
        idle()
end
function Block()
        for i=0, 1, .1 do wait()
                animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
                animate.Head(CFrame.Angles(0, -math.rad(45)*i, 0))
                animate.RA(CFrame.Angles(math.rad(45)*i, 0, math.rad(45)*i))
                obj.HW.C1=CFrame.new(0, -1, 0)*CFrame.Angles(-math.rad(90+45*i), 0, 0)
        end
        local bg=Instance.new("BodyGyro", torso) bg.maxTorque=Vector3.new(math.huge, math.huge, math.huge) bg.D=100
        local cf=torso.CFrame*CFrame.Angles(-math.rad(90), 0, 0)+torso.CFrame.lookVector*8
        local shield=add.Part(workspace, false, true, "Cyan", .2, Vector3.new(4, 4, 4.5), cf)
        local shieldM=add.Mesh("SpecialMesh", shield, shield.Size, nil, nil, Meshes.Shield)
        local shieldW=add.Weld(shield, torso, CFrame.Angles(-math.rad(90), 0, 0)*CFrame.new(0, 8, 0))
        blockHit(shield)
        s(function()
                while onBlock do wait()
                        bg.cframe=computePos(torso.CFrame.p, mouse.Hit.p)
                end
        end)
        while onBlock do wait(.5)
                glowMesh(shield, 1, .1)
        end
        wait(.5)
        shield:remove()
        bg:remove()
        for i=1, 0, -.1 do wait()
                animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
                animate.Head(CFrame.Angles(0, -math.rad(45)*i, 0))
                animate.RA(CFrame.Angles(math.rad(45)*i, 0, math.rad(45)*i))
                obj.HW.C1=CFrame.new(0, -1, 0)*CFrame.Angles(-math.rad(90+45*i), 0, 0)
        end
        idle()
end
function WinterBoard()
        for i=0, 1, .1 do wait()
                animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
                animate.Head(CFrame.Angles(0, -math.rad(45)*i, 0))
                animate.RA(CFrame.Angles(math.rad(45)*i, 0, math.rad(45)*i))
                obj.HW.C1=CFrame.new(0, -1, 0)*CFrame.Angles(-math.rad(90+45*i), 0, 0)
        end
        local flyboard=Instance.new("Model", char) flyboard.Name="WinterBoard"
        obj.Board=add.Part(flyboard, false, false, "Cyan", 0, Vector3.new(2, .5, 4))
        obj.BoardW=add.Weld(obj.Board, torso, CFrame.new(0, -3, 0))
        obj.W=add.Wedge(flyboard, false, false, "Cyan", 0, Vector3.new(.5, 4, 1))
        obj.WW=add.Weld(obj.W, obj.Board, CFrame.new(-1.5, 0, 0)*CFrame.Angles(0, math.pi/2, -math.pi/2))
        obj.W=add.Wedge(flyboard, false, false, "Cyan", 0, Vector3.new(.5, 4, 1))
        obj.WW=add.Weld(obj.W, obj.Board, CFrame.new(1.5, 0, 0)*CFrame.Angles(0, -math.pi/2, math.pi/2))
        obj.W=add.Wedge(flyboard, false, false, "Cyan", 0, Vector3.new(.5, 2, 1))
        obj.WW=add.Weld(obj.W, obj.Board, CFrame.new(-1, 0, 2.5)*CFrame.Angles(0, math.pi, -math.pi/2))
        obj.W=add.Wedge(flyboard, false, false, "Cyan", 0, Vector3.new(.5, 2, 1))
        obj.WW=add.Weld(obj.W, obj.Board, CFrame.new(1, 0, 2.5)*CFrame.Angles(0, math.pi, math.pi/2))
        obj.S=add.Part(flyboard, false, false, "Cyan", 0, Vector3.new(.5, .5, .5))
        obj.SM=add.Mesh("CylinderMesh", obj.S)
        obj.SW=add.Weld(obj.S, obj.Board, CFrame.new(1, 0, 2.5)*CFrame.Angles(math.pi/2, 0, 0))
        obj.S2=add.Part(flyboard, false, false, "Cyan", 0, Vector3.new(.5, .5, .5))
        obj.S2M=add.Mesh("CylinderMesh", obj.S2)
        obj.S2W=add.Weld(obj.S2, obj.Board, CFrame.new(-1, 0, 2.5)*CFrame.Angles(math.pi/2, 0, 0))
        obj.sS=add.Part(flyboard, false, false, "White", 0, Vector3.new(.45, .55, .45))
        obj.sSM=add.Mesh("CylinderMesh", obj.sS)
        obj.sSW=add.Weld(obj.sS, obj.Board, CFrame.new(1, 0, 2.5)*CFrame.Angles(math.pi/2, 0, 0))
        obj.sS2=add.Part(flyboard, false, false, "White", 0, Vector3.new(.45, .55, .45))
        obj.sS2M=add.Mesh("CylinderMesh", obj.sS2)
        obj.sS2W=add.Weld(obj.sS2, obj.Board, CFrame.new(-1, 0, 2.5)*CFrame.Angles(math.pi/2, 0, 0))
        trail(obj.S, nil, "Cyan", .5)
        trail(obj.S2, nil, "Cyan", .5)
        local bg=Instance.new("BodyGyro", torso) bg.maxTorque=Vector3.new(math.huge, math.huge, math.huge) bg.D=500
        local bv=Instance.new("BodyVelocity", torso) bv.maxForce=bv.maxForce*math.huge
        while onHold do wait()
                bv.velocity=torso.CFrame.lookVector*50
                bg.cframe=mouse.Hit*CFrame.Angles(0, 0, torso.RotVelocity.y*.5)
        end
        bg:remove() bv:remove()
        flyboard:remove()
        onTrail=false
        for i=1, 0, -.1 do wait()
                animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
                animate.Head(CFrame.Angles(0, -math.rad(45)*i, 0))
                animate.RA(CFrame.Angles(math.rad(45)*i, 0, math.rad(45)*i))
                obj.HW.C1=CFrame.new(0, -1, 0)*CFrame.Angles(-math.rad(90+45*i), 0, 0)
        end
        idle()
end
function keyDown(key)
        local key=key:lower()
        if key=="q" and not onKey then
                onKey=true
                Smash()
                onKey=false
        end
        if key=="e" and not onKey then
                onKey=true
                WinterSpike()
                onKey=false
        end
        if key=="r" and not onKey then
                onKey=true onHold=true
                Blast()
                onKey=false
        end
        if key=="f" and not onKey then
                onKey=true onBlock=true
                Block()
                onKey=false
        end
        if key=="z" and not onKey then
                onKey=true onHold=true
                WinterBoard()
                onKey=false
        end
end
function keyUp(key)
        local key=key:lower()
        if key=="r" and onKey and onHold then onHold=false end
        if key=="f" and onKey and onBlock then onBlock=false end
        if key=="z" and onKey and onHold then onHold=false end
end
bin.Selected:connect(function(m)
        onKey=false
        mouse=m
        createParts()
        for i=0, 1, .1 do wait()
                animate.RA(CFrame.Angles(-math.rad(25)*i, 0, -math.rad(45)*i))
        end
        obj.HW.Part1=RA
        obj.HW.C1=CFrame.new(0, -1, 0)*CFrame.Angles(-math.pi/2, 0, 0)
        for i=1, 0, -.1 do wait()
                animate.RA(CFrame.Angles(-math.rad(25)*i, 0, -math.rad(45)*i))
        end
        mouse.KeyDown:connect(keyDown)
        mouse.KeyUp:connect(keyUp)
        idle()
end)
bin.Deselected:connect(function()
        for i=0, 1, .1 do wait()
                animate.RA(CFrame.Angles(-math.rad(25)*i, 0, -math.rad(45)*i))
        end
        obj.HW.Part1=torso
        obj.HW.C1=CFrame.new(0, 0, .5)*CFrame.Angles(0, 0, -math.rad(45))
        for i=1, 0, -.1 do wait()
                animate.RA(CFrame.Angles(-math.rad(25)*i, 0, -math.rad(45)*i))
        end
        removeParts()
end)
--mediafire?