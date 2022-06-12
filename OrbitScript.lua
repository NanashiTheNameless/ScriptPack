local target = "HappyRocketwheel"--Replace with anyones name
local TWO_PI = 2 * math.pi
local cycletime = 0.75
local offsetradius = 0.75
local rotationoffset = math.pi
function CubicInterpolate(y0, y1, y2, y3, mu)
	local a0, a1, a2, a3, mu2
	mu2 = mu * mu
	a0 = y3 - y2 - y0 + y1
	a1 = y0 - y1 - a0
	a2 = y2 - y0
	a3 = y1
	return a0 * mu * mu2 + a1 * mu2 + a2 * mu + a3
end
local character = game.Players[target].Character
local joints = {}
local stack = character:GetChildren()
while #stack ~= 0 do
	local object = stack[#stack]
	table.remove(stack)
	for index, child in ipairs(object:GetChildren()) do
		table.insert(stack, child)
	end
	if object:IsA("JointInstance") then
		table.insert(joints, object)
	end
end
local rot0 = {}
local rot1 = {}
local rot2 = {}
local rot3 = {}
local rot4 = {}
for index, joint in ipairs(joints) do
	local pos = Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5).unit * offsetradius
	local rot = Vector3.new(math.random(), math.random(), math.random()) * rotationoffset
	rot0[index] = {joint.C0, joint.C1}
	rot = Vector3.new(rot.x % TWO_PI, rot.y % TWO_PI, rot.z % TWO_PI)
	rot2[index] = {pos, rot}
	pos = Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5).unit * offsetradius
	rot = rot + Vector3.new(math.random(), math.random(), math.random()) * rotationoffset
	rot = Vector3.new(rot.x % TWO_PI, rot.y % TWO_PI, rot.z % TWO_PI)
	rot3[index] = {pos, rot}
	pos = Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5).unit * offsetradius
	rot = rot + Vector3.new(math.random(), math.random(), math.random()) * rotationoffset
	rot = Vector3.new(rot.x % TWO_PI, rot.y % TWO_PI, rot.z % TWO_PI)
	rot4[index] = {pos, rot}
end
while character.Parent do
	for i, j in ipairs(joints) do
		local pos = Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5).unit * offsetradius
		local rot = rot4[i][2] + Vector3.new(math.random(), math.random(), math.random()) * rotationoffset
		rot = Vector3.new(rot.x % TWO_PI, rot.y % TWO_PI, rot.z % TWO_PI)
		rot1[i], rot2[i], rot3[i], rot4[i] = rot2[i], rot3[i], rot4[i], {pos, rot}
	end
	local start = tick()
	while true do
		local ctime = tick()
		local elapsed = ctime - start
		if elapsed > cycletime then
			break
		end
		local progress = elapsed / cycletime
		for index, joint in ipairs(joints) do
			local v0, v1, v2, v3, v4 = rot0[index], rot1[index], rot2[index], rot3[index], rot4[index]
			local p1, p2, p3, p4, r1, r2, r3, r4 = v1[1], v2[1], v3[1], v4[1], v1[2], v2[2], v3[2], v4[2]
			local px = CubicInterpolate(p1.x, p2.x, p3.x, p4.x, progress)
			local py = CubicInterpolate(p1.y, p2.y, p3.y, p4.y, progress)
			local pz = CubicInterpolate(p1.z, p2.z, p3.z, p4.z, progress)
			local rx = CubicInterpolate(r1.x, r2.x, r3.x, r4.x, progress)
			local ry = CubicInterpolate(r1.y, r2.y, r3.y, r4.y, progress)
			local rz = CubicInterpolate(r1.z, r2.z, r3.z, r4.z, progress)
			local cframe = CFrame.new(px, py, pz) * CFrame.Angles(rx, ry, rz)
			joint.C0 = v0[1] * cframe
			joint.C1 = v0[2] * cframe:inverse()
		end
		wait()
	end
end
