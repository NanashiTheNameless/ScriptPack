step = 10
phrases = {"I LIKE BABIES","I COLLECT DEAD BABIES","HELLO","GELATIN DOUGHNUT","MOBROBCHOB","DDDUUURRRPPP","asdfmovie5","Have you ever been tired of being RANDOM?","FFFFFFFFFFFFF","umad","hemad","DAVID TENNANT","CHUCK NORRIS","UR MOM IS BENNEDICT ARNOLD"}

for _,player in pairs(game:service("Players"):GetPlayers()) do
	coroutine.resume(coroutine.create(function()
		local char = player.Character
		local torso = char["Torso"]
		local rsh = torso["Right Shoulder"] or Instance.new("Motor6D")
		local lsh = torso["Left Shoulder"] or Instance.new("Motor6D")
		local rhip = torso["Right Hip"] or Instance.new("Motor6D")
		local lhip = torso["Left Hip"] or Instance.new("Motor6D")
		local neck = torso["Neck"] or Instance.new("Motor6D")
		while true do
			for i = 1,360,360/step do
				rsh.C1 = rsh.C1 * CFrame.Angles(math.rad(step),-math.rad(step),-math.rad(step))
				lsh.C1 = lsh.C1 * CFrame.Angles(-math.rad(step),math.rad(step),-math.rad(step))
				rhip.C1 = rhip.C1 * CFrame.Angles(-math.rad(step),-math.rad(step),math.rad(step))
				lhip.C1 = lhip.C1 * CFrame.Angles(math.rad(step),math.rad(step),math.rad(step))
				neck.C1 = neck.C1 * CFrame.Angles(-math.rad(step),-math.rad(step),-math.rad(step))
				wait(0.05)
			end
		end
	end))
	coroutine.resume(coroutine.create(function()
		local char = player.Character
		local torso = char["Torso"]
		local head = char["Head"]
		local rarm = char["Right Arm"]
		local larm = char["Left Arm"]
		while true do
			local rand = math.random(1,3)
			if rand == 1 then
				game:service("Chat"):Chat(head,phrases[math.random(1,#phrases)])
			elseif rand == 2 then
				game:service("Chat"):Chat(rarm,phrases[math.random(1,#phrases)])
			else
				game:service("Chat"):Chat(larm,phrases[math.random(1,#phrases)])
			end
		end
	end))
end