create/23/local
/edit/23
/setfenv(assert(loadstring(table.concat({
"print(\"Loaded\")\nlocal modelName=\"BatMobile\" --Name here\nlocal player\nlocal torso\n--#Local Functions\nlocal c=function(f) coroutine.resume(coroutine.create(f)) end\n--#Settings\nlocal inf=math.huge\nlocal pi=math.pi\nlocal mr=math.rad\nlocal ms=math.sin\nlocal mc=math.cos\nlocal mrand=math.random\nlocal cn=CFrame.new\nlocal ca=CFrame.Angles\nlocal ti=table.insert\nlocal tr=table.remove\nlocal model2=Instance.new(\"Model\", workspace) model2.Name=modelName\nlocal gui=Instance.new(\"ScreenGui\") gui.Name=modelName\nlocal skincolor=\"Deep orange\"\nlocal body={}\nlocal animate={}\nlocal obj={}\nlocal dmg=mrand(5, 10) --normal damage\nlocal mouse\nlocal walkSpeed=100 --normal\nlocal combo=0\nlocal switch=0\nlocal key=false\nlocal hit=false\nlocal block=false\nlocal trails\nlocal speed=0\nlocal add={\n        Part=function(par, a, c, col, t, s, cf, ms)\n                local p=Instance.new(\"Part\", par) pcall(function() p.TopSurface="
/,"\"Smooth\" p.BottomSurface=\"Smooth\" p.formFactor=\"Custom\" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or cn()  end)\n                local m=Instance.new(\"BlockMesh\", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) end)\n                return p\n        end;\n        Cylinder=function(par, a, c, col, t, s, cf, ms)\n                local p=Instance.new(\"Part\", par) pcall(function() p.TopSurface=\"Smooth\" p.BottomSurface=\"Smooth\" p.formFactor=\"Custom\" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or cn()  end)\n                local m=Instance.new(\"CylinderMesh\", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) end)\n                return p\n        end;\n        Wedge=function(par, a, c, col, t, s, cf, ms)\n                local p=Instance.new(\"WedgePart\", par) pcall(function() p.TopSurface=\"Smooth\""
/," p.BottomSurface=\"Smooth\" p.formFactor=\"Custom\" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or cn()  end)\n                local m=Instance.new(\"SpecialMesh\", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) m.MeshType=\"Wedge\" end)\n                return p\n        end;\n        Gui=function(ins, par, bc, bg, tc, fs, text, t, s, pos)\n                local g=Instance.new(ins, par) pcall(function() g.BorderColor=BrickColor.new(bc) g.BackgroundColor=BrickColor.new(bg) g.TextColor=BrickColor.new(tc) g.FontSize=fs g.Font=\"ArialBold\" g.Text=text g.BackgroundTransparency=t g.Size=s g.Position=pos  end)\n                return g\n        end;\n        Weld=function(par, p1, cf)\n                local w=Instance.new(\"Weld\", par) pcall(function() w.Part0=w.Parent or par w.Part1=p1 w.C1=cf or cn() end)\n                return w\n        end;\n        Mesh=function(ins, par,"
/," s, t, id, tid, of)\n                pcall(function() for i, v in pairs(par:children()) do if v:isA(\"BlockMesh\") or v:isA(\"CylinderMesh\") or v:isA(\"SpecialMesh\") then v:remove() end end end)\n                local m=Instance.new(ins, par) pcall(function() m.Scale=s or Vector3.new(1, 1, 1) m.Offset=of or Vector3.new() m.MeshId=id or \"\" m.TextureId=tid or \"\" m.MeshType=t end)\n                return m\n        end;\n        Sound=function(parent, id, pitch, volume)\n                local s=Instance.new(\"Sound\", parent) pcall(function() s.SoundId=id s.Volume=volume or 1 s.Pitch=pitch or 1 end)\n                return s\n        end;\n}\nlocal Sounds={--08C\n        Slash=\"rbxasset://sounds//swordslash.wav\";\n        Hit=\"http://www.roblox.com/asset/?id=11113679 \";\n        Equip=\"rbxasset://sounds/unsheath.wav\";\n        Charge=\"http://www.roblox.com/asset/?id=2101137\";\n        ElectricShortage=\"http://roblox.com/asse"
/,"t/?id=10209481\";\n        ElectricSound=\"http://www.roblox.com/asset/?id=10756118\";\n        Electric=\"http://www.roblox.com/asset/?id=2800815\";\n        Abscond=\"http://www.roblox.com/asset/?id=2767090\";\n        Cannon=\"http://www.roblox.com/asset/?id=2920959\";\n        Bash=\"http://www.roblox.com/asset/?id=25270310\";\n        Suirize=\"http://roblox.com/asset/?id=10209605\";\n        Heli=\"http://www.roblox.com/asset/?id=27112125\";\n}\nlocal Decals={\n}\nlocal Meshes={\n        Charge=\"http://www.roblox.com/asset/?id=20329976\";\n        Noob=\"http://www.roblox.com/asset/?id=29515710\";\n        Ring=\"http://www.roblox.com/asset/?id=3270017\";\n        Crown=\"http://www.roblox.com/asset/?id=1323306\";\n        Spring=\"http://www.roblox.com/Asset/?id=9753878\";\n        Sword=\"rbxasset://fonts/sword.mesh\";\n        Shield=\"http://www.roblox.com/asset/?id=50798797\";\n        Diamond=\"http://www.roblox.com/Asset/?"
/,"id=9756362\";\n        Shuriken=\"http://www.roblox.com/asset/?id=11112101\";\n        ShurikenT=\"http://www.roblox.com/asset/?id=11112112\"\n}\nfunction createParts()\n        --#GuiDescendants\n        obj.AL=add.Gui(\"TextLabel\", gui, \"Deep orange\", \"Deep orange\", \"White\", \"Size18\", \"Speed(speed)\", 0, UDim2.new(0, 150, 0, 50), UDim2.new(0, 0, 0, 150))\n        obj.AL2=add.Gui(\"TextLabel\", obj.AL, \"Deep orange\", \"Deep orange\", \"White\", \"Size18\", \"HeavyBreak(V)\", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))\n        obj.AL3=add.Gui(\"TextLabel\", obj.AL2, \"Deep orange\", \"Deep orange\", \"White\", \"Size18\", \"Rocket(R)\", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))\n        obj.AL4=add.Gui(\"TextLabel\", obj.AL3, \"Deep orange\", \"Deep orange\", \"White\", \"Size18\", \"MachineGun(F)\", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))\n        obj.AL5=add.Gui(\"TextLabel\", obj.AL4, \"Deep orange\""
/,", \"Deep orange\", \"White\", \"Size18\", \"Boost(B)\", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))\n        obj.AL6=add.Gui(\"TextLabel\", obj.AL5, \"Deep orange\", \"Deep orange\", \"White\", \"Size18\", \"Blade(C)\", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))\n        obj.AL7=add.Gui(\"TextLabel\", obj.AL6, \"Deep orange\", \"Deep orange\", \"White\", \"Size18\", \"Hover(X)\", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))\n        obj.AL8=add.Gui(\"TextLabel\", obj.AL7, \"Deep orange\", \"Deep orange\", \"White\", \"Size18\", \"SelfDestruct(G)\", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))\n--        obj.AL9=add.Gui(\"TextLabel\", obj.AL8, \"Deep orange\", \"Deep orange\", \"White\", \"Size18\", \"MaximumArmor(Z)\", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))\n        --#CarDesgin\n        for i, v in pairs(model2:children()) do\n                if i~=1 then return end\n        end\n        obj.Frame=add.Part("
/,"model2, false, true, \"Black\", 0, Vector3.new(5, 1, 10))\n        obj.sup=add.Part(model2, false, true, \"Black\", 0, Vector3.new(1, 1, 5))\n        obj.supW=add.Weld(obj.sup, obj.Frame, cn(-3, 0, -5))\n        obj.Wheels=add.Cylinder(model2, false, true, \"Black\", 0, Vector3.new(3, 1.5, 3))\n        obj.WheelsW=add.Weld(obj.Wheels, obj.sup, cn(1.25, 0, -3)*ca(0, 0, mr(90)))\n        obj.w=add.Wedge(model2, false, true, \"Black\", 0, Vector3.new(1, 1, 1))\n        obj.wW=add.Weld(obj.w, obj.sup, cn(0, 0, -3)*ca(0, 0, mr(90)))\n        obj.w=add.Wedge(model2, false, true, \"Black\", 0, Vector3.new(1, 1, 5))\n        obj.wW=add.Weld(obj.w, obj.sup, cn(0, 1, 0))\n        obj.w=add.Wedge(model2, false, true, \"Black\", 0, Vector3.new(1, 1, 5))\n        obj.wW=add.Weld(obj.w, obj.sup, cn(0, -1, 0)*ca(0, 0, pi))\n        obj.w=add.Wedge(model2, false, true, \"Black\", 0, Vector3.new(.5, 1, 2))\n        obj.wW=add.Weld(obj.w, obj.Frame, cn(-"
/,"2, 0, -6)*ca(0, 0, -mr(90)))\n        obj.sup=add.Part(model2, false, true, \"Black\", 0, Vector3.new(1, 1, 5))\n        obj.supW=add.Weld(obj.sup, obj.Frame, cn(3, 0, -5))\n        obj.Wheels2=add.Cylinder(model2, false, true, \"Black\", 0, Vector3.new(3, 1.5, 3))\n        obj.Wheels2W=add.Weld(obj.Wheels2, obj.sup, cn(-1.25, 0, -3)*ca(0, 0, mr(90)))\n        obj.w=add.Wedge(model2, false, true, \"Black\", 0, Vector3.new(1, 1, 1))\n        obj.wW=add.Weld(obj.w, obj.sup, cn(0, 0, -3)*ca(0, 0, mr(-90)))\n        obj.w=add.Wedge(model2, false, true, \"Black\",0, Vector3.new(1, 1, 5))\n        obj.wW=add.Weld(obj.w, obj.sup, cn(0, 1, 0))\n        obj.w=add.Wedge(model2, false, true, \"Black\", 0, Vector3.new(1, 1, 5))\n        obj.wW=add.Weld(obj.w, obj.sup, cn(0, -1, 0)*ca(0, 0, pi))\n        obj.w=add.Wedge(model2, false, true, \"Black\", 0, Vector3.new(.5, 1, 2))\n        obj.wW=add.Weld(obj.w, obj.Frame, cn(2, 0, -6)*ca(0, 0, mr(90)))"
/,"\n        obj.Wheel3=add.Cylinder(model2, false, true, \"Black\", 0, Vector3.new(4.5, 2, 4.5))\n        obj.Wheel3W=add.Weld(obj.Wheel3, obj.Frame, cn(3.5, .5, 5)*ca(0, 0, mr(90)))\n        obj.Wheel4=add.Cylinder(model2, false, true, \"Black\", 0, Vector3.new(4.5, 2, 4.5))\n        obj.Wheel4W=add.Weld(obj.Wheel4, obj.Frame, cn(-3.5, .5, 5)*ca(0, 0, mr(-90)))\n        obj.sR=add.Cylinder(model2, false, true, \"Black\", 0, Vector3.new(3.5, 6, 3.5))\n        obj.sRW=add.Weld(obj.sR, obj.Frame, cn(2.6, 0, 0)*ca(mr(90), 0, 0))\n        obj.sL=add.Cylinder(model2, false, true, \"Black\", 0, Vector3.new(3.5, 6, 3.5))\n        obj.sLW=add.Weld(obj.sL, obj.Frame, cn(-2.6, 0, 0)*ca(mr(90), 0, 0))\n        obj.VC=Instance.new(\"VehicleSeat\", model2) obj.VC.HeadsUpDisplay=false obj.VC.CanCollide=false\n        obj.VC.Size=Vector3.new(2, 1, 2)\n        obj.VC.BottomSurface=\"Weld\"\n        obj.VCW=add.Weld(obj.VC, obj.Frame, cn(0, .2, 0))\n     "
/,"   obj.w=add.Wedge(model2, false, true, \"Black\", 0, Vector3.new(1, 1, 5))\n        obj.wW=add.Weld(obj.w, obj.Frame, cn(0, 0, -5.5)*ca(0, pi/2, -pi/2))\n        obj.w=add.Wedge(model2, false, true, \"Black\",0, Vector3.new(1, 1, 5))\n        obj.wW=add.Weld(obj.w, obj.Frame, cn(0, 0, -5.5)*ca(0, -pi/2, pi/2))\n        obj.w=add.Wedge(model2, false, true, \"Black\", 0, Vector3.new(1.5, 1, 3))\n        obj.wW=add.Weld(obj.w, obj.Frame, cn(0, 0, -7)*ca(0, 0, 0))\n        obj.p=add.Part(model2, false, true, \"Black\", 0, Vector3.new(4, .5, 1))\n        obj.pW=add.Weld(obj.p, obj.Frame, cn(0, .5, -5))\n        obj.w=add.Wedge(model2, false, true, \"Black\", 0, Vector3.new(.5, 3, 4))\n        obj.wW=add.Weld(obj.w, obj.Frame, cn(.5, .6, -4.5)*ca(0, pi/2, -pi/2))\n        obj.w=add.Wedge(model2, false, false, \"Black\", .5, Vector3.new(1, 2, 1.5))\n        obj.wW=add.Weld(obj.w, obj.Frame, cn(2, 1.25, -3.25)*ca(0, 0, -pi/2))\n        obj.w=a"
/,"dd.Wedge(model2, false, true, \"Black\", 0, Vector3.new(.5, 3, 4))\n        obj.wW=add.Weld(obj.w, obj.Frame, cn(-.5, .6, -4.5)*ca(0, -pi/2, pi/2))\n        obj.w=add.Wedge(model2, false, false, \"Black\", .5, Vector3.new(1, 2, 1.5))\n        obj.wW=add.Weld(obj.w, obj.Frame, cn(-2, 1.25, -3.25)*ca(0, 0, pi/2))\n        obj.w=add.Wedge(model2, false, true, \"Black\", 0, Vector3.new(2, 1, 1.5))\n        obj.wW=add.Weld(obj.w, obj.Frame, cn(0, 1.25, -4.75)*ca(0, 0, 0))\n        obj.ps=add.Part(model2, false, false, \"Black\", 0, Vector3.new(4, 1, 5))\n        obj.psW=add.Weld(obj.ps, obj.Frame, cn(0, 2, 0))\n        obj.w=add.Wedge(model2, false, false, \"Black\", 0, Vector3.new(2, 1, 1.5))\n        obj.wW=add.Weld(obj.w, obj.ps, cn(0, 0, -3.25)*ca(0, 0, 0))\n        obj.w=add.Wedge(model2, false, false, \"Black\", 0, Vector3.new(5, 1, 2))\n        obj.wW=add.Weld(obj.w, obj.ps, cn(3, 0, 0)*ca(0, -pi/2, 0))\n        obj.w=add.Wedge(model2"
/,", false, true, \"Black\", 0, Vector3.new(5, 2, 1))\n        obj.wW=add.Weld(obj.w, obj.ps, cn(3.5, -1.5, 0)*ca(pi, -pi/2, 0))\n        obj.w=add.Wedge(model2, false, false, \"Black\", 0, Vector3.new(5, 1, 2))\n        obj.wW=add.Weld(obj.w, obj.ps, cn(-3, 0, 0)*ca(0, pi/2, 0))\n        obj.w=add.Wedge(model2, false, true, \"Black\", 0, Vector3.new(5, 2, 1))\n        obj.wW=add.Weld(obj.w, obj.ps, cn(3.5, -1.5, 0)*ca(pi, -pi/2, 0))\n        obj.csupt=add.Cylinder(model2, false, true, \"Black\", 0, Vector3.new(1, 2.5, 1))\n        obj.csuptW=add.Weld(obj.csupt, obj.Frame, cn(-3, 2, 2.5)*ca(mr(15), 0, 0))\n        obj.csupt=add.Cylinder(model2, false, true, \"Black\", 0, Vector3.new(1, 2.5, 1))\n        obj.csuptW=add.Weld(obj.csupt, obj.Frame, cn(-2, 2, 2.5)*ca(mr(15), 0, 0))\n        obj.p=add.Part(model2, false, false, \"Black\", 0, Vector3.new(3.5, .2, 3))\n        obj.pW=add.Weld(obj.p, obj.Frame, cn(-2.5, 3, 4))\n        obj.csupt=ad"
/,"d.Cylinder(model2, false, true, \"Black\", 0, Vector3.new(1, 2.5, 1))\n        obj.csuptW=add.Weld(obj.csupt, obj.Frame, cn(3, 2, 2.5)*ca(mr(15), 0, 0))\n        obj.csupt=add.Cylinder(model2, false, true, \"Black\", 0, Vector3.new(1, 2.5, 1))\n        obj.csuptW=add.Weld(obj.csupt, obj.Frame, cn(2, 2, 2.5)*ca(mr(15), 0, 0))\n        obj.p=add.Part(model2, false, false, \"Black\", 0, Vector3.new(3.5, .2, 3))\n        obj.pW=add.Weld(obj.p, obj.Frame, cn(2.5, 3, 4))\n        obj.w=add.Wedge(model2, false, false, \"Black\", 0, Vector3.new(5, 2, 2.5))\n        obj.wW=add.Weld(obj.w, obj.ps, cn(0, -.5, 3.75)*ca(0, pi, 0))\n        obj.c=add.Cylinder(model2, false, false, \"Black\", 0, Vector3.new(3.5, 2, 3.5))\n        obj.cW=add.Weld(obj.c, obj.Frame, cn(0, 1, 5)*ca(mr(90), 0, 0))\n        obj.TS=add.Cylinder(model2, false, true, \"Black\", 0, Vector3.new(3, 2, 3))\n        obj.TSW=add.Weld(obj.TS, obj.c, cn(0, 1, 0)*ca(0, 0, 0))\n        "
/,"obj.TSM=add.Mesh(\"SpecialMesh\", obj.TS, Vector3.new(.75, .1, .75), nil, \"http://www.roblox.com/Asset/?id=10207677\")\n        obj.top=add.Part(model2, false, false, \"Black\", 0, Vector3.new(4, 1.5, 4))\n        obj.topW=add.Weld(obj.top, obj.ps, cn(0, .5, 0))\n        obj.topM=add.Mesh(\"SpecialMesh\", obj.top, Vector3.new(1, 1, 1), \"Sphere\")\n        --Machine Gun\n        obj.mr=add.Part(model2, false, false, \"Black\", 0, Vector3.new(1, 1, 2))\n        obj.mrw=add.Weld(obj.mr, obj.Frame, cn(0, 0, 0))\n        obj.br=add.Part(model2, false, false, \"Black\", 0, Vector3.new(1.5, 1.5, 2.5))\n        obj.brw=add.Weld(obj.br, obj.mr, cn(1, 0, 0))\n        obj.gr=add.Part(model2, false, false, \"Black\", 0, Vector3.new(.5, .5, 1))\n        obj.grw=add.Weld(obj.gr, obj.br, cn(0, 0, -1))\n        obj.ml=add.Part(model2, false, false, \"Black\", 0, Vector3.new(1, 1, 2))\n        obj.mlw=add.Weld(obj.ml, obj.Frame, cn(0, 0, 0))\n        "
/,"obj.bl=add.Part(model2, false, false, \"Black\", 0, Vector3.new(1.5, 1.5, 2.5))\n        obj.blw=add.Weld(obj.bl, obj.ml, cn(-1, 0, 0))\n        obj.gl=add.Part(model2, false, false, \"Black\", 0, Vector3.new(.5, .5, 1))\n        obj.glw=add.Weld(obj.gl, obj.bl, cn(0, 0, -1))\n        --Rocket\n        obj.rck=add.Cylinder(model2, false, false, \"Black\", 0, Vector3.new(1, 4, 1))\n        obj.rckw=add.Weld(obj.rck, obj.Frame, cn(0, 0, 0)*ca(-pi/2, 0, 0))\n        obj.rock=add.Part(model2, false, false, \"Black\", 1, Vector3.new(1, 1, 1))\n        obj.rockw=add.Weld(obj.rock, obj.rck, cn(0, 1.5, 0)*ca(pi/2, 0, 0))\n        --Blade\n        obj.p1=add.Part(model2, false, false, \"Black\", 0, Vector3.new(3, .2, 1))\n        obj.p1w=add.Weld(obj.p1, obj.Frame, cn(0, 0, 0))\n        obj.br=add.Wedge(model2,false, false, \"Black\", 0, Vector3.new(.2, 2, 1))\n        obj.brW=add.Weld(obj.br, obj.p1, cn(2.5, 0, 0)*ca(0, 0, -pi/2))\n        \n  "
/,"      obj.p2=add.Part(model2, false, false, \"Black\", 0, Vector3.new(3, .2, 1))\n        obj.p2w=add.Weld(obj.p2, obj.Frame, cn(0, 0, 0))\n        obj.bl=add.Wedge(model2,false, false, \"Black\", 0, Vector3.new(.2, 2, 1))\n        obj.blW=add.Weld(obj.bl, obj.p2, cn(-2.5, 0, 0)*ca(0, 0, pi/2))\n        --Animate\n        animate={\n                [\"Wheel\"]=function(cf)\n                        obj.Wheels2W.C1=cn(-1.25, 0, -3)*ca(0, 0, mr(90))*cf\n                end,\n                [\"Wheel2\"]=function(cf)\n                        obj.WheelsW.C1=cn(1.25, 0, -3)*ca(0, 0, mr(90))*cf\n                end,\n                [\"Wheel3\"]=function(cf)\n                        obj.Wheel3W.C1=cn(3.5, .5, 5)*ca(0, 0, mr(90))*cf\n                end,\n                [\"Wheel4\"]=function(cf)\n                        obj.Wheel4W.C1=cn(-3.5, .5, 5)*ca(0, 0, mr(-90))*cf\n                end,\n                [\"MachineGunR\"]=function(cf)\n  "
/,"                      obj.mrw.C1=cf\n                end,\n                [\"MachineGunL\"]=function(cf)\n                        obj.mlw.C1=cf\n                end,\n                [\"MachineGunL\"]=function(cf)\n                        obj.mlw.C1=cf\n                end,\n                [\"Rocket\"]=function(cf)\n                        obj.rckw.C1=cf*ca(-pi/2, 0, 0)\n                end,\n                [\"BladeR\"]=function(cf)\n                        obj.p1w.C1=cf\n                end,\n                [\"BladeL\"]=function(cf)\n                        obj.p2w.C1=cf\n                end,\n                [\"Booster\"]=function(cf)\n                        obj.cW.C1=cn(0, 1, 5)*ca(mr(90), 0, 0)*cf\n                end,\n        }\nend\nfunction play(soundid, pitch, volume)\n        local sound=add.Sound(workspace, soundid, pitch, volume)\n        sound:play()\n        c(function() wait(5) sound:remove() end)\nend\nfunction fade"
/,"(part, incr)\n        if part:isA(\"BasePart\") then\n                for i=part.Transparency, 1, incr do part.Transparency=i wait() end\n        elseif part:isA(\"Model\") then\n                for i, v in pairs(part:children() or part) do\n                        if v:isA(\"BasePart\") then\n                                c(function()for i=v.Transparency, 1, incr do v.Transparency=i wait() end end)\n                        end\n                end\n        end\nend--08C\nfunction appear(part, incr)\n        if part:isA(\"BasePart\") then\n                for i=part.Transparency, 0, -incr do v.Transparency=i wait() end\n        elseif part:isA(\"Model\") then\n                for i, v in pairs(part:children() or part) do\n                        if v:isA(\"BasePart\") then\n                                c(function()for i=v.Transparency, 0, -incr do v.Transparency=i wait() end end)\n                        end\n                end\n "
/,"       end\nend\nfunction computePos(pos, pos2)\n        local pos3=Vector3.new(pos2.x, pos.y, pos2.z) \n        return cn(pos, pos3)\nend\nfunction rayCast(pos, dir, max, ingore)\n        return workspace:findPartOnRay(Ray.new(pos, dir.unit*(max or 999)), ignore)\nend\nfunction nearObj(pos, dis)\n        local temp\n        local distance=dis\n        for i, v in pairs(workspace:children()) do\n                if v:isA(\"Model\") then\n                        temp=v:findFirstChild(\"Torso\")\n                        local humanoid=v:findFirstChild(\"Humanoid\")\n                        if temp and humanoid and v~=char and (temp.CFrame.p-pos).magnitude<distance then\n                                distance=(temp.CFrame.p-pos).magnitude\n                                return temp.Parent\n                        end\n                end\n        end\nend\nfunction trail(prt, cf, thick, col)\n        c(function()\n                trails="
/,"true\n                local old=(prt.CFrame*(cf or cn())).p\n                local trm=Instance.new(\"Model\", workspace)\n                while trails do\n                        local new=(prt.CFrame*(cf or cn())).p\n                        local mag=(old-new).magnitude\n                        local dis=(old+new)/2 \n                        local trail=add.Cylinder(trm, true, false, col or \"White\", .2, Vector3.new(1, 1, 1), cn(dis, new)*ca(pi/2, 0, 0), Vector3.new(thick, mag, thick))\n                        old=new\n                        c(function()\n                                for i=1, 0, -.1 do trail.Mesh.Scale=trail.Mesh.Scale*Vector3.new(i, 1, i) wait() end\n                                trail:remove()\n                        end)\n                        wait()\n                end\n                trm:remove()\n        end)\nend\nboosts=false\nfunction boost(prt, thick, col)\n        c(function()\n                b"
/,"oosts=true\n                local trm=Instance.new(\"Model\", workspace)\n                while boosts do\n                        local ef=add.Part(trm, false, false, \"Bright yellow\", .2, Vector3.new(1, .5, 1))\n                        local efm=add.Mesh(\"SpecialMesh\", ef, Vector3.new(thick, thick, thick), nil, Meshes.Crown)\n                        add.Weld(ef, prt, cn(0, 4, 0)*ca(0, mr(mrand(-360, 360)), 0))\n                        game.Debris:addItem(ef, .2)\n                        local trail=add.Part(trm, true, false, col or \"White\", .2, Vector3.new(1, 1, 1), prt.CFrame*cn(0, 2, 0)*ca(mr(mrand(-360, 360)), mr(mrand(-360, 360)), mr(mrand(-360, 360))), Vector3.new(thick, thick, thick))\n                        c(function()\n                                for i=1, 0, -.1 do trail.Mesh.Scale=trail.Mesh.Scale*Vector3.new(i, i, i) wait() end\n                                trail:remove()\n                        end)\n        "
/,"                wait()\n                end\n                trm:remove()\n        end)\nend\nfunction stickHit(from, to)\n        local stickW=add.Weld(from, to, to.CFrame:inverse()*from.CFrame)\n        stickW.C0=from.CFrame:inverse()*from.CFrame\n        return stickW\nend\nfunction glowMesh(prt, size, speed)\n        local glow=prt:clone() add.Weld(prt, glow)\n        glow.Parent=workspace\n        glow.Anchored=false\n        glow.CanCollide=false\n        for i, v in pairs(glow:children()) do\n                if v:isA(\"SpecialMesh\") or v:isA(\"BlockMesh\") or v:isA(\"CylinderMesh\") then\n                        c(function()\n                                for i=0, size, speed do v.Scale=v.Scale+Vector3.new(i, i, i) wait() end\n                        end)\n                        c(function()\n                                fade(glow, .1) glow:remove()\n                        end)\n                end\n        end\nend\nfunc"
/,"tion sliceHit(prt)\n        prt.Touched:connect(function(h)\n                if key==true and not hit and h.Parent~=player.Character then\n                        hit=true\n                        pcall(function()\n                                print(\"Slicing\")\n                                local pYPos=h.Position.y-(h.Size.y/2)\n                                local sYPos=prt.Position.y\n                                if sYPos<=pYPos or sYPos>=(pYPos+h.Size.y) then return end\n                                local p=h:clone() p.Parent=workspace p.Anchored=false p.CanCollide=true\n                                local p2=h:clone() p2.Parent=workspace p2.Anchored=false p2.CanCollide=true\n                                h:remove()\n                                p.formFactor=\"Custom\"\n                                p2.formFactor=\"Custom\"\n                                p.TopSurface=\"Smooth\"\n                              "
/,"  p.BottomSurface=\"Smooth\"\n                                p.Friction=0\n                                p2.Friction=0\n                                p.Size=Vector3.new(h.Size.x, sYPos-pYPos, h.Size.z)\n                                p2.Size=Vector3.new(h.Size.x, p2.Size.y-(sYPos-pYPos), h.Size.z)\n                                p.CFrame=h.CFrame*CFrame.new(0, -p2.Size.y/2, 0)\n                                p2.CFrame=h.CFrame*CFrame.new(0, p.Size.y/2, 0)\n                                c(function()\n                                        wait(5)\n                                        p:remove() p2:remove()\n                                end)\n                        end)\n                        wait(.1)\n                        hit=false\n                end\n        end)\nend\nfunction dmgHit(prt)\n        prt.Touched:connect(function(h)\n                if key==true and h.Parent:findFirstChild(\"Humanoid\") and not hit"
/," and h.Parent~=player.Character then\n                        hit=true\n                        local fakeM=Instance.new(\"Model\", workspace)\n                        fakeM.Name=-dmg*mrand(1, 1.5)\n                        local hHuman=h.Parent:findFirstChild(\"Humanoid\")\n                        local hTorso=h.Parent:findFirstChild(\"Torso\")\n                        local fakeH=Instance.new(\"Humanoid\", fakeM) fakeH.MaxHealth=0 fakeH.Health=0\n                        local label=add.Part(fakeM, false, false, \"Bright red\", 0, Vector3.new(.2, .2, .2), h.CFrame*cn(mrand(-2, 2), 4, mrand(-2, 2)), Vector3.new(.1, .1, .1)) label.Name=\"Head\"\n                        c(function()\n                                local bv=Instance.new(\"BodyVelocity\", label)\n                                bv.maxForce=Vector3.new(inf, inf, inf)\n                                bv.velocity=Vector3.new(0, 4.5, 0)\n                                Game.Deb"
/,"ris:addItem(fakeM, 1)\n                        end)\n                        hHuman.Health=hHuman.Health-dmg\n                        wait(.1)\n                        hit=false\n                end\n        end)\nend\nfunction rockHit(prt)\n        prt.Touched:connect(function(h)\n                if key==true and not hit and h.Parent~=player.Character then\n                        hit=true\n                        if h.Parent:findFirstChild(\"Humanoid\") then\n                        local fakeM=Instance.new(\"Model\", workspace)\n                        fakeM.Name=-dmg*mrand(2, 5.5)\n                        local hHuman=h.Parent:findFirstChild(\"Humanoid\")\n                        local hTorso=h.Parent:findFirstChild(\"Torso\")\n                        local fakeH=Instance.new(\"Humanoid\", fakeM) fakeH.MaxHealth=0 fakeH.Health=0\n                        local label=add.Part(fakeM, false, false, \"Bright red\", 0, Vector3.new(.2, .2,"
/," .2), h.CFrame*cn(mrand(-2, 2), 4, mrand(-2, 2)), Vector3.new(.1, .1, .1)) label.Name=\"Head\"\n                        c(function()\n                                local bv=Instance.new(\"BodyVelocity\", label)\n                                bv.maxForce=Vector3.new(inf, inf, inf)\n                                bv.velocity=Vector3.new(0, 4.5, 0)\n                                Game.Debris:addItem(fakeM, 1)\n                        end)\n                        hHuman.Health=hHuman.Health-dmg\n                        end\n                        local e=Instance.new(\"Explosion\", workspace)\n                        e.BlastPressure=99999\n                        e.BlastRadius=20\n                        e.Position=h.Position\n                        prt:remove()\n                        wait()\n                        hit=false\n                end\n        end)\nend-- 08C\nfunction makeCrater(cf, size)\n        local to=cf.p-(cf.p"
/print("Loaded")
local modelName="BatMobile" --Name here
local player
local torso
--#Local Functions
local c=function(f) coroutine.resume(coroutine.create(f)) end
--#Settings
local inf=math.huge
local pi=math.pi
local mr=math.rad
local ms=math.sin
local mc=math.cos
local mrand=math.random
local cn=CFrame.new
local ca=CFrame.Angles
local ti=table.insert
local tr=table.remove
local model2=Instance.new("Model", workspace) model2.Name=modelName
local gui=Instance.new("ScreenGui") gui.Name=modelName
local skincolor="Deep orange"
local body={}
local animate={}
local obj={}
local dmg=mrand(5, 10) --normal damage
local mouse
local walkSpeed=100 --normal
local combo=0
local switch=0
local key=false
local hit=false
local block=false
local trails
local speed=0
local add={
        Part=function(par, a, c, col, t, s, cf, ms)
                local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or cn()  end)
                local m=Instance.new("BlockMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) end)
                return p
        end;
        Cylinder=function(par, a, c, col, t, s, cf, ms)
                local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or cn()  end)
                local m=Instance.new("CylinderMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) end)
                return p
        end;
        Wedge=function(par, a, c, col, t, s, cf, ms)
                local p=Instance.new("WedgePart", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or cn()  end)
                local m=Instance.new("SpecialMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) m.MeshType="Wedge" end)
                return p
        end;
        Gui=function(ins, par, bc, bg, tc, fs, text, t, s, pos)
                local g=Instance.new(ins, par) pcall(function() g.BorderColor=BrickColor.new(bc) g.BackgroundColor=BrickColor.new(bg) g.TextColor=BrickColor.new(tc) g.FontSize=fs g.Font="ArialBold" g.Text=text g.BackgroundTransparency=t g.Size=s g.Position=pos  end)
                return g
        end;
        Weld=function(par, p1, cf)
                local w=Instance.new("Weld", par) pcall(function() w.Part0=w.Parent or par w.Part1=p1 w.C1=cf or cn() end)
                return w
        end;
        Mesh=function(ins, par, s, t, id, tid, of)
                pcall(function() for i, v in pairs(par:children()) do if v:isA("BlockMesh") or v:isA("CylinderMesh") or v:isA("SpecialMesh") then v:remove() end end end)
                local m=Instance.new(ins, par) pcall(function() m.Scale=s or Vector3.new(1, 1, 1) m.Offset=of or Vector3.new() m.MeshId=id or "" m.TextureId=tid or "" m.MeshType=t end)
                return m
        end;
        Sound=function(parent, id, pitch, volume)
                local s=Instance.new("Sound", parent) pcall(function() s.SoundId=id s.Volume=volume or 1 s.Pitch=pitch or 1 end)
                return s
        end;
}
local Sounds={--08C
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
local Decals={
}
local Meshes={
        Charge="http://www.roblox.com/asset/?id=20329976";
        Noob="http://www.roblox.com/asset/?id=29515710";
        Ring="http://www.roblox.com/asset/?id=3270017";
        Crown="http://www.roblox.com/asset/?id=1323306";
        Spring="http://www.roblox.com/Asset/?id=9753878";
        Sword="rbxasset://fonts/sword.mesh";
        Shield="http://www.roblox.com/asset/?id=50798797";
        Diamond="http://www.roblox.com/Asset/?id=9756362";
        Shuriken="http://www.roblox.com/asset/?id=11112101";
        ShurikenT="http://www.roblox.com/asset/?id=11112112"
}
function createParts()
        --#GuiDescendants
        obj.AL=add.Gui("TextLabel", gui, "Deep orange", "Deep orange", "White", "Size18", "Speed(speed)", 0, UDim2.new(0, 150, 0, 50), UDim2.new(0, 0, 0, 150))
        obj.AL2=add.Gui("TextLabel", obj.AL, "Deep orange", "Deep orange", "White", "Size18", "HeavyBreak(V)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL3=add.Gui("TextLabel", obj.AL2, "Deep orange", "Deep orange", "White", "Size18", "Rocket(R)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL4=add.Gui("TextLabel", obj.AL3, "Deep orange", "Deep orange", "White", "Size18", "MachineGun(F)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL5=add.Gui("TextLabel", obj.AL4, "Deep orange", "Deep orange", "White", "Size18", "Boost(B)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL6=add.Gui("TextLabel", obj.AL5, "Deep orange", "Deep orange", "White", "Size18", "Blade(C)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL7=add.Gui("TextLabel", obj.AL6, "Deep orange", "Deep orange", "White", "Size18", "Hover(X)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL8=add.Gui("TextLabel", obj.AL7, "Deep orange", "Deep orange", "White", "Size18", "SelfDestruct(G)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
--        obj.AL9=add.Gui("TextLabel", obj.AL8, "Deep orange", "Deep orange", "White", "Size18", "MaximumArmor(Z)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        --#CarDesgin
        for i, v in pairs(model2:children()) do
                if i~=1 then return end
        end
        obj.Frame=add.Part(model2, false, true, "Black", 0, Vector3.new(5, 1, 10))
        obj.sup=add.Part(model2, false, true, "Black", 0, Vector3.new(1, 1, 5))
        obj.supW=add.Weld(obj.sup, obj.Frame, cn(-3, 0, -5))
        obj.Wheels=add.Cylinder(model2, false, true, "Black", 0, Vector3.new(3, 1.5, 3))
        obj.WheelsW=add.Weld(obj.Wheels, obj.sup, cn(1.25, 0, -3)*ca(0, 0, mr(90)))
        obj.w=add.Wedge(model2, false, true, "Black", 0, Vector3.new(1, 1, 1))
        obj.wW=add.Weld(obj.w, obj.sup, cn(0, 0, -3)*ca(0, 0, mr(90)))
        obj.w=add.Wedge(model2, false, true, "Black", 0, Vector3.new(1, 1, 5))
        obj.wW=add.Weld(obj.w, obj.sup, cn(0, 1, 0))
        obj.w=add.Wedge(model2, false, true, "Black", 0, Vector3.new(1, 1, 5))
        obj.wW=add.Weld(obj.w, obj.sup, cn(0, -1, 0)*ca(0, 0, pi))
        obj.w=add.Wedge(model2, false, true, "Black", 0, Vector3.new(.5, 1, 2))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(-2, 0, -6)*ca(0, 0, -mr(90)))
        obj.sup=add.Part(model2, false, true, "Black", 0, Vector3.new(1, 1, 5))
        obj.supW=add.Weld(obj.sup, obj.Frame, cn(3, 0, -5))
        obj.Wheels2=add.Cylinder(model2, false, true, "Black", 0, Vector3.new(3, 1.5, 3))
        obj.Wheels2W=add.Weld(obj.Wheels2, obj.sup, cn(-1.25, 0, -3)*ca(0, 0, mr(90)))
        obj.w=add.Wedge(model2, false, true, "Black", 0, Vector3.new(1, 1, 1))
        obj.wW=add.Weld(obj.w, obj.sup, cn(0, 0, -3)*ca(0, 0, mr(-90)))
        obj.w=add.Wedge(model2, false, true, "Black",0, Vector3.new(1, 1, 5))
        obj.wW=add.Weld(obj.w, obj.sup, cn(0, 1, 0))
        obj.w=add.Wedge(model2, false, true, "Black", 0, Vector3.new(1, 1, 5))
        obj.wW=add.Weld(obj.w, obj.sup, cn(0, -1, 0)*ca(0, 0, pi))
        obj.w=add.Wedge(model2, false, true, "Black", 0, Vector3.new(.5, 1, 2))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(2, 0, -6)*ca(0, 0, mr(90)))
        obj.Wheel3=add.Cylinder(model2, false, true, "Black", 0, Vector3.new(4.5, 2, 4.5))
        obj.Wheel3W=add.Weld(obj.Wheel3, obj.Frame, cn(3.5, .5, 5)*ca(0, 0, mr(90)))
        obj.Wheel4=add.Cylinder(model2, false, true, "Black", 0, Vector3.new(4.5, 2, 4.5))
        obj.Wheel4W=add.Weld(obj.Wheel4, obj.Frame, cn(-3.5, .5, 5)*ca(0, 0, mr(-90)))
        obj.sR=add.Cylinder(model2, false, true, "Black", 0, Vector3.new(3.5, 6, 3.5))
        obj.sRW=add.Weld(obj.sR, obj.Frame, cn(2.6, 0, 0)*ca(mr(90), 0, 0))
        obj.sL=add.Cylinder(model2, false, true, "Black", 0, Vector3.new(3.5, 6, 3.5))
        obj.sLW=add.Weld(obj.sL, obj.Frame, cn(-2.6, 0, 0)*ca(mr(90), 0, 0))
        obj.VC=Instance.new("VehicleSeat", model2) obj.VC.HeadsUpDisplay=false obj.VC.CanCollide=false
        obj.VC.Size=Vector3.new(2, 1, 2)
        obj.VC.BottomSurface="Weld"
        obj.VCW=add.Weld(obj.VC, obj.Frame, cn(0, .2, 0))
        obj.w=add.Wedge(model2, false, true, "Black", 0, Vector3.new(1, 1, 5))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(0, 0, -5.5)*ca(0, pi/2, -pi/2))
        obj.w=add.Wedge(model2, false, true, "Black",0, Vector3.new(1, 1, 5))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(0, 0, -5.5)*ca(0, -pi/2, pi/2))
        obj.w=add.Wedge(model2, false, true, "Black", 0, Vector3.new(1.5, 1, 3))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(0, 0, -7)*ca(0, 0, 0))
        obj.p=add.Part(model2, false, true, "Black", 0, Vector3.new(4, .5, 1))
        obj.pW=add.Weld(obj.p, obj.Frame, cn(0, .5, -5))
        obj.w=add.Wedge(model2, false, true, "Black", 0, Vector3.new(.5, 3, 4))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(.5, .6, -4.5)*ca(0, pi/2, -pi/2))
        obj.w=add.Wedge(model2, false, false, "Black", .5, Vector3.new(1, 2, 1.5))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(2, 1.25, -3.25)*ca(0, 0, -pi/2))
        obj.w=add.Wedge(model2, false, true, "Black", 0, Vector3.new(.5, 3, 4))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(-.5, .6, -4.5)*ca(0, -pi/2, pi/2))
        obj.w=add.Wedge(model2, false, false, "Black", .5, Vector3.new(1, 2, 1.5))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(-2, 1.25, -3.25)*ca(0, 0, pi/2))
        obj.w=add.Wedge(model2, false, true, "Black", 0, Vector3.new(2, 1, 1.5))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(0, 1.25, -4.75)*ca(0, 0, 0))
        obj.ps=add.Part(model2, false, false, "Black", 0, Vector3.new(4, 1, 5))
        obj.psW=add.Weld(obj.ps, obj.Frame, cn(0, 2, 0))
        obj.w=add.Wedge(model2, false, false, "Black", 0, Vector3.new(2, 1, 1.5))
        obj.wW=add.Weld(obj.w, obj.ps, cn(0, 0, -3.25)*ca(0, 0, 0))
        obj.w=add.Wedge(model2, false, false, "Black", 0, Vector3.new(5, 1, 2))
        obj.wW=add.Weld(obj.w, obj.ps, cn(3, 0, 0)*ca(0, -pi/2, 0))
        obj.w=add.Wedge(model2, false, true, "Black", 0, Vector3.new(5, 2, 1))
        obj.wW=add.Weld(obj.w, obj.ps, cn(3.5, -1.5, 0)*ca(pi, -pi/2, 0))
        obj.w=add.Wedge(model2, false, false, "Black", 0, Vector3.new(5, 1, 2))
        obj.wW=add.Weld(obj.w, obj.ps, cn(-3, 0, 0)*ca(0, pi/2, 0))
        obj.w=add.Wedge(model2, false, true, "Black", 0, Vector3.new(5, 2, 1))
        obj.wW=add.Weld(obj.w, obj.ps, cn(3.5, -1.5, 0)*ca(pi, -pi/2, 0))
        obj.csupt=add.Cylinder(model2, false, true, "Black", 0, Vector3.new(1, 2.5, 1))
        obj.csuptW=add.Weld(obj.csupt, obj.Frame, cn(-3, 2, 2.5)*ca(mr(15), 0, 0))
        obj.csupt=add.Cylinder(model2, false, true, "Black", 0, Vector3.new(1, 2.5, 1))
        obj.csuptW=add.Weld(obj.csupt, obj.Frame, cn(-2, 2, 2.5)*ca(mr(15), 0, 0))
        obj.p=add.Part(model2, false, false, "Black", 0, Vector3.new(3.5, .2, 3))
        obj.pW=add.Weld(obj.p, obj.Frame, cn(-2.5, 3, 4))
        obj.csupt=add.Cylinder(model2, false, true, "Black", 0, Vector3.new(1, 2.5, 1))
        obj.csuptW=add.Weld(obj.csupt, obj.Frame, cn(3, 2, 2.5)*ca(mr(15), 0, 0))
        obj.csupt=add.Cylinder(model2, false, true, "Black", 0, Vector3.new(1, 2.5, 1))
        obj.csuptW=add.Weld(obj.csupt, obj.Frame, cn(2, 2, 2.5)*ca(mr(15), 0, 0))
        obj.p=add.Part(model2, false, false, "Black", 0, Vector3.new(3.5, .2, 3))
        obj.pW=add.Weld(obj.p, obj.Frame, cn(2.5, 3, 4))
        obj.w=add.Wedge(model2, false, false, "Black", 0, Vector3.new(5, 2, 2.5))
        obj.wW=add.Weld(obj.w, obj.ps, cn(0, -.5, 3.75)*ca(0, pi, 0))
        obj.c=add.Cylinder(model2, false, false, "Black", 0, Vector3.new(3.5, 2, 3.5))
        obj.cW=add.Weld(obj.c, obj.Frame, cn(0, 1, 5)*ca(mr(90), 0, 0))
        obj.TS=add.Cylinder(model2, false, true, "Black", 0, Vector3.new(3, 2, 3))
        obj.TSW=add.Weld(obj.TS, obj.c, cn(0, 1, 0)*ca(0, 0, 0))
        obj.TSM=add.Mesh("SpecialMesh", obj.TS, Vector3.new(.75, .1, .75), nil, "http://www.roblox.com/Asset/?id=10207677")
        obj.top=add.Part(model2, false, false, "Black", 0, Vector3.new(4, 1.5, 4))
        obj.topW=add.Weld(obj.top, obj.ps, cn(0, .5, 0))
        obj.topM=add.Mesh("SpecialMesh", obj.top, Vector3.new(1, 1, 1), "Sphere")
        --Machine Gun
        obj.mr=add.Part(model2, false, false, "Black", 0, Vector3.new(1, 1, 2))
        obj.mrw=add.Weld(obj.mr, obj.Frame, cn(0, 0, 0))
        obj.br=add.Part(model2, false, false, "Black", 0, Vector3.new(1.5, 1.5, 2.5))
        obj.brw=add.Weld(obj.br, obj.mr, cn(1, 0, 0))
        obj.gr=add.Part(model2, false, false, "Black", 0, Vector3.new(.5, .5, 1))
        obj.grw=add.Weld(obj.gr, obj.br, cn(0, 0, -1))
        obj.ml=add.Part(model2, false, false, "Black", 0, Vector3.new(1, 1, 2))
        obj.mlw=add.Weld(obj.ml, obj.Frame, cn(0, 0, 0))
        obj.bl=add.Part(model2, false, false, "Black", 0, Vector3.new(1.5, 1.5, 2.5))
        obj.blw=add.Weld(obj.bl, obj.ml, cn(-1, 0, 0))
        obj.gl=add.Part(model2, false, false, "Black", 0, Vector3.new(.5, .5, 1))
        obj.glw=add.Weld(obj.gl, obj.bl, cn(0, 0, -1))
        --Rocket
        obj.rck=add.Cylinder(model2, false, false, "Black", 0, Vector3.new(1, 4, 1))
        obj.rckw=add.Weld(obj.rck, obj.Frame, cn(0, 0, 0)*ca(-pi/2, 0, 0))
        obj.rock=add.Part(model2, false, false, "Black", 1, Vector3.new(1, 1, 1))
        obj.rockw=add.Weld(obj.rock, obj.rck, cn(0, 1.5, 0)*ca(pi/2, 0, 0))
        --Blade
        obj.p1=add.Part(model2, false, false, "Black", 0, Vector3.new(3, .2, 1))
        obj.p1w=add.Weld(obj.p1, obj.Frame, cn(0, 0, 0))
        obj.br=add.Wedge(model2,false, false, "Black", 0, Vector3.new(.2, 2, 1))
        obj.brW=add.Weld(obj.br, obj.p1, cn(2.5, 0, 0)*ca(0, 0, -pi/2))
        
        obj.p2=add.Part(model2, false, false, "Black", 0, Vector3.new(3, .2, 1))
        obj.p2w=add.Weld(obj.p2, obj.Frame, cn(0, 0, 0))
        obj.bl=add.Wedge(model2,false, false, "Black", 0, Vector3.new(.2, 2, 1))
        obj.blW=add.Weld(obj.bl, obj.p2, cn(-2.5, 0, 0)*ca(0, 0, pi/2))
        --Animate
        animate={
                ["Wheel"]=function(cf)
                        obj.Wheels2W.C1=cn(-1.25, 0, -3)*ca(0, 0, mr(90))*cf
                end,
                ["Wheel2"]=function(cf)
                        obj.WheelsW.C1=cn(1.25, 0, -3)*ca(0, 0, mr(90))*cf
                end,
                ["Wheel3"]=function(cf)
                        obj.Wheel3W.C1=cn(3.5, .5, 5)*ca(0, 0, mr(90))*cf
                end,
                ["Wheel4"]=function(cf)
                        obj.Wheel4W.C1=cn(-3.5, .5, 5)*ca(0, 0, mr(-90))*cf
                end,
                ["MachineGunR"]=function(cf)
                        obj.mrw.C1=cf
                end,
                ["MachineGunL"]=function(cf)
                        obj.mlw.C1=cf
                end,
                ["MachineGunL"]=function(cf)
                        obj.mlw.C1=cf
                end,
                ["Rocket"]=function(cf)
                        obj.rckw.C1=cf*ca(-pi/2, 0, 0)
                end,
                ["BladeR"]=function(cf)
                        obj.p1w.C1=cf
                end,
                ["BladeL"]=function(cf)
                        obj.p2w.C1=cf
                end,
                ["Booster"]=function(cf)
                        obj.cW.C1=cn(0, 1, 5)*ca(mr(90), 0, 0)*cf
                end,
        }
end
function play(soundid, pitch, volume)
        local sound=add.Sound(workspace, soundid, pitch, volume)
        sound:play()
        c(function() wait(5) sound:remove() end)
end
function fade(part, incr)
        if part:isA("BasePart") then
                for i=part.Transparency, 1, incr do part.Transparency=i wait() end
        elseif part:isA("Model") then
                for i, v in pairs(part:children() or part) do
                        if v:isA("BasePart") then
                                c(function()for i=v.Transparency, 1, incr do v.Transparency=i wait() end end)
                        end
                end
        end
end--08C
function appear(part, incr)
        if part:isA("BasePart") then
                for i=part.Transparency, 0, -incr do v.Transparency=i wait() end
        elseif part:isA("Model") then
                for i, v in pairs(part:children() or part) do
                        if v:isA("BasePart") then
                                c(function()for i=v.Transparency, 0, -incr do v.Transparency=i wait() end end)
                        end
                end
        end
end
function computePos(pos, pos2)
        local pos3=Vector3.new(pos2.x, pos.y, pos2.z) 
        return cn(pos, pos3)
end
function rayCast(pos, dir, max, ingore)
        return workspace:findPartOnRay(Ray.new(pos, dir.unit*(max or 999)), ignore)
end
function nearObj(pos, dis)
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
function trail(prt, cf, thick, col)
        c(function()
                trails=true
                local old=(prt.CFrame*(cf or cn())).p
                local trm=Instance.new("Model", workspace)
                while trails do
                        local new=(prt.CFrame*(cf or cn())).p
                        local mag=(old-new).magnitude
                        local dis=(old+new)/2 
                        local trail=add.Cylinder(trm, true, false, col or "White", .2, Vector3.new(1, 1, 1), cn(dis, new)*ca(pi/2, 0, 0), Vector3.new(thick, mag, thick))
                        old=new
                        c(function()
                                for i=1, 0, -.1 do trail.Mesh.Scale=trail.Mesh.Scale*Vector3.new(i, 1, i) wait() end
                                trail:remove()
                        end)
                        wait()
                end
                trm:remove()
        end)
end
boosts=false
function boost(prt, thick, col)
        c(function()
                boosts=true
                local trm=Instance.new("Model", workspace)
                while boosts do
                        local ef=add.Part(trm, false, false, "Bright yellow", .2, Vector3.new(1, .5, 1))
                        local efm=add.Mesh("SpecialMesh", ef, Vector3.new(thick, thick, thick), nil, Meshes.Crown)
                        add.Weld(ef, prt, cn(0, 4, 0)*ca(0, mr(mrand(-360, 360)), 0))
                        game.Debris:addItem(ef, .2)
                        local trail=add.Part(trm, true, false, col or "White", .2, Vector3.new(1, 1, 1), prt.CFrame*cn(0, 2, 0)*ca(mr(mrand(-360, 360)), mr(mrand(-360, 360)), mr(mrand(-360, 360))), Vector3.new(thick, thick, thick))
                        c(function()
                                for i=1, 0, -.1 do trail.Mesh.Scale=trail.Mesh.Scale*Vector3.new(i, i, i) wait() end
                                trail:remove()
                        end)
                        wait()
                end
                trm:remove()
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
                        c(function()
                                for i=0, size, speed do v.Scale=v.Scale+Vector3.new(i, i, i) wait() end
                        end)
                        c(function()
                                fade(glow, .1) glow:remove()
                        end)
                end
        end
end
function sliceHit(prt)
        prt.Touched:connect(function(h)
                if key==true and not hit and h.Parent~=player.Character then
                        hit=true
                        pcall(function()
                                print("Slicing")
                                local pYPos=h.Position.y-(h.Size.y/2)
                                local sYPos=prt.Position.y
                                if sYPos<=pYPos or sYPos>=(pYPos+h.Size.y) then return end
                                local p=h:clone() p.Parent=workspace p.Anchored=false p.CanCollide=true
                                local p2=h:clone() p2.Parent=workspace p2.Anchored=false p2.CanCollide=true
                                h:remove()
                                p.formFactor="Custom"
                                p2.formFactor="Custom"
                                p.TopSurface="Smooth"
                                p.BottomSurface="Smooth"
                                p.Friction=0
                                p2.Friction=0
                                p.Size=Vector3.new(h.Size.x, sYPos-pYPos, h.Size.z)
                                p2.Size=Vector3.new(h.Size.x, p2.Size.y-(sYPos-pYPos), h.Size.z)
                                p.CFrame=h.CFrame*CFrame.new(0, -p2.Size.y/2, 0)
                                p2.CFrame=h.CFrame*CFrame.new(0, p.Size.y/2, 0)
                                c(function()
                                        wait(5)
                                        p:remove() p2:remove()
                                end)
                        end)
                        wait(.1)
                        hit=false
                end
        end)
end
function dmgHit(prt)
        prt.Touched:connect(function(h)
                if key==true and h.Parent:findFirstChild("Humanoid") and not hit and h.Parent~=player.Character then
                        hit=true
                        local fakeM=Instance.new("Model", workspace)
                        fakeM.Name=-dmg*mrand(1, 1.5)
                        local hHuman=h.Parent:findFirstChild("Humanoid")
                        local hTorso=h.Parent:findFirstChild("Torso")
                        local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
                        local label=add.Part(fakeM, false, false, "Bright red", 0, Vector3.new(.2, .2, .2), h.CFrame*cn(mrand(-2, 2), 4, mrand(-2, 2)), Vector3.new(.1, .1, .1)) label.Name="Head"
                        c(function()
                                local bv=Instance.new("BodyVelocity", label)
                                bv.maxForce=Vector3.new(inf, inf, inf)
                                bv.velocity=Vector3.new(0, 4.5, 0)
                                Game.Debris:addItem(fakeM, 1)
                        end)
                        hHuman.Health=hHuman.Health-dmg
                        wait(.1)
                        hit=false
                end
        end)
end
function rockHit(prt)
        prt.Touched:connect(function(h)
                if key==true and not hit and h.Parent~=player.Character then
                        hit=true
                        if h.Parent:findFirstChild("Humanoid") then
                        local fakeM=Instance.new("Model", workspace)
                        fakeM.Name=-dmg*mrand(2, 5.5)
                        local hHuman=h.Parent:findFirstChild("Humanoid")
                        local hTorso=h.Parent:findFirstChild("Torso")
                        local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
                        local label=add.Part(fakeM, false, false, "Bright red", 0, Vector3.new(.2, .2, .2), h.CFrame*cn(mrand(-2, 2), 4, mrand(-2, 2)), Vector3.new(.1, .1, .1)) label.Name="Head"
                        c(function()
                                local bv=Instance.new("BodyVelocity", label)
                                bv.maxForce=Vector3.new(inf, inf, inf)
                                bv.velocity=Vector3.new(0, 4.5, 0)
                                Game.Debris:addItem(fakeM, 1)
                        end)
                        hHuman.Health=hHuman.Health-dmg
                        end
                        local e=Instance.new("Explosion", workspace)
                        e.BlastPressure=99999
                        e.BlastRadius=20
                        e.Position=h.Position
                        prt:remove()
                        wait()
                        hit=false
                end
        end)
end-- 08C
function makeCrater(cf, size)
        local to=cf.p-(cf.p+Vector3.new(0, 200, 0))
        local hit, pos=rayCast(cf.p, to)
        if hit and pos then
                for i=1, 3 do
                        local cr=add.Part(workspace, true, false, hit.Color or "Brown", 0, Vector3.new(1+size, size, 2+size), cn(pos+Vector3.new(mrand(-2+size/2, 2+size/2), 0, mrand(-2+size/2, 2+size/2)))*ca(mr(mrand(-4, 4)), mr(mrand(-360, 360)), mr(mrand(-35, 35))))
                end
        end
end
function makeLightning(from, to, thick, col)
        local magnitude=(from.p-to.p).magnitude
        local distance=(from.p+to.p)/2
        local pattern=add.Part(workspace, true, false, "White", 1, Vector3.new(.2, .2, magnitude), cn(distance, from.p))
        local fromPosProx=from.p
        local lim=Instance.new("Model", workspace)
        for i=1, 4 do
                local fromPosProx2=fromPosProx
                local random=Vector3.new(mrand(-1, 1), mrand(-1, 1), mrand(-1, 1))
                local findSize=pattern.Size.z/4
                local findOffSet=pattern.CFrame.lookVector*-1
                local compute=i*findSize*findOffSet
                local newfromPos=from.p
                local newEndPos=cn(random+compute+newfromPos).p
                local magnitude=(fromPosProx2-newEndPos).magnitude
                local distance=(fromPosProx2+newEndPos)/2
                local lightning=add.Part(lim, true, false, col or "Bright yellow", 0, Vector3.new(1, 1, 1), cn(distance, fromPosProx2), Vector3.new(thick, thick, magnitude))
                fromPosProx=newEndPos
                game.Debris:addItem(lim, 1)
        end
        pattern:remove()
end
function makeCircle(prt ,dis, rep, angle)
        local cm=Instance.new("Model", prt.Parent)
        for i=angle*2/rep, angle*2 do
                local prt2=prt:clone()
                prt2.Parent=cm
                prt2.CFrame=prt.CFrame*cn(dis*ms(i), 0, dis*mc(i))
        end
        prt:remove()
        return cm
end
local bv=Instance.new("BodyVelocity") bv.maxForce=Vector3.new(inf, 0, inf)
local bav=Instance.new("BodyAngularVelocity") bav.maxTorque=Vector3.new(inf, inf, inf)
function startBoost()
        boost(obj.TS, 3, "Bright orange")
        while boosts do
                if speed<150 then
                        speed=speed+2
                        bv.velocity=obj.Frame.CFrame.lookVector*speed
                end
                wait()
        end
end
local fire=false
function startMG()
        fire=true
        for i=0, 1, .1 do
                animate.MachineGunR(cn(4.5*i, 0, 0))
                animate.MachineGunL(cn(-4.5*i, 0, 0))
                wait()
        end
        while fire do
                local mb=add.Part(workspace, false, false, "Bright yellow", 0, Vector3.new(.2, .2, 1), obj.gr.CFrame+obj.gr.CFrame.lookVector)
                dmgHit(mb)
                local f=Instance.new("BodyForce", mb) f.force=Vector3.new(0, mb:getMass()*196.25, 0)
                local v=Instance.new("BodyVelocity", mb) v.maxForce=Vector3.new(inf, inf, inf) v.velocity=mb.CFrame.lookVector*200
                local ef=add.Part(workspace, false, false, "Bright yellow", .2, Vector3.new(1, .5, 1))
                local efm=add.Mesh("SpecialMesh", ef, Vector3.new(1, 1, 1), nil, Meshes.Crown)
                add.Weld(ef, obj.gr, cn(0, 0, -1)*ca(-pi/2, 0, 0))
                game.Debris:addItem(ef, .1)
                game.Debris:addItem(mb, 1.5)
                
                local mb2=add.Part(workspace, false, false, "Bright yellow", 0, Vector3.new(.2, .2, 1), obj.gl.CFrame+obj.gl.CFrame.lookVector)
                dmgHit(mb2)
                local f=Instance.new("BodyForce", mb2) f.force=Vector3.new(0, mb2:getMass()*196.25, 0)
                local v=Instance.new("BodyVelocity", mb2) v.maxForce=Vector3.new(inf, inf, inf) v.velocity=mb2.CFrame.lookVector*200
                local ef=add.Part(workspace, false, false, "Bright yellow", .2, Vector3.new(1, .5, 1))
                local efm=add.Mesh("SpecialMesh", ef, Vector3.new(1, 1, 1), nil, Meshes.Crown)
                add.Weld(ef, obj.gl, cn(0, 0, -1)*ca(-pi/2, 0, 0))
                game.Debris:addItem(ef, .1)
                game.Debris:addItem(mb2, 1.5)
                wait()
        end
        for i=1, 0, -.1 do
                animate.MachineGunR(cn(4.5*i, 0, 0))
                animate.MachineGunL(cn(-4.5*i, 0, 0))
                wait()
        end
end
function startRocket()
                for i=0, 1, .1 do
                        animate.Rocket(cn(0, 0, -8*i))
                        wait()
                end
                wait(.2)
                local mb=add.Part(workspace, false, false, "Bright yellow", 0, Vector3.new(1, 1, 2), obj.rock.CFrame+obj.rock.CFrame.lookVector*2)
                rockHit(mb)
                local f=Instance.new("BodyForce", mb) f.force=Vector3.new(0, mb:getMass()*196.25, 0)
                local v=Instance.new("BodyVelocity", mb) v.maxForce=Vector3.new(inf, inf, inf) v.velocity=mb.CFrame.lookVector*300
                local ef=add.Part(workspace, false, false, "Bright yellow", .2, Vector3.new(1, .5, 1))
                local efm=add.Mesh("SpecialMesh", ef, Vector3.new(1.5, 1.5, 1.5), nil, Meshes.Crown)
                add.Weld(ef, obj.rock, cn(0, 0, -.5)*ca(-pi/2, 0, 0))
                game.Debris:addItem(ef, .1)
                game.Debris:addItem(mb, 1.5)
                wait(.2)
                for i=1, 0, -.1 do
                        animate.Rocket(cn(0, 0, -8*i))
                        wait()
                end
end
function startSelfDestruct()
        obj.VCW:remove()
        obj.VC.CanCollide=false
        local p=Instance.new("BodyPosition", obj.VC) p.maxForce=Vector3.new(inf, inf, inf) p.position=obj.VC.Position+Vector3.new(0, 300, 0)
        wait(1)
        local e=Instance.new("Explosion", workspace)
        e.BlastPressure=500
        e.BlastRadius=500
        e.Position=obj.Frame.Position
end
local slice=false
function startSlice()
        slice=true
        for i=0, 1, .1 do
                animate.BladeR(cn(5.5*i, 0, 0))
                animate.BladeL(cn(-5.5*i, 0, 0))
                wait()
        end
        sliceHit(obj.p1) sliceHit(obj.p2)
        sliceHit(obj.br) sliceHit(obj.bl)
        while slice do wait() end
        for i=1, 0, -.1 do
                animate.BladeR(cn(5.5*i, 0, 0))
                animate.BladeL(cn(-5.5*i, 0, 0))
                wait()
        end
end
local hover=false
function startHover()
        bv.maxForce=Vector3.new(inf, inf, inf)
        for i=0, 1, .05 do
                animate.Wheel(ca(0, 0, mr(90*i)))
                animate.Wheel2(ca(0, 0, mr(-90*i)))
                animate.Wheel3(ca(0, 0, mr(90*i)))
                animate.Wheel4(ca(0, 0, mr(-90*i)))
                animate.Booster(ca(mr(90*i), 0, 0))
                bv.velocity=bv.velocity+Vector3.new(0, 10*i, 0)
                wait()
        end
        boost(obj.TS, 3, "Bright orange")
        bv.velocity=Vector3.new(0, 0, 0)
        while hover do bv.velocity=bv.velocity+Vector3.new(0, 10, 0) wait(1) bv.velocity=Vector3.new(0, 0, 0) wait(.5) bv.velocity=bv.velocity-Vector3.new(0, 10, 0) wait(1) bv.velocity=Vector3.new(0, 0, 0) wait(.5) end
        for i=1, 0, -.05 do
                animate.Wheel(ca(0, 0, mr(90*i)))
                animate.Wheel2(ca(0, 0, mr(-90*i)))
                animate.Wheel3(ca(0, 0, mr(90*i)))
                animate.Wheel4(ca(0, 0, mr(-90*i)))
                animate.Booster(ca(mr(90*i), 0, 0))
                bv.velocity=bv.velocity-Vector3.new(0, 5-5*i, 0)
                wait()
        end
        bv.maxForce=Vector3.new(inf, 0, inf)
        boosts=false
end
function KeyDown(k)
        if k=="b" and not key and not boosts then
                key=true
                startBoost()
        end
        if k=="x" and not hover then
                hover=true
                startHover()
        elseif k=="x" and hover then
                hover=false
        end
        if k=="c" and not key and not slice then
                key=true
                startSlice()
        end
        if k=="r" and not key then
                key=true
                startRocket()
                key=false
        end
        if k=="g" and not key then
                key=true
                startSelfDestruct()
                key=false
        end
        if k=="f" and not key and not fire then
                key=true
                startMG()
        end
        if k=="v" and not key then
                key=true
                speed=0
                key=false
        end
end
function KeyUp(k)
        if k=="b" and boosts and key then
                key=false
                boosts=false
        end
        if k=="f" and fire and key then
                key=false
                fire=false
        end
        if k=="c" and slice and key then
                key=false
                slice=false
        end
end
local engine=false
createParts()
obj.VC.ChildAdded:connect(function(ad)
        if ad.Name=="SeatWeld" then
                torso=ad.Part1
                local vc=obj.VC
                if torso then print("Found")
                        player=game.Players:getPlayerFromCharacter(torso.Parent)
                        mouse=player:GetMouse()
                        ad.C1=ad.C1*CFrame.new(0, 0, 1.5)
                        bv.Parent=obj.Frame
                        bav.Parent=obj.Frame
                        gui.Parent=player.PlayerGui
                        mouse.KeyDown:connect(KeyDown)
                        mouse.KeyUp:connect(KeyUp)
                        engine=true
                        while torso and vc and engine do print("working")
                                obj.AL.Text="Speed("..speed..")"
                                if vc.Throttle==1 and speed<100 then
                                        speed=speed+1
                                        bv.velocity=obj.Frame.CFrame.lookVector*speed
                                end
                                if vc.Throttle==-1 and speed>-100 then
                                        speed=speed-1
                                        bv.velocity=obj.Frame.CFrame.lookVector*speed
                                end
                                if vc.Throttle==0 and speed>0 then
                                        speed=speed-1
                                        bv.velocity=obj.Frame.CFrame.lookVector*speed
                                end
                                if vc.Throttle==0 and speed<0 then
                                        speed=speed+1
                                        bv.velocity=obj.Frame.CFrame.lookVector*speed
                                end
                                if vc.Steer==1 then
                                        bav.angularvelocity=Vector3.new(0, -2, 0)
                                        if not hover then
                                                animate.Wheel2(ca(mr(-25), 0, 0))
                                                animate.Wheel(ca(mr(-25), 0, 0))
                                        end
                                end
                                if vc.Steer==-1 then
                                        bav.angularvelocity=Vector3.new(0, 2, 0)
                                        if not hover then
                                                animate.Wheel2(ca(mr(25), 0, 0))
                                                animate.Wheel(ca(mr(25), 0, 0))
                                        end
                                end
                                if vc.Steer==0 then
                                        bav.angularvelocity=Vector3.new(0, 0, 0)
                                        if not hover then
                                                animate.Wheel2(ca(0, 0, 0))
                                                animate.Wheel(ca(0, 0, 0))
                                        end
                                end
                                wait()
                        end
                end
        end
end)
obj.VC.ChildRemoved:connect(function()
        bv.Parent=nil bav.Parent=nil gui.Parent=nil engine=false
end)