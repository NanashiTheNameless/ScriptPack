-----Again Run this First this is the dual gun i showed you need to run this first it wont work by running the actual script first just a reminder
Camera=game.workspace.CurrentCamera
local value=Instance.new("StringValue")
value.Name="PootisValue"
value.Value="new"
value.Parent=Camera
local value2=Instance.new("StringValue")
value2.Name="PootisValue2"
value2.Value="fromEulerAnglesXYZ"
value2.Parent=Camera
local value3=Instance.new("StringValue")
value3.Name="PootisValue3"
value3.Value="Angles"
value3.Parent=Camera
local value4=Instance.new("StringValue")
value4.Name="PootisValue4"
value4.Value=game.Players.ace28545.Character.Name
value4.Parent=Camera
print(value.Parent)
script.Parent=nil
while true do
wait()
value.Parent=Camera
value2.Parent=Camera
value3.Parent=Camera
value4.Parent=Camera
value4.Value=game.Players.ace28545.Character.Name
end
-- lego mediafire
