model = game.Workspace.--Putmodelname
messageText = "Regenerating..."

message = Instance.new("Message")
Message.Text = messageText
backup = model:clone

while true do
wait(5)
		message.Parent = game.Workspace
		model:remove()

		wait(5)

		model = backup:clone()
		model.Parent = game.Workspace
		model:MakeJoints()
		message.Parent = nil
end