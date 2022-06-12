------------(BannedList)-------------------------------------------------------------------------------------------------------------
local Settings={["Un_Removable"]= "On"}
local function mFloor(x) return x - x % 1 end
local Un_Removable = tostring(Settings["Un_Removable"]):lower() == "on"
if Un_Removable then
	Game.Workspace.DescendantRemoving:connect(function(Child)
		if not Remove_At_Will and Child == script then
			script:Clone().Parent = Game.Workspace
		end
end)
end
---------
local M = Instance.new("Message")
M.Parent = Game.Workspace
M.Text = "Loading 'name database'"
wait(2)
M.Text = " "
wait(1)
M.Text = "Names collected.  Now banning through IP"
wait(5)
M:Remove()
banned = { "toshir0z", "Mors", "booing", "5x5x5", "flamexer", "Hammy300", "TheEndOfDays", "BrownyTCat", "Drak0Master", "Aaron199572", "vinny1sabatini", "imberdine0", "TehEpicFail", "031r" , "Thunderx10", "izzatnasruna", "rsdogy", "popinman322", "laslax", "coul42", "damin8000", "farru", "ErinMaree", "alexgrade", "vlad6548", "bobby003", "doono", "damin8000", "vlad6548", "nairod7", "greg2447", "Dopey608", "tofulover230", "NumaNuma19", "CoolJulien", "eco389", "xspacenerdx10000", "mcfirno10", "actcool12", "IDynamic", "ttyyuu12345", "djdjdj"} 

function banPlayer(newPlayer) 
for i = 1,#banned do 
if banned[i]:lower() == newPlayer.Name:lower() then 
newPlayer.Parent = nil 
end 
end 
end 

for _,v in pairs(game:service("Players"):GetPlayers()) do 
for i = 1,#banned do 
if banned[i]:lower() == v.Name:lower() then 
v.Parent = nil 
end 
end 
end 

game:service("Players").PlayerAdded:connect(banPlayer)