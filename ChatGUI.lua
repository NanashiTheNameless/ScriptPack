wait(0.001)
script:ClearAllChildren();
script.Parent=nil;
wait(1)
LocalPlayer = game:service'Players'.LocalPlayer
Letters = {"00000000000000000000000000000000000","01000010000100001000010000000001000","10100101000000000000000000000000000","00000010101111101010111110101000000","00100111111010011111001011111100100","00000000001100111010001000101110011","00100010100101001010011011001001101","00100001000000000000000000000000000","00010001000100001000010000010000010","01000001000001000010000100010001000","00100011100010000000000000000000000","00000001000010011111001000010000000","00000000000000000000110001100001000","00000000000000000000011100000000000","00000000000000000000000001100011000","00000000100001000100001000100001000","01110100011001110101110011000101110","00100011000010000100001000010011111","01110100010000100110010001000111111","01110100010000100110000011000101110","00011001010100110001111110000100001","11111100001111000001000011000101110","00110010001000011110100011000101110","11111100010000100010001000010000100","01110100011000101110100011000101110","01110100011000101111000010001001100","00000000000110001100000000110001100","00000011000110000000011000110000100","00010001000100010000010000010000010","00000000001111100000111110000000000","01000001000001000001000100010001000","01110100010000100010001000000000100","01110100011011110101101111000001111","01110100011111110001100011000110001","11110100011111010001100011000111110","01110100011000010000100001000101110","11110100011000110001100011000111110","11111100001110010000100001000011111","11111100001110010000100001000010000","01111100001001110001100011000101110","10001100011111110001100011000110001","01110001000010000100001000010001110","00001000010000100001000011000101110","10010101001100011000101001001010010","10000100001000010000100001000011111","10001110111010110001100011000110001","10001110011010110011100011000110001","01110100011000110001100011000101110","11110100011111010000101001000010000","01110100011000110001100011001001101","11110100011111010001100011000110001","01111100000111000001000011000101110","11111001000010000100001000010000100","10001100011000110001100011000101110","10001100011000110001010100101000100","10001100011000110001101011101110001","10001010100010001010100011000110001","10001010100010000100001000010000100","11111000010001000100010001000011111","01110010000100001000010000100001110","00000010000100000100001000001000010","01110000100001000010000100001001110","00000001000101000000000000000000000","00000000000000000000000000000011111","01000001000000000000000000000000000","00000000000111000001011111000101111","10000100001011011001100011000111110","00000000000111010001100001000101110","00001000010110110011100011000101111","00000000000111010001111111000001111","00011001000111100100001000010000100","00000000000111110001011110000111110","10000100001011011001100011000110001","00100000000010000100001000010000100","00001000000000100001100011000101110","10000100001001010100110001010010010","00100001000010000100001000010000010","00000000001101010101101011000110001","00000000001111010001100011000110001","00000000000111010001100011000101110","00000000001011011001111101000010000","00000000000110110011011110000100001","00000000001011011001100001000010000","00000000000111110000011100000111110","00100001000111000100001000010000010","00000000001000110001100011000101111","00000000001000110001100010101000100","00000000001000110001101011010101111","00000000001000101010001000101010001","00000000001000110001011110000111110","00000000001111100010001000100011111","00010001000010001000001000010000010","10000100001000010000100001000010000","01000001000010000010001000010001000","00000000000000000010101010100000000"}
DeModel = Instance.new("BillboardGui", workspace:findFirstChild(LocalPlayer.Name))
DeModel.StudsOffset = Vector3.new(0,2.5,0)
DeModel.Name = ":D"
FR = Instance.new("Frame",DeModel)
FR.Size=UDim2.new(1,0,1,0)
FR.BackgroundColor3=BrickColor.new("Institutional white").Color
FR.BorderSizePixel=0
FR.ZIndex=2
CurrParent = workspace:findFirstChild(LocalPlayer.Name).Head
game:service'RunService'.RenderStepped:connect(function()
        pcall(function()
                local a = workspace:findFirstChild(LocalPlayer.Name)
                if a.ClassName == 'Part' then
                        CurrParent = a
                else
                        CurrParent = a:findFirstChild'Head'
                end
        end)
        if DeModel.Parent ~= CurrParent or DeModel == nil or FR.Parent ~= DeModel or FR == nil then
                pcall(function()
                        if CurrParent.ClassName == 'Part' then
                                DeModel = Instance.new("BillboardGui", CurrParent)
                                DeModel.Adornee = CurrParent
                                DeModel.StudsOffset = Vector3.new(0,2.5,0)
                                DeModel.Name = ":D"
                                FR = Instance.new("Frame",DeModel)
                                FR.Size=UDim2.new(1,0,1,0)
                                FR.BackgroundColor3=BrickColor.new("Institutional white").Color
                                FR.BorderSizePixel=0
                                FR.ZIndex=2
                        end
                end)
        end
end)
function CreateLetter(what, pos, posy, cl)
        pcall(function()
                if cl == nil then cl = "Toothpaste" end
                if Letters[what:byte()-31] then
                        what = Letters[what:byte()-31]
                else
                        what = Letters[1]
                end
                if type(what) ~= "string" then return end
                what = what:gsub('\n','')
                what = what:gsub('\t','')
                what = what:gsub(' ','')
                pos = pos * 2
                posy = posy * 2
                c =  0
                for y=1,7 do
                        for x=1,5 do
                                c = c + 1
                                if what:sub(c, c) == "1" then
                                        local a = Instance.new("Frame", FR)
                                        a.Name = "L"
                                        a.ZIndex=3
                                        a.Size = UDim2.new(0,2,0,2)
                                        a.BorderSizePixel = 0
                                        a.BackgroundTransparency = 1
                                        a.BackgroundColor3 = BrickColor.new(cl).Color
                                        a.Position = UDim2.new(0,((x+1)*2)+pos,0,(y*2)+posy)
                                        coroutine.wrap(function()
                                                wait(math.random(1, 10)/50)
                                                a.BackgroundTransparency = 0
                                        end)()
                                end
                        end
                end
        end)
end
LocalPlayer.Chatted:connect(function(m)
        pcall(function()
                local cl = "Lime green"
                for _,v in pairs(DeModel.Frame:children()) do
                        v:Destroy()
                end
                if m:sub(1,2) == '/e' then return end
                if m:sub(1,3) == "/! " then
                        m = m:sub(4)
                        DeModel.Frame.BackgroundColor3 = BrickColor.new("Really black").Color
                        cl = "Really red"
                else
                        DeModel.Frame.BackgroundColor3 = BrickColor.new("Really black").Color
                end
                m1 = m:gsub("\n"," ")
                m1 = m1:gsub("\t"," ")
                m1 = m1:gsub("math.pi",tostring(math.pi))
                if #m1 <= 30 then
                        DeModel.Size = UDim2.new(0,(30+(#m1*10)),0,20)
                elseif #m1 <= 60 then
                        DeModel.Size = UDim2.new(0,330,0,40)
                elseif #m1 <= 90 then
                        DeModel.Size = UDim2.new(0,330,0,60)
                elseif #m1 > 90 then
                        DeModel.Size = UDim2.new(0,340,0,60)
                        m1 = m1:sub(1,90).."..."
                end
                coroutine.wrap(function()
                        for i = 1,0,-1/#m1 do
                                DeModel.Frame.Transparency = i
                                wait(1/60)
                        end
                end)()
                if #m1 < 30 then
                        for i = 1,#m1 do
                                CreateLetter(m1:sub(i,i),i*5,0,cl)
                                wait(1/60)
                        end
                elseif #m1 <= 60 then
                        for i = 1,30 do
                                CreateLetter(m1:sub(i,i),i*5,0,cl)
                                wait(1/60)
                        end
                        for i = 31,#m1 do
                                CreateLetter(m1:sub(i,i),(i-30)*5,10,cl)
                                wait(1/60)
                        end
                elseif #m1 >= 60 then
                        for i = 1,30 do
                                CreateLetter(m1:sub(i,i),i*5,0,cl)
                                wait(1/60)
                        end
                        for i = 31,60 do
                                CreateLetter(m1:sub(i,i),(i-30)*5,10,cl)
                                wait(1/60)
                        end
                        for i = 61,#m1 do
                                CreateLetter(m1:sub(i,i),(i-60)*5,20,cl)
                                wait(1/60)
                        end
                end
        end)
end)