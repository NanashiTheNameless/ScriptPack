WhitelistGlobal = {"146904", "friend:146904"}


Resources = {
	["Tesla Coil"] = {
		StartActivated = true, --false,
		Arc = {
			New = function()
				local Arc = Instance.new("Part", Workspace)
				Arc.Name = "Tesla Coil Arc"
				Arc.BrickColor = BrickColor.new("Bright blue")
				Arc.Reflectance = 0.5
				Arc.Transparency = 0.1
				Arc.TopSurface = 0
				Arc.BottomSurface = 0
				Arc.Anchored = true
				Arc.CanCollide = false
				Arc.FormFactor = "Custom"
				return Arc
			end,
			Destroy = function(Object)
				coroutine.wrap(function()
					wait(0.1)
					local Reflectance = Object.Reflectance
					local Transparency = Object.Transparency
					for i = 0, 1, 0.1 do
						Object.Reflectance = Reflectance * (1 - i)
						Object.Transparency = Transparency + ((1 - Transparency) * i)
						wait()
					end
					Object:Remove()
				end)()
			end,
			Step = 10
		}
	}
}


function GetRecursiveChildren(Source, Name, SearchType, Children)
	if Source == nil then
		Source = game
	end
	if Name == nil or type(Name) ~= "string" then
		Name = ""
	end
	if Children == nil or type(Children) ~= "table" then
		Children = {}
	end
	for _, Child in pairs(Source:children()) do
		pcall(function()
			if (function()
				if SearchType == nil or SearchType == 1 then
					return string.match(Child.Name:lower(), Name:lower())
				elseif SearchType == 2 then
					return string.match(Child.ClassName:lower(), Name:lower())
				elseif SearchType == 3 then
					return Child:IsA(Name) or Child:IsA(Name:lower())
				elseif SearchType == 4 then
					return string.match(Child.Name:lower() .. string.rep(string.char(1), 5) .. Child.ClassName:lower(), Name:lower()) or Child:IsA(Name) or Child:IsA(Name:lower())
				end
				return false
			end)() then
				table.insert(Children, Child)
			end
			GetRecursiveChildren(Child, Name, SearchType, Children)
		end)
	end
	return Children
end


function WeldPos(Part0, Part1, x, y, z)
	local Weld = Instance.new("Weld", Part1)
	Weld.Name = "AutoWeld"
	Weld.Part0 = Part0
	Weld.Part1 = Weld.Parent
	Weld.C0 = CFrame.new(x, y, z)
end


function _G.MakeTurret(Format, Position)
	local Whitelist = WhitelistGlobal
	if Format == "Tesla Coil" then
		local Activated = Resources[Format].StartActivated
		local TeslaCoil = Instance.new("Model")
		TeslaCoil.Name = "Tesla Coil"
		local Base = Instance.new("Part", TeslaCoil)
		Base.Name = "Base"
		Base.BrickColor = BrickColor.new("Really black")
		Base.TopSurface = 0
		Base.BottomSurface = 0
		Base.FormFactor = "Custom"
		Base.Size = Vector3.new(5, 1, 5)
		local Body = Base:Clone()
		Body.Parent = TeslaCoil
		Body.Name = "Body"
		Body.BrickColor = BrickColor.new("Institutional white")
		Body.Size = Vector3.new(3.5, 5, 3.5)
		local Mesh = Instance.new("CylinderMesh", Body)
		WeldPos(Base, Body, 0, 2.75, 0)
		local Button = Body:Clone()
		Button.Parent = TeslaCoil
		Button.Name = "Button"
		Button.BrickColor = BrickColor.new(Activated == true and "Bright green" or "Really red")
		Button.Size = Vector3.new(3.6, 1, 3.6)
		WeldPos(Body, Button, 0, 0, 0)
		local ClickDetector = Instance.new("ClickDetector", Button)
		ClickDetector.MaxActivationDistance = 5
		ClickDetector.MouseClick:connect(function()
			Activated = not Activated
			Button.BrickColor = BrickColor.new(Activated == true and "Bright green" or "Really red")
		end)
		local ButtonCover = Button:Clone()
		ButtonCover.Parent = TeslaCoil
		ButtonCover.Name = "Button Cover"
		ButtonCover.BrickColor = BrickColor.new("Really black")
		ButtonCover.Size = Vector3.new(3.7, 0.1, 3.7)
		WeldPos(Body, ButtonCover, 0, 0.6, 0)
		local ButtonCover = ButtonCover:Clone()
		ButtonCover.Parent = TeslaCoil
		WeldPos(Body, ButtonCover, 0, -0.6, 0)
		local Container = Body:Clone()
		Container.Parent = TeslaCoil
		Container.Name = "Container"
		Container.BrickColor = BrickColor.new("Really red")
		Container.Size = Vector3.new(1.5, 4, 1.5)
		WeldPos(Base, Container, 1.5, 2.25, 1.5)
		local Container = Container:Clone()
		Container.Parent = TeslaCoil
		WeldPos(Base, Container, -1.5, 2.25, 1.5)
		local Container = Container:Clone()
		Container.Parent = TeslaCoil
		WeldPos(Base, Container, -1.5, 2.25, -1.5)
		local Container = Container:Clone()
		Container.Parent = TeslaCoil
		WeldPos(Base, Container, 1.5, 2.25, -1.5)
		local ContainerTop = Base:Clone()
		ContainerTop.Parent = TeslaCoil
		ContainerTop.Name = "Container Top"
		ContainerTop.Size = Vector3.new(1.5, 1.5, 1.5)
		ContainerTop.BrickColor = BrickColor.new("Really red")
		local Mesh = Instance.new("SpecialMesh", ContainerTop)
		Mesh.MeshType = "Sphere"
		WeldPos(Base, ContainerTop, 1.5, 4.25, 1.5)
		local ContainerTop = ContainerTop:Clone()
		ContainerTop.Parent = TeslaCoil
		WeldPos(Base, ContainerTop, -1.5, 4.25, 1.5)
		local ContainerTop = ContainerTop:Clone()
		ContainerTop.Parent = TeslaCoil
		WeldPos(Base, ContainerTop, -1.5, 4.25, -1.5)
		local ContainerTop = ContainerTop:Clone()
		ContainerTop.Parent = TeslaCoil
		WeldPos(Base, ContainerTop, 1.5, 4.25, -1.5)
		local Pole = Body:Clone()
		Pole.Parent = TeslaCoil
		Pole.Name = "Pole"
		Pole.Size = Vector3.new(1, 6, 1)
		WeldPos(Body, Pole, 0, 5.5, 0)
		local Coil = Body:Clone()
		Coil.Parent = TeslaCoil
		Coil.Name = "Coil"
		Coil.Size = Vector3.new(7, 0.5, 7)
		local Mesh = Instance.new("SpecialMesh", Coil)
		Mesh.MeshType = "Sphere"
		WeldPos(Pole, Coil, 0, -2.5, 0)
		local Coil = Coil:Clone()
		Coil.Parent = TeslaCoil
		Coil.Size = Vector3.new(6, 0.5, 6)
		WeldPos(Pole, Coil, 0, -1.5, 0)
		local Coil = Coil:Clone()
		Coil.Parent = TeslaCoil
		Coil.Size = Vector3.new(5, 0.5, 5)
		WeldPos(Pole, Coil, 0, -0.5, 0)
		local Coil = Coil:Clone()
		Coil.Parent = TeslaCoil
		Coil.Size = Vector3.new(4, 0.4, 4)
		WeldPos(Pole, Coil, 0, 0.5, 0)
		local Coil = Coil:Clone()
		Coil.Parent = TeslaCoil
		Coil.Size = Vector3.new(3, 0.3, 3)
		WeldPos(Pole, Coil, 0, 1.5, 0)
		local Coil = Coil:Clone()
		Coil.Parent = TeslaCoil
		Coil.Size = Vector3.new(2, 0.2, 2)
		WeldPos(Pole, Coil, 0, 2.25, 0)
		local CoilTop = Coil:Clone()
		CoilTop.Parent = TeslaCoil
		CoilTop.Size = Vector3.new(2, 2, 2)
		WeldPos(Pole, CoilTop, 0, 3.5, 0)
		TeslaCoil.Parent = Workspace
		TeslaCoil:MoveTo(Position == nil and Vector3.new(math.random(-50, 50), 0, math.random(-50, 50)) or Position)
		coroutine.wrap(function()
			local OldPos = Pole.CFrame
			local NewPos = nil
			while TeslaCoil.Parent ~= nil do
				if Pole:FindFirstChild("AutoWeld") == nil then
					Button.BrickColor = BrickColor.new("Really black")
				elseif Activated == true then
					for _, Part in pairs(GetRecursiveChildren(Workspace, "BasePart", 3)) do
						if (function()
							if Part.Parent == nil then
								return false
							end
							if Part:IsDescendantOf(TeslaCoil) or Part.Parent.Name == "Tesla Coil" or Part.Name == "Tesla Coil Arc" then
								return false
							end
							for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
								if PlayerList.Character ~= nil then
									if Part:IsDescendantOf(PlayerList.Character) then
										for i = 1, #Whitelist do
											if PlayerList.userId == tonumber(Whitelist[i]) then
												return false
											elseif Whitelist[i]:sub(0, 7) == "friend:" then
												if PlayerList:IsFriendsWith(tonumber(Whitelist[i]:sub(8))) then
													return false
												end
											elseif Whitelist[i]:sub(0, 11) == "bestfriend:" then
												if PlayerList:IsBestFriendsWith(tonumber(Whitelist[i]:sub(12))) then
													return false
												end
											elseif Whitelist[i]:sub(0, 6) == "group:" then
												if PlayerList:IsInGroup(tonumber(Whitelist[i]:sub(7))) then
													return false
												end
											end
										end
									end
								end
							end
							return true
						end)() then
							local DestPos = Part.CFrame * CFrame.new(math.random(-Part.Size.x * 1000, Part.Size.x * 1000) / 2000, math.random(-Part.Size.y * 1000, Part.Size.y * 1000) / 2000, math.random(-Part.Size.z * 1000, Part.Size.z * 1000) / 2000)
							if (Pole.Position - DestPos.p).magnitude < 50 and math.random(1, 50) == 1 then
								local OldPosTemp = OldPos
								local OldPos2 = nil
								local NewPos2 = nil
								for i = (Pole.Position - DestPos.p).magnitude, 0, -Resources[Format].Arc.Step do
									if i <= Resources[Format].Arc.Step then i = 0 end
									if OldPos2 == nil then
										OldPos2 = OldPosTemp
									else
										OldPos2 = NewPos2
									end
									NewPos2 = CFrame.new(DestPos.p) * CFrame.new((OldPosTemp.p - DestPos.p).unit * i)
									if i > 0 then
										NewPos2 = NewPos2 * CFrame.new(math.random(-250, 250) / 100, math.random(-250, 250) / 100, math.random(-250, 250) / 100)
									end
									local Arc = Resources[Format].Arc.New()
									Arc.Size = Vector3.new(0.3, 0.3, (OldPos2.p - NewPos2.p).magnitude)
									Arc.CFrame = CFrame.new(NewPos2.p + ((OldPos2.p - NewPos2.p) / 2), NewPos2.p)
									Resources[Format].Arc.Destroy(Arc)
								end
								if Part.Parent:FindFirstChild("Humanoid") ~= nil then
									Part.Parent.Humanoid:TakeDamage(math.random(5, 25))
								end
							end
						end
					end
					for i = 1, math.random(-1, 2) do
						if NewPos == nil then
							OldPos = Pole.CFrame
						else
							OldPos = NewPos
						end
						NewPos = Pole.CFrame * CFrame.new(math.random(-250, 250) / 100, math.random(-300, 400) / 100, math.random(-250, 250) / 100)
						local Arc = Resources[Format].Arc.New()
						Arc.Size = Vector3.new(0.2, 0.2, (OldPos.p - NewPos.p).magnitude)
						Arc.CFrame = CFrame.new(NewPos.p + ((OldPos.p - NewPos.p) / 2), NewPos.p)
						Resources[Format].Arc.Destroy(Arc)
					end
					if math.random(1, 5) == 1 then
						local Sound = Instance.new("Sound", Pole)
						Sound.SoundId = "http://www.roblox.com/Asset/?id=2974249"
						Sound.Pitch = math.random(50, 200) / 100
						Sound.Volume = math.random(100, 250) / 1000
						Sound.PlayOnRemove = true
						coroutine.wrap(function() wait() Sound:Remove() end)()
					end
				end
				wait(0.05)
			end
		end)()
		return TeslaCoil
	end
end


_G.MakeTurret("Tesla Coil", Vector3.new(100, 0, 0))
_G.MakeTurret("Tesla Coil", Vector3.new(0, 0, 100))
_G.MakeTurret("Tesla Coil", Vector3.new(-100, 0, 0))
_G.MakeTurret("Tesla Coil", Vector3.new(0, 0, -100))