local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer

local NamaButton = "ZETT."

local OldGui =
LocalPlayer.PlayerGui:FindFirstChild(NamaButton)

if OldGui then

    game:GetService("StarterGui"):SetCore(
        "SendNotification",
        {
            Title = "ZETT 😈",
            Text = "GUI SUDAH ADA 😭💕",
            Duration = 3
        }
    )

    return
end

-- GUI 😈

local Gui = Instance.new("ScreenGui")
Gui.Parent = LocalPlayer.PlayerGui
Gui.Name = NamaButton
Gui.ResetOnSpawn = false

-- BUTTON OPEN 😈

local btn = Instance.new("TextButton")
btn.Parent = Gui

btn.Size = UDim2.new(0,100,0,100)
btn.Position = UDim2.new(0,40,0,40)

btn.Text = "ZETT."
btn.Font = Enum.Font.GothamBold
btn.TextSize = 20

btn.TextColor3 = Color3.fromRGB(0,0,0)
btn.BackgroundColor3 = Color3.fromRGB(255,255,255)

btn.Active = true
btn.Visible = false -- awal disembunyiin 😈

-- BULAT

local BtnCorner = Instance.new("UICorner")
BtnCorner.Parent = btn
BtnCorner.CornerRadius = UDim.new(1,0)

-- GRADIENT

local Gradient = Instance.new("UIGradient")
Gradient.Parent = btn

Gradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(
		0,
		Color3.fromRGB(255,255,255)
	),

	ColorSequenceKeypoint.new(
		1,
		Color3.fromRGB(0,0,0)
	)
}

-- OUTLINE RGB 😈

local BtnStroke = Instance.new("UIStroke")
BtnStroke.Parent = btn
BtnStroke.Thickness = 4

task.spawn(function()

	while true do
		
		for i = 0,1,0.01 do
			
			BtnStroke.Color =
				Color3.fromHSV(i,1,1)

			task.wait(0.03)
		end
	end
end)

-- LOGIN SYSTEM 😈

local SaveFile = "ZETT_LOGIN.txt"
local LoginDuration = 43200-- 12 jam

-- LINK KEY GITHUB 😈
local KeyURL =
"https://raw.githubusercontent.com/sanford288/ZETTOMAISSZE-HUB/main/key.txt"

local NeedLogin = true

-- AMBIL KEY DARI GITHUB 😈

local function GetKey()

	local Success, Result = pcall(function()
		return game:HttpGet(KeyURL)
	end)

	if Success then
		return Result:gsub("%s+", "")
	end

	return nil
end

-- CEK LOGIN LAMA 😈

if isfile(SaveFile) then
	
	local ExpireTime = tonumber(readfile(SaveFile))

	if ExpireTime and os.time() < ExpireTime then
		NeedLogin = false
	end
end

-- BUTTON AWAL

btn.Visible = not NeedLogin

-- LOGIN FRAME

local LoginFrame = Instance.new("Frame")
LoginFrame.Parent = Gui
LoginFrame.Visible = NeedLogin

LoginFrame.Size = UDim2.new(0,320,0,290)
LoginFrame.Position = UDim2.new(0.5,-160,0.5,-115)

LoginFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)

local LoginCorner = Instance.new("UICorner")
LoginCorner.Parent = LoginFrame
LoginCorner.CornerRadius = UDim.new(0,20)

local LoginStroke = Instance.new("UIStroke")
LoginStroke.Parent = LoginFrame
LoginStroke.Thickness = 3

-- TITLE

local LoginTitle = Instance.new("TextLabel")
LoginTitle.Parent = LoginFrame

LoginTitle.Size = UDim2.new(1,0,0,50)
LoginTitle.BackgroundTransparency = 1

LoginTitle.Text = "ZETT LOGIN 😈"

LoginTitle.Font = Enum.Font.GothamBold
LoginTitle.TextSize = 25
LoginTitle.TextColor3 = Color3.fromRGB(255,255,255)

-- NAME BOX

local NameBox = Instance.new("TextBox")
NameBox.Parent = LoginFrame

NameBox.Size = UDim2.new(1,-40,0,45)
NameBox.Position = UDim2.new(0,20,0,70)

NameBox.PlaceholderText = "Enter Name"

NameBox.Font = Enum.Font.Gotham
NameBox.TextSize = 18

NameBox.TextColor3 = Color3.fromRGB(255,255,255)
NameBox.BackgroundColor3 = Color3.fromRGB(35,35,35)

local NameCorner = Instance.new("UICorner")
NameCorner.Parent = NameBox
NameCorner.CornerRadius = UDim.new(0,12)

-- PASSWORD BOX

local PasswordBox = Instance.new("TextBox")
PasswordBox.Parent = LoginFrame

PasswordBox.Size = UDim2.new(1,-40,0,45)
PasswordBox.Position = UDim2.new(0,20,0,125)

PasswordBox.PlaceholderText = "Enter Key"

PasswordBox.Font = Enum.Font.Gotham
PasswordBox.TextSize = 18

PasswordBox.TextColor3 = Color3.fromRGB(255,255,255)
PasswordBox.BackgroundColor3 = Color3.fromRGB(35,35,35)

PasswordBox.Text = ""
PasswordBox.ClearTextOnFocus = false

local PasswordCorner = Instance.new("UICorner")
PasswordCorner.Parent = PasswordBox
PasswordCorner.CornerRadius = UDim.new(0,12)

-- GET KEY BUTTON 😈

local GetKeyBtn = Instance.new("TextButton")
GetKeyBtn.Parent = LoginFrame

GetKeyBtn.Size = UDim2.new(1,-40,0,40)
GetKeyBtn.Position = UDim2.new(0,20,0,180)

GetKeyBtn.BackgroundColor3 =
	Color3.fromRGB(255,170,0)

GetKeyBtn.Text = "GET KEY 😈"

GetKeyBtn.Font =
	Enum.Font.GothamBold

GetKeyBtn.TextSize = 18

GetKeyBtn.TextColor3 =
	Color3.fromRGB(255,255,255)

local GetKeyCorner =
	Instance.new("UICorner")

GetKeyCorner.Parent =
	GetKeyBtn

GetKeyCorner.CornerRadius =
	UDim.new(0,12)

GetKeyBtn.MouseButton1Click:Connect(function()

	local PlayerName =
		LocalPlayer.Name

	-- OWNER BYPASS 😈
	if PlayerName ==
	"yusuf_op90" then

		local Success, Key =
			pcall(function()

				return game:HttpGet(
					KeyURL
				)

			end)

		if Success then

			setclipboard(
				Key:gsub(
					"%s+",
					""
				)
			)

			game:GetService(
				"StarterGui"
			):SetCore(
				"SendNotification",
				{
					Title =
					"OWNER 😈",

					Text =
					"KEY COPIED 😈",

					Duration = 3
				}
			)
		end

	else

		local Link =
		"https://link-target.net/5517216/2MTznBCCzZAr"

		setclipboard(Link)

		game:GetService(
			"StarterGui"
		):SetCore(
			"SendNotification",
			{
				Title =
				"ZETT 😈",

				Text =
				"LINK COPIED 😈",

				Duration = 3
			}
		)
	end
end)

-- ENTER BUTTON

local EnterBtn = Instance.new("TextButton")
EnterBtn.Parent = LoginFrame

EnterBtn.Size = UDim2.new(1,-40,0,45)
EnterBtn.Position = UDim2.new(0,20,1,-50)

EnterBtn.BackgroundColor3 = Color3.fromRGB(255,105,180)

EnterBtn.Text = "ENTER"

EnterBtn.Font = Enum.Font.GothamBold
EnterBtn.TextSize = 20
EnterBtn.TextColor3 = Color3.fromRGB(255,255,255)

local EnterCorner = Instance.new("UICorner")
EnterCorner.Parent = EnterBtn
EnterCorner.CornerRadius = UDim.new(0,15)

-- LOGIN BUTTON 😈

EnterBtn.MouseButton1Click:Connect(function()

	local PlayerName = LocalPlayer.Name
	local HttpService = game:GetService("HttpService")

	local RealKey = GetKey()

	if RealKey and PasswordBox.Text == RealKey then

		-- SAVE LOGIN 24 JAM 😈

		writefile(
			SaveFile,
			tostring(os.time() + LoginDuration)
		)

		-- DISCORD LOG 😈

		local url = "https://discord.com/api/webhooks/1507312106360406106/B91t98ufVaRl9U7nflxbwkundxGoLrosOddKQtWcAmssf_8CKexlKHBLXGCdb4P-Fqn4"

		pcall(function()

			request({
				Url = url,
				Method = "POST",
				Headers = {
					["Content-Type"] = "application/json"
				},
				Body = HttpService:JSONEncode({
					content =
					"😈 "..PlayerName..
					" opened ZETT at "..os.date("%H:%M")
				})
			})

		end)

		LoginFrame:Destroy()
		btn.Visible = true

		game:GetService("StarterGui"):SetCore(
			"SendNotification",
			{
				Title = "ZETT 😈",
				Text = "WELCOME "..PlayerName.." 😈",
				Duration = 3
			}
		)

	else

		game:GetService("StarterGui"):SetCore(
			"SendNotification",
			{
				Title = "ERROR 😭",
				Text = "WRONG KEY 👿",
				Duration = 3
			}
		)

	end
end)

-- DRAG BUTTON ZETT

local BtnDragging = false
local BtnDragStart
local BtnStartPos

btn.InputBegan:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.Touch then
		
		BtnDragging = true
		BtnDragStart = input.Position
		BtnStartPos = btn.Position
		
	end
end)

UIS.InputChanged:Connect(function(input)

	if BtnDragging and input.UserInputType == Enum.UserInputType.Touch then
		
		local Delta = input.Position - BtnDragStart

		btn.Position = UDim2.new(
			BtnStartPos.X.Scale,
			BtnStartPos.X.Offset + Delta.X,
			BtnStartPos.Y.Scale,
			BtnStartPos.Y.Offset + Delta.Y
		)
	end
end)

btn.InputEnded:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.Touch then
		
		BtnDragging = false
		
	end
end)

-- FRAME
local Frame = Instance.new("Frame")
Frame.Parent = Gui

Frame.Size = UDim2.new(0,500,0,400)
Frame.Position = UDim2.new(0.5,-250,0.5,-190)

Frame.BackgroundTransparency = 0

Frame.BackgroundColor3 = Color3.fromRGB(20,20,20)

Frame.Visible = false
Frame.Active = true

Frame.ClipsDescendants = false

local FrameCorner = Instance.new("UICorner")
FrameCorner.Parent = Frame
FrameCorner.CornerRadius = UDim.new(0,20)

local Stroke = Instance.new("UIStroke")
Stroke.Parent = Frame
Stroke.Thickness = 3

task.spawn(function()

while true do  
	  
	for i = 0,1,0.01 do  
		  
		Stroke.Color = Color3.fromHSV(i,1,1)  
		  
		task.wait(0.03)  
		  
	end  
	  
end

end)


-- TOPBAR
local TopBar = Instance.new("Frame")
TopBar.Parent = Frame

TopBar.Size = UDim2.new(1,0,0,50)

TopBar.BackgroundColor3 = Color3.fromRGB(35,35,35)
TopBar.BackgroundTransparency = 1

TopBar.Active = true

local TopCorner = Instance.new("UICorner")
TopCorner.Parent = TopBar
TopCorner.CornerRadius = UDim.new(0,20)

-- TITLE
local Title = Instance.new("TextLabel")
Title.Parent = TopBar

Title.Size = UDim2.new(1,-60,1,0)
Title.Position = UDim2.new(0,15,0,0)

Title.BackgroundTransparency = 1

Title.Text = "ZETTOMAISSZE HUB by Ismail Syam"

Title.Font = Enum.Font.GothamBold
Title.TextSize = 22

Title.TextColor3 = Color3.fromRGB(255,255,255)

Title.TextXAlignment = Enum.TextXAlignment.Left

task.spawn(function()

while true do  
	  
	for i = 0,1,0.01 do  
		  
		Title.TextColor3 = Color3.fromHSV(i,1,1)  
		  
		task.wait(0.03)  
		  
	end  
	  
end

end)

-- CLOSE
local Close = Instance.new("TextButton")
Close.Parent = TopBar

Close.Size = UDim2.new(0,40,0,40)
Close.Position = UDim2.new(1,-45,0,5)

Close.Text = "X"

Close.Font = Enum.Font.GothamBold
Close.TextSize = 20

Close.TextColor3 = Color3.fromRGB(255,255,255)

Close.BackgroundColor3 = Color3.fromRGB(255,80,80)

local CloseCorner = Instance.new("UICorner")
CloseCorner.Parent = Close
CloseCorner.CornerRadius = UDim.new(1,0)

-- CONTENT
local Content = Instance.new("ScrollingFrame")
Content.Parent = Frame

Content.Size = UDim2.new(1,-20,1,-70)
Content.Position = UDim2.new(0,10,0,60)

Content.BackgroundColor3 = Color3.fromRGB(30,30,30)
Content.BackgroundTransparency = 0.1

Content.CanvasSize = UDim2.new(0,0,0,5000)

Content.ScrollBarThickness = 15

Content.AutomaticCanvasSize = Enum.AutomaticSize.Y

local ContentCorner = Instance.new("UICorner")
ContentCorner.Parent = Content
ContentCorner.CornerRadius = UDim.new(0,15)

-- TAB BUTTONS

local AboutTab = Instance.new("TextButton")
AboutTab.Parent = Frame

AboutTab.Size = UDim2.new(0,140,0,35)
AboutTab.Position = UDim2.new(0,15,0,55)

AboutTab.BackgroundTransparency = 0.5

AboutTab.Text = "ABOUT ME"

AboutTab.Font = Enum.Font.GothamBold
AboutTab.TextSize = 16

AboutTab.TextColor3 = Color3.fromRGB(255,255,255)

local AboutCorner = Instance.new("UICorner")
AboutCorner.Parent = AboutTab
AboutCorner.CornerRadius = UDim.new(0,12)

local MainTab = Instance.new("TextButton")
MainTab.Parent = Frame

MainTab.Size = UDim2.new(0,140,0,35)
MainTab.Position = UDim2.new(0,170,0,55)

MainTab.BackgroundTransparency = 0.5

MainTab.Text = "MAIN"

MainTab.Font = Enum.Font.GothamBold
MainTab.TextSize = 16

MainTab.TextColor3 = Color3.fromRGB(255,255,255)

local MainCorner = Instance.new("UICorner")
MainCorner.Parent = MainTab
MainCorner.CornerRadius = UDim.new(0,12)

local PvPTab = Instance.new("TextButton")
PvPTab.Parent = Frame

PvPTab.Size = UDim2.new(0,140,0,35)
PvPTab.Position = UDim2.new(0,325,0,55)

PvPTab.BackgroundTransparency = 0.5

PvPTab.Text = "PvP"

PvPTab.Font = Enum.Font.GothamBold
PvPTab.TextSize = 16

PvPTab.TextColor3 = Color3.fromRGB(255,255,255)

local PvPCorner = Instance.new("UICorner")
PvPCorner.Parent = PvPTab
PvPCorner.CornerRadius = UDim.new(0,12)

-- FRAMES

local AboutFrame = Instance.new("ScrollingFrame")
AboutFrame.Parent = Frame

AboutFrame.Size = UDim2.new(1,-20,1,-120)
AboutFrame.Position = UDim2.new(0,10,0,100)

AboutFrame.BackgroundTransparency = 1

AboutFrame.ScrollBarThickness = 5

AboutFrame.Visible = false

local AboutText = Instance.new("TextLabel")
AboutText.Parent = AboutFrame

AboutText.Size = UDim2.new(1,-20,0,700)
AboutText.Position = UDim2.new(0,10,0,10)

AboutText.BackgroundColor3 = Color3.fromRGB(20,20,20)
AboutText.BackgroundTransparency = 1

AboutText.TextWrapped = true
AboutText.TextYAlignment = Enum.TextYAlignment.Top
AboutText.TextXAlignment = Enum.TextXAlignment.Left

AboutText.Font = Enum.Font.Gotham
AboutText.TextSize = 10
AboutText.LineHeight = 0.9

AboutText.TextColor3 = Color3.fromRGB(255,255,255)
AboutText.TextStrokeTransparency = 0
AboutText.TextStrokeColor3 = Color3.fromRGB(0,0,0)

AboutText.Text = [[
ZETTOMAISSZE HUB
Ismail Syam
also known as ZETTOMAISSZE

A mobile player with a growing interest in programming and technology.

Started learning from simple curiosity and continued exploring coding through mobile devices. Currently learning and experimenting with Python and Lua while improving little by little every day.

Mobile Legends remains my main game, but coding has become another part of my journey.

I believe that progress does not always require perfect equipment. Consistency, curiosity, and effort are enough to start.

Not a professional developer, just someone who enjoys learning new things and creating ideas from scratch.

Favorite Games:
• Mobile Legends

Favorite Songs:
• Bye
• Cincin

“Still learning, still improving, and never giving up until success becomes reality.”
]]

local AboutFrameCorner = Instance.new("UICorner")
AboutFrameCorner.Parent = AboutFrame
AboutFrameCorner.CornerRadius = UDim.new(0,15)

local MainFrame = Content
MainFrame.Position = UDim2.new(0,10,0,100)
MainFrame.Size = UDim2.new(1,-20,1,-120)

MainFrame.Visible = true

local PvPFrame = Instance.new("ScrollingFrame")
PvPFrame.Parent = Frame

PvPFrame.Size = UDim2.new(1,-20,1,-120)
PvPFrame.Position = UDim2.new(0,10,0,100)

PvPFrame.BackgroundColor3 = Color3.fromRGB(30,30,30)
PvPFrame.BackgroundTransparency = 0.2

PvPFrame.ScrollBarThickness = 5

PvPFrame.Visible = false

local PvPFrameCorner = Instance.new("UICorner")
PvPFrameCorner.Parent = PvPFrame
PvPFrameCorner.CornerRadius = UDim.new(0,15)

local SurvivorTitle = Instance.new("TextLabel")
SurvivorTitle.Parent = PvPFrame

SurvivorTitle.Size = UDim2.new(1,-20,0,30)
SurvivorTitle.Position = UDim2.new(0,10,0,5)

SurvivorTitle.BackgroundTransparency = 1

SurvivorTitle.Text = "━━━ SURVIVOR ━━━"

SurvivorTitle.Font = Enum.Font.GothamBold
SurvivorTitle.TextSize = 20

SurvivorTitle.TextColor3 = Color3.fromRGB(0,255,120)

-- PvP GOD SKILLCHECK

local PvPSkillBtn = Instance.new("TextButton")
PvPSkillBtn.Parent = PvPFrame

PvPSkillBtn.Size = UDim2.new(1,-40,0,50)
PvPSkillBtn.Position = UDim2.new(0,20,0,45)

PvPSkillBtn.BackgroundColor3 = Color3.fromRGB(255,80,80)

PvPSkillBtn.Text = "PvP GOD SkillCheck"

PvPSkillBtn.Font = Enum.Font.GothamBold
PvPSkillBtn.TextSize = 20

PvPSkillBtn.TextColor3 = Color3.fromRGB(255,255,255)

local PvPSkillCorner = Instance.new("UICorner")
PvPSkillCorner.Parent = PvPSkillBtn
PvPSkillCorner.CornerRadius = UDim.new(0,15)

-- SWITCH

local PvPSwitch = Instance.new("Frame")
PvPSwitch.Parent = PvPSkillBtn

PvPSwitch.Size = UDim2.new(0,50,0,25)
PvPSwitch.Position = UDim2.new(1,-75,0.5,-12)

PvPSwitch.BackgroundColor3 = Color3.fromRGB(60,60,60)

local PvPSwitchCorner = Instance.new("UICorner")
PvPSwitchCorner.Parent = PvPSwitch
PvPSwitchCorner.CornerRadius = UDim.new(1,0)

-- CIRCLE

local PvPCircle = Instance.new("Frame")
PvPCircle.Parent = PvPSwitch

PvPCircle.Size = UDim2.new(0,21,0,21)
PvPCircle.Position = UDim2.new(0,2,0.5,-10)

PvPCircle.BackgroundColor3 = Color3.fromRGB(255,255,255)

local PvPCircleCorner = Instance.new("UICorner")
PvPCircleCorner.Parent = PvPCircle
PvPCircleCorner.CornerRadius = UDim.new(1,0)

-- STATUS

local PvPSkill = false

local RunService = game:GetService("RunService")

-- TOGGLE

PvPSkillBtn.MouseButton1Click:Connect(function()

	PvPSkill = not PvPSkill

	if PvPSkill then
		
		PvPSwitch.BackgroundColor3 = Color3.fromRGB(255,80,80)

		PvPCircle.Position = UDim2.new(0,27,0.5,-10)

		task.spawn(function()

	while PvPSkill do
		
		task.wait(0.001)

		local SkillGui = LocalPlayer.PlayerGui:FindFirstChild("SkillCheckGui")

		if SkillGui then
			
			local Track = SkillGui.Container.Track

			local Needle = Track:FindFirstChild("Needle")
			local GreatZone = Track.SuccessZone:FindFirstChild("GreatZone")

			if Needle and GreatZone then
				
				local TrackAbs = Track.AbsolutePosition.X

				local TrackSize = Track.AbsoluteSize.X

				local Goal = (
	                          GreatZone.AbsolutePosition.X
	                          - TrackAbs
	                          + (GreatZone.AbsoluteSize.X / 2)
	                          - (Needle.AbsoluteSize.X / 2)
                              )

				local Scale = Goal / TrackSize

				Needle.Position = UDim2.new(Scale,0,0,0)
				
                
                                
			end
		end
	end
end)

	else
		
		PvPSwitch.BackgroundColor3 = Color3.fromRGB(60,60,60)

		PvPCircle.Position = UDim2.new(0,2,0.5,-10)

		RunService:UnbindFromRenderStep("ZETTPvP")
		
	end
end)

-- PvP WALKSPEED

local PvPSpeedBtn = Instance.new("TextButton")
PvPSpeedBtn.Parent = PvPFrame

PvPSpeedBtn.Size = UDim2.new(1,-40,0,50)
PvPSpeedBtn.Position = UDim2.new(0,20,0,115)

PvPSpeedBtn.BackgroundColor3 = Color3.fromRGB(0,170,255)

PvPSpeedBtn.Text = "PvP WalkSpeed"

PvPSpeedBtn.Font = Enum.Font.GothamBold
PvPSpeedBtn.TextSize = 20

PvPSpeedBtn.TextColor3 = Color3.fromRGB(255,255,255)

local PvPSpeedCorner = Instance.new("UICorner")
PvPSpeedCorner.Parent = PvPSpeedBtn
PvPSpeedCorner.CornerRadius = UDim.new(0,15)

-- SWITCH

local PvPSpeedSwitch = Instance.new("Frame")
PvPSpeedSwitch.Parent = PvPSpeedBtn

PvPSpeedSwitch.Size = UDim2.new(0,50,0,25)
PvPSpeedSwitch.Position = UDim2.new(1,-75,0.5,-12)

PvPSpeedSwitch.BackgroundColor3 = Color3.fromRGB(60,60,60)

local PvPSpeedSwitchCorner = Instance.new("UICorner")
PvPSpeedSwitchCorner.Parent = PvPSpeedSwitch
PvPSpeedSwitchCorner.CornerRadius = UDim.new(1,0)

-- CIRCLE

local PvPSpeedCircle = Instance.new("Frame")
PvPSpeedCircle.Parent = PvPSpeedSwitch

PvPSpeedCircle.Size = UDim2.new(0,21,0,21)
PvPSpeedCircle.Position = UDim2.new(0,2,0.5,-10)

PvPSpeedCircle.BackgroundColor3 = Color3.fromRGB(255,255,255)

local PvPSpeedCircleCorner = Instance.new("UICorner")
PvPSpeedCircleCorner.Parent = PvPSpeedCircle
PvPSpeedCircleCorner.CornerRadius = UDim.new(1,0)

-- STATUS

local PvPSpeed = false

-- TOGGLE

PvPSpeedBtn.MouseButton1Click:Connect(function()

	PvPSpeed = not PvPSpeed

	if PvPSpeed then
		
		PvPSpeedSwitch.BackgroundColor3 = Color3.fromRGB(0,170,255)

		PvPSpeedCircle.Position = UDim2.new(0,27,0.5,-10)

		-- MATIIN PvP STAMINA
		
		local PlayerScripts = LocalPlayer:FindFirstChild("PlayerScripts")

		if PlayerScripts then
			
			local PvPStamina = PlayerScripts:FindFirstChild("PvPStaminaController")

			if PvPStamina then
				
				PvPStamina.Enabled = false
				
			end
		end

		-- SPEED LOOP
		
		RunService:BindToRenderStep("ZETTPvPSpeed",1,function()

			local Character = LocalPlayer.Character

			if Character then
				
				local Humanoid = Character:FindFirstChild("Humanoid")

				if Humanoid then
					
					Humanoid.WalkSpeed = 21
					
				end
			end
		end)

	else
		
		PvPSpeedSwitch.BackgroundColor3 = Color3.fromRGB(60,60,60)

		PvPSpeedCircle.Position = UDim2.new(0,2,0.5,-10)

		RunService:UnbindFromRenderStep("ZETTPvPSpeed")

		-- BALIK NORMAL
		
		local Character = LocalPlayer.Character

		if Character then
			
			local Humanoid = Character:FindFirstChild("Humanoid")

			if Humanoid then
				
				Humanoid.WalkSpeed = 16
				
			end
		end

		-- NYALAIN LAGI STAMINA
		
		local PlayerScripts = LocalPlayer:FindFirstChild("PlayerScripts")

		if PlayerScripts then
			
			local PvPStamina = PlayerScripts:FindFirstChild("PvPStaminaController")

			if PvPStamina then
				
				PvPStamina.Enabled = true
				
			end
		end
	end
end)

-- ESP PLAYER

local ESPPlayerBtn = Instance.new("TextButton")
ESPPlayerBtn.Parent = PvPFrame

ESPPlayerBtn.Size = UDim2.new(1,-40,0,50)
ESPPlayerBtn.Position = UDim2.new(0,20,0,185)

ESPPlayerBtn.BackgroundColor3 = Color3.fromRGB(255,120,120)

ESPPlayerBtn.Text = "ESP Player"

ESPPlayerBtn.Font = Enum.Font.GothamBold
ESPPlayerBtn.TextSize = 20

ESPPlayerBtn.TextColor3 = Color3.fromRGB(255,255,255)

local ESPPlayerCorner = Instance.new("UICorner")
ESPPlayerCorner.Parent = ESPPlayerBtn
ESPPlayerCorner.CornerRadius = UDim.new(0,15)

-- SWITCH

local ESPPlayerSwitch = Instance.new("Frame")
ESPPlayerSwitch.Parent = ESPPlayerBtn

ESPPlayerSwitch.Size = UDim2.new(0,50,0,25)
ESPPlayerSwitch.Position = UDim2.new(1,-75,0.5,-12)

ESPPlayerSwitch.BackgroundColor3 = Color3.fromRGB(60,60,60)

local ESPPlayerSwitchCorner = Instance.new("UICorner")
ESPPlayerSwitchCorner.Parent = ESPPlayerSwitch
ESPPlayerSwitchCorner.CornerRadius = UDim.new(1,0)

-- CIRCLE

local ESPPlayerCircle = Instance.new("Frame")
ESPPlayerCircle.Parent = ESPPlayerSwitch

ESPPlayerCircle.Size = UDim2.new(0,21,0,21)
ESPPlayerCircle.Position = UDim2.new(0,2,0.5,-10)

ESPPlayerCircle.BackgroundColor3 = Color3.fromRGB(255,255,255)

local ESPPlayerCircleCorner = Instance.new("UICorner")
ESPPlayerCircleCorner.Parent = ESPPlayerCircle
ESPPlayerCircleCorner.CornerRadius = UDim.new(1,0)

-- STATUS

local ESPPlayer = false

-- CREATE ESP

local function CreateESP(PlayerTarget)

	if PlayerTarget == LocalPlayer then
		return
	end

	local Character = PlayerTarget.Character

	if Character and not Character:FindFirstChild("ESPPlayer") then
		
		local Root = Character:FindFirstChild("HumanoidRootPart")

		if Root then
			
			-- HIGHLIGHT
			
			local Highlight = Instance.new("Highlight")
			Highlight.Name = "ESPPlayer"

			Highlight.Parent = Character

			Highlight.FillColor = Color3.fromRGB(255,0,0)
			Highlight.OutlineColor = Color3.fromRGB(255,255,255)

			Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

			-- BILLBOARD
			
			local Billboard = Instance.new("BillboardGui")
			Billboard.Name = "ESPPlayer"

			Billboard.Parent = Root

			Billboard.Adornee = Root

			Billboard.Size = UDim2.new(0,120,0,40)

			Billboard.StudsOffset = Vector3.new(0,3,0)

			Billboard.AlwaysOnTop = true

			local Text = Instance.new("TextLabel")
			Text.Parent = Billboard

			Text.Size = UDim2.new(1,0,1,0)

			Text.BackgroundTransparency = 1

			Text.Font = Enum.Font.GothamBold
			Text.TextSize = 16

			Text.TextColor3 = Color3.fromRGB(255,0,0)

			Text.TextStrokeTransparency = 0

			task.spawn(function()

				while Billboard.Parent and ESPPlayer do
					
					task.wait(0.1)

					local MyChar = LocalPlayer.Character

					if MyChar and MyChar:FindFirstChild("HumanoidRootPart") then
						
						local Distance = math.floor(
							(MyChar.HumanoidRootPart.Position - Root.Position).Magnitude
						)

						Text.Text = PlayerTarget.Name.." ["..Distance.."s]"
						
					end
				end
			end)
		end
	end
end

-- TOGGLE

ESPPlayerBtn.MouseButton1Click:Connect(function()

	ESPPlayer = not ESPPlayer

	if ESPPlayer then
		
		ESPPlayerSwitch.BackgroundColor3 = Color3.fromRGB(255,120,120)

		ESPPlayerCircle.Position = UDim2.new(0,27,0.5,-10)

		for _, v in pairs(game.Players:GetPlayers()) do
			
			CreateESP(v)

			if v ~= LocalPlayer then
				
				v.CharacterAdded:Connect(function()

					task.wait(1)

					if ESPPlayer then
						
						CreateESP(v)
						
					end
				end)
			end
		end

	else
		
		ESPPlayerSwitch.BackgroundColor3 = Color3.fromRGB(60,60,60)

		ESPPlayerCircle.Position = UDim2.new(0,2,0.5,-10)

		for _, v in pairs(workspace:GetDescendants()) do
			
			if v.Name == "ESPPlayer" then
				
				v:Destroy()
				
			end
		end
	end
end)

-- CHASE BOOST 😈

local ChaseBoostBtn = Instance.new("TextButton")
ChaseBoostBtn.Parent = PvPFrame

ChaseBoostBtn.Size = UDim2.new(1,-40,0,50)
ChaseBoostBtn.Position = UDim2.new(0,20,0,250)

ChaseBoostBtn.BackgroundColor3 =
Color3.fromRGB(255,120,120)

ChaseBoostBtn.Text =
"Chase Boost"

ChaseBoostBtn.Font =
Enum.Font.GothamBold

ChaseBoostBtn.TextSize = 20

ChaseBoostBtn.TextColor3 =
Color3.fromRGB(255,255,255)

local ChaseBoostCorner =
Instance.new("UICorner")

ChaseBoostCorner.Parent =
ChaseBoostBtn

ChaseBoostCorner.CornerRadius =
UDim.new(0,15)

-- SWITCH 😈

local ChaseBoostSwitch =
Instance.new("Frame")

ChaseBoostSwitch.Parent =
ChaseBoostBtn

ChaseBoostSwitch.Size =
UDim2.new(0,50,0,25)

ChaseBoostSwitch.Position =
UDim2.new(1,-75,0.5,-12)

ChaseBoostSwitch.BackgroundColor3 =
Color3.fromRGB(60,60,60)

local ChaseBoostSwitchCorner =
Instance.new("UICorner")

ChaseBoostSwitchCorner.Parent =
ChaseBoostSwitch

ChaseBoostSwitchCorner.CornerRadius =
UDim.new(1,0)

-- CIRCLE 😈

local ChaseBoostCircle =
Instance.new("Frame")

ChaseBoostCircle.Parent =
ChaseBoostSwitch

ChaseBoostCircle.Size =
UDim2.new(0,21,0,21)

ChaseBoostCircle.Position =
UDim2.new(0,2,0.5,-10)

ChaseBoostCircle.BackgroundColor3 =
Color3.fromRGB(255,255,255)

local ChaseBoostCircleCorner =
Instance.new("UICorner")

ChaseBoostCircleCorner.Parent =
ChaseBoostCircle

ChaseBoostCircleCorner.CornerRadius =
UDim.new(1,0)

-- STATUS 😈

local ChaseBoost = false

-- LOOP 😈

RunService:BindToRenderStep(
	"ZETTCHASEBOOST",
	1,
	function()

		if not ChaseBoost then
			return
		end

		local Character =
		LocalPlayer.Character

		if not Character then
			return
		end

		if Character:GetAttribute(
			"IsPvPPocong"
		) ~= true then
			return
		end

		local Humanoid =
		Character:FindFirstChild(
			"Humanoid"
		)

		if Humanoid
		and Humanoid.WalkSpeed > 0
		then
			Humanoid.WalkSpeed =
			35
		end
	end
)

-- TOGGLE 😈

ChaseBoostBtn.MouseButton1Click
:Connect(function()

	ChaseBoost =
	not ChaseBoost

	if ChaseBoost then

		ChaseBoostSwitch
		.BackgroundColor3 =
		Color3.fromRGB(
			255,120,120
		)

		ChaseBoostCircle
		.Position =
		UDim2.new(
			0,27,
			0.5,-10
		)

	else

		ChaseBoostSwitch
		.BackgroundColor3 =
		Color3.fromRGB(
			60,60,60
		)

		ChaseBoostCircle
		.Position =
		UDim2.new(
			0,2,
			0.5,-10
		)
	end
end)

local KillerTitle = Instance.new("TextLabel")
KillerTitle.Parent = PvPFrame

KillerTitle.Size = UDim2.new(1,-20,0,30)
KillerTitle.Position = UDim2.new(0,10,0,160)

KillerTitle.BackgroundTransparency = 1

KillerTitle.Text = "━━━ KILLER ━━━"

KillerTitle.Font = Enum.Font.GothamBold
KillerTitle.TextSize = 20

KillerTitle.TextColor3 = Color3.fromRGB(255,80,80)

-- TAB SYSTEM

AboutTab.MouseButton1Click:Connect(function()

    

	AboutFrame.Visible = true
	MainFrame.Visible = false
	PvPFrame.Visible = false
	
end)

MainTab.MouseButton1Click:Connect(function()

    


	AboutFrame.Visible = false
	MainFrame.Visible = true
	PvPFrame.Visible = false
	
end)

PvPTab.MouseButton1Click:Connect(function()

   

	AboutFrame.Visible = false
	MainFrame.Visible = false
	PvPFrame.Visible = true
	
end)

-- ESP BUTTON
local EspBtn = Instance.new("TextButton")
EspBtn.Parent = Content

EspBtn.Size = UDim2.new(1,-40,0,50)
EspBtn.Position = UDim2.new(0,20,0,20)

EspBtn.BackgroundColor3 = Color3.fromRGB(255,105,180)

EspBtn.Text = "Pocong ESP"

EspBtn.Font = Enum.Font.GothamBold
EspBtn.TextSize = 20

EspBtn.TextColor3 = Color3.fromRGB(255,255,255)

EspBtn.TextXAlignment = Enum.TextXAlignment.Left

local EspCorner = Instance.new("UICorner")
EspCorner.Parent = EspBtn
EspCorner.CornerRadius = UDim.new(0,15)

-- SWITCH
local Switch = Instance.new("Frame")
Switch.Parent = EspBtn

Switch.Size = UDim2.new(0,50,0,25)
Switch.Position = UDim2.new(1,-75,0.5,-12)

Switch.BackgroundColor3 = Color3.fromRGB(60,60,60)

local SwitchCorner = Instance.new("UICorner")
SwitchCorner.Parent = Switch
SwitchCorner.CornerRadius = UDim.new(1,0)

-- CIRCLE
local Circle = Instance.new("Frame")
Circle.Parent = Switch

Circle.Size = UDim2.new(0,21,0,21)
Circle.Position = UDim2.new(0,2,0.5,-10)

Circle.BackgroundColor3 = Color3.fromRGB(255,255,255)

local CircleCorner = Instance.new("UICorner")
CircleCorner.Parent = Circle
CircleCorner.CornerRadius = UDim.new(1,0)

-- OPEN GUI
btn.MouseButton1Click:Connect(function()

Frame.Visible = true  
btn.Visible = false

end)

-- CLOSE GUI
Close.MouseButton1Click:Connect(function()

Frame.Visible = false  
btn.Visible = true

end)

-- DRAG FRAME
local Dragging = false
local DragStart 
local StartPos

TopBar.InputBegan:Connect(function(input)

if input.UserInputType == Enum.UserInputType.Touch then  
	  
	Dragging = true  
	  
	DragStart = input.Position  
	StartPos = Frame.Position  
	  
end

end)

UIS.InputChanged:Connect(function(input)

if Dragging and input.UserInputType == Enum.UserInputType.Touch then  
	  
	local Delta = input.Position - DragStart  
	  
	Frame.Position = UDim2.new(  
		StartPos.X.Scale,  
		StartPos.X.Offset + Delta.X,  
		StartPos.Y.Scale,  
		StartPos.Y.Offset + Delta.Y  
	)  
	  
end

end)

TopBar.InputEnded:Connect(function(input)

if input.UserInputType == Enum.UserInputType.Touch then  
	  
	Dragging = false  
	  
end

end)

-- ESP TOGGLE
local PocongConnection

EspBtn.MouseButton1Click:Connect(function()

EspStatus = not EspStatus  

if EspStatus then
	
	Switch.BackgroundColor3 = Color3.fromRGB(255,105,180)

	Circle.Position = UDim2.new(0,27,0.5,-10)

	-- HAPUS ESP LAMA
	for _, v in pairs(workspace:GetDescendants()) do
		
		if v:IsA("Highlight") and v.Name == "PocongESP" then
			
			v:Destroy()
			
		end
	end

	-- SCAN ULANG SEMUA POCONG
	for _, objek in pairs(workspace:GetDescendants()) do
		
		if objek.Name == "PocongModel" then
			
			if not objek:FindFirstChild("PocongESP") then
				
				local Highlight = Instance.new("Highlight")

				Highlight.Name = "PocongESP"

				Highlight.Parent = objek

				Highlight.FillColor = Color3.fromRGB(255,0,255)

				Highlight.OutlineColor = Color3.fromRGB(255,255,255)

				Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				
			end
		end
	end

	-- DETECT POCONG BARU
	PocongConnection = workspace.DescendantAdded:Connect(function(objek)

		if EspStatus and objek.Name == "PocongModel" then
			
			task.wait(0.1)

			if not objek:FindFirstChild("PocongESP") then
				
				local Highlight = Instance.new("Highlight")

				Highlight.Name = "PocongESP"

				Highlight.Parent = objek

				Highlight.FillColor = Color3.fromRGB(255,0,255)

				Highlight.OutlineColor = Color3.fromRGB(255,255,255)

				Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				
			end
		end
	end)

    else
	-- MATIKAN CONNECTION
	if PocongConnection then
		
		PocongConnection:Disconnect()
		PocongConnection = nil
		
	end

	Switch.BackgroundColor3 = Color3.fromRGB(60,60,60)

	Circle.Position = UDim2.new(0,2,0.5,-10)

	-- HAPUS SEMUA ESP
	for _, objek in pairs(workspace:GetDescendants()) do
		
		if objek.Name == "PocongModel" then
			
			local ESP = objek:FindFirstChild("PocongESP")

			if ESP then
				
				ESP:Destroy()
				
			end
		 end
	  end
   end

end)

-- WALKSPEED BUTTON
local SpeedBtn = Instance.new("TextButton")
SpeedBtn.Parent = Content

SpeedBtn.Size = UDim2.new(1,-40,0,50)
SpeedBtn.Position = UDim2.new(0,20,0,90)

SpeedBtn.BackgroundColor3 = Color3.fromRGB(0,170,255)

SpeedBtn.Text = "WalkSpeed"

SpeedBtn.Font = Enum.Font.GothamBold
SpeedBtn.TextSize = 20

SpeedBtn.TextColor3 = Color3.fromRGB(255,255,255)

SpeedBtn.TextXAlignment = Enum.TextXAlignment.Left

local SpeedCorner = Instance.new("UICorner")
SpeedCorner.Parent = SpeedBtn
SpeedCorner.CornerRadius = UDim.new(0,15)

-- SPEED SWITCH
local SpeedSwitch = Instance.new("Frame")
SpeedSwitch.Parent = SpeedBtn

SpeedSwitch.Size = UDim2.new(0,50,0,25)
SpeedSwitch.Position = UDim2.new(1,-75,0.5,-12)

SpeedSwitch.BackgroundColor3 = Color3.fromRGB(60,60,60)

local SpeedSwitchCorner = Instance.new("UICorner")
SpeedSwitchCorner.Parent = SpeedSwitch
SpeedSwitchCorner.CornerRadius = UDim.new(1,0)

-- SPEED CIRCLE
local SpeedCircle = Instance.new("Frame")
SpeedCircle.Parent = SpeedSwitch

SpeedCircle.Size = UDim2.new(0,21,0,21)
SpeedCircle.Position = UDim2.new(0,2,0.5,-10)

SpeedCircle.BackgroundColor3 = Color3.fromRGB(255,255,255)

local SpeedCircleCorner = Instance.new("UICorner")
SpeedCircleCorner.Parent = SpeedCircle
SpeedCircleCorner.CornerRadius = UDim.new(1,0)

local SpeedStatus = false

-- WALKSPEED TOGGLE
SpeedBtn.MouseButton1Click:Connect(function()

SpeedStatus = not SpeedStatus  

if SpeedStatus then  
	  
	SpeedSwitch.BackgroundColor3 = Color3.fromRGB(0,170,255)  

	SpeedCircle.Position = UDim2.new(0,27,0.5,-10)  

	local PlayerScripts = LocalPlayer:FindFirstChild("PlayerScripts")  

	if PlayerScripts then  
		  
		local StaminaController = PlayerScripts:FindFirstChild("StaminaController")  

		if StaminaController then  
			  
			StaminaController.Enabled = false  
			  
		end  
	end  

	task.spawn(function()  

		while SpeedStatus do  
			  
			task.wait()  

			local Character = LocalPlayer.Character  

			if Character then  
				  
				local Humanoid = Character:FindFirstChild("Humanoid")  

				if Humanoid then  
					  
					Humanoid.WalkSpeed = 25  
					  
				end  
			end  
		end  
	end)  

else  
	  
	SpeedSwitch.BackgroundColor3 = Color3.fromRGB(60,60,60)  

	SpeedCircle.Position = UDim2.new(0,2,0.5,-10)  

	local Character = LocalPlayer.Character  

	if Character then  
		  
		local Humanoid = Character:FindFirstChild("Humanoid")  

		if Humanoid then  
			  
			Humanoid.WalkSpeed = 16  
			  
		end  
	end  

	local PlayerScripts = LocalPlayer:FindFirstChild("PlayerScripts")  

	if PlayerScripts then  
		  
		local StaminaController = PlayerScripts:FindFirstChild("StaminaController")  

		if StaminaController then  
			  
			StaminaController.Enabled = true  
			  
		end  
	end  
end

end)

-- AUTO SKILLCHECK BUTTON

local SkillBtn = Instance.new("TextButton")
SkillBtn.Parent = Content

SkillBtn.Size = UDim2.new(1,-40,0,50)
SkillBtn.Position = UDim2.new(0,20,0,160)

SkillBtn.BackgroundColor3 = Color3.fromRGB(0,255,120)

SkillBtn.Text = "GOD SkillCheck"

SkillBtn.Font = Enum.Font.GothamBold
SkillBtn.TextSize = 20

SkillBtn.TextColor3 = Color3.fromRGB(255,255,255)

SkillBtn.TextXAlignment = Enum.TextXAlignment.Left

local SkillCorner = Instance.new("UICorner")
SkillCorner.Parent = SkillBtn
SkillCorner.CornerRadius = UDim.new(0,15)

-- SKILL SWITCH
local SkillSwitch = Instance.new("Frame")
SkillSwitch.Parent = SkillBtn

SkillSwitch.Size = UDim2.new(0,50,0,25)
SkillSwitch.Position = UDim2.new(1,-75,0.5,-12)

SkillSwitch.BackgroundColor3 = Color3.fromRGB(60,60,60)

local SkillSwitchCorner = Instance.new("UICorner")
SkillSwitchCorner.Parent = SkillSwitch
SkillSwitchCorner.CornerRadius = UDim.new(1,0)

-- SKILL CIRCLE
local SkillCircle = Instance.new("Frame")
SkillCircle.Parent = SkillSwitch

SkillCircle.Size = UDim2.new(0,21,0,21)
SkillCircle.Position = UDim2.new(0,2,0.5,-10)

SkillCircle.BackgroundColor3 = Color3.fromRGB(255,255,255)

local SkillCircleCorner = Instance.new("UICorner")
SkillCircleCorner.Parent = SkillCircle
SkillCircleCorner.CornerRadius = UDim.new(1,0)

local SkillStatus = false

-- AUTO SKILLCHECK TOGGLE

SkillBtn.MouseButton1Click:Connect(function()

SkillStatus = not SkillStatus  

if SkillStatus then  
	  
	SkillSwitch.BackgroundColor3 = Color3.fromRGB(0,255,120)  

	SkillCircle.Position = UDim2.new(0,27,0.5,-10)  

    local LastClick = 0

	task.spawn(function()

	while SkillStatus do
		
		task.wait(0.005)

		local SkillGui = LocalPlayer.PlayerGui:FindFirstChild("SkillCheckGui")

		if SkillGui then
			
			local Container = SkillGui:FindFirstChild("Container")

			if Container then
				
				local Track = Container:FindFirstChild("Track")

				if Track then
					
					local SuccessZone = Track:FindFirstChild("SuccessZone")

					if SuccessZone then
						
						SuccessZone.AnchorPoint = Vector2.new(0,0)

						SuccessZone.Position = UDim2.new(0,-99999,0,0)

						SuccessZone.Size = UDim2.new(0,200000,1,0)
						
		   			   end
				   end
			   end
           end
	   end
    
end)     
       
	else
		  
		SkillSwitch.BackgroundColor3 = Color3.fromRGB(60,60,60)

		SkillCircle.Position = UDim2.new(0,2,0.5,-10)

	end

end)

-- HAPUS GUI LAMA
if LocalPlayer.PlayerGui:FindFirstChild("DropCameraGui") then
	
	LocalPlayer.PlayerGui.DropCameraGui:Destroy()
	
end

-- DROP CAMERA GUI
local DropGui = Instance.new("ScreenGui")

DropGui.Name = "DropCameraGui"
DropGui.Parent = LocalPlayer.PlayerGui
DropGui.ResetOnSpawn = false

-- BUTTON

local DropBtn = Instance.new("TextButton")
DropBtn.Parent = DropGui

DropBtn.Size = UDim2.new(0,120,0,40)
DropBtn.Position = UDim2.new(0,40,0,160)

DropBtn.BackgroundColor3 = Color3.fromRGB(255,170,0)

DropBtn.Text = "DROP CAM"

DropBtn.Font = Enum.Font.GothamBold
DropBtn.TextSize = 16

DropBtn.TextColor3 = Color3.fromRGB(255,255,255)

DropBtn.Active = true

local DropCorner = Instance.new("UICorner")
DropCorner.Parent = DropBtn
DropCorner.CornerRadius = UDim.new(1,0)

-- DROP FUNCTION

DropBtn.MouseButton1Click:Connect(function()

	local Character = LocalPlayer.Character

	if Character then
		
		local CameraTool = Character:FindFirstChild("Camera")

		if CameraTool and CameraTool:IsA("Tool") then
			
			CameraTool.Parent = workspace
			
		end
	end
end)

-- DRAG DROP BUTTON

local DropDragging = false
local DropDragStart
local DropStartPos

DropBtn.InputBegan:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.Touch then
		
		DropDragging = true
		DropDragStart = input.Position
		DropStartPos = DropBtn.Position
		
	end
end)

UIS.InputChanged:Connect(function(input)

	if DropDragging and input.UserInputType == Enum.UserInputType.Touch then
		
		local Delta = input.Position - DropDragStart

		DropBtn.Position = UDim2.new(
			DropStartPos.X.Scale,
			DropStartPos.X.Offset + Delta.X,
			DropStartPos.Y.Scale,
			DropStartPos.Y.Offset + Delta.Y
		)
	end
end)

DropBtn.InputEnded:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.Touch then
		
		DropDragging = false
		
	end
end)

-- ITEM ESP BUTTON

local ItemBtn = Instance.new("TextButton")
ItemBtn.Parent = Content

ItemBtn.Size = UDim2.new(1,-40,0,50)
ItemBtn.Position = UDim2.new(0,20,0,230)

ItemBtn.BackgroundColor3 = Color3.fromRGB(0,255,255)

ItemBtn.Text = "Item ESP"

ItemBtn.Font = Enum.Font.GothamBold
ItemBtn.TextSize = 20

ItemBtn.TextColor3 = Color3.fromRGB(255,255,255)

local ItemCorner = Instance.new("UICorner")
ItemCorner.Parent = ItemBtn
ItemCorner.CornerRadius = UDim.new(0,15)

-- SWITCH

local ItemSwitch = Instance.new("Frame")
ItemSwitch.Parent = ItemBtn

ItemSwitch.Size = UDim2.new(0,50,0,25)
ItemSwitch.Position = UDim2.new(1,-75,0.5,-12)

ItemSwitch.BackgroundColor3 = Color3.fromRGB(60,60,60)

local ItemSwitchCorner = Instance.new("UICorner")
ItemSwitchCorner.Parent = ItemSwitch
ItemSwitchCorner.CornerRadius = UDim.new(1,0)

-- CIRCLE

local ItemCircle = Instance.new("Frame")
ItemCircle.Parent = ItemSwitch

ItemCircle.Size = UDim2.new(0,21,0,21)
ItemCircle.Position = UDim2.new(0,2,0.5,-10)

ItemCircle.BackgroundColor3 = Color3.fromRGB(255,255,255)

local ItemCircleCorner = Instance.new("UICorner")
ItemCircleCorner.Parent = ItemCircle
ItemCircleCorner.CornerRadius = UDim.new(1,0)

-- STATUS

local ItemESP = false
local ItemConnection

-- FUNCTION CREATE ESP

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ItemsFolder = workspace.Stages.Stage1.Items

local function CreateESP(Item)

	local Root = Item:IsA("BasePart")
	and Item
	or Item:FindFirstChildWhichIsA("BasePart")

	if Root and not Root:FindFirstChild("ItemESP") then
		
		local Billboard = Instance.new("BillboardGui")
		Billboard.Name = "ItemESP"

		Billboard.Parent = Root
		Billboard.Adornee = Root

		Billboard.Size = UDim2.new(0,6,0,2)
		Billboard.StudsOffset = Vector3.new(0,0,0)

		Billboard.AlwaysOnTop = true

		Billboard.MaxDistance = 300
		Billboard.LightInfluence = 0
		Billboard.DistanceStep = 0

		local Text = Instance.new("TextLabel")
		Text.Parent = Billboard

		Text.Size = UDim2.new(1,0,1,0)

		Text.BackgroundTransparency = 1

		Text.TextColor3 = Color3.fromRGB(0,255,255)
		Text.TextStrokeTransparency = 0.5

		Text.Font = Enum.Font.GothamBold
		Text.TextSize = 10

		task.spawn(function()

			while Billboard.Parent do
				
				task.wait(0.1)

				local Character = LocalPlayer.Character
				
				if Character and Character:FindFirstChild("HumanoidRootPart") then
					
					local Distance = math.floor(
						(Character.HumanoidRootPart.Position - Root.Position).Magnitude
					)

					Text.Text = Item.Name.." ["..Distance.."s]"
					
				end
			end
		end)
	end
end

-- TOGGLE

ItemBtn.MouseButton1Click:Connect(function()

	ItemESP = not ItemESP

	if ItemESP then
		
		ItemSwitch.BackgroundColor3 = Color3.fromRGB(0,255,255)
		ItemCircle.Position = UDim2.new(0,27,0.5,-10)

		-- SCAN ITEM
		
		for _, v in pairs(workspace:GetDescendants()) do
			
			
				
				if v.Name == "Wallet"
                or v.Name == "Wristwatch"
                or v.Name == "RedPen"
                or v.Name == "NameCard"
                or v.Name == "IdCard"
                or v.Name == "MedicalReportA"
                or v.Name == "MedicalReportB"
                or v.Name == "MedicalReportC"
                or v.Name == "Glasses" then
					
					CreateESP(v)
					
				
			end
		end

		-- DETECT ITEM BARU
		
		ItemConnection = workspace.DescendantAdded:Connect(function(v)

			
				
				if v.Name == "Wallet"
                or v.Name == "Wristwatch"
                or v.Name == "RedPen"
                or v.Name == "NameCard"
                or v.Name == "IdCard"
                or v.Name == "MedicalReportA"
                or v.Name == "MedicalReportB"
                or v.Name == "MedicalReportC"
                or v.Name == "Glasses" then
					
					task.wait(0.1)
					
					CreateESP(v)
					
				
			end
		end)

	else
		
		ItemSwitch.BackgroundColor3 = Color3.fromRGB(60,60,60)
		ItemCircle.Position = UDim2.new(0,2,0.5,-10)

		if ItemConnection then
			
			ItemConnection:Disconnect()
			ItemConnection = nil
			
		end

		-- HAPUS ESP
		
		for _, v in pairs(workspace:GetDescendants()) do
			
			if v.Name == "ItemESP" then
				
				v:Destroy()
				
			end
		end
	end
end)

-- FAST INTERACT 😈

local FastInteractBtn =
Instance.new("TextButton")

FastInteractBtn.Parent =
Content

FastInteractBtn.Size =
UDim2.new(1,-40,0,50)

FastInteractBtn.Position =
UDim2.new(0,20,0,300)

FastInteractBtn.BackgroundColor3 =
Color3.fromRGB(255,120,120)

FastInteractBtn.Text =
"Fast Interact"

FastInteractBtn.Font =
Enum.Font.GothamBold

FastInteractBtn.TextSize = 20

FastInteractBtn.TextColor3 =
Color3.fromRGB(255,255,255)

local FastCorner =
Instance.new("UICorner")

FastCorner.Parent =
FastInteractBtn

FastCorner.CornerRadius =
UDim.new(0,15)

-- SWITCH 😈

local FastSwitch =
Instance.new("Frame")

FastSwitch.Parent =
FastInteractBtn

FastSwitch.Size =
UDim2.new(0,50,0,25)

FastSwitch.Position =
UDim2.new(1,-75,0.5,-12)

FastSwitch.BackgroundColor3 =
Color3.fromRGB(60,60,60)

local FastSwitchCorner =
Instance.new("UICorner")

FastSwitchCorner.Parent =
FastSwitch

FastSwitchCorner.CornerRadius =
UDim.new(1,0)

-- CIRCLE 😈

local FastCircle =
Instance.new("Frame")

FastCircle.Parent =
FastSwitch

FastCircle.Size =
UDim2.new(0,21,0,21)

FastCircle.Position =
UDim2.new(0,2,0.5,-10)

FastCircle.BackgroundColor3 =
Color3.fromRGB(255,255,255)

local FastCircleCorner =
Instance.new("UICorner")

FastCircleCorner.Parent =
FastCircle

FastCircleCorner.CornerRadius =
UDim.new(1,0)

-- STATUS 😈

local FastInteract = false
local FastConnection

-- SIMPAN HOLD ASLI 😈

local OriginalHold = {}

-- APPLY 😈

local function ApplyFastInteract()

	for _,v in ipairs(
		workspace:GetDescendants()
	) do

		if v:IsA(
			"ProximityPrompt"
		) then

			-- simpan hold asli
			if OriginalHold[v]
			== nil then

				OriginalHold[v] =
				v.HoldDuration

			end

			v.HoldDuration = 0
		end
	end
end

-- BALIKIN NORMAL 😈

local function RestoreFastInteract()

	for Prompt,
	Hold in pairs(
		OriginalHold
	) do

		if Prompt
		and Prompt.Parent then

			Prompt.HoldDuration =
			Hold
		end
	end
end

-- TOGGLE 😈

FastInteractBtn
.MouseButton1Click
:Connect(function()

	FastInteract =
	not FastInteract

	if FastInteract then

		FastSwitch
		.BackgroundColor3 =
		Color3.fromRGB(
			255,120,120
		)

		FastCircle.Position =
		UDim2.new(
			0,27,
			0.5,-10
		)

		ApplyFastInteract()

		-- prompt baru 😈

		FastConnection =
		workspace.DescendantAdded
		:Connect(function(v)

			if v:IsA(
				"ProximityPrompt"
			) then

				if OriginalHold[v]
				== nil then

					OriginalHold[v] =
					v.HoldDuration

				end

				v.HoldDuration = 0
			end
		end)

	else

		FastSwitch
		.BackgroundColor3 =
		Color3.fromRGB(
			60,60,60
		)

		FastCircle.Position =
		UDim2.new(
			0,2,
			0.5,-10
		)

		RestoreFastInteract()

		if FastConnection then

			FastConnection
			:Disconnect()

			FastConnection =
			nil
		end
	end
end)
