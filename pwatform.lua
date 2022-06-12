--[[platform script by masterepico, put ur name where it says "masterepico" on line 2]]--
Name="masterepico"
nm=game.Workspace:FindFirstChild(Name)
v=Instance.new("Part",nm)
v.FormFactor="Custom"--so it is thin, not fat
v.Size=Vector3.new(4,0.2,4)
v.Anchored=false
v.CanCollide=true
v.Locked=false
v.Reflectance=0
v.Transparency=1
v.Name="Platform"
w=Instance.new("Weld",v)
w.Part0=nm.Platform
w.Part1=nm.Torso
w.C0=Workspace.masterepico.Torso.CFrame*CFrame.new(0,-3.6,0)
w.C1=CFrame.new(0,0,0)
