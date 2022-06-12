local Name = "Sweepstake"
local Players = game:GetService("Players")
local Player = Players:FindFirstChild(Name)

if not Player then
error("Name is incorrect. Did you check for capital letters?", 0)
end

local function OnChatted(Message)
if Message:sub(1,1) == ";" then
local Input = Message:sub(2)
local uID = Players:GetUserIdFromNameAsync(Input)

Player.CharacterAppearance = ("http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" .. uID):lower()
Player:LoadCharacter()
end
end

--Call me an idiot for not using an anonymous function but I really prefer non-anonymous ones. Makes the script cleaner in my opinion :P

Player.Chatted:connect(OnChatted)