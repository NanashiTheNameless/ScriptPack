local Questions = {
	{
		Type = "Multiple Choice",
		Question = "What keyword do you use to stop a loop?",
		"stop",
		"exit",
		"break",
		"continue",
		Answer = 3
	}, {
		Type = "True or False",
		Question = "A boolean value can be three different values.",
		Answer = false
	}, {
		Type = "True or False",
		Question = "There are two Vector structs in ROBLOX.",
		Answer = true
	}, {
		Type = "Multiple Choice",
		Question = "How many values make up a CFrame?",
		"None",
		"3",
		"9",
		"12",
		"None of the above",
		Answer = 4
	}, {
		Type = "Multiple Choice",
		Question = "If a Vector2 holds 2 values, a Vector3 holds 3, then how many values does a UDim2 hold?",
		"1",
		"2",
		"3",
		"4",
		Answer = 4
	}, {
		Type = "Multiple Choice",
		Question = "Which one of these choices is NOT a conditional keyword?",
		"if",
		"and",
		"break",
		"or",
		Answer = 3
	}, {
		Type = "True or False",
		Question = "Is elseif a valid keyword?",
		Answer = true
	}, {
		Type = "True or False",
		Question = "A BlockMesh a valid object class.",
		Answer = true
	}, {
		Type = "Multiple Choice",
		Question = "What kind of object is parented to game and is RobloxLocked?",
		"a game-helper",
		"a service",
		"a variable",
		Answer = 2
	}, {
		Type = "True or False",
		Question = "A CoreScript a valid object class.",
		Answer = true
	}, {
		Type = "True or False",
		Question = "A ServerScript a valid object class.",
		Answer = false
	}, {
		Type = "Multiple Choice",
		Question = "Which of the following have the BreakJoints method?",
		"Model",
		"Part",
		"All of the above",
		"None of the above",
		Answer = 3
	}, {
		Type = "Multiple Choice",
		Question = "Which of the following is equal to 1.#INF?",
		"math.huge",
		"1.#IND",
		"math.sqrt(-1)",
		"-1",
		Answer = 1
	}, {
		Type = "Multiple Choice",
		Question = "What is the global table called?",
		"_shared",
		"_G",
		"_global",
		Answer = 2
	}, {
		Type = "Multiple Choice",
		Question = "What does pcall stand for?",
		"call",
		"public call",
		"power call",
		"protected call",
		Answer = 4
	}, {
		Type = "True or False",
		Question = "call is a valid function.",
		Answer = true
	}, {
		Type = "Multiple Choice",
		Question = "What function pauses the current thread in a RBX.Lua thread?",
		"wait",
		"pause",
		"delay",
		"Spawn",
		Answer = 1
	}, {
		Type = "Multiple Choice",
		Question = "What are coroutines?",
		"Sub-threads",
		"Coordinating routines",
		"A way to spawn routines",
		Answer = 1
	}, {
		Type = "Multiple Choice",
		Question = "What is a recursive function?",
		"A function that traces a curve or wave",
		"A function that calls itself",
		"A function that cannot be called",
		Answer = 2
	}, {
		Type = "Multiple Choice",
		Question = "Which of the following is not a property of a Weld?",
		"C1",
		"C2",
		"C0",
		"Part0",
		"Part1",
		Answer = 2
	}, {
		Type = "True or False",
		Question = "UDim1 is a valid struct.",
		Answer = false
	}, {
		Type = "True or False",
		Question = "The Anchored property in BasePart a boolean.",
		Answer = true
	}, {
		Type = "Multiple Choice",
		Question = "Which of the following words does NOT describe the term and?",
		"operator",
		"conditional keyword",
		"user",
		Answer = 3
	}, {
		Type = "Multiple Choice",
		Question = "x = (((x or -2) + 5) * 2)",
		"x == 3",
		"x == 6",
		"x == 12",
		"x == nil",
		Answer = 2
	}, {
		Type = "Multiple Choice",
		Question = "Which of the following function calls correctly cleans up the memory?",
		"collectgarbage(\"clean\")",
		"cleangarbage(\"get\")",
		"collectgarbage(\"collect\")",
		"garbagecollect(\"collect\")",
		Answer = 3
	}, {
		Type = "Multiple Choice",
		Question = "Which of the following solutions contains an error?",
		"if not (function() end)() then end",
		"(function() return y end)()",
		"function x() end x()",
		"(function y() end)()",
		Answer = 4
	}, {
		Type = "Multiple Choice",
		Question = "Which of the following is NOT a valid BrickColor?",
		"Toothpaste",
		"Crimson",
		"Grime",
		"New Yeller",
		"None of the above",
		Answer = 2
	}, {
		Type = "True or False",
		Question = "The escape character in strings changes when using some string functions.",
		Answer = true
	}
}


local function Quiz(Player)
	local Correct = 0
	local Incorrect = 0
	local Gui = Instance.new("ScreenGui", Player.PlayerGui)
	Gui.Name = "Quiz"
	local Background = Instance.new("Frame", Gui)
	Background.Name = "Background"
	Background.Size = UDim2.new(1, -50, 1, -175)
	Background.Position = UDim2.new(0, 25, 0, 150)
	Background.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
	Background.BackgroundColor3 = Color3.new(0, 0, 0)
	local Pane = Instance.new("Frame", Background)
	Pane.Name = "Pane"
	Pane.Size = UDim2.new(0, 150, 1, -10)
	Pane.Position = UDim2.new(0, 5, 0, 5)
	Pane.BorderSizePixel = 1
	Pane.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
	Pane.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
	local Title = Instance.new("TextLabel", Pane)
	Title.Name = "Title"
	Title.Size = UDim2.new(1, -10, 0, 90)
	Title.Position = UDim2.new(0, 5, 0, 5)
	Title.BorderSizePixel = 1
	Title.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
	Title.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
	Title.Text = "The\nNOOB\nTEST"
	Title.TextColor3 = Color3.new(1, 0, 0)
	Title.TextWrap = true
	Title.Font = "ArialBold"
	Title.FontSize = "Size24"
	coroutine.wrap(function()
		R, G, B = 255, 0, 0
		Mode = 2
		Add = 5
		while Title.Parent ~= nil do
			if Mode == 1 then
				R = R + Add
				B = B - Add
				if R >= 255 then
					Mode = 2
					R = 255
					B = 0
				end
			elseif Mode == 2 then
				R = R - Add
				G = G + Add
				if G >= 255 then
					Mode = 3
					R = 0
					G = 255
				end
			elseif Mode == 3 then
				G = G - Add
				B = B + Add
				if B >= 255 then
					Mode = 1
					G = 0
					B = 255
				end
			end
			Title.TextColor3 = Color3.new(R / 255, G / 255, B / 255)
			wait()
		end
	end)()
	local CorrectLabel = Instance.new("TextLabel", Pane)
	CorrectLabel.Name = "Correct"
	CorrectLabel.Size = UDim2.new(1, -10, 0, 90)
	CorrectLabel.Position = UDim2.new(0, 5, 0, 100)
	CorrectLabel.BorderSizePixel = 1
	CorrectLabel.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
	CorrectLabel.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
	CorrectLabel.Text = ""
	CorrectLabel.TextXAlignment = "Left"
	CorrectLabel.TextColor3 = Color3.new(0, 1, 0)
	CorrectLabel.TextWrap = true
	CorrectLabel.Font = "ArialBold"
	CorrectLabel.FontSize = "Size24"
	local IncorrectLabel = Instance.new("TextLabel", Pane)
	IncorrectLabel.Name = "Incorrect"
	IncorrectLabel.Size = UDim2.new(1, -10, 0, 90)
	IncorrectLabel.Position = UDim2.new(0, 5, 0, 195)
	IncorrectLabel.BorderSizePixel = 1
	IncorrectLabel.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
	IncorrectLabel.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
	IncorrectLabel.Text = ""
	IncorrectLabel.TextXAlignment = "Left"
	IncorrectLabel.TextColor3 = Color3.new(1, 0, 0)
	IncorrectLabel.TextWrap = true
	IncorrectLabel.Font = "ArialBold"
	IncorrectLabel.FontSize = "Size24"
	coroutine.wrap(function()
		while CorrectLabel.Parent ~= nil and IncorrectLabel.Parent ~= nil do
			CorrectLabel.Text = " Correct:\n " ..Correct
			IncorrectLabel.Text = " Incorrect:\n " ..Incorrect
			wait()
		end
	end)()
	local Timer = Instance.new("TextLabel", Pane)
	Timer.Name = "Timer"
	Timer.Size = UDim2.new(1, -10, 0, 90)
	Timer.Position = UDim2.new(0, 5, 0, 290)
	Timer.BorderSizePixel = 1
	Timer.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
	Timer.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
	Timer.Text = ""
	Timer.TextColor3 = Color3.new(0, 0, 0)
	Timer.TextWrap = true
	Timer.Font = "ArialBold"
	Timer.FontSize = "Size24"
	local Question = Instance.new("TextLabel", Background)
	Question.Name = "Question"
	Question.Size = UDim2.new(1, -165, 0, 100)
	Question.Position = UDim2.new(0, 160, 0, 5)
	Question.BorderSizePixel = 1
	Question.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
	Question.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
	Question.Text = ""
	Question.TextColor3 = Color3.new(0, 0, 0)
	Question.TextXAlignment = "Left"
	Question.TextYAlignment = "Top"
	Question.TextWrap = true
	Question.Font = "Arial"
	Question.FontSize = "Size24"
	local QuestionArea = Instance.new("Frame", Background)
	QuestionArea.Name = "QuestionArea"
	QuestionArea.Size = UDim2.new(1, -165, 1, -140)
	QuestionArea.Position = UDim2.new(0, 160, 0, 105)
	QuestionArea.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
	QuestionArea.BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
	local Status = Instance.new("TextLabel", Background)
	Status.Name = "Status"
	Status.Size = UDim2.new(1, -165, 0, 30)
	Status.Position = UDim2.new(0, 160, 1, -35)
	Status.BorderSizePixel = 1
	Status.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
	Status.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
	Status.Text = ""
	Status.TextColor3 = Color3.new(0, 0, 0)
	Status.TextXAlignment = "Left"
	Status.Font = "Arial"
	Status.FontSize = "Size14"
	local Choice = Instance.new("TextButton")
	Choice.Name = "Choice"
	Choice.Size = UDim2.new(1, -10, 0, 50)
	Choice.BorderSizePixel = 1
	Choice.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
	Choice.Text = ""
	Choice.TextColor3 = Color3.new(0, 0, 0)
	Choice.TextXAlignment = "Left"
	Choice.Font = "Arial"
	Choice.FontSize = "Size36"
	local function NewQuestion()
		for _, Part in pairs(QuestionArea:GetChildren()) do
			Part:Remove()
		end
		Status.Text = ""
		local Answered = false
		local Time = 20
		local SelectedQuestion = Questions[math.random(1, #Questions)]
		Question.Text = SelectedQuestion.Question
		if SelectedQuestion.Type == "Multiple Choice" then
			for i, Answer in ipairs(SelectedQuestion) do
				local NewChoice = Choice:Clone()
				NewChoice.Parent = QuestionArea
				NewChoice.Text = "   " ..i.. ": " ..Answer
				NewChoice.Position = UDim2.new(0, 5, 0, 5 + (55 * (i - 1)))
				NewChoice.MouseButton1Down:connect(function()
					if Answered == true then return false end
					Answered = true
					for _, Part in pairs(QuestionArea:GetChildren()) do
						Part.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
						Part.AutoButtonColor = false
					end
					if i == SelectedQuestion.Answer then
						Status.Text = "   Correct!"
						Correct = Correct + 1
						wait(1)
						NewQuestion()
					else
						Status.Text = "   Incorrect! The correct answer is answer number " ..SelectedQuestion.Answer.. "."
						Incorrect = Incorrect + 1
						wait(5)
						NewQuestion()
					end
				end)
			end
		elseif SelectedQuestion.Type == "True or False" then
			for i = 1, 2 do
				local NewChoice = Choice:Clone()
				NewChoice.Parent = QuestionArea
				NewChoice.Text = "   " ..i.. ": " ..(i == 1 and "True" or "False")
				NewChoice.Position = UDim2.new(0, 5, 0, 5 + (55 * (i - 1)))
				NewChoice.MouseButton1Down:connect(function()
					if Answered == true then return false end
					Answered = true
					for _, Part in pairs(QuestionArea:GetChildren()) do
						Part.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
						Part.AutoButtonColor = false
					end
					if (i == 1 and SelectedQuestion.Answer == true) or (i == 2 and SelectedQuestion.Answer == false) then
						Status.Text = "   Correct!"
						Correct = Correct + 1
						wait(1)
						NewQuestion()
					else
						Status.Text = "   Incorrect! The correct answer is " ..tostring(SelectedQuestion.Answer).. "."
						Incorrect = Incorrect + 1
						wait(5)
						NewQuestion()
					end
				end)
			end
		end
		coroutine.wrap(function()
			while Answered == false and Time > 0 do
				Timer.Text = "Time left:\n" ..Time
				Time = Time - 1
				wait(1)
			end
			if Answered == false then
				Answered = true
				for _, Part in pairs(QuestionArea:GetChildren()) do
					Part.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
					Part.AutoButtonColor = false
				end
				Incorrect = Incorrect + 1
				Status.Text = "   You ran out of time!"
				wait(5)
				NewQuestion()
			end
		end)()
	end
	NewQuestion()
end
for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
	Quiz(Player)
end