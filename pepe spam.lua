local f = {"Right","Top","Back","Left","Bottom","Front"}
cycle=function(d)
    for _,v in pairs(d:GetChildren()) do
        if v:IsA("BasePart") then
            local pe=Instance.new("ParticleEmitter",v)
            pe.Texture="rbxassetid://292916914"
            for _,m in pairs(f) do
                local dec=Instance.new("Decal",v)
                dec.Face=m
                dec.Texture="rbxassetid://292916914"
            end
        end
        if (#v:GetChildren())>0 then
            cycle(v)
        end
    end
    wait(0.5)
end
cycle(workspace)