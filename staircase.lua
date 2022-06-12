game.Players.grubsteak.Chatted:connect(function(msg)
w,h,r,mode=msg:match'(%d+),(%d+),([%.%d]+),(.)'
local rot=0
local pi=math.pi
local n=(pi*2)/r
local width=((w/2)/math.cos(pi/n))*(2*math.sin(pi/n))
for i=1, tonumber(h) do
    local p=Instance.new('Part', workspace.Base)
    p.Anchored=true
    p.FormFactor='Custom'
    p.Size=Vector3.new(w, 1, width)
    p.CFrame=CFrame.new(0, i, 0)*CFrame.Angles(0, rot, 0)
    if mode=='s' then
    coroutine.wrap(function()
        local i, rot=i, rot
        while wait() and p do
            p.CFrame=CFrame.new(0, i, 0)*CFrame.Angles(0, rot+(tick()%(pi*2)), 0)
        end
end)()
elseif mode=='w' then
wait(.2)
end
p.Color=Color3.new((h%10)/10,(h%10)/10,(h%10)/10)
    rot=rot+r
end

--[[

h/http://code.stypi.com/raw/grubsteak/untitled.lua
]]
end)