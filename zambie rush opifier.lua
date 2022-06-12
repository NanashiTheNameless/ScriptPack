-- Maide fur zambie rush 
--Made by Someone
 -- Equip weapon then exe the script
 
changewalkspeed = true
walkspeed = 60

char = game:GetService("Players").LocalPlayer.Character
DISGUN = char:FindFirstChild("AssaultRifle") -- Change this to the gun name you want Example PartyRocker No spaces
if DISGUN then
DISGUN.Configuration.Range.Value = 999999 -- < You can edit this value if you want: How far can your bullet go?
DISGUN.Configuration.FullAuto.Value = true -- < You can edit this value if you want: True/False Fully auto 
DISGUN.Configuration.Spread.Value = 0 -- < You can edit this value if you want: Does your bullet fly side to side? This will fix it
DISGUN.Configuration.Burst.Value = 999 -- < You can edit this value if you want: How many bullets per shot?
DISGUN.Configuration.Damage.Value = 999999 -- < You can edit this value if you want: How much damage you want to do?
DISGUN.Configuration.Range.Value = 999999 --< You can edit this value if you want: How far can your bullet go? 
DISGUN.Configuration.Firerate.Value = 9999 -- < You can edit this value if you want: HOW FAST CAN GUN SHOOT?!
end
if changewalkspeed then
for i,v in pairs(char:GetChildren()) do
if v.ClassName == "Humanoid" then
v.WalkSpeed = walkspeed
end
end
end