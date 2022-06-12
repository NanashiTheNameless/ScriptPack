--Made by uSukDude


amount=16
speeds={30,61}
limits={
	Vector3.new(-3000,600,-3000),
	Vector3.new(3000,700,3000)
}
cloudname="Cumulus"				--put a cloud that you want it to clone into lighting and enter it's name here, or this script will generate one for you.
cloudsgroupname="Clouds"
releasecooldown=5
rotatedclouds=true		--If you want the clouds all facing the same direction, set this to false. True will randomly rotate them.





rate=1/30
lastrelease=0
debris=game:GetService("Debris")

local clouds=script.Parent:FindFirstChild(cloudsgroupname) or Instance.new("Model",script.Parent)
clouds.Name=cloudsgroupname



function generatecloud()
	local p=Instance.new("Part")
	p.Name=cloudname
	p.Transparency=.7
	p.BrickColor=BrickColor.new("Institutional white")
	p.formFactor="Custom"
	p.Size=Vector3.new(0,0,0)
	p.TopSurface="Smooth"
	p.BottomSurface="Smooth"
	p.Anchored=true
	p.CanCollide=false
	local m=Instance.new("SpecialMesh")
	m.MeshId="http://www.roblox.com/asset/?id=111820358"
	m.TextureId=""
	m.Scale=Vector3.new(math.random(1000,1300),math.random(500,700),math.random(1000,1300))
	m.Parent=p
	return p
end
function createcloud(pos)
	local clonecloud=game.Lighting:FindFirstChild(cloudname)
	local newcloud=(clonecloud and clonecloud:clone()) or generatecloud()
	newcloud.CFrame=CFrame.new(pos)
	if rotatedclouds then
		newcloud.CFrame=newcloud.CFrame*CFrame.Angles(0,math.pi*2*math.random(),0)
	end
	newcloud.Name="CloudSpeed"..tostring(math.random(speeds[1],speeds[2]))
	debris:AddItem(newcloud,7*60)
	newcloud.Transparency=1
	newcloud.Parent=clouds
end


local gc=clouds:GetChildren()	--creates initial population
local missing=amount-#gc
if missing>0 then
	for i=1,missing do
		createcloud(Vector3.new(math.random(limits[1].x,limits[2].x),math.random(limits[1].y,limits[2].y),math.random(limits[1].z,limits[2].z)))
	end
end


while true do
	local t1,t2=wait(rate)
	local gc=clouds:GetChildren()
	if #gc<amount and lastrelease<t2 then
		lastrelease=t2+releasecooldown
		createcloud(Vector3.new(math.random(limits[1].x,limits[2].x),math.random(limits[1].y,limits[2].y),limits[2].z))
	end
	for i,v in pairs(gc) do
		local speed=string.sub(v.Name,11)
		v.CFrame=v.CFrame+Vector3.new(0,0,-speed*rate)
		if v.Position.z<limits[1].z then
			v.Transparency=v.Transparency+(rate/3)
			if v.Transparency>1 then
				v:remove()
			end
		elseif v.Transparency>0.5 then
			v.Transparency=v.Transparency-(rate/3)
			if v.Transparency<0.5 then
				v.Transparency=0.5
			end
		end
	end
end