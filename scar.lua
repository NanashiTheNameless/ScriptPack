--hl/https://code.stypi.com/raw/o9HiV43MDF2NKQmslqJNSCcD
t=Instance.new("Tool", game.Players.LocalPlayer.Backpack)
t.Grip=CFrame.Angles(0, -math.pi/2, 0)*CFrame.new(0.4, -0.4, 0.7)
t.Name="Gun"

s=Instance.new("Sound")
s.SoundId='rbxassetid://132373615'
s.Pitch=0.9
s.Volume=1

local handle
do
	CFI=(function() --de moduled by grub
		-- Optimized CFrame interpolator module ~ by Stravant
		-- Based off of code by Treyreynolds posted on the Roblox Developer Forum
		
		local fromAxisAngle = CFrame.fromAxisAngle
		local components = CFrame.new().components
		local inverse = CFrame.new().inverse
		local v3 = Vector3.new
		local acos = math.acos
		local sqrt = math.sqrt
		local invroot2 = 1/math.sqrt(2) -- grub: I love how he defines a shorthand for sqrt and then doesn't use it next line
		
		return function(c0, c1) 
			-- (CFrame from, CFrame to) -> (float theta, (float fraction -> CFrame between))
			-- The expanded matrix
			local _, _, _, xx, yx, zx, 
			xy, yy, zy, 
			xz, yz, zz = components(inverse(c0)*c1)
			
			-- The cos-theta of the axisAngles from 
			local cosTheta = (xx + yy + zz - 1)/2
			
			-- Rotation axis
			local rotationAxis = v3(yz-zy, zx-xz, xy-yx)
			
			-- The position to tween through
			local positionDelta = (c1.p - c0.p)
			
			-- Theta
			local theta;			
			
			-- Catch degenerate cases
			if cosTheta == 0 then
				-- Case exact same rotation, just interpolator over the position
				return 0, function(t)
					return c0 + positionDelta*t
				end	
			elseif cosTheta >= 0.999 then
				-- Case very similar rotations, just lineraly interpolate, as it is a good 
				-- approximation. At this small angle we can't reliably find a rotation axis
				-- for some values even if the rotation matrix would still be accurate.
				local startPos = c0.p
				local _, _, _, xx0, yx0, zx0, 
				xy0, yy0, zy0, 
				xz0, yz0, zz0 = components(c0)
				local _, _, _, xx1, yx1, zx1, 
				xy1, yy1, zy1, 
				xz1, yz1, zz1 = components(c1)
				return acos(cosTheta), function(t)
					local a = 1 - t
					return CFrame.new(0, 0, 0, xx0*a+xx1*t, yx0*a+yx1*t, zx0*a+zx1*t,
					xy0*a+xy1*t, yy0*a+yy1*t, zy0*a+zy1*t,
					xz0*a+xz1*t, yz0*a+yz1*t, zz0*a+zz1*t) + 
					(startPos + positionDelta*t)
				end
			elseif cosTheta <= -0.9999 then
				-- Case exactly opposite rotations, disambiguate
				theta = math.pi
				xx = (xx + 1) / 2
				yy = (yy + 1) / 2
				zz = (zz + 1) / 2
				if xx > yy and xx > zz then
					if xx < 0.0001 then
						rotationAxis = v3(0, invroot2, invroot2)
					else
						local x = sqrt(xx)
						xy = (xy + yx) / 4
						xz = (xz + zx) / 4
						rotationAxis = v3(x, xy/x, xz/x)
					end
				elseif yy > zz then
					if yy < 0.0001 then
						rotationAxis = v3(invroot2, 0, invroot2)
					else
						local y = sqrt(yy)
						xy = (xy + yx) / 4
						yz = (yz + zy) / 4
						rotationAxis = v3(xy/y, y, yz/y)
					end	
				else
					if zz < 0.0001 then
						rotationAxis = v3(invroot2, invroot2, 0)
					else
						local z = sqrt(zz)
						xz = (xz + zx) / 4
						yz = (yz + zy) / 4
						rotationAxis = v3(xz/z, yz/z, z)
					end
				end
			else
				-- Normal case, get theta from cosTheta
				theta = acos(cosTheta)
			end
			
			-- Return the interpolator
			return theta, function(t)
				return c0*fromAxisAngle(rotationAxis, theta*t) + positionDelta*t
			end
		end
		
	end)()
	
	TIMELERP=function(c0, c1, t, func, yield, stopperEnv)
		local theta,lerper=CFI(c0, c1)
		print(math.deg(theta))
		local start=tick()
		local goal=tick()+t
		local con
		con=game:GetService("RunService").RenderStepped:connect(function()
			
			if tick()>=goal or (type(stopperEnv)=="string" and getfenv(0)[stopperEnv]==true) then
				con:disconnect()
			else
				coroutine.wrap(func)(lerper((tick()-start)/t))
			end
		end)
		if yield==true then
			for i=0, t, 0.03 do
				if getfenv(0)[stopperEnv]==false then
					wait(0.03)
				else 
					break
				end
			end
		else
			return con
		end
		
	end
	
end
do
	
	local function Create(ty)
		return function(data)
			local cf
			local obj = Instance.new(ty)
			for k, v in pairs(data) do
				if type(k) == 'number' then
					v.Parent = obj
				else
					if k~="CFrame" or not handle then
						obj[k] = v
					else
						cf=v
					end
				end
			end
			
			if handle and cf and obj:IsA("BasePart") and obj.Name~="Handle" then
				obj.Anchored=false
				obj.CanCollide=false
				obj.Parent=t
				
				local w=Instance.new("Weld", handle)			
				w.Part0=handle
				w.Part1=obj
				w.C0=CFrame.new(28.0923157, 1.13501048, -19.0281715, 1, 0, 0, 0, 1, 0, 0, 0, 1):inverse()*cf
				local oj=Instance.new("ObjectValue", obj)
				oj.Value=w
				oj.Name="WeldReference"
			end
			return obj
		end
	end
	handle=Create'Part'{
		Parent=t;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		Transparency = 1;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(5.19381905, 1.83324528, 0.429531336);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.0923157, 1.13501048, -19.0281715, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		Name = "Handle";
		--Position = Vector3;
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.686743796, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.3347511, 1.37546921, -18.9873962, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.515058458, 0.515058815);
		};
	};
	
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.223191813, 0.200000003, 0.463553071);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(25.5792618, 0.851825714, -19.0474834, -2.46411069e-008, -1, 4.61941056e-007, 2.58630678e-007, -4.61941056e-007, -1, 1, -2.46408352e-008, 2.58630791e-007);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.214607641, 1);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(1003);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(30.6053715, 1.37546921, -19.0474834, 0, 1, 0, -1, 0, 0, 0, 0, 1);
		--Position = Vector3;
		Create'CylinderMesh'{
			Offset = Vector3.new(0, 0.00100000005, 0);
			Scale = Vector3.new(1.23614097, 0.343372226, 0.549396276);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 1.45933187, 0.223192215);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.9100418, 1.37546921, -19.0474834, 0, 1, 0, -1, 0, 0, 0, 0, 1);
		--Position = Vector3;
		Create'CylinderMesh'{
			Scale = Vector3.new(0.686744988, 1, 1);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.240360543, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.2619095, 1.81326151, -19.0474834, 1, 1.63915189e-007, -1.86275209e-008, -1.63915203e-007, 1, -6.13577384e-008, 1.86275084e-008, 6.13577456e-008, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.38629517, 1, 0.515058875);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.283371, 1.4999429, -19.0474834, 0, 1, 0, -1, 0, 0, 0, 0, 1);
		--Position = Vector3;
		Create'CylinderMesh'{
			Scale = Vector3.new(0.987195432, 0.600901365, 0.858431697);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.2619114, 1.58149493, -19.1462059, -6.39764112e-015, -3.72550382e-008, 1, 1, -1.22715477e-007, 1.82587142e-015, 1.22715477e-007, 1, 3.72550382e-008);
		--Position = Vector3;
		Create'CylinderMesh'{
			Scale = Vector3.new(0.257529825, 0.12876454, 0.386294276);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.2619095, 1.5729109, -18.9487667, -6.39764112e-015, -3.72550382e-008, 1, 1, -1.22715477e-007, 1.82587142e-015, 1.22715477e-007, 1, 3.72550382e-008);
		--Position = Vector3;
		Create'CylinderMesh'{
			Scale = Vector3.new(0.257529825, 0.12876454, 0.386294276);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.1501904, 1.70592546, -18.9573517, -0.999999702, 0, 0, 0, 0.999999404, 0, 0, 0, -0.999999702);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.0385933, 1.70592546, -18.9573517, -0.999999702, 0, 0, 0, 0.999999404, 0, 0, 0, -0.999999702);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.472136557, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.2360306, 1.70596862, -18.9573517, -0.999999702, 0, 0, 0, 0.999999404, 0, 0, 0, -0.999999702);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.9443073, 1.70595741, -18.9573517, -0.999996483, 0, 0, 0, 0.999992967, 0, 0, 0, -0.999996483);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.7726212, 1.70595741, -18.9573517, -0.999996483, 0, 0, 0, 0.999992967, 0, 0, 0, -0.999996483);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.7726212, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.9443073, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.9443073, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.137455, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.429215014, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.1374531, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.429215014, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.1374531, 1.70595741, -18.9573517, -0.999996483, 0, 0, 0, 0.999992967, 0, 0, 0, -0.999996483);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.429215014, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.2575645, 1.70595741, -18.9573517, -0.999996483, 0, 0, 0, 0.999992967, 0, 0, 0, -0.999996483);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.2575626, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.686779, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.686779, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.6009369, 1.70595741, -18.9573517, -0.999996483, 0, 0, 0, 0.999992967, 0, 0, 0, -0.999996483);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.686779, 1.70595741, -18.9573517, -0.999996483, 0, 0, 0, 0.999992967, 0, 0, 0, -0.999996483);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.6009369, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.6009369, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.8584633, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.8584633, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.8584633, 1.70595741, -18.9573517, -0.999996483, 0, 0, 0, 0.999992967, 0, 0, 0, -0.999996483);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.0301514, 1.70595741, -18.9573517, -0.999996483, 0, 0, 0, 0.999992967, 0, 0, 0, -0.999996483);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.0301514, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.4292488, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.4292488, 1.70595741, -18.9573517, -0.999996483, 0, 0, 0, 0.999992967, 0, 0, 0, -0.999996483);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.9141922, 1.70595741, -18.9573517, -0.999996006, 0, 0, 0, 0.999992013, 0, 0, 0, -0.999996006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.9141922, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.1717205, 1.70595741, -18.9573517, -0.999996483, 0, 0, 0, 0.999992967, 0, 0, 0, -0.999996483);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.1717205, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.656662, 1.70595741, -18.9573517, -0.999995887, 0, 0, 0, 0.999991775, 0, 0, 0, -0.999995887);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.742506, 1.70595741, -18.9573517, -0.999996483, 0, 0, 0, 0.999992967, 0, 0, 0, -0.999996483);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.3991337, 1.70595908, -18.9573517, -0.999998271, 0, 0, 0, 0.999996543, 0, 0, 0, -0.999998271);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.4849777, 1.70595908, -18.9573517, -0.999996841, 0, 0, 0, 0.999993682, 0, 0, 0, -0.999996841);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.3132896, 1.70595574, -18.9573517, -0.999999702, 0, 0, 0, 0.999999404, 0, 0, 0, -0.999999702);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.5708199, 1.70595741, -18.9573517, -0.999995887, 0, 0, 0, 0.999991775, 0, 0, 0, -0.999995887);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.0858784, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.0858784, 1.70595741, -18.9573517, -0.999996483, 0, 0, 0, 0.999992967, 0, 0, 0, -0.999996483);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.257529169, 0.223192215);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.3520622, 1.37546921, -19.0474834, 0, 1, 0, -1, 0, 0, 0, 0, 1);
		--Position = Vector3;
		Create'CylinderMesh'{
			Scale = Vector3.new(0.858430922, 1, 1);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.0000343, 1.70595741, -18.9573517, -0.999996006, 0, 0, 0, 0.999992013, 0, 0, 0, -0.999996006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.0000343, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.5150928, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.5150928, 1.70595741, -18.9573517, -0.999996483, 0, 0, 0, 0.999992967, 0, 0, 0, -0.999996483);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.8283482, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.0301514, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.8283501, 1.70595741, -18.9573517, -0.999996006, 0, 0, 0, 0.999992013, 0, 0, 0, -0.999996006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.7425041, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.7726231, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.3434086, 1.70595741, -18.9573517, -0.999996483, 0, 0, 0, 0.999992967, 0, 0, 0, -0.999996483);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.3434067, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.1373138, 1.74458456, -18.9358883, -0.999999702, -5.96046448e-008, 0, 0, 0, 1, -5.96046448e-008, 0.999999702, 0);
		--Position = Vector3;
		Create'CylinderMesh'{
			Scale = Vector3.new(0.515058935, 0.257529169, 0.515058935);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.2018204, 1.50423563, -19.0474834, 0, 1, 0, -1, 0, 0, 0, 0, 1);
		--Position = Vector3;
		Create'CylinderMesh'{
			Scale = Vector3.new(0.429215908, 0.214607716, 0.772588491);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.2360306, 1.70596862, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.2360306, 1.70596862, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.1501904, 1.70592546, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.0385933, 1.70592546, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.472136557, 0.214607656, 0.686745167);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.1501904, 1.70592546, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.0385933, 1.7059238, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.472136557, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(2.18899655, 0.200000003, 0.223192185);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.0858784, 1.58149338, -19.0474834, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.343372136, 1);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.9013863, 1.19949305, -19.0474834, 0.999999762, 0, 0, 0, -0.999999464, 0, 0, 0, -0.999999642);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.094532, 1.19949305, -19.0474834, 0.999999762, 0, 0, 0, -0.999999464, 0, 0, 0, -0.999999642);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.429215014, 0.214607656, 0.686745167);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.9872284, 1.19949305, -19.0474834, 0.999999762, 0, 0, 0, -0.999999464, 0, 0, 0, -0.999999642);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.9872284, 1.19948983, -18.9573517, -0.999993801, -2.10731592e-008, 5.08757694e-008, 2.98023188e-008, 1.25169754e-006, 0.999994755, 3.85339938e-008, 0.999996006, -1.25169754e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.0945339, 1.19948983, -18.9573517, -0.999993801, -2.10731592e-008, 5.08757694e-008, 2.98023188e-008, 1.25169754e-006, 0.999994755, 3.85339938e-008, 0.999996006, -1.25169754e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.429215014, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.2575645, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.9013863, 1.19948983, -18.9573517, -0.999993801, -2.10731592e-008, 5.08757694e-008, 2.98023188e-008, 1.25169754e-006, 0.999994755, 3.85339938e-008, 0.999996006, -1.25169754e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.9872284, 1.19948983, -19.1376209, -0.999996006, 0, 0, 0, -0.999991953, 0, 0, 0, 0.999996006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.094532, 1.19948983, -19.1376209, -0.999996006, 0, 0, 0, -0.999991953, 0, 0, 0, 0.999996006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.429215014, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.9013863, 1.19948983, -19.1376209, -0.999996006, 0, 0, 0, -0.999991953, 0, 0, 0, 0.999996006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.8155422, 1.19948983, -19.1376209, -0.999996006, 0, 0, 0, -0.999991953, 0, 0, 0, 0.999996006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.4292488, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.9141922, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(2.18899655, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.0858784, 1.6372838, -19.0474834, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.214607567, 0.686745167);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.3991337, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.3434086, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.656662, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.1717205, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.0858784, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.6566639, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.3132896, 1.70595574, -19.1376228, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.4849777, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.3991337, 1.70596051, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.3132896, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.4849777, 1.70595908, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.5708199, 1.70595574, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.5708199, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.0000343, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(2.18899655, 0.200000003, 0.223192185);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.0858784, 1.67161977, -19.0474834, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.12876451, 1);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.5150928, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.8283501, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.742506, 1.70595741, -19.1376209, -0.999993801, -2.10731592e-008, 5.08757694e-008, -2.98023224e-008, -1.24297094e-006, -0.999994755, -3.85340009e-008, -0.999996066, 1.24297253e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.643858, 1.19949305, -19.0474834, 0.999999762, 0, 0, 0, -0.999999464, 0, 0, 0, -0.999999642);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.3648663, 1.19949305, -19.0474834, 0.999999762, 0, 0, 0, -0.999999464, 0, 0, 0, -0.999999642);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.429215103, 0.214607656, 0.686745167);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.4721718, 1.19949305, -19.0474834, 0.999999762, 0, 0, 0, -0.999999464, 0, 0, 0, -0.999999642);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.7297001, 1.19949305, -19.0474834, 0.999999762, 0, 0, 0, -0.999999464, 0, 0, 0, -0.999999642);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.5580139, 1.19949305, -19.0474834, 0.999999762, 0, 0, 0, -0.999999464, 0, 0, 0, -0.999999642);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.5580139, 1.19948983, -18.9573517, -0.999993801, -2.10731592e-008, 5.08757694e-008, 2.98023188e-008, 1.25169754e-006, 0.999994755, 3.85339938e-008, 0.999996006, -1.25169754e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.643858, 1.19948983, -18.9573517, -0.999993801, -2.10731592e-008, 5.08757694e-008, 2.98023188e-008, 1.25169754e-006, 0.999994755, 3.85339938e-008, 0.999996006, -1.25169754e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.4721718, 1.19948983, -18.9573517, -0.999993801, -2.10731592e-008, 5.08757694e-008, 2.98023188e-008, 1.25169754e-006, 0.999994755, 3.85339938e-008, 0.999996006, -1.25169754e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.8155441, 1.19948983, -18.9573517, -0.999993801, -2.10731592e-008, 5.08757694e-008, 2.98023188e-008, 1.25169754e-006, 0.999994755, 3.85339938e-008, 0.999996006, -1.25169754e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.7297001, 1.19948983, -18.9573517, -0.999993801, -2.10731592e-008, 5.08757694e-008, 2.98023188e-008, 1.25169754e-006, 0.999994755, 3.85339938e-008, 0.999996006, -1.25169754e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.8155422, 1.19949305, -19.0474834, 0.999999762, 0, 0, 0, -0.999999464, 0, 0, 0, -0.999999642);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 0.214607656, 0.686745167);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.3648682, 1.19948983, -18.9573517, -0.999993801, -2.10731592e-008, 5.08757694e-008, 2.98023188e-008, 1.25169754e-006, 0.999994755, 3.85339938e-008, 0.999996006, -1.25169754e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.429215014, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.7297001, 1.19948983, -19.1376209, -0.999996006, 0, 0, 0, -0.999991953, 0, 0, 0, 0.999996006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.4721718, 1.19948983, -19.1376209, -0.999996006, 0, 0, 0, -0.999991953, 0, 0, 0, 0.999996006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.5580139, 1.19948983, -19.1376209, -0.999996006, 0, 0, 0, -0.999991953, 0, 0, 0, 0.999996006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.643858, 1.19948983, -19.1376209, -0.999996006, 0, 0, 0, -0.999991953, 0, 0, 0, 0.999996006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.815508485, 0.200000003, 0.223192215);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.7297001, 1.23382914, -19.0474834, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.12876451, 1);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.815508485, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.7297001, 1.26816356, -19.0474834, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.214607567, 0.686745167);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.2618561, 1.37546921, -18.9873962, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.171686023, 0.515058458, 0.515058815);
		};
	};
	bolty=Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.6995831, 1.37546921, -18.8972607, 0, 0.999999046, 0, 0.999999046, 0, 0, 0, 0, -0.999998093);
		Name = "bolty";
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.515057981, 0.214607641, 0.72966677);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.3648682, 1.19948983, -19.1376209, -0.999996006, 0, 0, 0, -0.999991953, 0, 0, 0, 0.999996006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.429215014, 0.214607641, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(1.28764474, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.6352005, 1.48706448, -18.9916878, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.600901484, 0.557980478);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.223191813, 0.626654267, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(26.6780548, 1.64586782, -19.0474854, 4.77906603e-008, -0.999994338, -9.06791001e-007, -7.42326733e-008, 1.01325645e-006, -0.999992609, 0.999993861, -7.0422117e-009, -7.42340944e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 1, 0.987196326);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.901351631, 0.257529169, 0.223192185);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.7297001, 1.4183892, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.223191813, 0.257529169, 0.566564858);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(26.0728588, 0.903334498, -19.0474834, 6.05841279e-008, 0.99999398, -1.79874846e-007, 5.30342215e-009, 1.86263023e-007, 0.999992251, 0.999993682, -1.09388463e-008, -5.30369526e-009);
		--Position = Vector3;
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.291866302, 0.92710495, 0.223192185);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(25.7981625, 1.08360338, -19.0474834, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.566564143, 0.223192185);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.0300083, 0.90333128, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.472136557, 1, 1);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.223191813, 0.257529169, 0.566564858);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.2059898, 0.903332889, -19.0474834, -1.95530543e-008, 1, -1.19208823e-006, 7.73106112e-009, 1.19208835e-006, 1, 1, 1.95530454e-008, -7.73108422e-009);
		--Position = Vector3;
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.223191813, 0.257529169, 0.566564858);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(26.8540325, 0.90332973, -19.0474854, 4.77906603e-008, -0.999994338, -9.06791001e-007, -7.42326733e-008, 1.01325645e-006, -0.999992609, 0.999993861, -7.0422117e-009, -7.42340944e-008);
		--Position = Vector3;
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.93568927, 0.223192185);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(25.6264763, 1.07931066, -19.0474834, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.25752902, 1, 1);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.20602335, 0.223192185);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.7768421, 1.08360183, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.214607507, 1, 1);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.583732486, 0.200000003, 0.223192185);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.5064373, 0.954838514, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.257529259, 1);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.223191813, 0.200000003, 0.463553071);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(25.5792618, 1.31537962, -19.0474834, 0, -1.00000966, -1.46238278e-007, 3.92414421e-008, -1.34649e-007, 1.00000501, -1.00000536, -1.16435686e-007, 3.92414172e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.214607641, 1);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.21460788);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.4719868, 1.13257873, -19.0346088, 7.34352454e-008, 0.866026402, -0.499997437, -5.06614015e-007, 0.499997526, 0.86602658, 0.999999702, 2.1242073e-007, 4.59251311e-007);
		Name = "Trigger";
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.214607507, 0.386293739, 1);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(1003);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.566563785, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.9614067, 1.37546921, -19.0045624, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.515058339, 0.343372583);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(1.04728472, 0.360540837, 0.223192185);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(26.4677353, 1.36688519, -19.0474834, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.480720788, 0.257529169, 0.223192185);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.0386658, 1.05784976, -19.0474834, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(1.28764474, 0.360540837, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.6352005, 1.36688519, -19.0989914, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 1, 0.600901961);
		};
	};
	mp1=Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(18);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.437799305, 0.257529169, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.0687103, 0.817488074, -19.0474834, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813, 0, 0, 0, 1);
		Name = "MagPart1";
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 1, 0.944274604);
		};
	};
	mp2=Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(18);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.437799305, 0.482867181, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.2010155, 0.536925256, -19.0474834, 0.866025388, -0.5, 4.43304593e-008, 0.5, 0.866025388, -1.07023183e-007, 1.51202979e-008, 1.14850025e-007, 1);
		Name = "MagPart2";
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 1, 0.944274604);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.223191813, 0.480721146, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(28.0386658, 0.886163294, -19.0474834, -1.95530543e-008, 1, -1.19208823e-006, 7.73106112e-009, 1.19208835e-006, 1, 1, 1.95530454e-008, -7.73108422e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 1, 0.429215878);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(5);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(1.28764474, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.6352005, 1.25528836, -18.9873962, 0.999999762, 0, 0, 0, 0.999999523, 0, 0, 0, 0.999999762);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.68674469, 0.515058815);
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.1373138, 1.95490146, -19.0260239, 0.999994099, -8.94038067e-007, -2.98023224e-008, 1.05795107e-006, 0.999992609, -5.51159474e-008, 1.63912773e-007, -6.24149266e-009, 0.999993861);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.25752902, 0.300450832, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.1373138, 1.95490146, -19.0689449, -0.999994099, 1.22188317e-006, 2.98023224e-008, 1.05796676e-006, 0.999992609, -5.51148105e-008, -1.63912773e-007, -1.16472108e-007, -0.999993861);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.257528335, 0.300450832, 0.21460788);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.223192185);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.1373138, 1.8862263, -19.0474834, -0.999999583, 0, -7.4505806e-008, 0, -0.99999994, 0, -7.4505806e-008, 0, 0.999999583);
		--Position = Vector3;
		Create'CylinderMesh'{
			Scale = Vector3.new(0.515058935, 0.386293739, 1);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.1373158, 1.75317025, -19.1590805, -0.999999702, -5.96046448e-008, 0, 0, 0, 1, -5.96046448e-008, 0.999999702, 0);
		--Position = Vector3;
		Create'CylinderMesh'{
			Scale = Vector3.new(0.515058935, 0.257529169, 0.515058935);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.223192185);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.1373158, 1.79179907, -19.0474834, -0.999999464, 0, 4.47034836e-008, 0, 0.999999523, 0, -4.47034836e-008, 0, -0.999999464);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.515058339, 0.557979882, 1);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.223192006, 0.200000003, 0.240360826);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(27.1974049, 1.69308066, -19.0474834, -0.999999464, 0, 4.47034836e-008, 0, 0.999999523, 0, -4.47034836e-008, 0, -0.999999464);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.429215282, 1);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.2619095, 1.60295248, -19.0474834, 1, 1.63915189e-007, -1.86275209e-008, -1.63915203e-007, 1, -6.13577384e-008, 1.86275084e-008, 6.13577456e-008, 1);
		Name = "Center";
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.38629517, 0.901351988, 0.858431518);
		};
	};
	Create'Part'{
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(29.2619095, 1.96777833, -19.0474834, 0, 0, 1, 0, 1, 0, -1, 0, 0);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.107303753, 0.107303813, 0.429215759);
			MeshId = "http://www.roblox.com/asset/?id=3270017";
			MeshType = Enum.MeshType.FileMesh;
		};
	};
	
end

stopreload=false
local toggle=false
s.Parent=handle
local reload=false
local char, player, rarm, larm, rw, lw, torso, rs, ls, humanoid, hrp, lleg, rleg, rj, rh, lh, rlw, llw = nil, nil, nil, nil, Instance.new("Weld"), Instance.new("Weld"), nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, Instance.new("Weld"), Instance.new("Weld")
local oldpar=t.Parent
t.Parent=workspace
mweld21=(mp1.CFrame:inverse()*mp2.CFrame)
mweld1h=(mp1.WeldReference.Value.C0)
mweld=nil
local mp1c=mp1:Clone()
local mp2c=mp2:Clone()
function createMag()
	local m1=mp1c:Clone()
	local m2=mp2c:Clone()
	m1.Parent=char
	m2.Parent=char
	local w=Instance.new("Weld", m1)
	w.Part0=m1
	w.Part1=m2
	w.C0=mweld21
	
	local hweld=Instance.new("Weld", handle)
	hweld.Part0=handle
	hweld.Part1=m1
	hweld.C0=mweld1h
	
	mp1=m1
	mp2=m2
	mweld=hweld
end
mp1.WeldReference.Value:Destroy()
mp1:Destroy()
mp2:Destroy()
oldws=0
t.Parent=oldpar
math.randomseed(tick())
sprintstop=false
mag=30
magsize=30
rpm=1600
t.Equipped:connect(function(m)
	
	char=game.Players.LocalPlayer.Character
	do
		local hat, handle, hmesh=Instance.new("Hat"), Instance.new("Part"), Instance.new("SpecialMesh");
		handle.Parent=hat;
		hmesh.Parent=handle;
		handle.Name="Handle";
		hmesh.Scale=Vector3.new(1.04, 1, 1.05);
		hmesh.MeshId="http://www.roblox.com/asset/?id=28200958";
		hmesh.TextureId="http://www.roblox.com/asset/?id=28200947";
		hat.AttachmentPos = Vector3.new(0, 0.4, 0);
		for _, child in pairs(char:GetChildren()) do
			if child:IsA("Hat") then
				child:Destroy();
			end
		end
		hat.Parent=char
	end
	createMag()	
	
	player=game.Players.LocalPlayer
	torso=char.Torso
	rarm=char["Right Arm"]
	larm=char["Left Arm"]
	rleg=char["Right Leg"]
	lleg=char["Left Leg"]
	hrp=char["HumanoidRootPart"]
	rs=torso["Right Shoulder"]
	ls=torso["Left Shoulder"]
	rh=torso["Right Hip"]
	lh=torso["Left Hip"]
	rj=hrp["RootJoint"]
	humanoid=char.Humanoid
	if humanoid.Health>0 then
		rs.Part1=nil
		ls.Part1=nil
		rw.Part1=rarm
		lw.Part1=larm
		rw.Part0=torso
		lw.Part0=torso
		rw.Parent=torso
		lw.Parent=torso
		
		rw.C1=CFrame.new(0, 0.5, 0)	
		rw.C0=CFrame.new(1.5, 0.5, 0)
		
		lw.C1=CFrame.new(0, 0.5, 0)		
		lw.C0=CFrame.new(-1.5, 0.5, 0)
		
		rw.C0=rw.C0*CFrame.new(-0.2, 0, 0.2)*CFrame.Angles(math.pi/2, 0, 0) 
		lw.C0=lw.C0*CFrame.new(1.2, 0, -0.56)*CFrame.Angles(math.pi/2, 0, math.pi/7)
		m.KeyDown:connect(function(k)
			if k:lower()=="c" then
				if toggle then
					rj.C0=CFrame.new(0, 0, 0)*CFrame.Angles(math.pi/2, math.pi, 0 )
					rlw.Parent=nil
					llw.Parent=nil
					rh.Part1=rleg
					lh.Part1=lleg
					humanoid.CameraOffset=Vector3.new(0, 0, 0)
				elseif not toggle then
					rj.C0=CFrame.new(0, -1, 0)*CFrame.Angles(math.pi/2, math.pi, 0 )
					rh.Part1=nil
					lh.Part1=nil
					rlw.Parent=torso
					llw.Parent=torso
					rlw.Part0=torso
					llw.Part0=torso
					rlw.Part1=rleg
					llw.Part1=lleg
					
					rlw.C0=CFrame.new(.5,-.5,-1)
					llw.C0=CFrame.new(-.5,-1.5,0)*CFrame.Angles(-(math.pi/2), 0, 0)
					
					rlw.C1=CFrame.new(0,.5,0)
					llw.C1=CFrame.new(0,.5,0)
					
					humanoid.CameraOffset=Vector3.new(0, -1, 0)
				end
				toggle=not toggle
			elseif k:lower()=="r" then -- reload
				if not reload and not sprinting then
					reload=true
					stopreload=false
					local norm=CFrame.new(-1.5, 0.5, 0)
					local up=norm*CFrame.new(1.2, 0, -0.56)*CFrame.Angles(math.pi/2, 0, math.pi/7)
					local down=norm
					local handcf=larm.CFrame:inverse()*mp1.CFrame
					game:GetService("Debris"):AddItem(mp2, 5.1)		
					game:GetService("Debris"):AddItem(mp1, 5.1)
					mweld:Destroy()
					
					coroutine.wrap(function()
						local mp1=mp1 --old version
						local mp2=mp2 -- old version
						mp1.CanCollide=false
						mp2.CanCollide=false
						mp1.RotVelocity=Vector3.new(math.random(1, 10), math.random(1, 10), math.random(1, 10))
						mp1.Elasticity=1
						mp2.Elasticity=1
						wait()
						mp1.CanCollide=true
						mp2.CanCollide=true				
						wait(4)
						for i=0, 1, 0.1 do
							mp1.Transparency=i
							mp2.Transparency=i
							wait(.1)
						end
					end)()
					mp1=nil
					mp2=nil
					TIMELERP(up, down, .2, function(lerp)
						lw.C0=lerp
					end, true, "stopreload")
					wait(.5)
					local oldC0
					if not stopreload then
						createMag()
						oldC0=mweld.C0
						mweld.Parent=larm
						mweld.Part0=larm
						mweld.C0=handcf
					end
					
					TIMELERP(down, up, .2, function(lerp)
						lw.C0=lerp
					end, true, "stopreload")
					
					if not stopreload then
						mweld.C0=oldC0
						mweld.Parent=handle
						mweld.Part0=handle
						reload=false
						mag=magsize
					end
					
				end
			elseif k=="0" and not reload and not toggle then -- shift
				sprinting=true
				sprintstop=false
				print("sprint")
				oldws=humanoid.WalkSpeed
				humanoid.WalkSpeed=oldws+7
				local norm=CFrame.new(-1.5, 0.5, 0)
				local up=norm*CFrame.new(1.2, 0, -0.56)*CFrame.Angles(math.pi/2, 0, math.pi/7)
				local down=norm
				local rup=CFrame.new(1.5, 0.5, 0)
				TIMELERP(lw.C0, up*CFrame.Angles(-math.pi/3, 0, 0), 0.5, function(lerp)
					lw.C0=lerp
				end, false, "sprintstop")
				TIMELERP(rw.C0, rup*CFrame.Angles(math.pi/4, math.pi/6, 0), 0.5, function(lerp)
					rw.C0=lerp
				end, true, "sprintstop")
				
			end
			
			
		end)
		m.KeyUp:connect(function(k)
			if k=="0" and sprinting then
				print("unsprint")
				sprintstop=true
				
				humanoid.WalkSpeed=oldws
				local norm=CFrame.new(-1.5, 0.5, 0)
				local up=norm*CFrame.new(1.2, 0, -0.56)*CFrame.Angles(math.pi/2, 0, math.pi/7)
				local down=norm
				local rup=CFrame.new(1.5, 0.5, 0)
				TIMELERP(up*CFrame.Angles(-math.pi/3, 0, 0), up, 0.5, function(lerp)
					lw.C0=lerp
				end, false, "sprinting")
				TIMELERP(rup*CFrame.Angles(math.pi/4, math.pi/6, 0), rup*CFrame.new(-0.2, 0, 0.2)*CFrame.Angles(math.pi/2,0,0), 0.5, function(lerp)
					rw.C0=lerp
				end, true, "sprinting")
				sprinting=false
			end
		end)
		oldws=humanoid.WalkSpeed
		m.Button1Down:connect(function()
			coroutine.wrap(function() 
				shooting=true
				while shooting do
					if not reload and not sprinting and mag>0 then
						
						s:Play()
						local bw=bolty.WeldReference.Value
						rw.C0=rw.C0*CFrame.new(0, .1, 0)
						bw.C0=bw.C0*CFrame.new(0, .55, 0)
						wait(.005)
						rw.C0=rw.C0*CFrame.new(0, -.1, 0)
						bw.C0=bw.C0*CFrame.new(0, -.55, 0)
						local shell=Instance.new("Part", char)
						shell.FormFactor="Custom"
						shell.Size=Vector3.new(.2, .5, .2)
						
						
						shell.BrickColor=BrickColor.new("Bright yellow")
						shell.CFrame=bolty.CFrame*CFrame.new(0, .25, 0)
						shell.CanCollide=false
						shell.Velocity=CFrame.Angles(0, math.rad(-50), 0)*shell.CFrame.lookVector*10
						shell.RotVelocity=Vector3.new(0, 20, 0)
						Instance.new("CylinderMesh", shell)
						game:GetService("Debris"):AddItem(shell, 5.1)
						
						coroutine.wrap(function()
							wait()
							shell.CanCollide=true
							wait(4)
							for i=0, 1, 0.1 do
								shell.Transparency=i
								wait(.1)
							end
						end)()
						
						if m.Target then
							local hum=m.Target.Parent:FindFirstChild("Humanoid")
							if not hum then
								hum=m.Target.Parent.Parent:FindFirstChild("Humanoid")
							end
							if hum then
								local dmg=math.random(5, 20)
								for i=1, 17 do
									math.random()
								end
								hum.Health=hum.Health-dmg
								creator=Instance.new("ObjectValue", hum)
								creator.Name="creator"
								creator.Value=game.Players.LocalPlayer
								if hum.Parent:FindFirstChild("Head") then
									--	print("Head found")
									
									local h=hum.Parent:FindFirstChild("Head")
									local p=Instance.new("Part", workspace)
									p.FormFactor=Enum.FormFactor.Custom
									p.Size=Vector3.new(1, 1, 1)
									p.Anchored=true
									p.CFrame=h.CFrame+Vector3.new(0, 1, 0)
									p.Transparency=1	
									local bbg=Instance.new("BillboardGui", p)
									bbg.Adornee=p
									bbg.Size=UDim2.new(0, 50, 0, 70)
									local txt=Instance.new("TextLabel", bbg)
									txt.Size=UDim2.new(1, 0, 1, 0)
									txt.BackgroundTransparency=1
									txt.BorderSizePixel=0;
									txt.Text=dmg
									txt.TextScaled=true
									txt.TextColor3=Color3.new(1, 0.2, 0.2)
									txt.TextStrokeColor3=Color3.new(0, 0, 0)
									txt.TextStrokeTransparency=0.2
									
									coroutine.wrap(function() for i=1, 40 do
										p.CFrame=p.CFrame+Vector3.new(0, 0.05, 0) wait(.05)
										if i>20 then
											txt.TextTransparency=(i-20)/20
											txt.TextStrokeTransparency=0.2 + (i-20)/20
										end 
									end
									p:Destroy()
								end)()
								
								--[[ hum.PlatformStand=true
								
								
								local torso=hum.Parent:FindFirstChild("Torso")
								if torso then
									torso.RotVelocity=Vector3.new(-10, 0, 10)
								end
								wait(0.4)
								torso.RotVelocity=Vector3.new(0, 0, 0)
								hum.PlatformStand=false ]]
							end
						end 
					end
					
					
					-- pcall(m.Target.Parent.BreakJoints, m.Target.Parent)
					mag=mag-1
					--print(mag)
					
				end
				wait(60/rpm)
			end
			
		end)()
		
		
	end)
	m.Button1Up:connect(function()
		
		shooting=false
	end)
end
end)
--CFrame.new(-0.95, 0.8, 0)*CFrame.Angles(0, -math.pi/2, 0)*CFrame.new(0, 0, 1.0)

t.Unequipped:connect(function()
	shooting=false
	if reload then
		stopreload=true
		--u unequipped. nob.
	end
	sprinting=false
	reload=false
	rs.Part1=rarm
	ls.Part1=larm
	rw.Parent=nil
	rw.Part1=nil
	lw.Parent=nil
	lw.Part1=nil
	for _, v in pairs{mp1, mp2, mweld} do
		if v then v:Destroy() end	
	end
	humanoid.WalkSpeed=oldws
end)



--hl/https://code.stypi.com/raw/grubsteak/shetgun.lua