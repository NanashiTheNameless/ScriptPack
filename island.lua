local function Create(ty)
	return function(data)
		local obj = Instance.new(ty)
		for k, v in pairs(data) do
			if type(k) == 'number' then
				v.Parent = obj
			else
				obj[k] = v
			end
		end
		return obj
	end
end

island=Create'Model'{
	Name = "Island";
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(5.46976185, 37.6867409, 16.558033, -2.98023224e-008, 1.54066733e-008, -0.999999583, 2.78133676e-008, -0.999999762, -1.54066502e-008, -0.999999821, -2.78133605e-008, 7.4505806e-008);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(8.56975937, 36.0867424, 19.6580315, -2.98023224e-008, 1.54066733e-008, -0.999999583, 2.78133676e-008, -0.999999762, -1.54066502e-008, -0.999999821, -2.78133605e-008, 7.4505806e-008);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(13.1697531, 36.0867462, 19.6580353, -2.98023224e-008, 1.54066733e-008, -0.999999583, 2.78133676e-008, -0.999999762, -1.54066502e-008, -0.999999821, -2.78133605e-008, 7.4505806e-008);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(15.9472246, 39.1000023, 21.08605, 0.258818954, 0, 0.965925634, 0, 1, 0, -0.965925634, 0, 0.258818954);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(11.9000158, 39.8999977, 20.8000107, 1, 0, 0, 0, 1, 0, 0, 0, 1);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(13.0999994, 38.2999992, 22.3000069, 1, 0, 0, 0, 1, 0, 0, 0, 1);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(20.3904839, 41.2999992, 22.276619, 0.258818954, 0, 0.965925634, 0, 1, 0, -0.965925634, 0, 0.258818954);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8.80000019, 8.80000019, 8.80000019);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(3.30001307, 40.4999962, 20.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(11.3999996, 11.3999996, 11.3999996);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(8.20001221, 39.5, 17.8000031, 1, 0, 0, 0, 1, 0, 0, 0, 1);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(6.80001354, 39.7000046, 22.3000031, 1, 0, 0, 0, 1, 0, 0, 0, 1);		Shape = Enum.PartType.Ball;
	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(141);
		Material = Enum.Material.Grass;
		Size = Vector3.new(3.19999981, 2.39999962, 19.6000004);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(11.2000008, 44.4000206, 21.5999947, -1.60164326e-008, 5.9604389e-008, 0.999994934, 0.999992549, 7.56217986e-008, 1.60167559e-008, -7.56220402e-008, 0.999995828, -5.96043392e-008);	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(19.7999992, 4.59999895, 0.800000787);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(11.1779737, 43.3000145, 22.0002899, -0.992586315, -3.01996522e-007, 0.121541172, -3.13204936e-007, 0.999999881, -7.31146699e-008, -0.121541172, -1.10640116e-007, -0.992586315);	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(11.3999996, 11.3999996, 11.3999996);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(10.2021685, 35.4867439, 3.15517449, 0.965925276, 1.54066733e-008, -0.258818835, 8.7079421e-008, -0.999999762, 1.83697342e-008, -0.258818895, -2.78133605e-008, -0.965925336);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(6.68371201, 37.08675, 7.41082144, 0.965925276, 1.54066733e-008, -0.258818835, 8.7079421e-008, -0.999999762, 1.83697342e-008, -0.258818895, -2.78133605e-008, -0.965925336);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(6.96975422, 34.6867447, 11.4580364, -2.98023224e-008, 1.54066733e-008, -0.999999583, 2.78133676e-008, -0.999999762, -1.54066502e-008, -0.999999821, -2.78133605e-008, 7.4505806e-008);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(5.46975613, 36.2867432, 10.258049, -2.98023224e-008, 1.54066733e-008, -0.999999583, 2.78133676e-008, -0.999999762, -1.54066502e-008, -0.999999821, -2.78133605e-008, 7.4505806e-008);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(5.49314499, 36.0867424, 2.96756601, 0.965925276, 1.54066733e-008, -0.258818835, 8.7079421e-008, -0.999999762, 1.83697342e-008, -0.258818895, -2.78133605e-008, -0.965925336);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(18.0697498, 36.2867432, 15.0580378, -2.98023224e-008, 1.54066733e-008, -0.999999583, 2.78133676e-008, -0.999999762, -1.54066502e-008, -0.999999821, -2.78133605e-008, 7.4505806e-008);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(11.3999996, 11.3999996, 11.3999996);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(18.6039848, 37.5548515, 4.66090918, -0.933012187, -0.258818686, 0.249999732, 0.249999657, -0.965925217, -0.0669870079, 0.258818746, -7.4505806e-008, 0.965925276);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(15.6947956, 35.3061485, 8.51631355, -0.933012187, -0.258818686, 0.249999732, 0.249999657, -0.965925217, -0.0669870079, 0.258818746, -7.4505806e-008, 0.965925276);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(16.0889969, 36.155735, 10.2757797, -0.933012187, -0.258818686, 0.249999732, 0.249999657, -0.965925217, -0.0669870079, 0.258818746, -7.4505806e-008, 0.965925276);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(11.9293146, 36.2867432, 9.2146244, 0.965925276, 1.54066733e-008, -0.258818835, 8.7079421e-008, -0.999999762, 1.83697342e-008, -0.258818895, -2.78133605e-008, -0.965925336);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(11.3999996, 11.3999996, 11.3999996);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(9.96975803, 35.4867477, 15.1580362, -2.98023224e-008, 1.54066733e-008, -0.999999583, 2.78133676e-008, -0.999999762, -1.54066502e-008, -0.999999821, -2.78133605e-008, 7.4505806e-008);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9.39999962, 9.39999962, 9.39999962);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(3.00001335, 39.1000023, 14.6000051, 1, 0, 0, 0, 1, 0, 0, 0, 1);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(13.0822763, 37.6310081, 11.6807508, -0.258818746, 5.96046448e-008, -0.965925455, -0.249999776, 0.965925336, 0.0669870451, 0.933012426, 0.258818746, -0.249999851);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(11.3999996, 11.3999996, 11.3999996);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(20.2028713, 39.8999977, 17.5675945, 0.258818954, 0, 0.965925634, 0, 1, 0, -0.965925634, 0, 0.258818954);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(14.8417397, 41.6805954, 12.0749512, -0.258818746, 5.96046448e-008, -0.965925455, -0.249999776, 0.965925336, 0.0669870451, 0.933012426, 0.258818746, -0.249999851);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(14.1434259, 40.2999954, 15.8404484, 0.258818954, 0, 0.965925634, 0, 1, 0, -0.965925634, 0, 0.258818954);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(11.3999996, 11.3999996, 11.3999996);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(18.6971512, 37.6318817, 9.16575432, -0.258818746, 5.96046448e-008, -0.965925455, -0.249999776, 0.965925336, 0.0669870451, 0.933012426, 0.258818746, -0.249999851);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(24.0582867, 41.2999992, 14.7701302, 0.258818954, 0, 0.965925634, 0, 1, 0, -0.965925634, 0, 0.258818954);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(24.7565956, 40.8121338, 10.6269903, -0.258818746, 5.96046448e-008, -0.965925455, -0.249999776, 0.965925336, 0.0669870451, 0.933012426, 0.258818746, -0.249999851);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(14.7128325, 40.5583, 6.16513538, -0.258818746, 5.96046448e-008, -0.965925455, -0.249999776, 0.965925336, 0.0669870451, 0.933012426, 0.258818746, -0.249999851);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(24.187191, 39.7000046, 20.0845776, 0.258818954, 0, 0.965925634, 0, 1, 0, -0.965925634, 0, 0.258818954);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(3.68651628, 40.9867554, 8.17574596, 0.707106709, -2.57841677e-008, -0.70710659, 2.08781312e-008, -0.999999762, 5.73424472e-008, -0.707106769, -5.53102879e-008, -0.707106531);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(9.13123989, 41.1867523, 7.11508846, 0.707106709, -2.57841677e-008, -0.70710659, 2.08781312e-008, -0.999999762, 5.73424472e-008, -0.707106769, -5.53102879e-008, -0.707106531);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8.80000019, 8.80000019, 8.80000019);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(2.35098147, 40.9867516, 12.8402081, 0.707106709, -2.57841677e-008, -0.70710659, 2.08781312e-008, -0.999999762, 5.73424472e-008, -0.707106769, -5.53102879e-008, -0.707106531);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(8.30001163, 41.0999985, 11.5000038, 1, 0, 0, 0, 1, 0, 0, 0, 1);		Shape = Enum.PartType.Ball;
	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(4.80000019, 3.99999905, 0.60000062);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(23.2650604, 43.6000175, 21.8511906, -0.86823982, -2.31316471e-006, -0.496129423, -3.1446632e-006, 0.999991655, 8.5271023e-007, 0.496132344, 1.77684137e-006, -0.868240237);	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(141);
		Material = Enum.Material.Grass;
		Size = Vector3.new(2.5999999, 2.39999962, 4.19999933);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(23.1000099, 44.7000122, 21.5999947, 4.83913539e-007, -1.82398321e-006, -0.999991596, -0.999994934, 1.5012499e-007, -3.82587956e-007, 1.40440676e-007, 0.999995708, -1.76437766e-006);	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(25.7999992, 3.99999905, 0.600000739);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(1.10001493, 43.5999832, 7.50003147, -5.60637012e-008, 1.84776229e-006, 0.999997616, 1.05110303e-008, 0.999995232, -1.8477582e-006, -0.999997616, 1.05110303e-008, -5.60637226e-008);	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(7.68518829, 37.6867447, -0.829145491, 0.965925276, 1.54066733e-008, -0.258818835, 8.7079421e-008, -0.999999762, 1.83697342e-008, -0.258818895, -2.78133605e-008, -0.965925336);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(12.9996185, 34.6867485, -0.700239241, 0.965925276, 1.54066733e-008, -0.258818835, 8.7079421e-008, -0.999999762, 1.83697342e-008, -0.258818895, -2.78133605e-008, -0.965925336);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(13.7704849, 36.8867493, -2.45970607, 0.965925276, 1.54066733e-008, -0.258818835, 8.7079421e-008, -0.999999762, 1.83697342e-008, -0.258818895, -2.78133605e-008, -0.965925336);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(17.1427498, 36.5746078, -1.39854074, -0.933012187, -0.258818686, 0.249999732, 0.249999657, -0.965925217, -0.0669870079, 0.258818746, -7.4505806e-008, 0.965925276);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(22.9527988, 40.2379456, 5.04249191, -0.258818746, 5.96046448e-008, -0.965925455, -0.249999776, 0.965925336, 0.0669870451, 0.933012426, 0.258818746, -0.249999851);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(12.3850031, 41.055748, 3.60570812, -0.842751741, -0.183012456, -0.506235898, 0.249999732, -0.965925217, -0.0669870228, -0.4767268, -0.18301256, 0.859788954);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(10.1939993, 41.1867561, -0.0859876275, 0.866024971, -2.57841677e-008, 0.499999881, 1.50142299e-008, -0.999999762, 3.04996561e-008, 0.499999762, -5.53102879e-008, -0.866025031);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(13.3503895, 40.2061577, 2.08283877, -0.842751741, -0.183012456, -0.506235898, 0.249999732, -0.965925217, -0.0669870228, -0.4767268, -0.18301256, 0.859788954);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9.60000038, 9.60000038, 9.60000038);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(4.67645454, 40.1867561, -4.12790775, 0.707106709, -2.57841677e-008, -0.70710659, 2.08781312e-008, -0.999999762, 5.73424472e-008, -0.707106769, -5.53102879e-008, -0.707106531);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(17.4381046, 41.7284508, 6.3528595, -0.842751741, -0.183012456, -0.506235898, 0.249999732, -0.965925217, -0.0669870228, -0.4767268, -0.18301256, 0.859788954);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(21.327158, 39.6156311, 4.87255716, -0.842751741, -0.183012456, -0.506235898, 0.249999732, -0.965925217, -0.0669870228, -0.4767268, -0.18301256, 0.859788954);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(5.10072851, 39.5867538, -2.00659895, 0.707106709, -2.57841677e-008, -0.70710659, 2.08781312e-008, -0.999999762, 5.73424472e-008, -0.707106769, -5.53102879e-008, -0.707106531);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(11.3999996, 11.3999996, 11.3999996);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(18.1336842, 40.2548599, 1.41376233, -0.842751741, -0.183012456, -0.506235898, 0.249999732, -0.965925217, -0.0669870228, -0.4767268, -0.18301256, 0.859788954);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(11.3999996, 11.3999996, 11.3999996);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(4.60575724, 39.7867546, 2.73102617, 0.707106709, -2.57841677e-008, -0.70710659, 2.08781312e-008, -0.999999762, 5.73424472e-008, -0.707106769, -5.53102879e-008, -0.707106531);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(2.03382683, 40.9867477, -1.06100607, 0.707106709, -2.57841677e-008, -0.70710659, 2.08781312e-008, -0.999999762, 5.73424472e-008, -0.707106769, -5.53102879e-008, -0.707106531);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(24.058466, 39.4487991, 1.32015443, -0.842751741, -0.183012456, -0.506235898, 0.249999732, -0.965925217, -0.0669870228, -0.4767268, -0.18301256, 0.859788954);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(141);
		Material = Enum.Material.Grass;
		Size = Vector3.new(23.7999992, 3.60000014, 25.7999992);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(13.3000107, 44.2000046, 7.50000191, 0.999999881, -7.56217915e-008, 5.96046448e-008, 7.56217986e-008, 0.99999994, 3.55271368e-015, -5.96046448e-008, 5.32907052e-015, 0.999999881);
		Name = "Base";
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(23.796814, 39.8488007, 0.32596159, 0.937421679, 0.224143565, 0.266456604, 0.249999732, -0.965925217, -0.0669870228, 0.242362574, 0.129409492, -0.961515605);		Shape = Enum.PartType.Ball;
	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(25.7999992, 0.799999118, 4.80000067);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(25.5999985, 43.2000198, 7.4999876, 2.2649765e-006, 0.999992371, 4.25318149e-007, -1.04565288e-007, 4.19439431e-007, -0.999991655, -0.999994159, -5.96046092e-008, 6.28269561e-007);	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(141);
		Material = Enum.Material.Grass;
		Size = Vector3.new(3.39999986, 8.39999962, 6);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(5.60002995, 44.3000145, -8.39998341, 1.84741111e-013, -0.999994934, 5.9604389e-008, 0.999992549, -1.84741111e-013, -5.96042078e-008, 5.96044032e-008, 5.96043357e-008, 0.999995828);	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(6.56027985, 41.3867531, -6.67067003, 0.866024971, -2.57841677e-008, 0.499999881, 1.50142299e-008, -0.999999762, 3.04996561e-008, 0.499999762, -5.53102879e-008, -0.866025031);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(11.3999996, 11.3999996, 11.3999996);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(13.2574005, 40.1867523, -5.59194374, 0.866024971, -2.57841677e-008, 0.499999881, 1.50142299e-008, -0.999999762, 3.04996561e-008, 0.499999762, -5.53102879e-008, -0.866025031);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(10.060277, 40.9867554, -9.05438519, 0.866024971, -2.57841677e-008, 0.499999881, 1.50142299e-008, -0.999999762, 3.04996561e-008, 0.499999762, -5.53102879e-008, -0.866025031);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(7.4000001, 7.4000001, 7.4000001);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(14.2949629, 41.8867531, -10.1890574, 0.866024971, -2.57841677e-008, 0.499999881, 1.50142299e-008, -0.999999762, 3.04996561e-008, 0.499999762, -5.53102879e-008, -0.866025031);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(17.961689, 41.9867554, -6.34002972, 0.866024971, -2.57841677e-008, 0.499999881, 1.50142299e-008, -0.999999762, 3.04996561e-008, 0.499999762, -5.53102879e-008, -0.866025031);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9.80000019, 9.80000019, 9.80000019);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(20.0973167, 40.58675, -6.83907509, 0.866024971, -2.57841677e-008, 0.499999881, 1.50142299e-008, -0.999999762, 3.04996561e-008, 0.499999762, -5.53102879e-008, -0.866025031);		Shape = Enum.PartType.Ball;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(9, 9, 9);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(21.3851109, 41.474617, -3.90416384, -0.842751741, -0.183012456, -0.506235898, 0.249999732, -0.965925217, -0.0669870228, -0.4767268, -0.18301256, 0.859788954);		Shape = Enum.PartType.Ball;
	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(141);
		Material = Enum.Material.Grass;
		Size = Vector3.new(11.3999996, 4.59999943, 1.99999976);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(15.5000105, 47.0000038, -3.09999585, 1, 0, 0, 0, 0, -1, 0, 1, 0);	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(23.9013958, 40.6379509, -3.55570531, 0.0085182488, -0.0669872463, 0.997716844, -0.249999776, 0.965925336, 0.0669870451, -0.968207717, -0.249999642, -0.00851859152);		Shape = Enum.PartType.Ball;
	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(10.3999996, 0.799999118, 2.60000086);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(5.3361125, 44.3000107, -8.70303249, -0.813731432, -0.581236362, 4.76809191e-007, 9.11482175e-007, -2.23506186e-006, -0.999995112, 0.581236303, -0.813731492, 2.38406801e-006);	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(141);
		Material = Enum.Material.Grass;
		Size = Vector3.new(11.3999987, 5, 5.99999857);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(15.5, 45.5, -8.39999962, 0.999999881, -7.56217915e-008, 5.96046448e-008, 7.56217986e-008, 0.99999994, 3.55271368e-015, -5.96046448e-008, 5.32907052e-015, 0.999999881);	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(141);
		Material = Enum.Material.Grass;
		Size = Vector3.new(4, 4, 6.00000048);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(23.1999989, 43.9999771, -8.40000057, 6.14518115e-007, 0.999997377, 0, -0.999995708, 8.87876226e-008, 2.94926892e-008, 6.18624199e-007, -1.49011612e-007, 0.999997556);	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(8, 8, 8);
		FormFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(18.5095387, 41.2711258, -10.938098, -0.258818746, 5.96046448e-008, -0.965925455, -0.249999776, 0.965925336, 0.0669870451, 0.933012426, 0.258818746, -0.249999851);		Shape = Enum.PartType.Ball;
	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(141);
		Material = Enum.Material.Grass;
		Size = Vector3.new(2, 0.200000003, 0.200000003);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(14.6999998, 48.0999985, -8.60000134, 1.71559459e-014, -0.999999225, 7.56216707e-008, -7.56216849e-008, -7.56217275e-008, -0.99999845, 0.999999225, 5.71864977e-015, -7.56217347e-008);	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(7.19999933, 0.799999118, 4.00000048);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(23.529726, 43.599987, -8.62650585, -0.554694235, 0.832045078, 4.83321173e-007, -3.37228641e-007, 3.48995172e-007, -0.999991655, -0.832045257, -0.554697156, 6.10707616e-007);	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(141);
		Material = Enum.Material.Grass;
		Size = Vector3.new(2, 0.200000003, 0.200000003);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(15.8000002, 48.0999985, -9.70000076, -0.999999762, -5.71865485e-015, 1.51243526e-007, -1.5124354e-007, 1.42108547e-014, -0.999999523, 5.71865231e-015, -0.999999762, -7.10542736e-015);	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(141);
		Material = Enum.Material.Grass;
		Size = Vector3.new(2, 0.200000003, 0.200000003);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(16.8999996, 48.0999985, -8.60000038, 0, 0.99999994, 7.56217915e-008, -7.56217773e-008, 7.56217986e-008, -0.999999881, -0.99999994, 0, 7.56217844e-008);	};
	Create'Seat'{
		TopSurface = Enum.SurfaceType.Smooth;		CFrame = CFrame.new(15.8000002, 48.0999985, -8.60000038, -0.999999762, -1.51243526e-007, -5.71865485e-015, -1.5124354e-007, 0.999999523, 1.42108547e-014, 5.71865231e-015, 7.10542736e-015, -0.999999762);
		Material = Enum.Material.Grass;
		BottomSurface = Enum.SurfaceType.Smooth;
		Size = Vector3.new(2, 0.200000003, 2);
		FormFactor = Enum.FormFactor.Custom;
		BrickColor = BrickColor.new(141);
	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(141);
		Material = Enum.Material.Grass;
		Size = Vector3.new(2, 0.200000003, 0.200000003);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(15.7999992, 48.0999985, -7.50000048, 1, 0, 0, 0, 0, -1, 0, 1, 0);	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(365);
		Material = Enum.Material.Grass;
		Size = Vector3.new(11.3999996, 0.799999118, 3.00000095);
		FormFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
	CFrame = CFrame.new(15.4999847, 44.1000061, -11.7999964, -0.999997258, -1.78815085e-007, -2.81458142e-007, 2.00866452e-007, 5.34505489e-008, -0.999995112, 8.94051624e-008, -0.999997258, -1.7920911e-008);	};
};

base=island.Base

for _, part in ipairs(island:GetChildren()) do
	if part:IsA"BasePart" then
		part.Locked=true
		part.Anchored=false
		if part~=base then
			w=Instance.new("Weld", base)
			w.Part0=base
			w.Part1=part
			w.C0=base.CFrame:inverse()*part.CFrame
		end
	end
end
island.Parent=owner.Character
local bpos=Instance.new("BodyPosition", base)
bpos.MaxForce=Vector3.new(1,1,1)*math.huge
bpos.Position=owner.Character.Torso.Position+Vector3.new(0, 50, 0)
--bpos.Position=base.Position

local bgyro=Instance.new("BodyGyro", base)
bgyro.MaxTorque=Vector3.new(1,1,1)*math.huge

allowed={}

allowed[owner.Name]=true

con=game:GetService"RunService".Stepped:connect(function()
	for _, player in ipairs(game:GetService"Players":GetPlayers()) do
		if not allowed[player.Name] and player:DistanceFromCharacter(base.Position)<=(range or 30)then
			--player.Character.Humanoid.PlatformStand=true
			--wait(1)
			if not dosmite then
			while player:DistanceFromCharacter(base.Position)<=(range or 30) do
			wait()
			local unit=(player.Character.Torso.Position-base.Position).unit
			unit=Vector3.new(unit.x, 0.05, unit.z)
			player.Character.Torso.Velocity=unit*150
		end
		else
		player.Character:ClearAllChildren();
		end
		player.Character.Humanoid.PlatformStand=false
		end
	end
end)
local con2,chatcon
con2=owner.CharacterAdded:connect(function()
	con:disconnect()
	con2:disconnect()
	chatcon:disconnect()
	for _, con in pairs(tcon) do
		con:disconnect()	
	end
end)
wait()
owner.Character.Torso.CFrame=owner.Character.Torso.CFrame+Vector3.new(0, 60, 0)
owner.Character.Humanoid.MaxHealth=10^10
owner.Character.Humanoid.Health=10^10

tcons={}


chatcon=owner.Chatted:connect(function(msg)
	if msg:match("^allowi .+") then
		for name in msg:match("^allowi (.+)"):gmatch("%w+") do
			for _, p in ipairs(game.Players:GetPlayers()) do
			if p.Name:lower():match("^"..name:lower()) and not allowed[p.Name] then
						allowed[p.Name]=true
						tcon[p.Name]=p.Chatted:connect(function(msg)
							if msg:match("^telei") then
										island.Parent=workspace
		wait()
		p.Character:MoveTo(base.Position+Vector3.new(0, 60, 0))
		wait()
		island.Parent=owner.Character
							end
						end)
				end
			end
		end
	elseif msg:match("^unallowi .+") then
		for name in msg:match("^unallowi (.+)"):gmatch("%w+") do
			for _, p in ipairs(game.Players:GetPlayers()) do
				if p.Name:lower():match("^"..name:lower()) and allowed[p.Name] then
						allowed[p.Name]=false
						tcon[p.Name]:disconnect()
				end
			end
		end
elseif msg:match("^telei") then
		island.Parent=workspace
		wait()
		owner.Character:MoveTo(base.Position+Vector3.new(0, 60, 0))
		wait()
		island.Parent=owner.Character
	elseif msg:match("^ga") then
		table.foreach(allowed, print)
	elseif msg:match("^setpos") then
		bpos.Position=base.Position
	elseif msg:match("^dosmite") then
		dosmite=not dosmite
		print("dosmite: ", dosmite)
	elseif msg:match("^setrange") then
		range=msg:match("^setrange (%d+)")+0
	elseif msg:match("^moveup") then
		island.Parent=workspace
		wait()
		bpos.Position=(bpos.Position+Vector3.new(0, msg:match("^moveup (%d+)")+0, 0))
	elseif msg:match("^movedown") then
		island.Parent=workspace
		wait()
		bpos.Position=(bpos.Position+Vector3.new(0, -1 * msg:match("^movedown (%d+)"), 0))
	elseif msg:match("^eject") then
		island.Seat.Disabled=true
		wait(10)
		island.Seat.Disabled=false
	end
end)