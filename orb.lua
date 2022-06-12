p=game.Players.LocalPlayer or (owner or game.Players:WaitForChild"grubsteak")
char=workspace:WaitForChild(p.Name) --could be disabled/error out if someone makes an object named so
local partBuffer={}
local cfBuffer={}
local nparts=25
local EndTail=0.8
local rotateSpeed=4
local dist=3
local updown=2
colorswap=0.5
oldrot=0
upfunc=math.tan
rotateSpeed=rotateSpeed*(char.Humanoid.WalkSpeed/15)

rotateWithChar=false

--[[colors={
	BrickColor.new("Institutional white");
	BrickColor.new("White");
	BrickColor.new("Light stone grey");
	BrickColor.new("Sand red");
}]]
colors={}
for i=1, 4 do colors[i]=BrickColor.new(1/i, 1/i, 1/i) end;
local trans=0.5

dmul=(Instance.new"BodyPosition").D
function blankpart()
	local pa=Instance.new("Part", char)
	pa.FormFactor="Custom"
	pa.TopSurface="Smooth"
	pa.BottomSurface="Smooth"
	pa.CanCollide=false
	pa.Anchored=false
	local bp=Instance.new("BodyPosition", pa)
	bp.MaxForce=Vector3.new(1,1,1)*math.huge
	local bg=Instance.new("BodyGyro", pa)
	bg.MaxTorque=Vector3.new(1,1,1)*math.huge
	
	return pa
end
local orbp=blankpart()
orbp.Name="Orb Sphere"
orbp.Shape="Ball"
orbp.Size=Vector3.new(0.2, 0.2, 0.2)
orbp.Anchored=false
orbp.Material="Neon"
partBuffer[0]=orbp
script.Parent=orbp
	for i=1, nparts do
	partBuffer[i]=blankpart()
	partBuffer[i].Size=Vector3.new(1, 1, 1)
	local b=Instance.new("BlockMesh", partBuffer[i])
	b.Scale=Vector3.new(i/nparts*EndTail, i/nparts*EndTail, i/nparts*EndTail)
	partBuffer[i].Transparency=trans
	end

function rotate(d, r)
	local tframe=char.Torso.CFrame
	if rotateWithChar then
	r=r- math.atan2(tframe.lookVector.z, tframe.lookVector.x)
	end
	return Vector3.new(d*math.cos(r)+d*math.sin(r), 0, -d*math.sin(r)+d*math.cos(r))
end

local tlen=0
for i=1, nparts do
	tlen=tlen+(i/nparts)*EndTail
end
print(tlen)
--circumference
circumference=dist*2*math.pi
print(circumference)
local width=(tlen/circumference)*(2*math.pi)
print((tlen/circumference), "\n", math.deg(width))


local lastColor=tick()+colorswap
local colorN=2

owner.Chatted:connect(function(msg)
if msg:lower():match("^d=%d+") then
dmul=msg:lower():match("^d=(%d+)")+0
end
end)
local con
con=game:GetService("RunService")[game.Players.LocalPlayer and "RenderStepped" or "Stepped"]:connect(function()
	if not char or char:FindFirstChild"Humanoid".Health==0 then
		con:disconnect()
	end
	local tframe=char.Torso.CFrame
	local rot=( ((tick()%rotateSpeed)+1) /rotateSpeed ) * math.pi*2 
	local orbcf=tframe+rotate(dist, rot)+Vector3.new(0, upfunc(rot)*updown+1, 0)
	orbp.BodyPosition.Position=Vector3.new(orbcf.p.X, math.max(orbcf.p.Y, -300), orbcf.p.Z) 
	orbp.BodyGyro.CFrame=orbcf
	orbp.BodyPosition.D=dmul

	orbp.Color=Color3.new((math.sin(tick()*math.pi*2.6)+1)/2, (math.cos(tick()*math.pi*2)+1)/2, (math.cos(tick()*math.pi*1.2)+1)/2)

	for i=1, nparts do
	--local rot=( ((tick()%rotateSpeed)+1) /rotateSpeed ) * math.pi*2
	local len=i/nparts*EndTail
	
	local pos=0
	for j=1, i do
		pos=pos+((j/nparts)*EndTail)*.6
	end	
	local rot2=rot-((pos/tlen)*(width))
	local pcf=CFrame.new((tframe+rotate(dist, rot2)+Vector3.new(0, upfunc(rot2)*updown+1, 0)).p, partBuffer[i-1].CFrame.p)
	partBuffer[i].BodyPosition.Position=Vector3.new(pcf.p.X, math.max(pcf.p.Y, -300), pcf.p.Z)
	partBuffer[i].BodyGyro.CFrame=pcf
	partBuffer[i].BodyPosition.D=dmul
	partBuffer[i].BrickColor=BrickColor.new((pos/tlen), (pos/tlen), (pos/tlen))
--	if colors[math.floor((i/(nparts+1))*(#colors+1))] then
--	partBuffer[i].BrickColor=colors[math.floor((i/(nparts+1))*(#colors+1))]
--	end
	end
end)