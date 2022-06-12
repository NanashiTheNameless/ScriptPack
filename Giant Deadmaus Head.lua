
HeadEarsMaterial = 15
EyeMouthMaterial = 4

function GenerateDeadmau5Head(scale)
	
	local cos,sin = math.cos,math.sin
	local t = workspace.Terrain
	
	-- Mouth
	
	for radius = scale*.9,scale*.92,1/(scale*.1) do
		for i = 0, 6.28, 1/radius do
			for j = 0,6.28, 1/radius do
				t:SetCell(radius*sin(i)*cos(j),radius*sin(i)*sin(j),radius*cos(i),EyeMouthMaterial,0,0)
			end
		end
		wait()
	end
	
	
	-- Top Half of the Head.
	
	for radius = scale*.925,scale,1/(scale*.1) do
		for i = 0, 3.14, 1/radius do
			for j = 0, 3.14, 1/radius do
				t:SetCell(radius*sin(i)*cos(j),radius*sin(i)*sin(j),radius*cos(i),HeadEarsMaterial,0,0)
			end
		end
		wait()
	end
	
	-- Lower back of the head.
	
	for radius = scale*.925,scale,1/(scale*.1) do
		for i = 0, 1.57, 1/radius do
			for j = 3.14,6.28, 1/radius do
				t:SetCell(radius*sin(i)*cos(j),radius*sin(i)*sin(j),radius*cos(i),HeadEarsMaterial,0,0)
			end
		end
		wait()
	end
	
	-- Jaw
	
	for radius = scale*.94,scale,1/(scale*.1) do
		for i = 3.14, 6.28, 1/radius do
			for j = 0,0.74, 1/radius do
				t:SetCell(radius*cos(i),radius*sin(i)*cos(j),radius*sin(i)*sin(j),HeadEarsMaterial,0,0)
			end
		end
	end
	
	-- Eyes
	
	for ox = -scale/2,scale/2,scale do
		local radius = scale*.28
		for i = 0,6.28,1/radius do
			for j = 0,6.28,1/radius do
				t:SetCell(ox+radius*cos(i),(scale*.44)+radius*sin(i)*cos(j),(-scale*.6)+radius*sin(i)*sin(j),EyeMouthMaterial,0,0)
			end
		end
		wait()
	end
	
	-- Ears
	
	local cooldown = 0
	
	for radius = 0,scale*.8,1/(scale*.8) do	
		for ox = -scale*1.2,scale*1.2,scale*2.4 do
			for i = 0,6.28,1/radius do
				for j = 0,0.01,1/radius do
					t:SetCell(ox+radius*cos(i),(scale*.9)+radius*sin(i)*cos(j),radius*sin(i)*sin(j),HeadEarsMaterial,0,0)
				end
			end
		end
		cooldown = cooldown + 1
		if cooldown > (scale/5) then
			cooldown = 0
			wait()
		end
	end
	
end

GenerateDeadmau5Head(50)