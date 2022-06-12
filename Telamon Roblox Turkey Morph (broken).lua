hwins={}
survivors={}
message = nil
function showMessage(text)
	hideMessage()
	if message == nil then message = Instance.new("Message") end
	message.Text = text
	message.Parent = game.Workspace
end

function hideMessage()
	if message == nil then return end
	message.Parent = nil
end


function countdown()
time.Value = gametime
for i = 1, gametime, 1 do
time.Value = gametime-i
wait(1)
end
end

function rebalenceteams()
	p = game.Players:getChildren()
		for i = 1, #p do
			player = p[i]
			p[i].TeamColor = game.Teams.Turkeys.TeamColor
			p[i].Neutral = false
			if (p[i].Character ~= nil) then
				q = p[i].Character:getChildren()
					for i = 1, #q do
						if q[i].className == "Part" then
							q[i]:remove()
						end
					end
			end
			cs = script.CleanScript:clone()
			cs.Parent = p[i].Character
			cs.Disabled = false
		end
		if #p < 8 then
			d = 1
		else d = 2 end
	for i = 1, d do
		rand = math.random(1,#p)
		player = p[rand]
			if player.TeamColor ~= game.Teams.Hunters.TeamColor then
				player.TeamColor = game.Teams.Hunters.TeamColor
				player.Neutral = false
			end
	end
end

function hunterwinner(hwinner)
	cooks = 0
	p = game.Players:getChildren()
	for i = 1, #p do
		if p[i]:findFirstChild("leaderstats") ~= nil then
			if p[i].TeamColor == game.Teams.Hunters.TeamColor then
				if p[i].leaderstats.Cooked.Value > cooks and p[i].leaderstats.Cooked.Value>0 then
					hwins[#hwins] = nil
					cooks = p[i].leaderstats.Cooked.Value
					hwins[#hwins+1] = p[i].Name
				elseif p[i].leaderstats.Cooked.Value == cooks and p[i].leaderstats.Cooked.Value>0 then
					cooks = p[i].leaderstats.Cooked.Value
					hwins[#hwins+1] = p[i].Name
				end
			end
		end
	end
		for i = 1, #hwins do
				--Award badge to game.Players.hwins[i]
			d = math.random(1,2)
			if d==1 then
				p = game.Lighting.Movies.HunterWin:clone()
			elseif d == 2 then
				p = game.Lighting.Movies.HunterWin2:clone()
			end
		p.Parent = game.Workspace:findFirstChild(hwins[i])
		end
end

function turkeysurvivors()
	p = game.Players:getChildren()
	for i = 1, #p do
		if p[i].TeamColor == game.Teams.Turkeys.TeamColor then
		survivors[#survivors+1] = p[i].Name
		end
	end
	for i = 1, #survivors do
		if (game.Players:findFirstChild(survivors[i]):findFirstChild("leaderstats") ~= nil) then
			game.Players:findFirstChild(survivors[i]).leaderstats.Total.Value = game.Players:findFirstChild(survivors[i]).leaderstats.Total.Value + 50
			--Award badge to game.Players.survivors[i]
			p = game.Lighting.Movies.TurkeyWin:clone()
			p.Parent = game.Workspace:findFirstChild(survivors[i])
			p.Disabled = false
		end
	end
end

function giveending()
	p = game.Players:getChildren()
		for i = 1, #p do
			if p[i].TeamColor == game.Teams.Hunters.TeamColor then
			t =game.Lighting.Movies.EndingGame:clone()
			t.Parent = p[i].Character
			t.Disabled = false
		end
	end
end
function checkpoints()
p = game.Players:getChildren()

local b = game:GetService("BadgeService")


for i = 1, #p do
	if p[i]:FindFirstChild("leaderstats") ~= nil then
		if p[i].leaderstats.Total.Value >= 50 then
			b:AwardBadge(p[i].userId, 40864054)
		end
		if p[i].leaderstats.Total.Value >= 200 then
			b:AwardBadge(p[i].userId, 40864086)
		end
	end
end
end

function resettables()
p = game.Players:getChildren()
for i = 1, #p do
	if (p[i]:FindFirstChild("leaderstats") ~= nil) then
		p[i].leaderstats.Cooked.Value = 0
	end
end
for i = 1, #hwins do
hwins[i] = nil
end
for i = 1, #survivors do
survivors[i] = nil
end
end

function maketurkey()
-- inside pcall
local Suit = game.Lighting.Turkey
local Me = turkey
Me["Right Arm"].Transparency = 1
Me["Left Arm"].Transparency = 1
Me.Head.face:remove()
Me.Head.CanCollide = false
if Me.Torso:findFirstChild("roblox") then
Me.Torso:findFirstChild("roblox"):remove()
end
bv = Instance.new("BodyVelocity")
bv.Name = "Glide"
bv.Parent = Me.Torso
bv.velocity = Vector3.new(0,2,0)
bv.maxForce = Vector3.new(4e+003, 7e+003, 4e+003)
bv.velocity = Vector3.new(0,3.5,0)
Me.Torso.Neck.C1 = CFrame.new(0,0,0)
Me.Torso.Neck.C0 = CFrame.new(0,0,0) * CFrame.fromAxisAngle(Vector3.new(0,1,0), 0)
	if Me:findFirstChild("Humanoid") ~= nil and Me:findFirstChild("Arm1") == nil then
		local g = Suit.Arm1:clone()
		g.Parent = Me
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = Me["Left Arm"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
Me["Left Arm"].Transparency = 1
		end
		local h = g:GetChildren()
		for i = 1, # h do
			h[i].Anchored = false
			h[i].CanCollide = false
		end
	end
	if Me:findFirstChild("Humanoid") ~= nil and Me:findFirstChild("Arm2") == nil then
		local g = Suit.Arm2:clone()
		g.Parent = Me
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = Me["Right Arm"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
Me["Right Arm"].Transparency = 1
		end
		local h = g:GetChildren()
		for i = 1, # h do
			h[i].Anchored = false
			h[i].CanCollide = false
		end
	end
	if Me:findFirstChild("Humanoid") ~= nil and Me:findFirstChild("Leg1") == nil then
		local g = Suit.Leg1:clone()
		g.Parent = Me
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = Me["Left Leg"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, -.85, 0)
				Y.Parent = Y.Part0
Me["Left Leg"].Transparency = 1
		end
		local h = g:GetChildren()
		for i = 1, # h do
			h[i].Anchored = false
			h[i].CanCollide = false
		end	
	end
	if Me:findFirstChild("Humanoid") ~= nil and Me:findFirstChild("Leg2") == nil then
		local g = Suit.Leg2:clone()
		g.Parent = Me
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = Me["Right Leg"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, -.85, 0)
				Y.Parent = Y.Part0
Me["Right Leg"].Transparency = 1
		end
		local h = g:GetChildren()
		for i = 1, # h do
			h[i].Anchored = false
			h[i].CanCollide = false
		end		
	end
	if Me:findFirstChild("Humanoid") ~= nil and Me:findFirstChild("Chest") == nil then
		local g = Suit.Chest:clone()
		g.Parent = Me
		local C = g:GetChildren()
                local R = Me:GetChildren()
		for i=1, #R do
			if R[i].className == "Hat" then
				R[i]:remove()
			end
		end
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				W.Name = C[i].Name
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = Me.Torso
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, -1, 0)
				Y.Parent = Y.Part0
Me["Torso"].Transparency = 1
Me["Head"].Transparency = 1
		end
		local h = g:GetChildren()
		for i = 1, # h do
			h[i].Anchored = false
			h[i].CanCollide = false
		end		
	end
print(turkey.Name)
turkey.Animate:remove()
t1 = script.Animate:clone()
t1.Parent = turkey 
t2 = script.Jumping:clone()
t2.Parent = turkey
p = script.Died:clone()
p.Parent = turkey
p.Disabled = false
t1.Disabled = false
t2.Disabled = false
end


me = game.Workspace.lordsheen 
h = Instance.new("Hat")
p = Instance.new("Part")
h.Name = "PilgrimHat"
p.Parent = h
p.Position = me.Head.Position
p.Name = "Handle" 
p.formFactor = 0
p.Size = Vector3.new(0,-0.25,0) 
p.BottomSurface = 0 
p.TopSurface = 0 
p.Locked = true 
m = Instance.new("SpecialMesh")
m.Parent= p
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=1223118"
m.TextureId = "http://www.roblox.com/asset/?id=18336701"
m.Scale = Vector3.new(1.7,1.7,1.7)
h.Parent = me 
h.AttachmentPos = Vector3.new(0, -0.25, -0.05)
h.AttachmentUp = Vector3.new(0, 0.981, -0.196)
h.AttachmentRight = Vector3.new(1, 0, 0)
h.AttachmentForward = Vector3.new(0, -0.196, -0.681)


