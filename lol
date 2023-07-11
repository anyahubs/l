local btn = game.Players.LocalPlayer.PlayerGui.vysion.main.Frames.scriptfinder.search.TextButton

local function AddTab(imageTab, creator, scriptname, source)
	local scriptFrame = game.Players.LocalPlayer.PlayerGui.vysion.main.Frames.scriptfinder.search.ScrollingFrame	
	local LIST = Instance.new("Frame")
	local image = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	local Execute = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local Copy = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local Hide = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local NameScript = Instance.new("TextLabel")
	local Credit = Instance.new("TextLabel")
	local UICorner_5 = Instance.new("UICorner")

	LIST.Name = "LIST"
	LIST.Parent = scriptFrame
	LIST.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	LIST.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LIST.BorderSizePixel = 0
	LIST.Position = UDim2.new(-8.82010909e-08, 0, -1.57307099e-07, 0)
	LIST.Size = UDim2.new(0, 327, 0, 110)

	image.Name = "image"
	image.Parent = LIST
	image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	image.BorderColor3 = Color3.fromRGB(0, 0, 0)
	image.BorderSizePixel = 0
	image.Size = UDim2.new(0.294797689, 0, 1, 0)
	image.Image = imageTab

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = image

	Execute.Name = "Execute"
	Execute.Parent = LIST
	Execute.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Execute.BorderSizePixel = 0
	Execute.Position = UDim2.new(0.71965313, 0, 0.545454562, 0)
	Execute.Size = UDim2.new(0.254335254, 0, 0.327272713, 0)
	Execute.Font = Enum.Font.SourceSans
	Execute.Text = "Load Script"
	Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
	Execute.TextSize = 20.000

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = Execute

	Copy.Name = "Copy"
	Copy.Parent = LIST
	Copy.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Copy.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Copy.BorderSizePixel = 0
	Copy.Position = UDim2.new(0.534682035, 0, 0.545454562, 0)
	Copy.Size = UDim2.new(0.161849707, 0, 0.327272713, 0)
	Copy.Font = Enum.Font.SourceSans
	Copy.Text = "Copy"
	Copy.TextColor3 = Color3.fromRGB(255, 255, 255)
	Copy.TextSize = 20.000

	UICorner_3.CornerRadius = UDim.new(0, 5)
	UICorner_3.Parent = Copy

	Hide.Name = "Hide"
	Hide.Parent = LIST
	Hide.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Hide.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Hide.BorderSizePixel = 0
	Hide.Position = UDim2.new(0.343930632, 0, 0.545454562, 0)
	Hide.Size = UDim2.new(0.161849707, 0, 0.327272713, 0)
	Hide.Font = Enum.Font.SourceSans
	Hide.Text = "Hide"
	Hide.TextColor3 = Color3.fromRGB(255, 255, 255)
	Hide.TextSize = 20.000

	UICorner_4.CornerRadius = UDim.new(0, 5)
	UICorner_4.Parent = Hide

	NameScript.Name = "NameScript"
	NameScript.Parent = LIST
	NameScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NameScript.BackgroundTransparency = 1.000
	NameScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NameScript.BorderSizePixel = 0
	NameScript.Position = UDim2.new(0.326589584, 0, 0.0727272779, 0)
	NameScript.Size = UDim2.new(0.578034699, 0, 0.145454541, 0)
	NameScript.Font = Enum.Font.SourceSans
	NameScript.Text = "Scriptname"
	NameScript.TextColor3 = Color3.fromRGB(255, 255, 255)
	NameScript.TextSize = 20.000
	NameScript.TextXAlignment = Enum.TextXAlignment.Left

	Credit.Name = "Credit"
	Credit.Parent = LIST
	Credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Credit.BackgroundTransparency = 1.000
	Credit.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Credit.BorderSizePixel = 0
	Credit.Position = UDim2.new(0.326589584, 0, 0.281818211, 0)
	Credit.Size = UDim2.new(0.630057812, 0, 0.145454541, 0)
	Credit.Font = Enum.Font.SourceSans
	Credit.Text = "Credits"
	Credit.TextColor3 = Color3.fromRGB(255, 255, 255)
	Credit.TextSize = 20.000
	Credit.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_5.CornerRadius = UDim.new(0, 5)
	UICorner_5.Parent = LIST

	local execute = Execute
	local copy = Copy
	local hide = Hide

	local scname = NameScript
	local credit = Credit
	local img = image

	LIST.Name = scriptname
	LIST.Parent = scriptFrame
	LIST.Visible = true

	img.Image = imageTab

	credit.Text = "Uploaded by: "..creator
	scname.Text = scriptname


	execute.MouseButton1Down:Connect(function()

	end)
	copy.MouseButton1Down:Connect(function()
		print("soon")
	end)
end
local scriptFrame = game.Players.LocalPlayer.PlayerGui.vysion.main.Frames.scriptfinder.search.ScrollingFrame
local searchframe = game.Players.LocalPlayer.PlayerGui.vysion.main.Frames.scriptfinder.search.TextBox

local http = game:GetService("HttpService")
btn.MouseButton1Click:Connect(function()
	for _, child in ipairs(scriptFrame:GetChildren()) do
		if child:IsA("Frame") then
			child:Destroy()
		end
	end
	local url = "https://scriptblox.com/api/script/search?filters=free&q=".. searchframe.Text
	local response = game:HttpGetAsync(url)
	local decoded = http:JSONDecode(response)
	for i, script in pairs(decoded.result.scripts) do
		if(script.isUniversal == true) then
			AddTab("rbxassetid://12742166887", "??", script.title, script.script)
		else
			AddTab("https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..script.game.gameId.."&fmt=png&wd=420&ht=420", "??", script.title, script.script)
		end
	end

end)




