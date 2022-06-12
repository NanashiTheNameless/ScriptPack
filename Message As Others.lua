local Target = "HarambeGuy"
local TextColor = "Red" -- Red, Blue, Green
local Message = "#RIPHarambe"

local ChatService = game:GetService("Chat")
local Speak = game.Workspace[Target].Head
 
ChatService:Chat(Speak, Message, TextColor)