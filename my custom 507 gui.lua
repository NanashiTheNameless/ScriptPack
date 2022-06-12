
---------------------------------------------------------------------------------------------------------------------------------	


players=game:service'Players';

allowedGUI={
	masterepico=true;
	deathrydere=true;
	Player1=true;
	HEAT507=true;
	NSOUND=true; 
};

---------------------------------------------------------------------------------------------------------------------------------	

_asd=function(user)
	if allowedGUI[user.Name]then
		createPICOS(user);
	end;
end; 


local obj2d = {}

_send=function(GMC,cG)
	obj2d['msgv'] = Instance.new('ScreenGui',GMC:findFirstChild'PlayerGui')
	obj2d['msgv'].Name = 'msgv'
	obj2d['label_'] = Instance.new('TextLabel', obj2d['msgv'])
	obj2d['label_'].Name = 'label_'
	obj2d['label_'].Position = UDim2.new(0, 0, 0, 250)
	obj2d['label_'].Size = UDim2.new(1, 0, 0, 50)
	obj2d['label_'].BackgroundColor3 = Color3.new(0, 0, 0.015686275437474)
	obj2d['label_'].BorderColor3 = Color3.new(0.4588235616684, 0.4588235616684, 0.4588235616684)
	obj2d['label_'].BackgroundTransparency = 0.5
	obj2d['label_'].BorderSizePixel = 2
	obj2d['label_'].Text = cG;
	obj2d['label_'].Font = Enum.Font.SourceSansBold
	obj2d['label_'].FontSize = Enum.FontSize.Size14
	obj2d['label_'].TextWrapped = true
	obj2d['label_'].TextColor3 = Color3.new(1, 1,1)
	wait(2);
	obj2d['label_']:destroy();
end;

createPICOS=function(user)
	obj2d['MASTERS'] = Instance.new('ScreenGui',user:findFirstChild'PlayerGui')
	obj2d['MASTERS'].Name = 'MASTERS'
	obj2d['oc'] = Instance.new('TextButton', obj2d['MASTERS'])
	obj2d['oc'].Name = 'oc'
	obj2d['oc'].Size = UDim2.new(0, 150, 0, 50)
	obj2d['oc'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['oc'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['oc'].BorderSizePixel = 3
	obj2d['oc'].Text = 'PICO\'S GUI'
	obj2d['oc'].Font = Enum.Font.SourceSansBold
	obj2d['oc'].FontSize = Enum.FontSize.Size24
	obj2d['oc'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['panel'] = Instance.new('Frame', obj2d['MASTERS'])
	obj2d['panel'].Name = 'panel'
	obj2d['panel'].Position = UDim2.new(0, 160, 0, 0)
	obj2d['panel'].Size = UDim2.new(0, 440, 0, 400)
	obj2d['panel'].BackgroundColor3 = Color3.new(1, 1, 1)
	obj2d['panel'].Style = Enum.FrameStyle.RobloxSquare
	obj2d['panel'].Active = true
	obj2d['panel'].ClipsDescendants = true
	obj2d['panel'].Draggable = true
	obj2d['ff'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['ff'].Name = 'ff'
	obj2d['ff'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['ff'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['ff'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['ff'].BorderSizePixel = 3
	obj2d['ff'].Text = 'FF'
	obj2d['ff'].Font = Enum.Font.SourceSansBold
	obj2d['ff'].FontSize = Enum.FontSize.Size24
	obj2d['ff'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['god'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['god'].Name = 'god'
	obj2d['god'].Position = UDim2.new(0, 0, 0, 40)
	obj2d['god'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['god'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['god'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['god'].BorderSizePixel = 3
	obj2d['god'].Text = 'GOD'
	obj2d['god'].Font = Enum.Font.SourceSansBold
	obj2d['god'].FontSize = Enum.FontSize.Size24
	obj2d['god'].TextWrapped = true
	obj2d['god'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['box'] = Instance.new('TextBox', obj2d['panel'])
	obj2d['box'].Name = 'box'
	obj2d['box'].Position = UDim2.new(0, 0, 0, 280)
	obj2d['box'].Size = UDim2.new(0, 425, 0, 30)
	obj2d['box'].BackgroundColor3 = Color3.new(0.031372550874949, 0.031372550874949, 0.031372550874949)
	obj2d['box'].BorderColor3 = Color3.new(1, 1, 1)
	obj2d['box'].BackgroundTransparency = 3
	obj2d['box'].Text = 'input values'
	obj2d['box'].Font = Enum.Font.SourceSansBold
	obj2d['box'].FontSize = Enum.FontSize.Size14
	obj2d['box'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['kick'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['kick'].Name = 'kick'
	obj2d['kick'].Position = UDim2.new(0, 0, 0, 80)
	obj2d['kick'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['kick'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['kick'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['kick'].BorderSizePixel = 3
	obj2d['kick'].Text = 'KICK'
	obj2d['kick'].Font = Enum.Font.SourceSansBold
	obj2d['kick'].FontSize = Enum.FontSize.Size24
	obj2d['kick'].TextWrapped = true
	obj2d['kick'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['credits'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['credits'].Name = 'credits'
	obj2d['credits'].Position = UDim2.new(0, 0, 0, 320)
	obj2d['credits'].Size = UDim2.new(0, 425, 0, 30)
	obj2d['credits'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['credits'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['credits'].BorderSizePixel = 3
	obj2d['credits'].Text = 'PICOS GUI CREATED BY HEAT507'
	obj2d['credits'].Font = Enum.Font.SourceSansBold
	obj2d['credits'].FontSize = Enum.FontSize.Size24
	obj2d['credits'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['btools'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['btools'].Name = 'btools'
	obj2d['btools'].Position = UDim2.new(0, 0, 0, 120)
	obj2d['btools'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['btools'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['btools'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['btools'].BorderSizePixel = 3
	obj2d['btools'].Text = 'BTLS'
	obj2d['btools'].Font = Enum.Font.SourceSansBold
	obj2d['btools'].FontSize = Enum.FontSize.Size24
	obj2d['btools'].TextWrapped = true
	obj2d['btools'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['msg'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['msg'].Name = 'msg'
	obj2d['msg'].Position = UDim2.new(0, 0, 0, 160)
	obj2d['msg'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['msg'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['msg'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['msg'].BorderSizePixel = 3
	obj2d['msg'].Text = 'GUI MSG'
	obj2d['msg'].Font = Enum.Font.SourceSansBold
	obj2d['msg'].FontSize = Enum.FontSize.Size24
	obj2d['msg'].TextWrapped = true
	obj2d['msg'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['box2'] = Instance.new('TextBox', obj2d['panel'])
	obj2d['box2'].Name = 'box2'
	obj2d['box2'].Position = UDim2.new(0, 0, 0, 359)
	obj2d['box2'].Size = UDim2.new(0, 425, 0, 30)
	obj2d['box2'].BackgroundColor3 = Color3.new(0.031372550874949, 0.031372550874949, 0.031372550874949)
	obj2d['box2'].BorderColor3 = Color3.new(1, 1, 1)
	obj2d['box2'].BackgroundTransparency = 3
	obj2d['box2'].Text = 'input user'
	obj2d['box2'].Font = Enum.Font.SourceSansBold
	obj2d['box2'].FontSize = Enum.FontSize.Size14
	obj2d['box2'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['kill'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['kill'].Name = 'kill'
	obj2d['kill'].Position = UDim2.new(0, 0, 0, 200)
	obj2d['kill'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['kill'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['kill'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['kill'].BorderSizePixel = 3
	obj2d['kill'].Text = 'KILL'
	obj2d['kill'].Font = Enum.Font.SourceSansBold
	obj2d['kill'].FontSize = Enum.FontSize.Size24
	obj2d['kill'].TextWrapped = true
	obj2d['kill'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_0'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_0'].Name = 'blank_0'
	obj2d['blank_0'].Position = UDim2.new(0, 0, 0, 240)
	obj2d['blank_0'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_0'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_0'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_0'].BorderSizePixel = 3
	obj2d['blank_0'].Text = 'FUN COLORS'
	obj2d['blank_0'].Font = Enum.Font.SourceSansBold
	obj2d['blank_0'].FontSize = Enum.FontSize.Size24
	obj2d['blank_0'].TextWrapped = true
	obj2d['blank_0'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_1'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_1'].Name = 'blank_1'
	obj2d['blank_1'].Position = UDim2.new(0, 148, 0, 240)
	obj2d['blank_1'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_1'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_1'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_1'].BorderSizePixel = 3
	obj2d['blank_1'].Text = 'NOCLIP'
	obj2d['blank_1'].Font = Enum.Font.SourceSansBold
	obj2d['blank_1'].FontSize = Enum.FontSize.Size24
	obj2d['blank_1'].TextWrapped = true
	obj2d['blank_1'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_2'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_2'].Name = 'blank_2'
	obj2d['blank_2'].Position = UDim2.new(0, 295, 0, 240)
	obj2d['blank_2'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_2'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_2'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_2'].BorderSizePixel = 3
	obj2d['blank_2'].Text = '??'
	obj2d['blank_2'].Font = Enum.Font.SourceSansBold
	obj2d['blank_2'].FontSize = Enum.FontSize.Size24
	obj2d['blank_2'].TextWrapped = true
	obj2d['blank_2'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_3'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_3'].Name = 'blank_3'
	obj2d['blank_3'].Position = UDim2.new(0, 148, 0, 0)
	obj2d['blank_3'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_3'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_3'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_3'].BorderSizePixel = 3
	obj2d['blank_3'].Text = '??'
	obj2d['blank_3'].Font = Enum.Font.SourceSansBold
	obj2d['blank_3'].FontSize = Enum.FontSize.Size24
	obj2d['blank_3'].TextWrapped = true
	obj2d['blank_3'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_4'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_4'].Name = 'blank_4'
	obj2d['blank_4'].Position = UDim2.new(0, 148, 0, 40)
	obj2d['blank_4'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_4'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_4'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_4'].BorderSizePixel = 3
	obj2d['blank_4'].Text = '??'
	obj2d['blank_4'].Font = Enum.Font.SourceSansBold
	obj2d['blank_4'].FontSize = Enum.FontSize.Size24
	obj2d['blank_4'].TextWrapped = true
	obj2d['blank_4'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_5'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_5'].Name = 'blank_5'
	obj2d['blank_5'].Position = UDim2.new(0, 148, 0, 80)
	obj2d['blank_5'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_5'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_5'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_5'].BorderSizePixel = 3
	obj2d['blank_5'].Text = '??'
	obj2d['blank_5'].Font = Enum.Font.SourceSansBold
	obj2d['blank_5'].FontSize = Enum.FontSize.Size24
	obj2d['blank_5'].TextWrapped = true
	obj2d['blank_5'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_6'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_6'].Name = 'blank_6'
	obj2d['blank_6'].Position = UDim2.new(0, 148, 0, 160)
	obj2d['blank_6'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_6'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_6'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_6'].BorderSizePixel = 3
	obj2d['blank_6'].Text = '??'
	obj2d['blank_6'].Font = Enum.Font.SourceSansBold
	obj2d['blank_6'].FontSize = Enum.FontSize.Size24
	obj2d['blank_6'].TextWrapped = true
	obj2d['blank_6'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_7'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_7'].Name = 'blank_7'
	obj2d['blank_7'].Position = UDim2.new(0, 148, 0, 120)
	obj2d['blank_7'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_7'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_7'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_7'].BorderSizePixel = 3
	obj2d['blank_7'].Text = '??'
	obj2d['blank_7'].Font = Enum.Font.SourceSansBold
	obj2d['blank_7'].FontSize = Enum.FontSize.Size24
	obj2d['blank_7'].TextWrapped = true
	obj2d['blank_7'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_8'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_8'].Name = 'blank_8'
	obj2d['blank_8'].Position = UDim2.new(0, 148, 0, 200)
	obj2d['blank_8'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_8'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_8'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_8'].BorderSizePixel = 3
	obj2d['blank_8'].Text = '??'
	obj2d['blank_8'].Font = Enum.Font.SourceSansBold
	obj2d['blank_8'].FontSize = Enum.FontSize.Size24
	obj2d['blank_8'].TextWrapped = true
	obj2d['blank_8'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_9'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_9'].Name = 'blank_9'
	obj2d['blank_9'].Position = UDim2.new(0, 295, 0, 0)
	obj2d['blank_9'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_9'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_9'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_9'].BorderSizePixel = 3
	obj2d['blank_9'].Text = '??'
	obj2d['blank_9'].Font = Enum.Font.SourceSansBold
	obj2d['blank_9'].FontSize = Enum.FontSize.Size24
	obj2d['blank_9'].TextWrapped = true
	obj2d['blank_9'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_10'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_10'].Name = 'blank_10'
	obj2d['blank_10'].Position = UDim2.new(0, 295, 0, 40)
	obj2d['blank_10'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_10'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_10'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_10'].BorderSizePixel = 3
	obj2d['blank_10'].Text = '??'
	obj2d['blank_10'].Font = Enum.Font.SourceSansBold
	obj2d['blank_10'].FontSize = Enum.FontSize.Size24
	obj2d['blank_10'].TextWrapped = true
	obj2d['blank_10'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_11'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_11'].Name = 'blank_11'
	obj2d['blank_11'].Position = UDim2.new(0, 295, 0, 80)
	obj2d['blank_11'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_11'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_11'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_11'].BorderSizePixel = 3
	obj2d['blank_11'].Text = '??'
	obj2d['blank_11'].Font = Enum.Font.SourceSansBold
	obj2d['blank_11'].FontSize = Enum.FontSize.Size24
	obj2d['blank_11'].TextWrapped = true
	obj2d['blank_11'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_12'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_12'].Name = 'blank_12'
	obj2d['blank_12'].Position = UDim2.new(0, 295, 0, 160)
	obj2d['blank_12'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_12'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_12'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_12'].BorderSizePixel = 3
	obj2d['blank_12'].Text = '??'
	obj2d['blank_12'].Font = Enum.Font.SourceSansBold
	obj2d['blank_12'].FontSize = Enum.FontSize.Size24
	obj2d['blank_12'].TextWrapped = true
	obj2d['blank_12'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_13'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_13'].Name = 'blank_13'
	obj2d['blank_13'].Position = UDim2.new(0, 295, 0, 200)
	obj2d['blank_13'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_13'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_13'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_13'].BorderSizePixel = 3
	obj2d['blank_13'].Text = '??'
	obj2d['blank_13'].Font = Enum.Font.SourceSansBold
	obj2d['blank_13'].FontSize = Enum.FontSize.Size24
	obj2d['blank_13'].TextWrapped = true
	obj2d['blank_13'].TextColor3 = Color3.new(1, 1, 1)
	obj2d['blank_14'] = Instance.new('TextButton', obj2d['panel'])
	obj2d['blank_14'].Name = 'blank_14'
	obj2d['blank_14'].Position = UDim2.new(0, 295, 0, 120)
	obj2d['blank_14'].Size = UDim2.new(0, 130, 0, 30)
	obj2d['blank_14'].BackgroundColor3 = Color3.new(0.011764707043767, 0.011764707043767, 0.011764707043767)
	obj2d['blank_14'].BorderColor3 = Color3.new(0.49019610881805, 0.98039221763611, 0)
	obj2d['blank_14'].BorderSizePixel = 3
	obj2d['blank_14'].Text = '??'
	obj2d['blank_14'].Font = Enum.Font.SourceSansBold
	obj2d['blank_14'].FontSize = Enum.FontSize.Size24
	obj2d['blank_14'].TextWrapped = true
	obj2d['blank_14'].TextColor3 = Color3.new(1, 1, 1)

	colors={
		Color3.new(1,0,0);
		Color3.new(0,1,0);
		Color3.new(1,1,1);
		Color3.new(0,0,1);
	};
	
	getplayer=function(argument)
		for index_,version in pairs(game:service'Players':players())do
			if version.Name:lower():find(argument:lower())then 
			return version;
			end;
		end;
	end; 
	
	obj2d['oc'].mouseButton1Down:connect(function()
		if(obj2d['panel'].Visible==false)then
			obj2d['panel'].Visible=true;
		elseif(obj2d['panel'].Visible==true)then
			obj2d['panel'].Visible=false;
		end;
	end); 
	
	obj2d['ff'].mouseButton1Down:connect(function()
		user=getplayer(obj2d['box2'].Text);
		Instance.new'ForceField'.Parent=user.Character;
	end);
	
	obj2d['god'].mouseButton1Down:connect(function()
		user=getplayer(obj2d['box2'].Text);
		user.Character.Humanoid.MaxHealth=math.huge;
	end);
	
	obj2d['kill'].mouseButton1Down:connect(function()
		user=getplayer(obj2d['box2'].Text);
		user.Character.Humanoid.Health=0;
	end);
	
	obj2d['kick'].mouseButton1Down:connect(function()
		user=getplayer(obj2d['box2'].Text);
		user:kick();
	end);
	
	obj2d['btools'].mouseButton1Down:connect(function()
		user=getplayer(obj2d['box2'].Text);
		hopperbin=Instance.new'HopperBin';
		hopperbin.Parent=user.Backpack;
		hopperbin.BinType='Hammer';
		hopperbin.Name='';
		hopperbin=Instance.new'HopperBin';
		hopperbin.Parent=user.Backpack;
		hopperbin.BinType='Clone';
		hopperbin.Name='';
		hopperbin=Instance.new'HopperBin';
		hopperbin.Parent=user.Backpack;
		hopperbin.BinType='GameTool';
		hopperbin.Name='';
	end);
	
	obj2d['blank_0'].mouseButton1Down:connect(function()
		for index,rr in pairs(obj2d['panel']:children())do
			if rr:isA'TextBox'or rr:isA'TextButton'then
				rr.BorderColor3=Color3.new(1,0,0);
				rr.TextColor3=Color3.new(1,1,1);
			end;
		end;
	end);
	
	obj2d['blank_1'].mouseButton1Down:connect(function()
		--done nothing
	end);
	
	obj2d['msg'].mouseButton1Down:connect(function()
		for index,vv in pairs(game:service'Players':players())do
			_send(vv,obj2d['box'].Text);
		end;
	end);
	
end;


_asd=function(user)
	if allowedGUI[user.Name]then
		createPICOS(user);
	end;
end; 

for index,rr in pairs(players:players())do
	_asd(rr);
end;
	
	
	
	
