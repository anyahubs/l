
	local GUI = Instance.new("ScreenGui")
	local Main = Instance.new("Frame", GUI)
	local title = Instance.new("TextLabel", Main)
	local message = Instance.new("TextLabel", Main)
	local message2 = Instance.new("TextLabel", Main)
	local ImageLabel = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	GUI.Name = "NotificationOof"
	GUI.Parent = game.Players.LocalPlayer.PlayerGui
	Main.Name = "MainFrame"
	Main.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(1, 5, 0.5, 50)
	Main.Size = UDim2.new(0, 330, 0, 100)

	title.BackgroundColor3 = Color3.new(0, 0, 0)
	title.BackgroundTransparency = 0.89999997615814
	title.Size = UDim2.new(1, 0, 0, 30)
	title.Font = Enum.Font.SourceSansSemibold
	title.Text = titletxt
	title.TextColor3 = Color3.new(1, 1, 1)
	title.TextSize = 17

	message.BackgroundColor3 = Color3.new(0, 0, 0)
	message.BackgroundTransparency = 1
	message.Position = UDim2.new(0.05, 0, 0, 25)
	message.Size = UDim2.new(1, 0, 1, -30)
	message.Font = Enum.Font.SourceSans
	message.Text = text
	message.TextColor3 = Color3.new(1, 1, 1)
	message.TextSize = 25

	message2.BackgroundColor3 = Color3.new(0, 0, 0)
	message2.BackgroundTransparency = 1
	message2.Position = UDim2.new(0, 0, 0, 45)
	message2.Size = UDim2.new(1, 0, 1, -30)
	message2.Font = Enum.Font.SourceSans
	message2.Text = text2
	message2.TextColor3 = Color3.new(1, 1, 1)
	message2.TextSize = 20

	ImageLabel.Parent = Main
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.0212820557, 0, 0.363888896, 0)
	ImageLabel.Size = UDim2.new(0, 58, 0, 58)
	ImageLabel.Image = image
	ImageLabel.BackgroundTransparency = 1

	UICorner.CornerRadius = UDim.new(1, 8)
	UICorner.Parent = ImageLabel

	wait(0.1)
	Main:TweenPosition(UDim2.new(1, -330, 0.5, 50), "Out", "Sine", 0.5)
	wait(time)
	Main:TweenPosition(UDim2.new(1, 5, 0.5, 50), "Out", "Sine", 0.5)
	wait(0.6)
	GUI:Destroy();
