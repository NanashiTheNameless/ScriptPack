script.Parent = nil
me = game:service("Players").xSoulStealerx

num = 0
local base = workspace.Base

function CloneMe(random, walk, rw, amount)
	local char = me.Character
	if char then
		char.archivable = true
		for i = 1, amount do
			num = num + 1
			local charclone = char:clone()
			for _,v in pairs(charclone:children()) do if v:IsA("Model") then v:remove() end end
			local hed = charclone.Head
			local neck = charclone.Torso.Neck
			local fake = hed:clone()
			fake.Parent = charclone
			hed.Transparency = 1
			local w = Instance.new("Motor6D",charclone.Torso)
			w.Part0 = w.Parent
			w.Part1 = fake
			w.C0 = neck.C0
			w.C1 = neck.C1
			charclone.Parent = workspace
			charclone:MakeJoints()
			charclone.Name = me.Name:sub(1,5).." Num "..num
			charclone:MoveTo(char.Torso.Position + Vector3.new(math.random(-random, random), math.random(-random, random), math.random(-random, random)))
			local hum = charclone.Humanoid
			local torso = charclone.Torso
			local pos = torso.Position
			hum.Died:connect(function() wait(3) charclone:remove() end)
			if walk then
				coroutine.resume(coroutine.create(function()
					while charclone.Parent ~= nil do
						wait(0.2)
						local rand = math.random(1,10)
						if rand == 1 then
							rand = math.random(1,4)
							if rand == 1 then
								hum.Jump = true
							end
							hum:MoveTo(pos + Vector3.new(math.random(-rw, rw), 0, math.random(-rw, rw)), base)
						end
					end
				end))
			end
		end
	end
end

function FindAny(str, what, which)
	local where = 0
	local a, b = nil, nil
	for i=1,#str do
		if str:sub(i,i + #what - 1) == what then
			where = where + 1
			if where == which then
				a, b = i, i+ #what-1
				break
			end
		end
	end
	return a, b
end

me.Chatted:connect(function(msg)
	if string.sub(msg, 1, 6):lower() == "clone:" then
		pcall(function()
		local a1, b1 = FindAny(msg, ",", 1)
		local amount = tonumber(msg:sub(7, b1-1))
		local a2, b2 = FindAny(msg, ",", 2)
		local walk = tonumber(msg:sub(b1+1, b2-1))
		local walk2 = false
		if walk ~= nil then if walk > 0 then walk2 = true else walk2 = false end end
		local a3, b3 = FindAny(msg, ",", 3)
		local walkarea = tonumber(msg:sub(b2+1, b3-1))
		local b4 = #msg
		local area = tonumber(msg:sub(b3+1, b4))
		if area then
			CloneMe(area, walk2, walkarea, amount)
		end
		end)
	elseif msg == "remove" then
		script.Disabled = true
	end
end)

while true do
	pcall(function() base = workspace.Base end)
	wait()
end
