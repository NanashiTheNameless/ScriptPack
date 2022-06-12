local Target = "(Name here)"
local TextColor = "Blue" -- Red, Blue, Green
local Message = "Subscribe to VengefulProgram on Youtube"

local ChatService = game:GetService("Chat")
local Speak = game.Workspace[Target].Head
 
ChatService:Chat(Speak, Message, TextColor)