scale = 20
 
function weld(tab)
        local last = nil
        for i,v in pairs(tab) do
                if v:IsA("BasePart") then
                        if last then
                                local w = Instance.new("Weld",last)
                                w.Part0 = w.Parent
                                w.Part1 = v
                                local pos = last.CFrame:toObjectSpace(v.CFrame)
                                w.C0 = pos
                        end
                        last = v
                end
        end
end        
 
function makeball(pos)
local model = Instance.new("Model",workspace)
local rand = BrickColor.Random()
for i=0,340,20 do
        wait()
        for z=-90,70,20 do
                local p = Instance.new("Part",model)
                p.formFactor = "Custom"
                p.BrickColor = rand
                p.Transparency = 0.5
                p.Size = Vector3.new(scale/5.5,scale/5.5,scale/140)
                p.Anchored = true
                p.TopSurface = 0
                p.BottomSurface = 0
                p.CFrame = CFrame.new(pos) * CFrame.Angles(math.rad(z),math.rad(i),0) * CFrame.new(0,0,-scale/2)
                p:breakJoints()
        end
end
weld(model:children())
for i,v in pairs(model:children()) do v.Anchored = false end 
model:MakeJoints()
end
 
for _,v in pairs(game.Players:GetPlayers()) do
        if v.Character then
                makeball(v.Character.Torso.Position+Vector3.new(0,scale/2-2.5,0))
        end
end
