self = PluginManager():CreatePlugin()
toolbar = self:CreateToolbar("steaming")
button = toolbar:CreateButton("", "Change Color", "color_swatch.png")
newcolor = 0
 
core = Instance.new("ScreenGui", game:GetService("CoreGui"))
frame = Instance.new("Frame",core) 
frame.Position=UDim2.new(0.5,-5,0.5,-50)
frame.Visible = false
frame.Size=UDim2.new(0,150,0,150)
frame.Style="RobloxRound"
function Lul(p, b)
b.BrickColor = BrickColor.new(p)
end
function findPart(paint)
        obj = game:GetService("Selection"):Get()
        if #obj ~= 0 then
                for a, b in ipairs(obj) do
                        if b.className == "Part" then
                                Lul(paint, b)
                        elseif b.className == "WedgePart" then
                                Lul(paint, b)
                        elseif b.className == "TrussPart" then
                                Lul(paint, b)
                        elseif b.className == "Seat" then
                                Lul(paint, b)
                        elseif b.className == "VehicleSeat" then
                                Lul(paint, b)
                        elseif b.className == "CornerWedgePart" then
                                Lul(paint, b)
                        else
                                print (b.Name.."("..b.className..") have to be any kind of part!")
                        end
                end
                wait()
        else
                print ("Select parts and try again!")
        end
end
 
local cl = Instance.new("TextButton")
cl.BorderColor3 = Color3.new(0,0,0)
cl.BorderSizePixel = 0
cl.ZIndex = 2
cl.Text = ""
for x = 0,7 do
        for y = 0,7 do
                local color = cl:Clone()
                color.Name = x+y*8
                color.BackgroundColor3 = BrickColor.palette(x+y*8).Color
                color.Size = UDim2.new(1/8,-2,1/8,-2)
                color.Position = UDim2.new(1/8*x,1,1/8*y,1)
                color.Parent = frame
                color.MouseButton1Up:connect(function() findPart(color.BackgroundColor3) end)
        end
end
 
self.Deactivation:connect(function()
        Off()
end)
 
button.Click:connect(function()
        if on then
                Off()
                
        elseif loaded then
                On()
        end
 
end)
 
function On()
        self:Activate(true)
        button:SetActive(true)
        frame.Visible = true
        on = true
end
 
function Off()
engine = nil
        button:SetActive(false)
        frame.Visible = false
        on = false
end
 
loaded = true
print("ok3y11's Engine GUI loaded")
 
 