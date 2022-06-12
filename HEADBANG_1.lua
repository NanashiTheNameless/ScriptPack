
plr=game.Players.Dillsion1

local

if plr=Player do this 

w=Instance.new("Weld",plr.Character.

Head)
w.Part0=plr.Character.Head
w.Part1=plr.Character.Torso
w.C0=CFrame.new(0,-1.5,0)*CFrame.

Angles(0,0,0)
local num=-3
while true do 
for i=1, 8 do 
wait()
num=num+1
w.C0=CFrame.new(0,-1.5,0)*CFrame.

Angles(math.pi/180*num*8,0,0)
end 
for i=1, 8 do 
wait()
num=num-1
w.C0=CFrame.new(0,-1.5,0)*CFrame.

Angles(math.pi/180*num*8,0,0)
end end 

