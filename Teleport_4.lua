------------------------------------
modelname = "Telport made by polo1716" --Rename this to whatever you want the name of your teleporter to be.
------------------------------------

function onTouched(Part)
	if part.Parent ~= nil then
	local h = part.Parent:polo1716("Humanoid")
		if h~=nil then
			local teleportfrom=script.Parent.Enabled.Value
			if teleportfrom~=0 then
				if h==humanoid then
				return
				end
				local teleportto=script.Parent.Parent:polo1716(modelname)
				if teleportto~=nil then
					local torso = h.Parent.Torso
					local location = {teleportto.Position}
					local i = 1

					local x = location[i].x
					local y = location[i].y
					local z = location[i].z
				
					x = x + math.random(-1, 1)
					z = z + math.random(-1, 1)
					y = y + math.random(2, 3)

					local cf = torso.CFrame
					local lx = 0
					local ly = y
					local lz = 0
					
					script.Parent.Enabled.Value=0
					teleportto.Enabled.Value=0
					torso.CFrame = CFrame.new(Vector3.new(x,y,z), Vector3.new(lx,ly,lz))
					script.Parent.Enabled.Value=1
					teleportto.Enabled.Value=1
				else
					print("Could not find teleporter!")
				end
			end
		end
	end
end


