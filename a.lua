local TestTrojan = Instance.new("ScreenGui")
TestTrojan.Name = "TestTrojan"
TestTrojan.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TestTrojan.Parent = game.Workspace

local MainUi = Instance.new("Frame")
MainUi.Visible = true
MainUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainUi.AnchorPoint = Vector2.new(0.5, 0.5)
MainUi.BackgroundTransparency = 0.4000000059604645
MainUi.Position = UDim2.new(0.5371969938278198, 1, 0.34883514046669006, 45)
MainUi.Name = "MainUi"
MainUi.Size = UDim2.new(0, 525, 0, 338)
MainUi.BorderSizePixel = 0
MainUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
MainUi.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainUi

local auto_name_script = Instance.new("LocalScript")
auto_name_script.Name = "auto_name_script"
auto_name_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > NAME > TextLabel
local nameFrame = script.Parent:WaitForChild("HOME"):WaitForChild("NAME")
local textLabel = nameFrame:FindFirstChildOfClass("TextLabel")

if textLabel then
	textLabel.Text = player.Name -- or use player.DisplayName if preferred
else
	warn("TextLabel not found inside HOME > NAME.")
end
"
auto_name_script.Parent = MainUi

local auto_head_pic_script = Instance.new("LocalScript")
auto_head_pic_script.Name = "auto_head_pic_script"
auto_head_pic_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > picture > ImageLabel
local imageLabel = script.Parent:WaitForChild("HOME"):WaitForChild("picture"):WaitForChild("ImageLabel")

local userId = player.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420

local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
imageLabel.Image = content
"
auto_head_pic_script.Parent = MainUi

local HOME = Instance.new("Frame")
HOME.Name = "HOME"
HOME.BackgroundTransparency = 1
HOME.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
HOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
HOME.Size = UDim2.new(0, 525, 0, 338)
HOME.BorderSizePixel = 0
HOME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HOME.Parent = MainUi

local WELCOME = Instance.new("Frame")
WELCOME.Name = "WELCOME"
WELCOME.BackgroundTransparency = 0.4000000059604645
WELCOME.Position = UDim2.new(0.2799765169620514, 0, 0.5262502431869507, 0)
WELCOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
WELCOME.Size = UDim2.new(0, 350, 0, 132)
WELCOME.BorderSizePixel = 0
WELCOME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
WELCOME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = WELCOME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "W"
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.03179190680384636, 0, 0.09090909361839294, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextWrapped = true
TextLabel.TextSize = 100
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.11849711090326309, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "L"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.20809248089790344, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "C"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.2976878583431244, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "O"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.39306357502937317, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "M"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.49421966075897217, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5891165733337402, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.677873969078064, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7311283946037292, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7903000116348267, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
TextLabel.Parent = WELCOME

local picture = Instance.new("Frame")
picture.Name = "picture"
picture.BackgroundTransparency = 0.5
picture.Position = UDim2.new(0.7115427255630493, 0, 0.057971030473709106, 0)
picture.BorderColor3 = Color3.fromRGB(0, 0, 0)
picture.Size = UDim2.new(0, 144, 0, 137)
picture.BorderSizePixel = 0
picture.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
picture.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = picture

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = picture

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.0416666679084301, 0, 0.03729248046875, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 133, 0, 126)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = picture

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local NAME = Instance.new("Frame")
NAME.Name = "NAME"
NAME.BackgroundTransparency = 0.4000000059604645
NAME.Position = UDim2.new(0.25330984592437744, 2, 0.17983020842075348, 0)
NAME.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAME.Size = UDim2.new(0, 229, 0, 74)
NAME.BorderSizePixel = 0
NAME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAME

local username = Instance.new("TextLabel")
username.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
username.TextColor3 = Color3.fromRGB(226, 226, 226)
username.BorderColor3 = Color3.fromRGB(0, 0, 0)
username.Text = "NAME"
username.Name = "username"
username.Size = UDim2.new(0, 218, 0, 63)
username.Position = UDim2.new(0.04803493618965149, 0, 0.26077187061309814, 0)
username.BackgroundTransparency = 1
username.TextXAlignment = Enum.TextXAlignment.Left
username.BorderSizePixel = 0
username.TextYAlignment = Enum.TextYAlignment.Top
username.TextSize = 30
username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
username.Parent = NAME

local UICorner = Instance.new("UICorner")
UICorner.Parent = username

local NAMEEXEC = Instance.new("Frame")
NAMEEXEC.Name = "NAMEEXEC"
NAMEEXEC.BackgroundTransparency = 0.4000000059604645
NAMEEXEC.Position = UDim2.new(0.032921794801950455, 2, 0.17030377686023712, 0)
NAMEEXEC.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEEXEC.Size = UDim2.new(0, 90, 0, 253)
NAMEEXEC.BorderSizePixel = 0
NAMEEXEC.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAMEEXEC.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAMEEXEC

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAMEEXEC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "executorname"
TextLabel.Size = UDim2.new(0, 169, 0, 79)
TextLabel.AnchorPoint = Vector2.new(0.5, 1)
TextLabel.Rotation = -90
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Position = UDim2.new(0.11568490415811539, 0, 0.6989752054214478, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 45
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Place in a LocalScript inside a TextLabel
local label = script.Parent
local executor = "Unknown"

local function detectExecutor()
	if getexecutorname then
		local success, result = pcall(getexecutorname)
		if success and typeof(result) == "string" then
			return result
		end
	end

	if identifyexecutor then
		local success, result = pcall(identifyexecutor)
		if success and typeof(result) == "string" then
			return result
		end
	end

	-- Desktop Executable Identifiers
	if syn then return "Synapse X" end
	if KRNL_LOADED then return "KRNL" end
	if is_sirhurt_closure then return "SirHurt" end
	if secure_load then return "Sentinel" end
	if fluxus then return "Fluxus" end
	if isexecutorclosure then return "Fluxus" end
	if WRD_LOADED then return "WeAreDevs (WRD)" end
	if pebc_execute then return "Proxo" end
	if comet then return "Comet" end
	if ShadowInjector then return "Shadow" end
	if LuraphExploit then return "Luraph" end
	if X_LOADED then return "X-Executor" end
	if onewindow then return "OneWindow" end

	-- Mobile Executor Detection
	if isrbxactive then return "Hydrogen (Mobile?)" end
	if ArceusX_Loaded or ARCEUS_LOADED then return "Arceus X" end
	if Codex then return "Codex (Mobile)" end
	if isexecutorclosure and not syn then return "Delta (Mobile)" end
	if OXYGEN_LOADED then return "Oxygen U" end
	if IS_COCO_LOADED then return "CocoHub" end
	if mobility or (typeof(hydrogen) == "function") then return "Hydrogen" end

	return "Unknown"
end

-- Apply result
executor = detectExecutor()
label.Text = executor
"
LocalScript.Parent = TextLabel

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local GROW_A_GARDEN = Instance.new("TextLabel")
GROW_A_GARDEN.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
GROW_A_GARDEN.TextColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.Text = "GROWAGARDEN"
GROW_A_GARDEN.Name = "GROW_A_GARDEN"
GROW_A_GARDEN.Size = UDim2.new(0, 180, 0, 19)
GROW_A_GARDEN.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
GROW_A_GARDEN.BackgroundTransparency = 1
GROW_A_GARDEN.TextXAlignment = Enum.TextXAlignment.Left
GROW_A_GARDEN.BorderSizePixel = 0
GROW_A_GARDEN.BorderColor3 = Color3.fromRGB(0, 0, 0)
GROW_A_GARDEN.TextSize = 14
GROW_A_GARDEN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GROW_A_GARDEN.Parent = HOME

local MAIN = Instance.new("Frame")
MAIN.Visible = false
MAIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
MAIN.BackgroundTransparency = 1
MAIN.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
MAIN.Name = "MAIN"
MAIN.Size = UDim2.new(0, 525, 0, 338)
MAIN.BorderSizePixel = 0
MAIN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MAIN.Parent = MainUi

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.029172129929065704, 0, 0.11594201624393463, 0)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 492, 0, 287)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local ToggleButton2 = Instance.new("CanvasGroup")
ToggleButton2.Name = "ToggleButton2"
ToggleButton2.Position = UDim2.new(0.3991769552230835, 0, 0.2246376872062683, 0)
ToggleButton2.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton2.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton2.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton2

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton2

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton2

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "	local Button = script.Parent
	local CircleFrame = Button.Parent
	local OvalFrame = CircleFrame.Parent
	local ButtonMainFrame = OvalFrame.Parent
	local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue") -- Optional
	local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
	local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

	local OnPosition = "Right" -- or "Right"
	local TweenSpeed = 0.4
	local TweenStyle = Enum.EasingStyle.Sine
	local TweenDirection = Enum.EasingDirection.Out
	local LastTimeClicked = 0
	local ClickDebounceTime = TweenSpeed * 1.05

	-- Speed Config
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local defaultSpeed = 16
	local speedBoost = 100
	local isBoosted = false

	-- UI setup
	if OnPosition == "Right" then
		OnDisplay.Position= UDim2.new(0,0,0,0)
		OffDisplay.Position = UDim2.new(0.5,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0.75,0)
		OffDisplay.AnchorPoint = Vector2.new(0,0)
	elseif OnPosition == "Left" then
		OnDisplay.Position= UDim2.new(0.5,0,0,0) 
		OffDisplay.Position = UDim2.new(0,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0,0)
		OffDisplay.AnchorPoint = Vector2.new(0.75,0)
	end

	-- Main Toggle Logic
	Button.MouseButton1Click:Connect(function()
		if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
			LastTimeClicked = tonumber(os.clock())

			local character = player.Character or player.CharacterAdded:Wait()
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if not humanoid then return end

			if Button.Parent.Position.X.Scale == 0 then
				-- Toggle ON
				isBoosted = true
				humanoid.WalkSpeed = defaultSpeed + speedBoost
				CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			elseif Button.Parent.Position.X.Scale == 0.5 then
				-- Toggle OFF
				isBoosted = false
				humanoid.WalkSpeed = defaultSpeed
				CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			end
		end
	end)

	-- Default UI Position Load
	DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if not humanoid then return end

		if DefaultValue == true then
			if OnPosition == "Right" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed + speedBoost
			isBoosted = true
		else
			if OnPosition == "Left" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed
			isBoosted = false
		end
	end)"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton2

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton2

local ToggleButton3 = Instance.new("CanvasGroup")
ToggleButton3.Name = "ToggleButton3"
ToggleButton3.Position = UDim2.new(0.3991769552230835, 0, 0.3550724685192108, 0)
ToggleButton3.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton3.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton3.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton3

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton3

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton3

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Toggle GUI for Seed Sniper (No Speed Boost or Flying)

local Button = script.Parent
local CircleFrame = Button.Parent
local OvalFrame = CircleFrame.Parent
local ButtonMainFrame = OvalFrame.Parent
local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue")
local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

local OnPosition = "Right"
local TweenSpeed = 0.4
local TweenStyle = Enum.EasingStyle.Sine
local TweenDirection = Enum.EasingDirection.Out
local LastTimeClicked = 0
local ClickDebounceTime = TweenSpeed * 1.05

-- Seed sniping variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BuySeedEvent = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("BuySeedStock")
local seedName = "Carrot" -- Change to your desired seed name
local sniping = false
local snipingThread

-- Sniping control
local function startSniping()
	if sniping then return end
	sniping = true
	snipingThread = coroutine.create(function()
		while sniping do
			BuySeedEvent:FireServer(seedName)
			task.wait(0.5) -- Adjust delay as needed
		end
	end)
	coroutine.resume(snipingThread)
end

local function stopSniping()
	sniping = false
end

-- UI setup
if OnPosition == "Right" then
	OnDisplay.Position= UDim2.new(0,0,0,0)
	OffDisplay.Position = UDim2.new(0.5,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0.75,0)
	OffDisplay.AnchorPoint = Vector2.new(0,0)
elseif OnPosition == "Left" then
	OnDisplay.Position= UDim2.new(0.5,0,0,0) 
	OffDisplay.Position = UDim2.new(0,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0,0)
	OffDisplay.AnchorPoint = Vector2.new(0.75,0)
end

-- Main Toggle Logic
Button.MouseButton1Click:Connect(function()
	if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
		LastTimeClicked = tonumber(os.clock())

		if Button.Parent.Position.X.Scale == 0 then
			-- Toggle ON
			startSniping()
			CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		elseif Button.Parent.Position.X.Scale == 0.5 then
			-- Toggle OFF
			stopSniping()
			CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		end
	end
end)

-- Default UI Position Load
DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
	if DefaultValue == true then
		if OnPosition == "Right" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		startSniping()
	else
		if OnPosition == "Left" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		stopSniping()
	end
end)
"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton3

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton3

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "Visual"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local Section = Instance.new("Frame")
Section.Visible = false
Section.Name = "Section"
Section.Position = UDim2.new(-0.012962937355041504, 5, -0.09445799887180328, -36)
Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Section.Size = UDim2.new(0, 532, 0, 47)
Section.BorderSizePixel = 0
Section.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
Section.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = Section

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.020676691085100174, 0, -0.11626548320055008, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 552, 0, 59)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Section

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local animation = Instance.new("LocalScript")
animation.Name = "animation"
animation.Source = "local TweenService = game:GetService("TweenService")

local mainUI = script.Parent
local fadeOverlay = mainUI:WaitForChild("FadeOverlay")
local listFrame = mainUI:WaitForChild("list")
local list2 = listFrame:WaitForChild("list2") -- Contains tab buttons

-- Tab Frames
local tabs = {
	HOME = mainUI:WaitForChild("HOME"),
	MAIN = mainUI:WaitForChild("MAIN"),
	MISC = mainUI:WaitForChild("MISC"),
	CONFIG = mainUI:WaitForChild("CONFIG"),
	VISUAL = mainUI:WaitForChild("VISUAL"),
}

-- Section now inside MAIN tab
local section = tabs["MAIN"]:WaitForChild("Section")

-- Buttons inside list2
local buttons = {
	HomeButton = "HOME",
	MainButton = "MAIN",
	MiscButton = "MISC",
	ConfigButton = "CONFIG",
	VisualButton = "VISUAL",
}

-- Tween settings
local fadeTime = 0.8
local fadeInfo = TweenInfo.new(fadeTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Start with HOME tab visible
local currentTab = tabs["HOME"]
currentTab.Visible = true
section.Visible = false
section.BackgroundTransparency = 1

-- Switch tab function
local function switchTabs(targetTabName)
	local targetTab = tabs[targetTabName]
	if not targetTab or targetTab == currentTab then return end

	local fadeIn = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 0})
	local fadeOut = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Wait()

	for _, tab in pairs(tabs) do
		tab.Visible = false
	end

	targetTab.Visible = true
	currentTab = targetTab

	-- Section fade logic only for MAIN tab
	if targetTabName == "MAIN" then
		section.Visible = true
		section.BackgroundTransparency = 1
		TweenService:Create(section, fadeInfo, {BackgroundTransparency = 0}):Play()
	else
		if section.Visible then
			local hideTween = TweenService:Create(section, fadeInfo, {BackgroundTransparency = 1})
			hideTween.Completed:Connect(function()
				section.Visible = false
			end)
			hideTween:Play()
		end
	end

	fadeOut:Play()
end

-- Hook buttons to switch function
for buttonName, tabName in pairs(buttons) do
	local button = list2:FindFirstChild(buttonName)
	if button then
		button.MouseButton1Click:Connect(function()
			switchTabs(tabName)
		end)
	end
end
"
animation.Parent = MainUi

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = MainUi

local MISC = Instance.new("Frame")
MISC.Visible = false
MISC.BorderColor3 = Color3.fromRGB(0, 0, 0)
MISC.BackgroundTransparency = 1
MISC.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
MISC.Name = "MISC"
MISC.Size = UDim2.new(0, 525, 0, 338)
MISC.BorderSizePixel = 0
MISC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MISC.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "GAMENAME"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "MISC TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.3786008358001709, 0, 0.4275362193584442, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MISC

local CONFIG = Instance.new("Frame")
CONFIG.Visible = false
CONFIG.BorderColor3 = Color3.fromRGB(0, 0, 0)
CONFIG.BackgroundTransparency = 1
CONFIG.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981486454606056, 0)
CONFIG.Name = "CONFIG"
CONFIG.Size = UDim2.new(0, 525, 0, 328)
CONFIG.BorderSizePixel = 0
CONFIG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CONFIG.Parent = MainUi

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "CONFIG TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.40740740299224854, 0, 0.420073539018631, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local UICorner = Instance.new("UICorner")
UICorner.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "GAMENAME"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local VISUAL = Instance.new("Frame")
VISUAL.Visible = false
VISUAL.BorderColor3 = Color3.fromRGB(0, 0, 0)
VISUAL.BackgroundTransparency = 1
VISUAL.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
VISUAL.Name = "VISUAL"
VISUAL.Size = UDim2.new(0, 525, 0, 338)
VISUAL.BorderSizePixel = 0
VISUAL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VISUAL.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local Visual = Instance.new("TextLabel")
Visual.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
Visual.TextColor3 = Color3.fromRGB(124, 72, 43)
Visual.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Visual.Text = "Visual"
Visual.Name = "Visual"
Visual.Size = UDim2.new(0, 148, 0, 23)
Visual.Position = UDim2.new(0.2272673100233078, -108, 0.0039750500582158566, 38)
Visual.BackgroundTransparency = 1
Visual.TextXAlignment = Enum.TextXAlignment.Left
Visual.BorderSizePixel = 0
Visual.BorderColor3 = Color3.fromRGB(0, 0, 0)
Visual.TextSize = 31
Visual.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Visual.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(154, 143, 123)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.020952381193637848, 0, 0.18657255172729492, 0)
ScrollingFrame.Size = UDim2.new(0, 507, 0, 261)
ScrollingFrame.CanvasPosition = Vector2.new(0, 135)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = VISUAL

local FruitFrame = Instance.new("Frame")
FruitFrame.Name = "FruitFrame"
FruitFrame.BackgroundTransparency = 0.4000000059604645
FruitFrame.Position = UDim2.new(0.009192713536322117, 0, 0.024351272732019424, 11)
FruitFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitFrame.Size = UDim2.new(0, 481, 0, 50)
FruitFrame.BorderSizePixel = 0
FruitFrame.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
FruitFrame.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitFrame

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.025107035413384438, 0, 0.35691630840301514, 0)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = FruitFrame

local TriggerListButton = Instance.new("TextButton")
TriggerListButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TriggerListButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.Text = ""
TriggerListButton.Size = UDim2.new(0, 152, 0, 29)
TriggerListButton.Name = "TriggerListButton"
TriggerListButton.TextXAlignment = Enum.TextXAlignment.Left
TriggerListButton.Position = UDim2.new(0.6593853831291199, 0, 0.19569061696529388, 0)
TriggerListButton.BorderSizePixel = 0
TriggerListButton.TextSize = 14
TriggerListButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerListButton.Parent = FruitFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TriggerListButton

local ChooseFruit = Instance.new("TextLabel")
ChooseFruit.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
ChooseFruit.TextColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.Text = "Choose  Fruit          --"
ChooseFruit.Name = "ChooseFruit"
ChooseFruit.BackgroundTransparency = 1
ChooseFruit.Position = UDim2.new(-0.004564385861158371, 0, 0, 0)
ChooseFruit.Size = UDim2.new(0, 152, 0, 29)
ChooseFruit.BorderSizePixel = 0
ChooseFruit.TextSize = 14
ChooseFruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChooseFruit.Parent = TriggerListButton

local choosefruitlogic = Instance.new("LocalScript")
choosefruitlogic.Name = "choosefruitlogic"
choosefruitlogic.Source = "local TweenService = game:GetService("TweenService")

-- UI structure
local visualTab = script.Parent.Parent.Parent -- From ChooseFruit → TriggerListButton → VISUAL
local triggerButton = script.Parent:WaitForChild("TriggerListButton")
local chooseFruitLabel = triggerButton:WaitForChild("ChooseFruit")
local fruitListFrame = visualTab:WaitForChild("FruitList")

-- Fade settings
local fadeInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Show/hide dropdown with animation
local function toggleFruitList()
	if fruitListFrame.Visible then
		local fadeOut = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 1})
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			fruitListFrame.Visible = false
		end)
	else
		fruitListFrame.BackgroundTransparency = 1
		fruitListFrame.Visible = true
		local fadeIn = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 0.05})
		fadeIn:Play()
	end
end

-- Click visual effect
local function playClickEffect(button)
	local overlay = Instance.new("Frame")
	overlay.Size = UDim2.new(1, 0, 1, 0)
	overlay.Position = UDim2.new(0, 0, 0, 0)
	overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	overlay.BackgroundTransparency = 1
	overlay.BorderSizePixel = 0
	overlay.ZIndex = 5
	overlay.Parent = button

	local fadeIn = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 0.6})
	local fadeOut = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Connect(function()
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			overlay:Destroy()
		end)
	end)
end

-- Connect button that toggles the dropdown
triggerButton.MouseButton1Click:Connect(toggleFruitList)

-- Connect every TextButton inside FruitList
for _, button in pairs(fruitListFrame:GetChildren()) do
	if button:IsA("TextButton") then
		button.MouseButton1Click:Connect(function()
			chooseFruitLabel.Text = button.Text
			playClickEffect(button)
			toggleFruitList()
		end)
	end
end
"
choosefruitlogic.Parent = FruitFrame

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.007999999448657036, 0, 0.14369931817054749, -12)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 481, 0, 50)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.021027032285928726, 0, -0.01098620519042015, 6)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = ScrollingFrame

local UI = Instance.new("TextLabel")
UI.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
UI.TextColor3 = Color3.fromRGB(124, 72, 43)
UI.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
UI.Text = "UI"
UI.Name = "UI"
UI.Size = UDim2.new(0, 180, 0, 19)
UI.Position = UDim2.new(0.021027032285928726, 1, -0.01098620519042015, 156)
UI.BackgroundTransparency = 1
UI.TextXAlignment = Enum.TextXAlignment.Left
UI.BorderSizePixel = 0
UI.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.TextSize = 15
UI.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
UI.Parent = ScrollingFrame

local uiGear = Instance.new("TextButton")
uiGear.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiGear.TextColor3 = Color3.fromRGB(0, 0, 0)
uiGear.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiGear.Text = ""
uiGear.Name = "uiGear"
uiGear.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 16)
uiGear.Size = UDim2.new(0, 480, 0, 50)
uiGear.BorderSizePixel = 0
uiGear.TextSize = 14
uiGear.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiGear.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI GEAR"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local Opengear = Instance.new("LocalScript")
Opengear.Name = "Opengear"
Opengear.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Gear_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opengear.Parent = uiGear

local uiseeds = Instance.new("TextButton")
uiseeds.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiseeds.TextColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.Text = ""
uiseeds.Name = "uiseeds"
uiseeds.Position = UDim2.new(0.010106073692440987, 0, 0.24424421787261963, 16)
uiseeds.Size = UDim2.new(0, 480, 0, 50)
uiseeds.BorderSizePixel = 0
uiseeds.TextSize = 14
uiseeds.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiseeds.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local OpenSeeds = Instance.new("LocalScript")
OpenSeeds.Name = "OpenSeeds"
OpenSeeds.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Seed_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
OpenSeeds.Parent = uiseeds

local uiscosmethic = Instance.new("TextButton")
uiscosmethic.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiscosmethic.TextColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.Text = ""
uiscosmethic.Name = "uiscosmethic"
uiscosmethic.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 74)
uiscosmethic.Size = UDim2.new(0, 480, 0, 50)
uiscosmethic.BorderSizePixel = 0
uiscosmethic.TextSize = 14
uiscosmethic.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiscosmethic.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local Opencosm = Instance.new("LocalScript")
Opencosm.Name = "Opencosm"
Opencosm.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("CosmeticShop_UI")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opencosm.Parent = uiscosmethic

local FruitList = Instance.new("Frame")
FruitList.Visible = false
FruitList.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitList.BackgroundTransparency = 0.10000000149011612
FruitList.Position = UDim2.new(0.6612043380737305, 0, 0.005918153095990419, 0)
FruitList.Name = "FruitList"
FruitList.Size = UDim2.new(0, 138, 0, 325)
FruitList.BorderSizePixel = 0
FruitList.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
FruitList.Parent = VISUAL

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitList

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.078125, 0, 0.03384615480899811, 0)
ScrollingFrame.Size = UDim2.new(0, 119, 0, 302)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = FruitList

local TextButton = Instance.new("TextButton")
TextButton.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Text = "INPROGRESS"
TextButton.Position = UDim2.new(0.013640332035720348, -4, 0.008918155916035175, 0)
TextButton.Size = UDim2.new(0, 108, 0, 21)
TextButton.BorderSizePixel = 0
TextButton.TextSize = 14
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextButton

local FadeOverlay = Instance.new("Frame")
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 525, 0, 338)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9675622582435608, 0, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9652284979820251, -15, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9628947973251343, -30, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local list = Instance.new("Frame")
list.BorderColor3 = Color3.fromRGB(0, 0, 0)
list.AnchorPoint = Vector2.new(0.5, 0.5)
list.BackgroundTransparency = 0.10000000149011612
list.Position = UDim2.new(-0.13149966299533844, -3, 0.3686785399913788, 44)
list.Name = "list"
list.Size = UDim2.new(0, 94, 0, 339)
list.BorderSizePixel = 0
list.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
list.Parent = MainUi

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02171163447201252, 0, 1.0387482643127441, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 316, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = list

local list2 = Instance.new("Frame")
list2.Name = "list2"
list2.BackgroundTransparency = 0.4000000059604645
list2.Position = UDim2.new(0.40382033586502075, -40, -0.0014708302915096283, 0)
list2.BorderColor3 = Color3.fromRGB(0, 0, 0)
list2.Size = UDim2.new(0, 96, 0, 339)
list2.BorderSizePixel = 0
list2.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
list2.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = list2

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = list2

local MiscButton = Instance.new("ImageButton")
MiscButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscButton.Name = "MiscButton"
MiscButton.Image = "rbxassetid://112896592265413"
MiscButton.BackgroundTransparency = 1
MiscButton.Position = UDim2.new(0.08878400921821594, 0, 0.44398099184036255, -11)
MiscButton.ImageContent = Content
MiscButton.Size = UDim2.new(0, 23, 0, 24)
MiscButton.BorderSizePixel = 0
MiscButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiscButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MiscButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MISC"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MiscButton

local VisualButton = Instance.new("ImageButton")
VisualButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
VisualButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
VisualButton.Name = "VisualButton"
VisualButton.Position = UDim2.new(0.08878400921821594, 0, 0.6402150988578796, -22)
VisualButton.ImageContent = Content
VisualButton.Size = UDim2.new(0, 23, 0, 24)
VisualButton.BorderSizePixel = 0
VisualButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VisualButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = VisualButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "VISUAL"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = VisualButton

local MainButton = Instance.new("ImageButton")
MainButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainButton.Name = "MainButton"
MainButton.Image = "rbxassetid://71021086762099"
MainButton.BackgroundTransparency = 1
MainButton.Position = UDim2.new(0.08878400921821594, 0, 0.23528461158275604, 8)
MainButton.ImageContent = Content
MainButton.Size = UDim2.new(0, 23, 0, 24)
MainButton.BorderSizePixel = 0
MainButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MAIN"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MainButton

local ConfigButton = Instance.new("ImageButton")
ConfigButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfigButton.Name = "ConfigButton"
ConfigButton.Image = "rbxassetid://126496417047546"
ConfigButton.BackgroundTransparency = 1
ConfigButton.Position = UDim2.new(0.08878400921821594, 0, 0.8193672895431519, -29)
ConfigButton.ImageContent = Content
ConfigButton.Size = UDim2.new(0, 23, 0, 24)
ConfigButton.BorderSizePixel = 0
ConfigButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConfigButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ConfigButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "CONFIG"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ConfigButton

local HomeButton = Instance.new("ImageButton")
HomeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeButton.Name = "HomeButton"
HomeButton.Image = "rbxassetid://138376539454145"
HomeButton.BackgroundTransparency = 1
HomeButton.Position = UDim2.new(0.11108327656984329, 0, 0.029755359515547752, 28)
HomeButton.ImageContent = Content
HomeButton.Size = UDim2.new(0, 23, 0, 24)
HomeButton.BorderSizePixel = 0
HomeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = HomeButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "HOME"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 11)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HomeButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.022113136947155, 0, 0.009630580432713032, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 29, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.1072353720664978, 0, -0.03556927293539047, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 112, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.06865453720092773, 0, -0.024630215018987656, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 128, 0, 379)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.021086135879158974, 0, -0.03689182549715042, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 548, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = MainUi

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0019723933655768633, 0, -0.027118662372231483, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 556, 0, 380)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local Notify2 = Instance.new("Frame")
Notify2.Visible = false
Notify2.Name = "Notify2"
Notify2.Position = UDim2.new(0.6272727251052856, 0, 0.7008165717124939, 0)
Notify2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notify2.Size = UDim2.new(0, 246, 0, 163)
Notify2.BorderSizePixel = 0
Notify2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notify2.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = Notify2

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04271344467997551, 0, -0.04378317669034004, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 267, 0, 181)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.038664285093545914, 0, -0.04430731013417244, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 286, 0, 196)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local FadeOverlay = Instance.new("Frame")
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 246, 0, 156)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "PLEASE SUPPORT US ON DISCORD"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.004065040498971939, 0, 0.042944785207509995, 0)
TextLabel.Size = UDim2.new(0, 246, 0, 122)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
TextLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local CopyButton = Instance.new("TextButton")
CopyButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CopyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.Text = "COPY"
CopyButton.Name = "CopyButton"
CopyButton.Position = UDim2.new(0.03926198184490204, 0, 0.6948744058609009, 0)
CopyButton.Size = UDim2.new(0, 92, 0, 37)
CopyButton.BorderSizePixel = 0
CopyButton.TextSize = 14
CopyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CopyButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04272029548883438, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 103, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CopyButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.03914118930697441, 0, -0.08062262088060379, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CopyScript = Instance.new("LocalScript")
CopyScript.Name = "CopyScript"
CopyScript.Source = "local GuiService = game:GetService("GuiService")
local button = script.Parent

local copy = 'https://discord.gg/2Aa7facYFp' 
button.MouseButton1Click:Connect(function(plr) setclipboard(tostring(copy)) end)"
CopyScript.Parent = CopyButton

local CloseButton = Instance.new("TextButton")
CloseButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Text = "CLOSE"
CloseButton.Name = "CloseButton"
CloseButton.Position = UDim2.new(0.5388433933258057, 0, 0.6948744058609009, 0)
CloseButton.Size = UDim2.new(0, 94, 0, 37)
CloseButton.BorderSizePixel = 0
CloseButton.TextSize = 14
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CloseButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.009531021118164062, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 106, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CloseButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0876850038766861, 0, -0.10284491628408432, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CloseScript = Instance.new("LocalScript")
CloseScript.Name = "CloseScript"
CloseScript.Source = "local closeButton = script.Parent-- The button this script is inside
local notifyFrame = closeButton.Parent  -- Adjust path if needed

closeButton.MouseButton1Click:Connect(function()
	notifyFrame.Visible = false  -- Hide the Notify2 frame
end)
"
CloseScript.Parent = CloseButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.009999999776482582
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://115116817442738"
ImageLabel.Position = UDim2.new(0.022633621469140053, 0, 0.05241403356194496, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 26, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = Notify2

local LoadingUi = Instance.new("Frame")
LoadingUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingUi.AnchorPoint = Vector2.new(0.5, 0.5)
LoadingUi.BackgroundTransparency = 0.10000000149011612
LoadingUi.Position = UDim2.new(0.5087721347808838, 1, 0.40437519550323486, 45)
LoadingUi.Name = "LoadingUi"
LoadingUi.Size = UDim2.new(0, 338, 0, 198)
LoadingUi.BorderSizePixel = 0
LoadingUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
LoadingUi.Parent = TestTrojan

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 0.4000000059604645
ImageLabel.Position = UDim2.new(0.022036707028746605, 0, 0.02090396359562874, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 25, 0, 25)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, 1.037168264389038, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, -0.03353870287537575, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 211)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.013806739822030067, 0, -0.027118664234876633, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 366, 0, 224)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local Progress = Instance.new("Frame")
Progress.BorderColor3 = Color3.fromRGB(0, 0, 0)
Progress.AnchorPoint = Vector2.new(0, 1)
Progress.Name = "Progress"
Progress.BackgroundTransparency = 1
Progress.Position = UDim2.new(0.43768996000289917, 0, 0.5989848375320435, 0)
Progress.SizeConstraint = Enum.SizeConstraint.RelativeYY
Progress.Size = UDim2.new(0.20000000298023224, 0, 0.20000000298023224, 0)
Progress.BorderSizePixel = 0
Progress.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Progress.Parent = LoadingUi

local Frame1 = Instance.new("Frame")
Frame1.Name = "Frame1"
Frame1.BackgroundTransparency = 1
Frame1.ClipsDescendants = true
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.Size = UDim2.new(0.5252525806427002, 0, 1.0000001192092896, 0)
Frame1.BorderSizePixel = 0
Frame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame1.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2, 0, 1, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame1

local UIGradient = Instance.new("UIGradient")
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Frame2 = Instance.new("Frame")
Frame2.ClipsDescendants = true
Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame2.AnchorPoint = Vector2.new(1, 0)
Frame2.BackgroundTransparency = 1
Frame2.Position = UDim2.new(1.050506353378296, -2, 0, 0)
Frame2.Name = "Frame2"
Frame2.Size = UDim2.new(0.5505059361457825, 0, 1.0000001192092896, 0)
Frame2.BorderSizePixel = 0
Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame2.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(-0.9494973421096802, 0, 0, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2.050507068634033, 0, 1.0000001192092896, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame2

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 180
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Percentage = Instance.new("NumberValue")
Percentage.Name = "Percentage"
Percentage.Parent = Progress

local ProgressScript = Instance.new("LocalScript")
ProgressScript.Name = "ProgressScript"
ProgressScript.Source = "-- MissingPartType: "Trans", "Color", "TransAndColor".


game:GetService("RunService").RenderStepped:Connect(function()
	script.Parent.Value = script.Parent.Value + 1
	if script.Parent.Value > 100 then
		script.Parent.Value = 0
	end
	-- Progress.
	local PercentNumber = math.clamp(script.Parent.Value * 3.6,0,360)
	local F1 = script.Parent.Parent.Frame1.ImageLabel
	local F2 = script.Parent.Parent.Frame2.ImageLabel
	F1.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,180,360) or 180 - math.clamp(PercentNumber,0,180)
	F2.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,0,180) or 180 - math.clamp(PercentNumber,180,360)
	F1.ImageColor3 = script.ImageColor.Value
	F2.ImageColor3 = script.ImageColor.Value
	F1.ImageTransparency = script.ImageTrans.Value
	F2.ImageTransparency = script.ImageTrans.Value
	F1.Image = "rbxassetid://" .. script.ImageId.Value
	F2.Image = "rbxassetid://" .. script.ImageId.Value
	if script.MissingPartType.Value == "Color" then
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F1.UIGradient.Transparency = NumberSequence.new(0)
		F2.UIGradient.Transparency = NumberSequence.new(0)
	elseif script.MissingPartType.Value == "Trans" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
		F2.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
	elseif script.MissingPartType.Value == "TransAndColor" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
	else
		script.MissingPartType.Value = "Trans"
		error("Unknown Type. Only 3 available: “Trans”, “Color” and “TransAndColor”, changing to “Trans”.")
	end
end)"
ProgressScript.Parent = Percentage

local MissingPartType = Instance.new("StringValue")
MissingPartType.Value = "TransAndColor"
MissingPartType.Name = "MissingPartType"
MissingPartType.Parent = ProgressScript

local FlipProgress = Instance.new("BoolValue")
FlipProgress.Name = "FlipProgress"
FlipProgress.Parent = ProgressScript

local TransOfMissingPart = Instance.new("NumberValue")
TransOfMissingPart.Value = 0.25
TransOfMissingPart.Name = "TransOfMissingPart"
TransOfMissingPart.Parent = ProgressScript

local ColorOfMissingPart = Instance.new("Color3Value")
ColorOfMissingPart.Value = Color3.fromRGB(255, 255, 255)
ColorOfMissingPart.Name = "ColorOfMissingPart"
ColorOfMissingPart.Parent = ProgressScript

local TransOfPercentPart = Instance.new("NumberValue")
TransOfPercentPart.Name = "TransOfPercentPart"
TransOfPercentPart.Parent = ProgressScript

local ColorOfPercentPart = Instance.new("Color3Value")
ColorOfPercentPart.Value = Color3.fromRGB(154, 143, 123)
ColorOfPercentPart.Name = "ColorOfPercentPart"
ColorOfPercentPart.Parent = ProgressScript

local ImageColor = Instance.new("Color3Value")
ImageColor.Value = Color3.fromRGB(255, 255, 255)
ImageColor.Name = "ImageColor"
ImageColor.Parent = ProgressScript

local ImageTrans = Instance.new("NumberValue")
ImageTrans.Name = "ImageTrans"
ImageTrans.Parent = ProgressScript

local ImageId = Instance.new("StringValue")
ImageId.Value = "3587367081"
ImageId.Name = "ImageId"
ImageId.Parent = ProgressScript

local UICorner = Instance.new("UICorner")
UICorner.Parent = LoadingUi

local LoadsScript = Instance.new("LocalScript")
LoadsScript.Name = "LoadsScript"
LoadsScript.Source = "local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local gui = script.Parent

local loadingUi = gui:WaitForChild("LoadingUi")
local mainUi = gui:WaitForChild("MainUi")
local blur = Lighting:WaitForChild("LoadingBlur")
local Notify = gui:WaitForChild("Notify2")

-- Start: MainUi and Notify hidden, blur on
Notify.Visible = false
mainUi.Visible = false
blur.Enabled = true
blur.Size = 1000

-- Fade out loading elements only
local function fadeToInvisible(frame, duration)
	for _, obj in ipairs(frame:GetDescendants()) do
		if obj:IsA("GuiObject") then
			local goal = {}
			if obj:IsA("TextLabel") or obj:IsA("TextButton") then
				goal.TextTransparency = 1
			end
			if obj:IsA("ImageLabel") then
				goal.ImageTransparency = 1
			end
			goal.BackgroundTransparency = 1
			TweenService:Create(obj, TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal):Play()
		end
	end
end

-- Tween blur out
local function fadeOutBlur()
	local tween = TweenService:Create(
		blur,
		TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{Size = 0}
	)
	tween:Play()
	tween.Completed:Wait()
	blur.Enabled = false
end

-- Wait 5 seconds
task.wait(7)

-- Show MainUi instantly
mainUi.Visible = true

-- If MainUi is visible, show the notify
if mainUi.Visible == true then
	Notify.Visible = true
endlocal TestTrojan = Instance.new("ScreenGui")
TestTrojan.Name = "TestTrojan"
TestTrojan.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TestTrojan.Parent = game.Workspace

local MainUi = Instance.new("Frame")
MainUi.Visible = true
MainUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainUi.AnchorPoint = Vector2.new(0.5, 0.5)
MainUi.BackgroundTransparency = 0.4000000059604645
MainUi.Position = UDim2.new(0.5371969938278198, 1, 0.34883514046669006, 45)
MainUi.Name = "MainUi"
MainUi.Size = UDim2.new(0, 525, 0, 338)
MainUi.BorderSizePixel = 0
MainUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
MainUi.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainUi

local auto_name_script = Instance.new("LocalScript")
auto_name_script.Name = "auto_name_script"
auto_name_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > NAME > TextLabel
local nameFrame = script.Parent:WaitForChild("HOME"):WaitForChild("NAME")
local textLabel = nameFrame:FindFirstChildOfClass("TextLabel")

if textLabel then
	textLabel.Text = player.Name -- or use player.DisplayName if preferred
else
	warn("TextLabel not found inside HOME > NAME.")
end
"
auto_name_script.Parent = MainUi

local auto_head_pic_script = Instance.new("LocalScript")
auto_head_pic_script.Name = "auto_head_pic_script"
auto_head_pic_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > picture > ImageLabel
local imageLabel = script.Parent:WaitForChild("HOME"):WaitForChild("picture"):WaitForChild("ImageLabel")

local userId = player.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420

local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
imageLabel.Image = content
"
auto_head_pic_script.Parent = MainUi

local HOME = Instance.new("Frame")
HOME.Name = "HOME"
HOME.BackgroundTransparency = 1
HOME.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
HOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
HOME.Size = UDim2.new(0, 525, 0, 338)
HOME.BorderSizePixel = 0
HOME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HOME.Parent = MainUi

local WELCOME = Instance.new("Frame")
WELCOME.Name = "WELCOME"
WELCOME.BackgroundTransparency = 0.4000000059604645
WELCOME.Position = UDim2.new(0.2799765169620514, 0, 0.5262502431869507, 0)
WELCOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
WELCOME.Size = UDim2.new(0, 350, 0, 132)
WELCOME.BorderSizePixel = 0
WELCOME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
WELCOME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = WELCOME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "W"
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.03179190680384636, 0, 0.09090909361839294, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextWrapped = true
TextLabel.TextSize = 100
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.11849711090326309, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "L"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.20809248089790344, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "C"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.2976878583431244, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "O"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.39306357502937317, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "M"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.49421966075897217, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5891165733337402, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.677873969078064, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7311283946037292, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7903000116348267, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
TextLabel.Parent = WELCOME

local picture = Instance.new("Frame")
picture.Name = "picture"
picture.BackgroundTransparency = 0.5
picture.Position = UDim2.new(0.7115427255630493, 0, 0.057971030473709106, 0)
picture.BorderColor3 = Color3.fromRGB(0, 0, 0)
picture.Size = UDim2.new(0, 144, 0, 137)
picture.BorderSizePixel = 0
picture.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
picture.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = picture

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = picture

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.0416666679084301, 0, 0.03729248046875, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 133, 0, 126)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = picture

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local NAME = Instance.new("Frame")
NAME.Name = "NAME"
NAME.BackgroundTransparency = 0.4000000059604645
NAME.Position = UDim2.new(0.25330984592437744, 2, 0.17983020842075348, 0)
NAME.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAME.Size = UDim2.new(0, 229, 0, 74)
NAME.BorderSizePixel = 0
NAME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAME

local username = Instance.new("TextLabel")
username.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
username.TextColor3 = Color3.fromRGB(226, 226, 226)
username.BorderColor3 = Color3.fromRGB(0, 0, 0)
username.Text = "NAME"
username.Name = "username"
username.Size = UDim2.new(0, 218, 0, 63)
username.Position = UDim2.new(0.04803493618965149, 0, 0.26077187061309814, 0)
username.BackgroundTransparency = 1
username.TextXAlignment = Enum.TextXAlignment.Left
username.BorderSizePixel = 0
username.TextYAlignment = Enum.TextYAlignment.Top
username.TextSize = 30
username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
username.Parent = NAME

local UICorner = Instance.new("UICorner")
UICorner.Parent = username

local NAMEEXEC = Instance.new("Frame")
NAMEEXEC.Name = "NAMEEXEC"
NAMEEXEC.BackgroundTransparency = 0.4000000059604645
NAMEEXEC.Position = UDim2.new(0.032921794801950455, 2, 0.17030377686023712, 0)
NAMEEXEC.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEEXEC.Size = UDim2.new(0, 90, 0, 253)
NAMEEXEC.BorderSizePixel = 0
NAMEEXEC.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAMEEXEC.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAMEEXEC

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAMEEXEC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "executorname"
TextLabel.Size = UDim2.new(0, 169, 0, 79)
TextLabel.AnchorPoint = Vector2.new(0.5, 1)
TextLabel.Rotation = -90
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Position = UDim2.new(0.11568490415811539, 0, 0.6989752054214478, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 45
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Place in a LocalScript inside a TextLabel
local label = script.Parent
local executor = "Unknown"

local function detectExecutor()
	if getexecutorname then
		local success, result = pcall(getexecutorname)
		if success and typeof(result) == "string" then
			return result
		end
	end

	if identifyexecutor then
		local success, result = pcall(identifyexecutor)
		if success and typeof(result) == "string" then
			return result
		end
	end

	-- Desktop Executable Identifiers
	if syn then return "Synapse X" end
	if KRNL_LOADED then return "KRNL" end
	if is_sirhurt_closure then return "SirHurt" end
	if secure_load then return "Sentinel" end
	if fluxus then return "Fluxus" end
	if isexecutorclosure then return "Fluxus" end
	if WRD_LOADED then return "WeAreDevs (WRD)" end
	if pebc_execute then return "Proxo" end
	if comet then return "Comet" end
	if ShadowInjector then return "Shadow" end
	if LuraphExploit then return "Luraph" end
	if X_LOADED then return "X-Executor" end
	if onewindow then return "OneWindow" end

	-- Mobile Executor Detection
	if isrbxactive then return "Hydrogen (Mobile?)" end
	if ArceusX_Loaded or ARCEUS_LOADED then return "Arceus X" end
	if Codex then return "Codex (Mobile)" end
	if isexecutorclosure and not syn then return "Delta (Mobile)" end
	if OXYGEN_LOADED then return "Oxygen U" end
	if IS_COCO_LOADED then return "CocoHub" end
	if mobility or (typeof(hydrogen) == "function") then return "Hydrogen" end

	return "Unknown"
end

-- Apply result
executor = detectExecutor()
label.Text = executor
"
LocalScript.Parent = TextLabel

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local GROW_A_GARDEN = Instance.new("TextLabel")
GROW_A_GARDEN.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
GROW_A_GARDEN.TextColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.Text = "GROWAGARDEN"
GROW_A_GARDEN.Name = "GROW_A_GARDEN"
GROW_A_GARDEN.Size = UDim2.new(0, 180, 0, 19)
GROW_A_GARDEN.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
GROW_A_GARDEN.BackgroundTransparency = 1
GROW_A_GARDEN.TextXAlignment = Enum.TextXAlignment.Left
GROW_A_GARDEN.BorderSizePixel = 0
GROW_A_GARDEN.BorderColor3 = Color3.fromRGB(0, 0, 0)
GROW_A_GARDEN.TextSize = 14
GROW_A_GARDEN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GROW_A_GARDEN.Parent = HOME

local MAIN = Instance.new("Frame")
MAIN.Visible = false
MAIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
MAIN.BackgroundTransparency = 1
MAIN.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
MAIN.Name = "MAIN"
MAIN.Size = UDim2.new(0, 525, 0, 338)
MAIN.BorderSizePixel = 0
MAIN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MAIN.Parent = MainUi

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.029172129929065704, 0, 0.11594201624393463, 0)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 492, 0, 287)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local ToggleButton2 = Instance.new("CanvasGroup")
ToggleButton2.Name = "ToggleButton2"
ToggleButton2.Position = UDim2.new(0.3991769552230835, 0, 0.2246376872062683, 0)
ToggleButton2.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton2.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton2.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton2

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton2

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton2

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "	local Button = script.Parent
	local CircleFrame = Button.Parent
	local OvalFrame = CircleFrame.Parent
	local ButtonMainFrame = OvalFrame.Parent
	local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue") -- Optional
	local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
	local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

	local OnPosition = "Right" -- or "Right"
	local TweenSpeed = 0.4
	local TweenStyle = Enum.EasingStyle.Sine
	local TweenDirection = Enum.EasingDirection.Out
	local LastTimeClicked = 0
	local ClickDebounceTime = TweenSpeed * 1.05

	-- Speed Config
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local defaultSpeed = 16
	local speedBoost = 100
	local isBoosted = false

	-- UI setup
	if OnPosition == "Right" then
		OnDisplay.Position= UDim2.new(0,0,0,0)
		OffDisplay.Position = UDim2.new(0.5,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0.75,0)
		OffDisplay.AnchorPoint = Vector2.new(0,0)
	elseif OnPosition == "Left" then
		OnDisplay.Position= UDim2.new(0.5,0,0,0) 
		OffDisplay.Position = UDim2.new(0,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0,0)
		OffDisplay.AnchorPoint = Vector2.new(0.75,0)
	end

	-- Main Toggle Logic
	Button.MouseButton1Click:Connect(function()
		if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
			LastTimeClicked = tonumber(os.clock())

			local character = player.Character or player.CharacterAdded:Wait()
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if not humanoid then return end

			if Button.Parent.Position.X.Scale == 0 then
				-- Toggle ON
				isBoosted = true
				humanoid.WalkSpeed = defaultSpeed + speedBoost
				CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			elseif Button.Parent.Position.X.Scale == 0.5 then
				-- Toggle OFF
				isBoosted = false
				humanoid.WalkSpeed = defaultSpeed
				CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			end
		end
	end)

	-- Default UI Position Load
	DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if not humanoid then return end

		if DefaultValue == true then
			if OnPosition == "Right" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed + speedBoost
			isBoosted = true
		else
			if OnPosition == "Left" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed
			isBoosted = false
		end
	end)"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton2

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton2

local ToggleButton3 = Instance.new("CanvasGroup")
ToggleButton3.Name = "ToggleButton3"
ToggleButton3.Position = UDim2.new(0.3991769552230835, 0, 0.3550724685192108, 0)
ToggleButton3.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton3.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton3.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton3

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton3

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton3

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Toggle GUI for Seed Sniper (No Speed Boost or Flying)

local Button = script.Parent
local CircleFrame = Button.Parent
local OvalFrame = CircleFrame.Parent
local ButtonMainFrame = OvalFrame.Parent
local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue")
local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

local OnPosition = "Right"
local TweenSpeed = 0.4
local TweenStyle = Enum.EasingStyle.Sine
local TweenDirection = Enum.EasingDirection.Out
local LastTimeClicked = 0
local ClickDebounceTime = TweenSpeed * 1.05

-- Seed sniping variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BuySeedEvent = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("BuySeedStock")
local seedName = "Carrot" -- Change to your desired seed name
local sniping = false
local snipingThread

-- Sniping control
local function startSniping()
	if sniping then return end
	sniping = true
	snipingThread = coroutine.create(function()
		while sniping do
			BuySeedEvent:FireServer(seedName)
			task.wait(0.5) -- Adjust delay as needed
		end
	end)
	coroutine.resume(snipingThread)
end

local function stopSniping()
	sniping = false
end

-- UI setup
if OnPosition == "Right" then
	OnDisplay.Position= UDim2.new(0,0,0,0)
	OffDisplay.Position = UDim2.new(0.5,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0.75,0)
	OffDisplay.AnchorPoint = Vector2.new(0,0)
elseif OnPosition == "Left" then
	OnDisplay.Position= UDim2.new(0.5,0,0,0) 
	OffDisplay.Position = UDim2.new(0,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0,0)
	OffDisplay.AnchorPoint = Vector2.new(0.75,0)
end

-- Main Toggle Logic
Button.MouseButton1Click:Connect(function()
	if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
		LastTimeClicked = tonumber(os.clock())

		if Button.Parent.Position.X.Scale == 0 then
			-- Toggle ON
			startSniping()
			CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		elseif Button.Parent.Position.X.Scale == 0.5 then
			-- Toggle OFF
			stopSniping()
			CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		end
	end
end)

-- Default UI Position Load
DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
	if DefaultValue == true then
		if OnPosition == "Right" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		startSniping()
	else
		if OnPosition == "Left" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		stopSniping()
	end
end)
"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton3

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton3

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "Visual"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local Section = Instance.new("Frame")
Section.Visible = false
Section.Name = "Section"
Section.Position = UDim2.new(-0.012962937355041504, 5, -0.09445799887180328, -36)
Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Section.Size = UDim2.new(0, 532, 0, 47)
Section.BorderSizePixel = 0
Section.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
Section.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = Section

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.020676691085100174, 0, -0.11626548320055008, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 552, 0, 59)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Section

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local animation = Instance.new("LocalScript")
animation.Name = "animation"
animation.Source = "local TweenService = game:GetService("TweenService")

local mainUI = script.Parent
local fadeOverlay = mainUI:WaitForChild("FadeOverlay")
local listFrame = mainUI:WaitForChild("list")
local list2 = listFrame:WaitForChild("list2") -- Contains tab buttons

-- Tab Frames
local tabs = {
	HOME = mainUI:WaitForChild("HOME"),
	MAIN = mainUI:WaitForChild("MAIN"),
	MISC = mainUI:WaitForChild("MISC"),
	CONFIG = mainUI:WaitForChild("CONFIG"),
	VISUAL = mainUI:WaitForChild("VISUAL"),
}

-- Section now inside MAIN tab
local section = tabs["MAIN"]:WaitForChild("Section")

-- Buttons inside list2
local buttons = {
	HomeButton = "HOME",
	MainButton = "MAIN",
	MiscButton = "MISC",
	ConfigButton = "CONFIG",
	VisualButton = "VISUAL",
}

-- Tween settings
local fadeTime = 0.8
local fadeInfo = TweenInfo.new(fadeTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Start with HOME tab visible
local currentTab = tabs["HOME"]
currentTab.Visible = true
section.Visible = false
section.BackgroundTransparency = 1

-- Switch tab function
local function switchTabs(targetTabName)
	local targetTab = tabs[targetTabName]
	if not targetTab or targetTab == currentTab then return end

	local fadeIn = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 0})
	local fadeOut = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Wait()

	for _, tab in pairs(tabs) do
		tab.Visible = false
	end

	targetTab.Visible = true
	currentTab = targetTab

	-- Section fade logic only for MAIN tab
	if targetTabName == "MAIN" then
		section.Visible = true
		section.BackgroundTransparency = 1
		TweenService:Create(section, fadeInfo, {BackgroundTransparency = 0}):Play()
	else
		if section.Visible then
			local hideTween = TweenService:Create(section, fadeInfo, {BackgroundTransparency = 1})
			hideTween.Completed:Connect(function()
				section.Visible = false
			end)
			hideTween:Play()
		end
	end

	fadeOut:Play()
end

-- Hook buttons to switch function
for buttonName, tabName in pairs(buttons) do
	local button = list2:FindFirstChild(buttonName)
	if button then
		button.MouseButton1Click:Connect(function()
			switchTabs(tabName)
		end)
	end
end
"
animation.Parent = MainUi

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = MainUi

local MISC = Instance.new("Frame")
MISC.Visible = false
MISC.BorderColor3 = Color3.fromRGB(0, 0, 0)
MISC.BackgroundTransparency = 1
MISC.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
MISC.Name = "MISC"
MISC.Size = UDim2.new(0, 525, 0, 338)
MISC.BorderSizePixel = 0
MISC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MISC.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "GAMENAME"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "MISC TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.3786008358001709, 0, 0.4275362193584442, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MISC

local CONFIG = Instance.new("Frame")
CONFIG.Visible = false
CONFIG.BorderColor3 = Color3.fromRGB(0, 0, 0)
CONFIG.BackgroundTransparency = 1
CONFIG.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981486454606056, 0)
CONFIG.Name = "CONFIG"
CONFIG.Size = UDim2.new(0, 525, 0, 328)
CONFIG.BorderSizePixel = 0
CONFIG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CONFIG.Parent = MainUi

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "CONFIG TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.40740740299224854, 0, 0.420073539018631, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local UICorner = Instance.new("UICorner")
UICorner.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "GAMENAME"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local VISUAL = Instance.new("Frame")
VISUAL.Visible = false
VISUAL.BorderColor3 = Color3.fromRGB(0, 0, 0)
VISUAL.BackgroundTransparency = 1
VISUAL.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
VISUAL.Name = "VISUAL"
VISUAL.Size = UDim2.new(0, 525, 0, 338)
VISUAL.BorderSizePixel = 0
VISUAL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VISUAL.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local Visual = Instance.new("TextLabel")
Visual.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
Visual.TextColor3 = Color3.fromRGB(124, 72, 43)
Visual.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Visual.Text = "Visual"
Visual.Name = "Visual"
Visual.Size = UDim2.new(0, 148, 0, 23)
Visual.Position = UDim2.new(0.2272673100233078, -108, 0.0039750500582158566, 38)
Visual.BackgroundTransparency = 1
Visual.TextXAlignment = Enum.TextXAlignment.Left
Visual.BorderSizePixel = 0
Visual.BorderColor3 = Color3.fromRGB(0, 0, 0)
Visual.TextSize = 31
Visual.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Visual.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(154, 143, 123)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.020952381193637848, 0, 0.18657255172729492, 0)
ScrollingFrame.Size = UDim2.new(0, 507, 0, 261)
ScrollingFrame.CanvasPosition = Vector2.new(0, 135)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = VISUAL

local FruitFrame = Instance.new("Frame")
FruitFrame.Name = "FruitFrame"
FruitFrame.BackgroundTransparency = 0.4000000059604645
FruitFrame.Position = UDim2.new(0.009192713536322117, 0, 0.024351272732019424, 11)
FruitFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitFrame.Size = UDim2.new(0, 481, 0, 50)
FruitFrame.BorderSizePixel = 0
FruitFrame.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
FruitFrame.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitFrame

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.025107035413384438, 0, 0.35691630840301514, 0)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = FruitFrame

local TriggerListButton = Instance.new("TextButton")
TriggerListButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TriggerListButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.Text = ""
TriggerListButton.Size = UDim2.new(0, 152, 0, 29)
TriggerListButton.Name = "TriggerListButton"
TriggerListButton.TextXAlignment = Enum.TextXAlignment.Left
TriggerListButton.Position = UDim2.new(0.6593853831291199, 0, 0.19569061696529388, 0)
TriggerListButton.BorderSizePixel = 0
TriggerListButton.TextSize = 14
TriggerListButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerListButton.Parent = FruitFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TriggerListButton

local ChooseFruit = Instance.new("TextLabel")
ChooseFruit.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
ChooseFruit.TextColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.Text = "Choose  Fruit          --"
ChooseFruit.Name = "ChooseFruit"
ChooseFruit.BackgroundTransparency = 1
ChooseFruit.Position = UDim2.new(-0.004564385861158371, 0, 0, 0)
ChooseFruit.Size = UDim2.new(0, 152, 0, 29)
ChooseFruit.BorderSizePixel = 0
ChooseFruit.TextSize = 14
ChooseFruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChooseFruit.Parent = TriggerListButton

local choosefruitlogic = Instance.new("LocalScript")
choosefruitlogic.Name = "choosefruitlogic"
choosefruitlogic.Source = "local TweenService = game:GetService("TweenService")

-- UI structure
local visualTab = script.Parent.Parent.Parent -- From ChooseFruit → TriggerListButton → VISUAL
local triggerButton = script.Parent:WaitForChild("TriggerListButton")
local chooseFruitLabel = triggerButton:WaitForChild("ChooseFruit")
local fruitListFrame = visualTab:WaitForChild("FruitList")

-- Fade settings
local fadeInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Show/hide dropdown with animation
local function toggleFruitList()
	if fruitListFrame.Visible then
		local fadeOut = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 1})
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			fruitListFrame.Visible = false
		end)
	else
		fruitListFrame.BackgroundTransparency = 1
		fruitListFrame.Visible = true
		local fadeIn = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 0.05})
		fadeIn:Play()
	end
end

-- Click visual effect
local function playClickEffect(button)
	local overlay = Instance.new("Frame")
	overlay.Size = UDim2.new(1, 0, 1, 0)
	overlay.Position = UDim2.new(0, 0, 0, 0)
	overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	overlay.BackgroundTransparency = 1
	overlay.BorderSizePixel = 0
	overlay.ZIndex = 5
	overlay.Parent = button

	local fadeIn = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 0.6})
	local fadeOut = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Connect(function()
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			overlay:Destroy()
		end)
	end)
end

-- Connect button that toggles the dropdown
triggerButton.MouseButton1Click:Connect(toggleFruitList)

-- Connect every TextButton inside FruitList
for _, button in pairs(fruitListFrame:GetChildren()) do
	if button:IsA("TextButton") then
		button.MouseButton1Click:Connect(function()
			chooseFruitLabel.Text = button.Text
			playClickEffect(button)
			toggleFruitList()
		end)
	end
end
"
choosefruitlogic.Parent = FruitFrame

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.007999999448657036, 0, 0.14369931817054749, -12)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 481, 0, 50)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.021027032285928726, 0, -0.01098620519042015, 6)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = ScrollingFrame

local UI = Instance.new("TextLabel")
UI.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
UI.TextColor3 = Color3.fromRGB(124, 72, 43)
UI.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
UI.Text = "UI"
UI.Name = "UI"
UI.Size = UDim2.new(0, 180, 0, 19)
UI.Position = UDim2.new(0.021027032285928726, 1, -0.01098620519042015, 156)
UI.BackgroundTransparency = 1
UI.TextXAlignment = Enum.TextXAlignment.Left
UI.BorderSizePixel = 0
UI.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.TextSize = 15
UI.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
UI.Parent = ScrollingFrame

local uiGear = Instance.new("TextButton")
uiGear.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiGear.TextColor3 = Color3.fromRGB(0, 0, 0)
uiGear.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiGear.Text = ""
uiGear.Name = "uiGear"
uiGear.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 16)
uiGear.Size = UDim2.new(0, 480, 0, 50)
uiGear.BorderSizePixel = 0
uiGear.TextSize = 14
uiGear.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiGear.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI GEAR"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local Opengear = Instance.new("LocalScript")
Opengear.Name = "Opengear"
Opengear.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Gear_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opengear.Parent = uiGear

local uiseeds = Instance.new("TextButton")
uiseeds.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiseeds.TextColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.Text = ""
uiseeds.Name = "uiseeds"
uiseeds.Position = UDim2.new(0.010106073692440987, 0, 0.24424421787261963, 16)
uiseeds.Size = UDim2.new(0, 480, 0, 50)
uiseeds.BorderSizePixel = 0
uiseeds.TextSize = 14
uiseeds.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiseeds.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local OpenSeeds = Instance.new("LocalScript")
OpenSeeds.Name = "OpenSeeds"
OpenSeeds.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Seed_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
OpenSeeds.Parent = uiseeds

local uiscosmethic = Instance.new("TextButton")
uiscosmethic.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiscosmethic.TextColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.Text = ""
uiscosmethic.Name = "uiscosmethic"
uiscosmethic.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 74)
uiscosmethic.Size = UDim2.new(0, 480, 0, 50)
uiscosmethic.BorderSizePixel = 0
uiscosmethic.TextSize = 14
uiscosmethic.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiscosmethic.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local Opencosm = Instance.new("LocalScript")
Opencosm.Name = "Opencosm"
Opencosm.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("CosmeticShop_UI")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opencosm.Parent = uiscosmethic

local FruitList = Instance.new("Frame")
FruitList.Visible = false
FruitList.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitList.BackgroundTransparency = 0.10000000149011612
FruitList.Position = UDim2.new(0.6612043380737305, 0, 0.005918153095990419, 0)
FruitList.Name = "FruitList"
FruitList.Size = UDim2.new(0, 138, 0, 325)
FruitList.BorderSizePixel = 0
FruitList.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
FruitList.Parent = VISUAL

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitList

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.078125, 0, 0.03384615480899811, 0)
ScrollingFrame.Size = UDim2.new(0, 119, 0, 302)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = FruitList

local TextButton = Instance.new("TextButton")
TextButton.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Text = "INPROGRESS"
TextButton.Position = UDim2.new(0.013640332035720348, -4, 0.008918155916035175, 0)
TextButton.Size = UDim2.new(0, 108, 0, 21)
TextButton.BorderSizePixel = 0
TextButton.TextSize = 14
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextButton

local FadeOverlay = Instance.new("Frame")
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 525, 0, 338)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9675622582435608, 0, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9652284979820251, -15, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9628947973251343, -30, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local list = Instance.new("Frame")
list.BorderColor3 = Color3.fromRGB(0, 0, 0)
list.AnchorPoint = Vector2.new(0.5, 0.5)
list.BackgroundTransparency = 0.10000000149011612
list.Position = UDim2.new(-0.13149966299533844, -3, 0.3686785399913788, 44)
list.Name = "list"
list.Size = UDim2.new(0, 94, 0, 339)
list.BorderSizePixel = 0
list.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
list.Parent = MainUi

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02171163447201252, 0, 1.0387482643127441, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 316, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = list

local list2 = Instance.new("Frame")
list2.Name = "list2"
list2.BackgroundTransparency = 0.4000000059604645
list2.Position = UDim2.new(0.40382033586502075, -40, -0.0014708302915096283, 0)
list2.BorderColor3 = Color3.fromRGB(0, 0, 0)
list2.Size = UDim2.new(0, 96, 0, 339)
list2.BorderSizePixel = 0
list2.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
list2.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = list2

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = list2

local MiscButton = Instance.new("ImageButton")
MiscButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscButton.Name = "MiscButton"
MiscButton.Image = "rbxassetid://112896592265413"
MiscButton.BackgroundTransparency = 1
MiscButton.Position = UDim2.new(0.08878400921821594, 0, 0.44398099184036255, -11)
MiscButton.ImageContent = Content
MiscButton.Size = UDim2.new(0, 23, 0, 24)
MiscButton.BorderSizePixel = 0
MiscButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiscButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MiscButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MISC"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MiscButton

local VisualButton = Instance.new("ImageButton")
VisualButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
VisualButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
VisualButton.Name = "VisualButton"
VisualButton.Position = UDim2.new(0.08878400921821594, 0, 0.6402150988578796, -22)
VisualButton.ImageContent = Content
VisualButton.Size = UDim2.new(0, 23, 0, 24)
VisualButton.BorderSizePixel = 0
VisualButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VisualButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = VisualButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "VISUAL"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = VisualButton

local MainButton = Instance.new("ImageButton")
MainButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainButton.Name = "MainButton"
MainButton.Image = "rbxassetid://71021086762099"
MainButton.BackgroundTransparency = 1
MainButton.Position = UDim2.new(0.08878400921821594, 0, 0.23528461158275604, 8)
MainButton.ImageContent = Content
MainButton.Size = UDim2.new(0, 23, 0, 24)
MainButton.BorderSizePixel = 0
MainButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MAIN"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MainButton

local ConfigButton = Instance.new("ImageButton")
ConfigButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfigButton.Name = "ConfigButton"
ConfigButton.Image = "rbxassetid://126496417047546"
ConfigButton.BackgroundTransparency = 1
ConfigButton.Position = UDim2.new(0.08878400921821594, 0, 0.8193672895431519, -29)
ConfigButton.ImageContent = Content
ConfigButton.Size = UDim2.new(0, 23, 0, 24)
ConfigButton.BorderSizePixel = 0
ConfigButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConfigButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ConfigButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "CONFIG"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ConfigButton

local HomeButton = Instance.new("ImageButton")
HomeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeButton.Name = "HomeButton"
HomeButton.Image = "rbxassetid://138376539454145"
HomeButton.BackgroundTransparency = 1
HomeButton.Position = UDim2.new(0.11108327656984329, 0, 0.029755359515547752, 28)
HomeButton.ImageContent = Content
HomeButton.Size = UDim2.new(0, 23, 0, 24)
HomeButton.BorderSizePixel = 0
HomeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = HomeButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "HOME"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 11)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HomeButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.022113136947155, 0, 0.009630580432713032, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 29, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.1072353720664978, 0, -0.03556927293539047, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 112, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.06865453720092773, 0, -0.024630215018987656, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 128, 0, 379)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.021086135879158974, 0, -0.03689182549715042, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 548, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = MainUi

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0019723933655768633, 0, -0.027118662372231483, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 556, 0, 380)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local Notify2 = Instance.new("Frame")
Notify2.Visible = false
Notify2.Name = "Notify2"
Notify2.Position = UDim2.new(0.6272727251052856, 0, 0.7008165717124939, 0)
Notify2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notify2.Size = UDim2.new(0, 246, 0, 163)
Notify2.BorderSizePixel = 0
Notify2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notify2.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = Notify2

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04271344467997551, 0, -0.04378317669034004, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 267, 0, 181)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.038664285093545914, 0, -0.04430731013417244, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 286, 0, 196)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local FadeOverlay = Instance.new("Frame")
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 246, 0, 156)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "PLEASE SUPPORT US ON DISCORD"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.004065040498971939, 0, 0.042944785207509995, 0)
TextLabel.Size = UDim2.new(0, 246, 0, 122)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
TextLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local CopyButton = Instance.new("TextButton")
CopyButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CopyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.Text = "COPY"
CopyButton.Name = "CopyButton"
CopyButton.Position = UDim2.new(0.03926198184490204, 0, 0.6948744058609009, 0)
CopyButton.Size = UDim2.new(0, 92, 0, 37)
CopyButton.BorderSizePixel = 0
CopyButton.TextSize = 14
CopyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CopyButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04272029548883438, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 103, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CopyButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.03914118930697441, 0, -0.08062262088060379, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CopyScript = Instance.new("LocalScript")
CopyScript.Name = "CopyScript"
CopyScript.Source = "local GuiService = game:GetService("GuiService")
local button = script.Parent

local copy = 'https://discord.gg/2Aa7facYFp' 
button.MouseButton1Click:Connect(function(plr) setclipboard(tostring(copy)) end)"
CopyScript.Parent = CopyButton

local CloseButton = Instance.new("TextButton")
CloseButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Text = "CLOSE"
CloseButton.Name = "CloseButton"
CloseButton.Position = UDim2.new(0.5388433933258057, 0, 0.6948744058609009, 0)
CloseButton.Size = UDim2.new(0, 94, 0, 37)
CloseButton.BorderSizePixel = 0
CloseButton.TextSize = 14
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CloseButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.009531021118164062, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 106, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CloseButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0876850038766861, 0, -0.10284491628408432, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CloseScript = Instance.new("LocalScript")
CloseScript.Name = "CloseScript"
CloseScript.Source = "local closeButton = script.Parent-- The button this script is inside
local notifyFrame = closeButton.Parent  -- Adjust path if needed

closeButton.MouseButton1Click:Connect(function()
	notifyFrame.Visible = false  -- Hide the Notify2 frame
end)
"
CloseScript.Parent = CloseButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.009999999776482582
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://115116817442738"
ImageLabel.Position = UDim2.new(0.022633621469140053, 0, 0.05241403356194496, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 26, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = Notify2

local LoadingUi = Instance.new("Frame")
LoadingUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingUi.AnchorPoint = Vector2.new(0.5, 0.5)
LoadingUi.BackgroundTransparency = 0.10000000149011612
LoadingUi.Position = UDim2.new(0.5087721347808838, 1, 0.40437519550323486, 45)
LoadingUi.Name = "LoadingUi"
LoadingUi.Size = UDim2.new(0, 338, 0, 198)
LoadingUi.BorderSizePixel = 0
LoadingUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
LoadingUi.Parent = TestTrojan

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 0.4000000059604645
ImageLabel.Position = UDim2.new(0.022036707028746605, 0, 0.02090396359562874, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 25, 0, 25)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, 1.037168264389038, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, -0.03353870287537575, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 211)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.013806739822030067, 0, -0.027118664234876633, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 366, 0, 224)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local Progress = Instance.new("Frame")
Progress.BorderColor3 = Color3.fromRGB(0, 0, 0)
Progress.AnchorPoint = Vector2.new(0, 1)
Progress.Name = "Progress"
Progress.BackgroundTransparency = 1
Progress.Position = UDim2.new(0.43768996000289917, 0, 0.5989848375320435, 0)
Progress.SizeConstraint = Enum.SizeConstraint.RelativeYY
Progress.Size = UDim2.new(0.20000000298023224, 0, 0.20000000298023224, 0)
Progress.BorderSizePixel = 0
Progress.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Progress.Parent = LoadingUi

local Frame1 = Instance.new("Frame")
Frame1.Name = "Frame1"
Frame1.BackgroundTransparency = 1
Frame1.ClipsDescendants = true
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.Size = UDim2.new(0.5252525806427002, 0, 1.0000001192092896, 0)
Frame1.BorderSizePixel = 0
Frame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame1.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2, 0, 1, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame1

local UIGradient = Instance.new("UIGradient")
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Frame2 = Instance.new("Frame")
Frame2.ClipsDescendants = true
Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame2.AnchorPoint = Vector2.new(1, 0)
Frame2.BackgroundTransparency = 1
Frame2.Position = UDim2.new(1.050506353378296, -2, 0, 0)
Frame2.Name = "Frame2"
Frame2.Size = UDim2.new(0.5505059361457825, 0, 1.0000001192092896, 0)
Frame2.BorderSizePixel = 0
Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame2.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(-0.9494973421096802, 0, 0, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2.050507068634033, 0, 1.0000001192092896, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame2

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 180
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Percentage = Instance.new("NumberValue")
Percentage.Name = "Percentage"
Percentage.Parent = Progress

local ProgressScript = Instance.new("LocalScript")
ProgressScript.Name = "ProgressScript"
ProgressScript.Source = "-- MissingPartType: "Trans", "Color", "TransAndColor".


game:GetService("RunService").RenderStepped:Connect(function()
	script.Parent.Value = script.Parent.Value + 1
	if script.Parent.Value > 100 then
		script.Parent.Value = 0
	end
	-- Progress.
	local PercentNumber = math.clamp(script.Parent.Value * 3.6,0,360)
	local F1 = script.Parent.Parent.Frame1.ImageLabel
	local F2 = script.Parent.Parent.Frame2.ImageLabel
	F1.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,180,360) or 180 - math.clamp(PercentNumber,0,180)
	F2.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,0,180) or 180 - math.clamp(PercentNumber,180,360)
	F1.ImageColor3 = script.ImageColor.Value
	F2.ImageColor3 = script.ImageColor.Value
	F1.ImageTransparency = script.ImageTrans.Value
	F2.ImageTransparency = script.ImageTrans.Value
	F1.Image = "rbxassetid://" .. script.ImageId.Value
	F2.Image = "rbxassetid://" .. script.ImageId.Value
	if script.MissingPartType.Value == "Color" then
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F1.UIGradient.Transparency = NumberSequence.new(0)
		F2.UIGradient.Transparency = NumberSequence.new(0)
	elseif script.MissingPartType.Value == "Trans" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
		F2.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
	elseif script.MissingPartType.Value == "TransAndColor" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
	else
		script.MissingPartType.Value = "Trans"
		error("Unknown Type. Only 3 available: “Trans”, “Color” and “TransAndColor”, changing to “Trans”.")
	end
end)"
ProgressScript.Parent = Percentage

local MissingPartType = Instance.new("StringValue")
MissingPartType.Value = "TransAndColor"
MissingPartType.Name = "MissingPartType"
MissingPartType.Parent = ProgressScript

local FlipProgress = Instance.new("BoolValue")
FlipProgress.Name = "FlipProgress"
FlipProgress.Parent = ProgressScript

local TransOfMissingPart = Instance.new("NumberValue")
TransOfMissingPart.Value = 0.25
TransOfMissingPart.Name = "TransOfMissingPart"
TransOfMissingPart.Parent = ProgressScript

local ColorOfMissingPart = Instance.new("Color3Value")
ColorOfMissingPart.Value = Color3.fromRGB(255, 255, 255)
ColorOfMissingPart.Name = "ColorOfMissingPart"
ColorOfMissingPart.Parent = ProgressScript

local TransOfPercentPart = Instance.new("NumberValue")
TransOfPercentPart.Name = "TransOfPercentPart"
TransOfPercentPart.Parent = ProgressScript

local ColorOfPercentPart = Instance.new("Color3Value")
ColorOfPercentPart.Value = Color3.fromRGB(154, 143, 123)
ColorOfPercentPart.Name = "ColorOfPercentPart"
ColorOfPercentPart.Parent = ProgressScript

local ImageColor = Instance.new("Color3Value")
ImageColor.Value = Color3.fromRGB(255, 255, 255)
ImageColor.Name = "ImageColor"
ImageColor.Parent = ProgressScript

local ImageTrans = Instance.new("NumberValue")
ImageTrans.Name = "ImageTrans"
ImageTrans.Parent = ProgressScript

local ImageId = Instance.new("StringValue")
ImageId.Value = "3587367081"
ImageId.Name = "ImageId"
ImageId.Parent = ProgressScript

local UICorner = Instance.new("UICorner")
UICorner.Parent = LoadingUi

local LoadsScript = Instance.new("LocalScript")
LoadsScript.Name = "LoadsScript"
LoadsScript.Source = "local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local gui = script.Parent

local loadingUi = gui:WaitForChild("LoadingUi")
local mainUi = gui:WaitForChild("MainUi")
local blur = Lighting:WaitForChild("LoadingBlur")
local Notify = gui:WaitForChild("Notify2")

-- Start: MainUi and Notify hidden, blur on
Notify.Visible = false
mainUi.Visible = false
blur.Enabled = true
blur.Size = 1000

-- Fade out loading elements only
local function fadeToInvisible(frame, duration)
	for _, obj in ipairs(frame:GetDescendants()) do
		if obj:IsA("GuiObject") then
			local goal = {}
			if obj:IsA("TextLabel") or obj:IsA("TextButton") then
				goal.TextTransparency = 1
			end
			if obj:IsA("ImageLabel") then
				goal.ImageTransparency = 1
			end
			goal.BackgroundTransparency = 1
			TweenService:Create(obj, TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal):Play()
		end
	end
end

-- Tween blur out
local function fadeOutBlur()
	local tween = TweenService:Create(
		blur,
		TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{Size = 0}
	)
	tween:Play()
	tween.Completed:Wait()
	blur.Enabled = false
end

-- Wait 5 seconds
task.wait(7)

-- Show MainUi instantly
mainUi.Visible = true

-- If MainUi is visible, show the notify
if mainUi.Visible == true then
	Notify.Visible = trlocal TestTrojan = Instance.new("ScreenGui")
TestTrojan.Name = "TestTrojan"
TestTrojan.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TestTrojan.Parent = game.Workspace

local MainUi = Instance.new("Frame")
MainUi.Visible = true
MainUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainUi.AnchorPoint = Vector2.new(0.5, 0.5)
MainUi.BackgroundTransparency = 0.4000000059604645
MainUi.Position = UDim2.new(0.5371969938278198, 1, 0.34883514046669006, 45)
MainUi.Name = "MainUi"
MainUi.Size = UDim2.new(0, 525, 0, 338)
MainUi.BorderSizePixel = 0
MainUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
MainUi.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainUi

local auto_name_script = Instance.new("LocalScript")
auto_name_script.Name = "auto_name_script"
auto_name_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > NAME > TextLabel
local nameFrame = script.Parent:WaitForChild("HOME"):WaitForChild("NAME")
local textLabel = nameFrame:FindFirstChildOfClass("TextLabel")

if textLabel then
	textLabel.Text = player.Name -- or use player.DisplayName if preferred
else
	warn("TextLabel not found inside HOME > NAME.")
end
"
auto_name_script.Parent = MainUi

local auto_head_pic_script = Instance.new("LocalScript")
auto_head_pic_script.Name = "auto_head_pic_script"
auto_head_pic_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > picture > ImageLabel
local imageLabel = script.Parent:WaitForChild("HOME"):WaitForChild("picture"):WaitForChild("ImageLabel")

local userId = player.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420

local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
imageLabel.Image = content
"
auto_head_pic_script.Parent = MainUi

local HOME = Instance.new("Frame")
HOME.Name = "HOME"
HOME.BackgroundTransparency = 1
HOME.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
HOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
HOME.Size = UDim2.new(0, 525, 0, 338)
HOME.BorderSizePixel = 0
HOME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HOME.Parent = MainUi

local WELCOME = Instance.new("Frame")
WELCOME.Name = "WELCOME"
WELCOME.BackgroundTransparency = 0.4000000059604645
WELCOME.Position = UDim2.new(0.2799765169620514, 0, 0.5262502431869507, 0)
WELCOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
WELCOME.Size = UDim2.new(0, 350, 0, 132)
WELCOME.BorderSizePixel = 0
WELCOME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
WELCOME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = WELCOME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "W"
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.03179190680384636, 0, 0.09090909361839294, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextWrapped = true
TextLabel.TextSize = 100
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.11849711090326309, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "L"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.20809248089790344, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "C"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.2976878583431244, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "O"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.39306357502937317, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "M"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.49421966075897217, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5891165733337402, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.677873969078064, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7311283946037292, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7903000116348267, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
TextLabel.Parent = WELCOME

local picture = Instance.new("Frame")
picture.Name = "picture"
picture.BackgroundTransparency = 0.5
picture.Position = UDim2.new(0.7115427255630493, 0, 0.057971030473709106, 0)
picture.BorderColor3 = Color3.fromRGB(0, 0, 0)
picture.Size = UDim2.new(0, 144, 0, 137)
picture.BorderSizePixel = 0
picture.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
picture.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = picture

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = picture

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.0416666679084301, 0, 0.03729248046875, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 133, 0, 126)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = picture

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local NAME = Instance.new("Frame")
NAME.Name = "NAME"
NAME.BackgroundTransparency = 0.4000000059604645
NAME.Position = UDim2.new(0.25330984592437744, 2, 0.17983020842075348, 0)
NAME.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAME.Size = UDim2.new(0, 229, 0, 74)
NAME.BorderSizePixel = 0
NAME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAME

local username = Instance.new("TextLabel")
username.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
username.TextColor3 = Color3.fromRGB(226, 226, 226)
username.BorderColor3 = Color3.fromRGB(0, 0, 0)
username.Text = "NAME"
username.Name = "username"
username.Size = UDim2.new(0, 218, 0, 63)
username.Position = UDim2.new(0.04803493618965149, 0, 0.26077187061309814, 0)
username.BackgroundTransparency = 1
username.TextXAlignment = Enum.TextXAlignment.Left
username.BorderSizePixel = 0
username.TextYAlignment = Enum.TextYAlignment.Top
username.TextSize = 30
username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
username.Parent = NAME

local UICorner = Instance.new("UICorner")
UICorner.Parent = username

local NAMEEXEC = Instance.new("Frame")
NAMEEXEC.Name = "NAMEEXEC"
NAMEEXEC.BackgroundTransparency = 0.4000000059604645
NAMEEXEC.Position = UDim2.new(0.032921794801950455, 2, 0.17030377686023712, 0)
NAMEEXEC.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEEXEC.Size = UDim2.new(0, 90, 0, 253)
NAMEEXEC.BorderSizePixel = 0
NAMEEXEC.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAMEEXEC.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAMEEXEC

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAMEEXEC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "executorname"
TextLabel.Size = UDim2.new(0, 169, 0, 79)
TextLabel.AnchorPoint = Vector2.new(0.5, 1)
TextLabel.Rotation = -90
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Position = UDim2.new(0.11568490415811539, 0, 0.6989752054214478, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 45
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Place in a LocalScript inside a TextLabel
local label = script.Parent
local executor = "Unknown"

local function detectExecutor()
	if getexecutorname then
		local success, result = pcall(getexecutorname)
		if success and typeof(result) == "string" then
			return result
		end
	end

	if identifyexecutor then
		local success, result = pcall(identifyexecutor)
		if success and typeof(result) == "string" then
			return result
		end
	end

	-- Desktop Executable Identifiers
	if syn then return "Synapse X" end
	if KRNL_LOADED then return "KRNL" end
	if is_sirhurt_closure then return "SirHurt" end
	if secure_load then return "Sentinel" end
	if fluxus then return "Fluxus" end
	if isexecutorclosure then return "Fluxus" end
	if WRD_LOADED then return "WeAreDevs (WRD)" end
	if pebc_execute then return "Proxo" end
	if comet then return "Comet" end
	if ShadowInjector then return "Shadow" end
	if LuraphExploit then return "Luraph" end
	if X_LOADED then return "X-Executor" end
	if onewindow then return "OneWindow" end

	-- Mobile Executor Detection
	if isrbxactive then return "Hydrogen (Mobile?)" end
	if ArceusX_Loaded or ARCEUS_LOADED then return "Arceus X" end
	if Codex then return "Codex (Mobile)" end
	if isexecutorclosure and not syn then return "Delta (Mobile)" end
	if OXYGEN_LOADED then return "Oxygen U" end
	if IS_COCO_LOADED then return "CocoHub" end
	if mobility or (typeof(hydrogen) == "function") then return "Hydrogen" end

	return "Unknown"
end

-- Apply result
executor = detectExecutor()
label.Text = executor
"
LocalScript.Parent = TextLabel

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local GROW_A_GARDEN = Instance.new("TextLabel")
GROW_A_GARDEN.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
GROW_A_GARDEN.TextColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.Text = "GROWAGARDEN"
GROW_A_GARDEN.Name = "GROW_A_GARDEN"
GROW_A_GARDEN.Size = UDim2.new(0, 180, 0, 19)
GROW_A_GARDEN.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
GROW_A_GARDEN.BackgroundTransparency = 1
GROW_A_GARDEN.TextXAlignment = Enum.TextXAlignment.Left
GROW_A_GARDEN.BorderSizePixel = 0
GROW_A_GARDEN.BorderColor3 = Color3.fromRGB(0, 0, 0)
GROW_A_GARDEN.TextSize = 14
GROW_A_GARDEN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GROW_A_GARDEN.Parent = HOME

local MAIN = Instance.new("Frame")
MAIN.Visible = false
MAIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
MAIN.BackgroundTransparency = 1
MAIN.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
MAIN.Name = "MAIN"
MAIN.Size = UDim2.new(0, 525, 0, 338)
MAIN.BorderSizePixel = 0
MAIN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MAIN.Parent = MainUi

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.029172129929065704, 0, 0.11594201624393463, 0)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 492, 0, 287)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local ToggleButton2 = Instance.new("CanvasGroup")
ToggleButton2.Name = "ToggleButton2"
ToggleButton2.Position = UDim2.new(0.3991769552230835, 0, 0.2246376872062683, 0)
ToggleButton2.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton2.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton2.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton2

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton2

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton2

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "	local Button = script.Parent
	local CircleFrame = Button.Parent
	local OvalFrame = CircleFrame.Parent
	local ButtonMainFrame = OvalFrame.Parent
	local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue") -- Optional
	local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
	local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

	local OnPosition = "Right" -- or "Right"
	local TweenSpeed = 0.4
	local TweenStyle = Enum.EasingStyle.Sine
	local TweenDirection = Enum.EasingDirection.Out
	local LastTimeClicked = 0
	local ClickDebounceTime = TweenSpeed * 1.05

	-- Speed Config
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local defaultSpeed = 16
	local speedBoost = 100
	local isBoosted = false

	-- UI setup
	if OnPosition == "Right" then
		OnDisplay.Position= UDim2.new(0,0,0,0)
		OffDisplay.Position = UDim2.new(0.5,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0.75,0)
		OffDisplay.AnchorPoint = Vector2.new(0,0)
	elseif OnPosition == "Left" then
		OnDisplay.Position= UDim2.new(0.5,0,0,0) 
		OffDisplay.Position = UDim2.new(0,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0,0)
		OffDisplay.AnchorPoint = Vector2.new(0.75,0)
	end

	-- Main Toggle Logic
	Button.MouseButton1Click:Connect(function()
		if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
			LastTimeClicked = tonumber(os.clock())

			local character = player.Character or player.CharacterAdded:Wait()
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if not humanoid then return end

			if Button.Parent.Position.X.Scale == 0 then
				-- Toggle ON
				isBoosted = true
				humanoid.WalkSpeed = defaultSpeed + speedBoost
				CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			elseif Button.Parent.Position.X.Scale == 0.5 then
				-- Toggle OFF
				isBoosted = false
				humanoid.WalkSpeed = defaultSpeed
				CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			end
		end
	end)

	-- Default UI Position Load
	DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if not humanoid then return end

		if DefaultValue == true then
			if OnPosition == "Right" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed + speedBoost
			isBoosted = true
		else
			if OnPosition == "Left" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed
			isBoosted = false
		end
	end)"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton2

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton2

local ToggleButton3 = Instance.new("CanvasGroup")
ToggleButton3.Name = "ToggleButton3"
ToggleButton3.Position = UDim2.new(0.3991769552230835, 0, 0.3550724685192108, 0)
ToggleButton3.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton3.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton3.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton3

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton3

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton3

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Toggle GUI for Seed Sniper (No Speed Boost or Flying)

local Button = script.Parent
local CircleFrame = Button.Parent
local OvalFrame = CircleFrame.Parent
local ButtonMainFrame = OvalFrame.Parent
local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue")
local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

local OnPosition = "Right"
local TweenSpeed = 0.4
local TweenStyle = Enum.EasingStyle.Sine
local TweenDirection = Enum.EasingDirection.Out
local LastTimeClicked = 0
local ClickDebounceTime = TweenSpeed * 1.05

-- Seed sniping variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BuySeedEvent = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("BuySeedStock")
local seedName = "Carrot" -- Change to your desired seed name
local sniping = false
local snipingThread

-- Sniping control
local function startSniping()
	if sniping then return end
	sniping = true
	snipingThread = coroutine.create(function()
		while sniping do
			BuySeedEvent:FireServer(seedName)
			task.wait(0.5) -- Adjust delay as needed
		end
	end)
	coroutine.resume(snipingThread)
end

local function stopSniping()
	sniping = false
end

-- UI setup
if OnPosition == "Right" then
	OnDisplay.Position= UDim2.new(0,0,0,0)
	OffDisplay.Position = UDim2.new(0.5,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0.75,0)
	OffDisplay.AnchorPoint = Vector2.new(0,0)
elseif OnPosition == "Left" then
	OnDisplay.Position= UDim2.new(0.5,0,0,0) 
	OffDisplay.Position = UDim2.new(0,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0,0)
	OffDisplay.AnchorPoint = Vector2.new(0.75,0)
end

-- Main Toggle Logic
Button.MouseButton1Click:Connect(function()
	if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
		LastTimeClicked = tonumber(os.clock())

		if Button.Parent.Position.X.Scale == 0 then
			-- Toggle ON
			startSniping()
			CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		elseif Button.Parent.Position.X.Scale == 0.5 then
			-- Toggle OFF
			stopSniping()
			CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		end
	end
end)

-- Default UI Position Load
DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
	if DefaultValue == true then
		if OnPosition == "Right" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		startSniping()
	else
		if OnPosition == "Left" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		stopSniping()
	end
end)
"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton3

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton3

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "Visual"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local Section = Instance.new("Frame")
Section.Visible = false
Section.Name = "Section"
Section.Position = UDim2.new(-0.012962937355041504, 5, -0.09445799887180328, -36)
Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Section.Size = UDim2.new(0, 532, 0, 47)
Section.BorderSizePixel = 0
Section.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
Section.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = Section

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.020676691085100174, 0, -0.11626548320055008, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 552, 0, 59)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Section

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local animation = Instance.new("LocalScript")
animation.Name = "animation"
animation.Source = "local TweenService = game:GetService("TweenService")

local mainUI = script.Parent
local fadeOverlay = mainUI:WaitForChild("FadeOverlay")
local listFrame = mainUI:WaitForChild("list")
local list2 = listFrame:WaitForChild("list2") -- Contains tab buttons

-- Tab Frames
local tabs = {
	HOME = mainUI:WaitForChild("HOME"),
	MAIN = mainUI:WaitForChild("MAIN"),
	MISC = mainUI:WaitForChild("MISC"),
	CONFIG = mainUI:WaitForChild("CONFIG"),
	VISUAL = mainUI:WaitForChild("VISUAL"),
}

-- Section now inside MAIN tab
local section = tabs["MAIN"]:WaitForChild("Section")

-- Buttons inside list2
local buttons = {
	HomeButton = "HOME",
	MainButton = "MAIN",
	MiscButton = "MISC",
	ConfigButton = "CONFIG",
	VisualButton = "VISUAL",
}

-- Tween settings
local fadeTime = 0.8
local fadeInfo = TweenInfo.new(fadeTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Start with HOME tab visible
local currentTab = tabs["HOME"]
currentTab.Visible = true
section.Visible = false
section.BackgroundTransparency = 1

-- Switch tab function
local function switchTabs(targetTabName)
	local targetTab = tabs[targetTabName]
	if not targetTab or targetTab == currentTab then return end

	local fadeIn = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 0})
	local fadeOut = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Wait()

	for _, tab in pairs(tabs) do
		tab.Visible = false
	end

	targetTab.Visible = true
	currentTab = targetTab

	-- Section fade logic only for MAIN tab
	if targetTabName == "MAIN" then
		section.Visible = true
		section.BackgroundTransparency = 1
		TweenService:Create(section, fadeInfo, {BackgroundTransparency = 0}):Play()
	else
		if section.Visible then
			local hideTween = TweenService:Create(section, fadeInfo, {BackgroundTransparency = 1})
			hideTween.Completed:Connect(function()
				section.Visible = false
			end)
			hideTween:Play()
		end
	end

	fadeOut:Play()
end

-- Hook buttons to switch function
for buttonName, tabName in pairs(buttons) do
	local button = list2:FindFirstChild(buttonName)
	if button then
		button.MouseButton1Click:Connect(function()
			switchTabs(tabName)
		end)
	end
end
"
animation.Parent = MainUi

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = MainUi

local MISC = Instance.new("Frame")
MISC.Visible = false
MISC.BorderColor3 = Color3.fromRGB(0, 0, 0)
MISC.BackgroundTransparency = 1
MISC.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
MISC.Name = "MISC"
MISC.Size = UDim2.new(0, 525, 0, 338)
MISC.BorderSizePixel = 0
MISC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MISC.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "GAMENAME"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "MISC TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.3786008358001709, 0, 0.4275362193584442, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MISC

local CONFIG = Instance.new("Frame")
CONFIG.Visible = false
CONFIG.BorderColor3 = Color3.fromRGB(0, 0, 0)
CONFIG.BackgroundTransparency = 1
CONFIG.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981486454606056, 0)
CONFIG.Name = "CONFIG"
CONFIG.Size = UDim2.new(0, 525, 0, 328)
CONFIG.BorderSizePixel = 0
CONFIG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CONFIG.Parent = MainUi

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "CONFIG TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.40740740299224854, 0, 0.420073539018631, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local UICorner = Instance.new("UICorner")
UICorner.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "GAMENAME"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local VISUAL = Instance.new("Frame")
VISUAL.Visible = false
VISUAL.BorderColor3 = Color3.fromRGB(0, 0, 0)
VISUAL.BackgroundTransparency = 1
VISUAL.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
VISUAL.Name = "VISUAL"
VISUAL.Size = UDim2.new(0, 525, 0, 338)
VISUAL.BorderSizePixel = 0
VISUAL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VISUAL.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local Visual = Instance.new("TextLabel")
Visual.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
Visual.TextColor3 = Color3.fromRGB(124, 72, 43)
Visual.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Visual.Text = "Visual"
Visual.Name = "Visual"
Visual.Size = UDim2.new(0, 148, 0, 23)
Visual.Position = UDim2.new(0.2272673100233078, -108, 0.0039750500582158566, 38)
Visual.BackgroundTransparency = 1
Visual.TextXAlignment = Enum.TextXAlignment.Left
Visual.BorderSizePixel = 0
Visual.BorderColor3 = Color3.fromRGB(0, 0, 0)
Visual.TextSize = 31
Visual.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Visual.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(154, 143, 123)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.020952381193637848, 0, 0.18657255172729492, 0)
ScrollingFrame.Size = UDim2.new(0, 507, 0, 261)
ScrollingFrame.CanvasPosition = Vector2.new(0, 135)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = VISUAL

local FruitFrame = Instance.new("Frame")
FruitFrame.Name = "FruitFrame"
FruitFrame.BackgroundTransparency = 0.4000000059604645
FruitFrame.Position = UDim2.new(0.009192713536322117, 0, 0.024351272732019424, 11)
FruitFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitFrame.Size = UDim2.new(0, 481, 0, 50)
FruitFrame.BorderSizePixel = 0
FruitFrame.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
FruitFrame.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitFrame

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.025107035413384438, 0, 0.35691630840301514, 0)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = FruitFrame

local TriggerListButton = Instance.new("TextButton")
TriggerListButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TriggerListButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.Text = ""
TriggerListButton.Size = UDim2.new(0, 152, 0, 29)
TriggerListButton.Name = "TriggerListButton"
TriggerListButton.TextXAlignment = Enum.TextXAlignment.Left
TriggerListButton.Position = UDim2.new(0.6593853831291199, 0, 0.19569061696529388, 0)
TriggerListButton.BorderSizePixel = 0
TriggerListButton.TextSize = 14
TriggerListButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerListButton.Parent = FruitFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TriggerListButton

local ChooseFruit = Instance.new("TextLabel")
ChooseFruit.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
ChooseFruit.TextColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.Text = "Choose  Fruit          --"
ChooseFruit.Name = "ChooseFruit"
ChooseFruit.BackgroundTransparency = 1
ChooseFruit.Position = UDim2.new(-0.004564385861158371, 0, 0, 0)
ChooseFruit.Size = UDim2.new(0, 152, 0, 29)
ChooseFruit.BorderSizePixel = 0
ChooseFruit.TextSize = 14
ChooseFruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChooseFruit.Parent = TriggerListButton

local choosefruitlogic = Instance.new("LocalScript")
choosefruitlogic.Name = "choosefruitlogic"
choosefruitlogic.Source = "local TweenService = game:GetService("TweenService")

-- UI structure
local visualTab = script.Parent.Parent.Parent -- From ChooseFruit → TriggerListButton → VISUAL
local triggerButton = script.Parent:WaitForChild("TriggerListButton")
local chooseFruitLabel = triggerButton:WaitForChild("ChooseFruit")
local fruitListFrame = visualTab:WaitForChild("FruitList")

-- Fade settings
local fadeInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Show/hide dropdown with animation
local function toggleFruitList()
	if fruitListFrame.Visible then
		local fadeOut = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 1})
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			fruitListFrame.Visible = false
		end)
	else
		fruitListFrame.BackgroundTransparency = 1
		fruitListFrame.Visible = true
		local fadeIn = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 0.05})
		fadeIn:Play()
	end
end

-- Click visual effect
local function playClickEffect(button)
	local overlay = Instance.new("Frame")
	overlay.Size = UDim2.new(1, 0, 1, 0)
	overlay.Position = UDim2.new(0, 0, 0, 0)
	overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	overlay.BackgroundTransparency = 1
	overlay.BorderSizePixel = 0
	overlay.ZIndex = 5
	overlay.Parent = button

	local fadeIn = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 0.6})
	local fadeOut = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Connect(function()
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			overlay:Destroy()
		end)
	end)
end

-- Connect button that toggles the dropdown
triggerButton.MouseButton1Click:Connect(toggleFruitList)

-- Connect every TextButton inside FruitList
for _, button in pairs(fruitListFrame:GetChildren()) do
	if button:IsA("TextButton") then
		button.MouseButton1Click:Connect(function()
			chooseFruitLabel.Text = button.Text
			playClickEffect(button)
			toggleFruitList()
		end)
	end
end
"
choosefruitlogic.Parent = FruitFrame

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.007999999448657036, 0, 0.14369931817054749, -12)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 481, 0, 50)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.021027032285928726, 0, -0.01098620519042015, 6)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = ScrollingFrame

local UI = Instance.new("TextLabel")
UI.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
UI.TextColor3 = Color3.fromRGB(124, 72, 43)
UI.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
UI.Text = "UI"
UI.Name = "UI"
UI.Size = UDim2.new(0, 180, 0, 19)
UI.Position = UDim2.new(0.021027032285928726, 1, -0.01098620519042015, 156)
UI.BackgroundTransparency = 1
UI.TextXAlignment = Enum.TextXAlignment.Left
UI.BorderSizePixel = 0
UI.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.TextSize = 15
UI.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
UI.Parent = ScrollingFrame

local uiGear = Instance.new("TextButton")
uiGear.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiGear.TextColor3 = Color3.fromRGB(0, 0, 0)
uiGear.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiGear.Text = ""
uiGear.Name = "uiGear"
uiGear.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 16)
uiGear.Size = UDim2.new(0, 480, 0, 50)
uiGear.BorderSizePixel = 0
uiGear.TextSize = 14
uiGear.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiGear.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI GEAR"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local Opengear = Instance.new("LocalScript")
Opengear.Name = "Opengear"
Opengear.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Gear_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opengear.Parent = uiGear

local uiseeds = Instance.new("TextButton")
uiseeds.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiseeds.TextColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.Text = ""
uiseeds.Name = "uiseeds"
uiseeds.Position = UDim2.new(0.010106073692440987, 0, 0.24424421787261963, 16)
uiseeds.Size = UDim2.new(0, 480, 0, 50)
uiseeds.BorderSizePixel = 0
uiseeds.TextSize = 14
uiseeds.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiseeds.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local OpenSeeds = Instance.new("LocalScript")
OpenSeeds.Name = "OpenSeeds"
OpenSeeds.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Seed_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
OpenSeeds.Parent = uiseeds

local uiscosmethic = Instance.new("TextButton")
uiscosmethic.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiscosmethic.TextColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.Text = ""
uiscosmethic.Name = "uiscosmethic"
uiscosmethic.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 74)
uiscosmethic.Size = UDim2.new(0, 480, 0, 50)
uiscosmethic.BorderSizePixel = 0
uiscosmethic.TextSize = 14
uiscosmethic.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiscosmethic.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local Opencosm = Instance.new("LocalScript")
Opencosm.Name = "Opencosm"
Opencosm.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("CosmeticShop_UI")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opencosm.Parent = uiscosmethic

local FruitList = Instance.new("Frame")
FruitList.Visible = false
FruitList.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitList.BackgroundTransparency = 0.10000000149011612
FruitList.Position = UDim2.new(0.6612043380737305, 0, 0.005918153095990419, 0)
FruitList.Name = "FruitList"
FruitList.Size = UDim2.new(0, 138, 0, 325)
FruitList.BorderSizePixel = 0
FruitList.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
FruitList.Parent = VISUAL

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitList

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.078125, 0, 0.03384615480899811, 0)
ScrollingFrame.Size = UDim2.new(0, 119, 0, 302)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = FruitList

local TextButton = Instance.new("TextButton")
TextButton.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Text = "INPROGRESS"
TextButton.Position = UDim2.new(0.013640332035720348, -4, 0.008918155916035175, 0)
TextButton.Size = UDim2.new(0, 108, 0, 21)
TextButton.BorderSizePixel = 0
TextButton.TextSize = 14
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextButton

local FadeOverlay = Instance.new("Frame")
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 525, 0, 338)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9675622582435608, 0, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9652284979820251, -15, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9628947973251343, -30, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local list = Instance.new("Frame")
list.BorderColor3 = Color3.fromRGB(0, 0, 0)
list.AnchorPoint = Vector2.new(0.5, 0.5)
list.BackgroundTransparency = 0.10000000149011612
list.Position = UDim2.new(-0.13149966299533844, -3, 0.3686785399913788, 44)
list.Name = "list"
list.Size = UDim2.new(0, 94, 0, 339)
list.BorderSizePixel = 0
list.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
list.Parent = MainUi

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02171163447201252, 0, 1.0387482643127441, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 316, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = list

local list2 = Instance.new("Frame")
list2.Name = "list2"
list2.BackgroundTransparency = 0.4000000059604645
list2.Position = UDim2.new(0.40382033586502075, -40, -0.0014708302915096283, 0)
list2.BorderColor3 = Color3.fromRGB(0, 0, 0)
list2.Size = UDim2.new(0, 96, 0, 339)
list2.BorderSizePixel = 0
list2.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
list2.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = list2

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = list2

local MiscButton = Instance.new("ImageButton")
MiscButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscButton.Name = "MiscButton"
MiscButton.Image = "rbxassetid://112896592265413"
MiscButton.BackgroundTransparency = 1
MiscButton.Position = UDim2.new(0.08878400921821594, 0, 0.44398099184036255, -11)
MiscButton.ImageContent = Content
MiscButton.Size = UDim2.new(0, 23, 0, 24)
MiscButton.BorderSizePixel = 0
MiscButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiscButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MiscButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MISC"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MiscButton

local VisualButton = Instance.new("ImageButton")
VisualButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
VisualButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
VisualButton.Name = "VisualButton"
VisualButton.Position = UDim2.new(0.08878400921821594, 0, 0.6402150988578796, -22)
VisualButton.ImageContent = Content
VisualButton.Size = UDim2.new(0, 23, 0, 24)
VisualButton.BorderSizePixel = 0
VisualButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VisualButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = VisualButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "VISUAL"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = VisualButton

local MainButton = Instance.new("ImageButton")
MainButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainButton.Name = "MainButton"
MainButton.Image = "rbxassetid://71021086762099"
MainButton.BackgroundTransparency = 1
MainButton.Position = UDim2.new(0.08878400921821594, 0, 0.23528461158275604, 8)
MainButton.ImageContent = Content
MainButton.Size = UDim2.new(0, 23, 0, 24)
MainButton.BorderSizePixel = 0
MainButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MAIN"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MainButton

local ConfigButton = Instance.new("ImageButton")
ConfigButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfigButton.Name = "ConfigButton"
ConfigButton.Image = "rbxassetid://126496417047546"
ConfigButton.BackgroundTransparency = 1
ConfigButton.Position = UDim2.new(0.08878400921821594, 0, 0.8193672895431519, -29)
ConfigButton.ImageContent = Content
ConfigButton.Size = UDim2.new(0, 23, 0, 24)
ConfigButton.BorderSizePixel = 0
ConfigButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConfigButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ConfigButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "CONFIG"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ConfigButton

local HomeButton = Instance.new("ImageButton")
HomeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeButton.Name = "HomeButton"
HomeButton.Image = "rbxassetid://138376539454145"
HomeButton.BackgroundTransparency = 1
HomeButton.Position = UDim2.new(0.11108327656984329, 0, 0.029755359515547752, 28)
HomeButton.ImageContent = Content
HomeButton.Size = UDim2.new(0, 23, 0, 24)
HomeButton.BorderSizePixel = 0
HomeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = HomeButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "HOME"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 11)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HomeButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.022113136947155, 0, 0.009630580432713032, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 29, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.1072353720664978, 0, -0.03556927293539047, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 112, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.06865453720092773, 0, -0.024630215018987656, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 128, 0, 379)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.021086135879158974, 0, -0.03689182549715042, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 548, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = MainUi

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0019723933655768633, 0, -0.027118662372231483, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 556, 0, 380)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local Notify2 = Instance.new("Frame")
Notify2.Visible = false
Notify2.Name = "Notify2"
Notify2.Position = UDim2.new(0.6272727251052856, 0, 0.7008165717124939, 0)
Notify2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notify2.Size = UDim2.new(0, 246, 0, 163)
Notify2.BorderSizePixel = 0
Notify2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notify2.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = Notify2

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04271344467997551, 0, -0.04378317669034004, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 267, 0, 181)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.038664285093545914, 0, -0.04430731013417244, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 286, 0, 196)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local FadeOverlay = Instance.new("Frame")
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 246, 0, 156)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "PLEASE SUPPORT US ON DISCORD"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.004065040498971939, 0, 0.042944785207509995, 0)
TextLabel.Size = UDim2.new(0, 246, 0, 122)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
TextLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local CopyButton = Instance.new("TextButton")
CopyButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CopyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.Text = "COPY"
CopyButton.Name = "CopyButton"
CopyButton.Position = UDim2.new(0.03926198184490204, 0, 0.6948744058609009, 0)
CopyButton.Size = UDim2.new(0, 92, 0, 37)
CopyButton.BorderSizePixel = 0
CopyButton.TextSize = 14
CopyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CopyButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04272029548883438, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 103, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CopyButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.03914118930697441, 0, -0.08062262088060379, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CopyScript = Instance.new("LocalScript")
CopyScript.Name = "CopyScript"
CopyScript.Source = "local GuiService = game:GetService("GuiService")
local button = script.Parent

local copy = 'https://discord.gg/2Aa7facYFp' 
button.MouseButton1Click:Connect(function(plr) setclipboard(tostring(copy)) end)"
CopyScript.Parent = CopyButton

local CloseButton = Instance.new("TextButton")
CloseButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Text = "CLOSE"
CloseButton.Name = "CloseButton"
CloseButton.Position = UDim2.new(0.5388433933258057, 0, 0.6948744058609009, 0)
CloseButton.Size = UDim2.new(0, 94, 0, 37)
CloseButton.BorderSizePixel = 0
CloseButton.TextSize = 14
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CloseButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.009531021118164062, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 106, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CloseButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0876850038766861, 0, -0.10284491628408432, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CloseScript = Instance.new("LocalScript")
CloseScript.Name = "CloseScript"
CloseScript.Source = "local closeButton = script.Parent-- The button this script is inside
local notifyFrame = closeButton.Parent  -- Adjust path if needed

closeButton.MouseButton1Click:Connect(function()
	notifyFrame.Visible = false  -- Hide the Notify2 frame
end)
"
CloseScript.Parent = CloseButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.009999999776482582
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://115116817442738"
ImageLabel.Position = UDim2.new(0.022633621469140053, 0, 0.05241403356194496, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 26, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = Notify2

local LoadingUi = Instance.new("Frame")
LoadingUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingUi.AnchorPoint = Vector2.new(0.5, 0.5)
LoadingUi.BackgroundTransparency = 0.10000000149011612
LoadingUi.Position = UDim2.new(0.5087721347808838, 1, 0.40437519550323486, 45)
LoadingUi.Name = "LoadingUi"
LoadingUi.Size = UDim2.new(0, 338, 0, 198)
LoadingUi.BorderSizePixel = 0
LoadingUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
LoadingUi.Parent = TestTrojan

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 0.4000000059604645
ImageLabel.Position = UDim2.new(0.022036707028746605, 0, 0.02090396359562874, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 25, 0, 25)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, 1.037168264389038, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, -0.03353870287537575, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 211)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.013806739822030067, 0, -0.027118664234876633, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 366, 0, 224)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local Progress = Instance.new("Frame")
Progress.BorderColor3 = Color3.fromRGB(0, 0, 0)
Progress.AnchorPoint = Vector2.new(0, 1)
Progress.Name = "Progress"
Progress.BackgroundTransparency = 1
Progress.Position = UDim2.new(0.43768996000289917, 0, 0.5989848375320435, 0)
Progress.SizeConstraint = Enum.SizeConstraint.RelativeYY
Progress.Size = UDim2.new(0.20000000298023224, 0, 0.20000000298023224, 0)
Progress.BorderSizePixel = 0
Progress.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Progress.Parent = LoadingUi

local Frame1 = Instance.new("Frame")
Frame1.Name = "Frame1"
Frame1.BackgroundTransparency = 1
Frame1.ClipsDescendants = true
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.Size = UDim2.new(0.5252525806427002, 0, 1.0000001192092896, 0)
Frame1.BorderSizePixel = 0
Frame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame1.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2, 0, 1, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame1

local UIGradient = Instance.new("UIGradient")
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Frame2 = Instance.new("Frame")
Frame2.ClipsDescendants = true
Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame2.AnchorPoint = Vector2.new(1, 0)
Frame2.BackgroundTransparency = 1
Frame2.Position = UDim2.new(1.050506353378296, -2, 0, 0)
Frame2.Name = "Frame2"
Frame2.Size = UDim2.new(0.5505059361457825, 0, 1.0000001192092896, 0)
Frame2.BorderSizePixel = 0
Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame2.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(-0.9494973421096802, 0, 0, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2.050507068634033, 0, 1.0000001192092896, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame2

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 180
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Percentage = Instance.new("NumberValue")
Percentage.Name = "Percentage"
Percentage.Parent = Progress

local ProgressScript = Instance.new("LocalScript")
ProgressScript.Name = "ProgressScript"
ProgressScript.Source = "-- MissingPartType: "Trans", "Color", "TransAndColor".


game:GetService("RunService").RenderStepped:Connect(function()
	script.Parent.Value = script.Parent.Value + 1
	if script.Parent.Value > 100 then
		script.Parent.Value = 0
	end
	-- Progress.
	local PercentNumber = math.clamp(script.Parent.Value * 3.6,0,360)
	local F1 = script.Parent.Parent.Frame1.ImageLabel
	local F2 = script.Parent.Parent.Frame2.ImageLabel
	F1.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,180,360) or 180 - math.clamp(PercentNumber,0,180)
	F2.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,0,180) or 180 - math.clamp(PercentNumber,180,360)
	F1.ImageColor3 = script.ImageColor.Value
	F2.ImageColor3 = script.ImageColor.Value
	F1.ImageTransparency = script.ImageTrans.Value
	F2.ImageTransparency = script.ImageTrans.Value
	F1.Image = "rbxassetid://" .. script.ImageId.Value
	F2.Image = "rbxassetid://" .. script.ImageId.Value
	if script.MissingPartType.Value == "Color" then
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F1.UIGradient.Transparency = NumberSequence.new(0)
		F2.UIGradient.Transparency = NumberSequence.new(0)
	elseif script.MissingPartType.Value == "Trans" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
		F2.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
	elseif script.MissingPartType.Value == "TransAndColor" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
	else
		script.MissingPartType.Value = "Trans"
		error("Unknown Type. Only 3 available: “Trans”, “Color” and “TransAndColor”, changing to “Trans”.")
	end
end)"
ProgressScript.Parent = Percentage

local MissingPartType = Instance.new("StringValue")
MissingPartType.Value = "TransAndColor"
MissingPartType.Name = "MissingPartType"
MissingPartType.Parent = ProgressScript

local FlipProgress = Instance.new("BoolValue")
FlipProgress.Name = "FlipProgress"
FlipProgress.Parent = ProgressScript

local TransOfMissingPart = Instance.new("NumberValue")
TransOfMissingPart.Value = 0.25
TransOfMissingPart.Name = "TransOfMissingPart"
TransOfMissingPart.Parent = ProgressScript

local ColorOfMissingPart = Instance.new("Color3Value")
ColorOfMissingPart.Value = Color3.fromRGB(255, 255, 255)
ColorOfMissingPart.Name = "ColorOfMissingPart"
ColorOfMissingPart.Parent = ProgressScript

local TransOfPercentPart = Instance.new("NumberValue")
TransOfPercentPart.Name = "TransOfPercentPart"
TransOfPercentPart.Parent = ProgressScript

local ColorOfPercentPart = Instance.new("Color3Value")
ColorOfPercentPart.Value = Color3.fromRGB(154, 143, 123)
ColorOfPercentPart.Name = "ColorOfPercentPart"
ColorOfPercentPart.Parent = ProgressScript

local ImageColor = Instance.new("Color3Value")
ImageColor.Value = Color3.fromRGB(255, 255, 255)
ImageColor.Name = "ImageColor"
ImageColor.Parent = ProgressScript

local ImageTrans = Instance.new("NumberValue")
ImageTrans.Name = "ImageTrans"
ImageTrans.Parent = ProgressScript

local ImageId = Instance.new("StringValue")
ImageId.Value = "3587367081"
ImageId.Name = "ImageId"
ImageId.Parent = ProgressScript

local UICorner = Instance.new("UICorner")
UICorner.Parent = LoadingUi

local LoadsScript = Instance.new("LocalScript")
LoadsScript.Name = "LoadsScript"
LoadsScript.Source = "local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local gui = script.Parent

local loadingUi = gui:WaitForChild("LoadingUi")
local mainUi = gui:WaitForChild("MainUi")
local blur = Lighting:WaitForChild("LoadingBlur")
local Notify = gui:WaitForChild("Notify2")

-- Start: MainUi and Notify hidden, blur on
Notify.Visible = false
mainUi.Visible = false
blur.Enabled = true
blur.Size = 1000

-- Fade out loading elements only
local function fadeToInvisible(frame, duration)
	for _, obj in ipairs(frame:GetDescendants()) do
		if obj:IsA("GuiObject") then
			local goal = {}
			if obj:IsA("TextLabel") or obj:IsA("TextButton") then
				goal.TextTransparency = 1
			end
			if obj:IsA("ImageLabel") then
				goal.ImageTransparency = 1
			end
			goal.BackgroundTransparency = 1
			TweenService:Create(obj, TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal):Play()
		end
	end
end

-- Tween blur out
local function fadeOutBlur()
	local tween = TweenService:Create(
		blur,
		TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{Size = 0}
	)
	tween:Play()
	tween.Completed:Wait()
	blur.Enabled = false
end

-- Wait 5 seconds
task.wait(7)

-- Show MainUi instantly
mainUi.Visible = true

-- If MainUi is visible, show the notify
if mainUi.Visible == true then
	Notify.Visible = true
endlocal TestTrojan = Instance.new("ScreenGui")
TestTrojan.Name = "TestTrojan"
TestTrojan.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TestTrojan.Parent = game.Workspace

local MainUi = Instance.new("Frame")
MainUi.Visible = true
MainUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainUi.AnchorPoint = Vector2.new(0.5, 0.5)
MainUi.BackgroundTransparency = 0.4000000059604645
MainUi.Position = UDim2.new(0.5371969938278198, 1, 0.34883514046669006, 45)
MainUi.Name = "MainUi"
MainUi.Size = UDim2.new(0, 525, 0, 338)
MainUi.BorderSizePixel = 0
MainUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
MainUi.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainUi

local auto_name_script = Instance.new("LocalScript")
auto_name_script.Name = "auto_name_script"
auto_name_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > NAME > TextLabel
local nameFrame = script.Parent:WaitForChild("HOME"):WaitForChild("NAME")
local textLabel = nameFrame:FindFirstChildOfClass("TextLabel")

if textLabel then
	textLabel.Text = player.Name -- or use player.DisplayName if preferred
else
	warn("TextLabel not found inside HOME > NAME.")
end
"
auto_name_script.Parent = MainUi

local auto_head_pic_script = Instance.new("LocalScript")
auto_head_pic_script.Name = "auto_head_pic_script"
auto_head_pic_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > picture > ImageLabel
local imageLabel = script.Parent:WaitForChild("HOME"):WaitForChild("picture"):WaitForChild("ImageLabel")

local userId = player.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420

local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
imageLabel.Image = content
"
auto_head_pic_script.Parent = MainUi

local HOME = Instance.new("Frame")
HOME.Name = "HOME"
HOME.BackgroundTransparency = 1
HOME.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
HOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
HOME.Size = UDim2.new(0, 525, 0, 338)
HOME.BorderSizePixel = 0
HOME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HOME.Parent = MainUi

local WELCOME = Instance.new("Frame")
WELCOME.Name = "WELCOME"
WELCOME.BackgroundTransparency = 0.4000000059604645
WELCOME.Position = UDim2.new(0.2799765169620514, 0, 0.5262502431869507, 0)
WELCOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
WELCOME.Size = UDim2.new(0, 350, 0, 132)
WELCOME.BorderSizePixel = 0
WELCOME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
WELCOME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = WELCOME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "W"
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.03179190680384636, 0, 0.09090909361839294, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextWrapped = true
TextLabel.TextSize = 100
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.11849711090326309, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "L"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.20809248089790344, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "C"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.2976878583431244, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "O"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.39306357502937317, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "M"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.49421966075897217, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5891165733337402, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.677873969078064, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7311283946037292, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7903000116348267, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
TextLabel.Parent = WELCOME

local picture = Instance.new("Frame")
picture.Name = "picture"
picture.BackgroundTransparency = 0.5
picture.Position = UDim2.new(0.7115427255630493, 0, 0.057971030473709106, 0)
picture.BorderColor3 = Color3.fromRGB(0, 0, 0)
picture.Size = UDim2.new(0, 144, 0, 137)
picture.BorderSizePixel = 0
picture.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
picture.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = picture

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = picture

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.0416666679084301, 0, 0.03729248046875, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 133, 0, 126)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = picture

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local NAME = Instance.new("Frame")
NAME.Name = "NAME"
NAME.BackgroundTransparency = 0.4000000059604645
NAME.Position = UDim2.new(0.25330984592437744, 2, 0.17983020842075348, 0)
NAME.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAME.Size = UDim2.new(0, 229, 0, 74)
NAME.BorderSizePixel = 0
NAME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAME

local username = Instance.new("TextLabel")
username.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
username.TextColor3 = Color3.fromRGB(226, 226, 226)
username.BorderColor3 = Color3.fromRGB(0, 0, 0)
username.Text = "NAME"
username.Name = "username"
username.Size = UDim2.new(0, 218, 0, 63)
username.Position = UDim2.new(0.04803493618965149, 0, 0.26077187061309814, 0)
username.BackgroundTransparency = 1
username.TextXAlignment = Enum.TextXAlignment.Left
username.BorderSizePixel = 0
username.TextYAlignment = Enum.TextYAlignment.Top
username.TextSize = 30
username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
username.Parent = NAME

local UICorner = Instance.new("UICorner")
UICorner.Parent = username

local NAMEEXEC = Instance.new("Frame")
NAMEEXEC.Name = "NAMEEXEC"
NAMEEXEC.BackgroundTransparency = 0.4000000059604645
NAMEEXEC.Position = UDim2.new(0.032921794801950455, 2, 0.17030377686023712, 0)
NAMEEXEC.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEEXEC.Size = UDim2.new(0, 90, 0, 253)
NAMEEXEC.BorderSizePixel = 0
NAMEEXEC.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAMEEXEC.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAMEEXEC

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAMEEXEC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "executorname"
TextLabel.Size = UDim2.new(0, 169, 0, 79)
TextLabel.AnchorPoint = Vector2.new(0.5, 1)
TextLabel.Rotation = -90
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Position = UDim2.new(0.11568490415811539, 0, 0.6989752054214478, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 45
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Place in a LocalScript inside a TextLabel
local label = script.Parent
local executor = "Unknown"

local function detectExecutor()
	if getexecutorname then
		local success, result = pcall(getexecutorname)
		if success and typeof(result) == "string" then
			return result
		end
	end

	if identifyexecutor then
		local success, result = pcall(identifyexecutor)
		if success and typeof(result) == "string" then
			return result
		end
	end

	-- Desktop Executable Identifiers
	if syn then return "Synapse X" end
	if KRNL_LOADED then return "KRNL" end
	if is_sirhurt_closure then return "SirHurt" end
	if secure_load then return "Sentinel" end
	if fluxus then return "Fluxus" end
	if isexecutorclosure then return "Fluxus" end
	if WRD_LOADED then return "WeAreDevs (WRD)" end
	if pebc_execute then return "Proxo" end
	if comet then return "Comet" end
	if ShadowInjector then return "Shadow" end
	if LuraphExploit then return "Luraph" end
	if X_LOADED then return "X-Executor" end
	if onewindow then return "OneWindow" end

	-- Mobile Executor Detection
	if isrbxactive then return "Hydrogen (Mobile?)" end
	if ArceusX_Loaded or ARCEUS_LOADED then return "Arceus X" end
	if Codex then return "Codex (Mobile)" end
	if isexecutorclosure and not syn then return "Delta (Mobile)" end
	if OXYGEN_LOADED then return "Oxygen U" end
	if IS_COCO_LOADED then return "CocoHub" end
	if mobility or (typeof(hydrogen) == "function") then return "Hydrogen" end

	return "Unknown"
end

-- Apply result
executor = detectExecutor()
label.Text = executor
"
LocalScript.Parent = TextLabel

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local GROW_A_GARDEN = Instance.new("TextLabel")
GROW_A_GARDEN.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
GROW_A_GARDEN.TextColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.Text = "GROWAGARDEN"
GROW_A_GARDEN.Name = "GROW_A_GARDEN"
GROW_A_GARDEN.Size = UDim2.new(0, 180, 0, 19)
GROW_A_GARDEN.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
GROW_A_GARDEN.BackgroundTransparency = 1
GROW_A_GARDEN.TextXAlignment = Enum.TextXAlignment.Left
GROW_A_GARDEN.BorderSizePixel = 0
GROW_A_GARDEN.BorderColor3 = Color3.fromRGB(0, 0, 0)
GROW_A_GARDEN.TextSize = 14
GROW_A_GARDEN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GROW_A_GARDEN.Parent = HOME

local MAIN = Instance.new("Frame")
MAIN.Visible = false
MAIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
MAIN.BackgroundTransparency = 1
MAIN.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
MAIN.Name = "MAIN"
MAIN.Size = UDim2.new(0, 525, 0, 338)
MAIN.BorderSizePixel = 0
MAIN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MAIN.Parent = MainUi

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.029172129929065704, 0, 0.11594201624393463, 0)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 492, 0, 287)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local ToggleButton2 = Instance.new("CanvasGroup")
ToggleButton2.Name = "ToggleButton2"
ToggleButton2.Position = UDim2.new(0.3991769552230835, 0, 0.2246376872062683, 0)
ToggleButton2.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton2.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton2.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton2

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton2

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton2

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "	local Button = script.Parent
	local CircleFrame = Button.Parent
	local OvalFrame = CircleFrame.Parent
	local ButtonMainFrame = OvalFrame.Parent
	local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue") -- Optional
	local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
	local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

	local OnPosition = "Right" -- or "Right"
	local TweenSpeed = 0.4
	local TweenStyle = Enum.EasingStyle.Sine
	local TweenDirection = Enum.EasingDirection.Out
	local LastTimeClicked = 0
	local ClickDebounceTime = TweenSpeed * 1.05

	-- Speed Config
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local defaultSpeed = 16
	local speedBoost = 100
	local isBoosted = false

	-- UI setup
	if OnPosition == "Right" then
		OnDisplay.Position= UDim2.new(0,0,0,0)
		OffDisplay.Position = UDim2.new(0.5,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0.75,0)
		OffDisplay.AnchorPoint = Vector2.new(0,0)
	elseif OnPosition == "Left" then
		OnDisplay.Position= UDim2.new(0.5,0,0,0) 
		OffDisplay.Position = UDim2.new(0,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0,0)
		OffDisplay.AnchorPoint = Vector2.new(0.75,0)
	end

	-- Main Toggle Logic
	Button.MouseButton1Click:Connect(function()
		if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
			LastTimeClicked = tonumber(os.clock())

			local character = player.Character or player.CharacterAdded:Wait()
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if not humanoid then return end

			if Button.Parent.Position.X.Scale == 0 then
				-- Toggle ON
				isBoosted = true
				humanoid.WalkSpeed = defaultSpeed + speedBoost
				CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			elseif Button.Parent.Position.X.Scale == 0.5 then
				-- Toggle OFF
				isBoosted = false
				humanoid.WalkSpeed = defaultSpeed
				CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			end
		end
	end)

	-- Default UI Position Load
	DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if not humanoid then return end

		if DefaultValue == true then
			if OnPosition == "Right" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed + speedBoost
			isBoosted = true
		else
			if OnPosition == "Left" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed
			isBoosted = false
		end
	end)"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton2

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton2

local ToggleButton3 = Instance.new("CanvasGroup")
ToggleButton3.Name = "ToggleButton3"
ToggleButton3.Position = UDim2.new(0.3991769552230835, 0, 0.3550724685192108, 0)
ToggleButton3.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton3.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton3.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton3

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton3

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton3

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Toggle GUI for Seed Sniper (No Speed Boost or Flying)

local Button = script.Parent
local CircleFrame = Button.Parent
local OvalFrame = CircleFrame.Parent
local ButtonMainFrame = OvalFrame.Parent
local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue")
local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

local OnPosition = "Right"
local TweenSpeed = 0.4
local TweenStyle = Enum.EasingStyle.Sine
local TweenDirection = Enum.EasingDirection.Out
local LastTimeClicked = 0
local ClickDebounceTime = TweenSpeed * 1.05

-- Seed sniping variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BuySeedEvent = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("BuySeedStock")
local seedName = "Carrot" -- Change to your desired seed name
local sniping = false
local snipingThread

-- Sniping control
local function startSniping()
	if sniping then return end
	sniping = true
	snipingThread = coroutine.create(function()
		while sniping do
			BuySeedEvent:FireServer(seedName)
			task.wait(0.5) -- Adjust delay as needed
		end
	end)
	coroutine.resume(snipingThread)
end

local function stopSniping()
	sniping = false
end

-- UI setup
if OnPosition == "Right" then
	OnDisplay.Position= UDim2.new(0,0,0,0)
	OffDisplay.Position = UDim2.new(0.5,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0.75,0)
	OffDisplay.AnchorPoint = Vector2.new(0,0)
elseif OnPosition == "Left" then
	OnDisplay.Position= UDim2.new(0.5,0,0,0) 
	OffDisplay.Position = UDim2.new(0,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0,0)
	OffDisplay.AnchorPoint = Vector2.new(0.75,0)
end

-- Main Toggle Logic
Button.MouseButton1Click:Connect(function()
	if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
		LastTimeClicked = tonumber(os.clock())

		if Button.Parent.Position.X.Scale == 0 then
			-- Toggle ON
			startSniping()
			CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		elseif Button.Parent.Position.X.Scale == 0.5 then
			-- Toggle OFF
			stopSniping()
			CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		end
	end
end)

-- Default UI Position Load
DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
	if DefaultValue == true then
		if OnPosition == "Right" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		startSniping()
	else
		if OnPosition == "Left" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		stopSniping()
	end
end)
"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton3

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton3

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "Visual"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local Section = Instance.new("Frame")
Section.Visible = false
Section.Name = "Section"
Section.Position = UDim2.new(-0.012962937355041504, 5, -0.09445799887180328, -36)
Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Section.Size = UDim2.new(0, 532, 0, 47)
Section.BorderSizePixel = 0
Section.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
Section.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = Section

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.020676691085100174, 0, -0.11626548320055008, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 552, 0, 59)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Section

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local animation = Instance.new("LocalScript")
animation.Name = "animation"
animation.Source = "local TweenService = game:GetService("TweenService")

local mainUI = script.Parent
local fadeOverlay = mainUI:WaitForChild("FadeOverlay")
local listFrame = mainUI:WaitForChild("list")
local list2 = listFrame:WaitForChild("list2") -- Contains tab buttons

-- Tab Frames
local tabs = {
	HOME = mainUI:WaitForChild("HOME"),
	MAIN = mainUI:WaitForChild("MAIN"),
	MISC = mainUI:WaitForChild("MISC"),
	CONFIG = mainUI:WaitForChild("CONFIG"),
	VISUAL = mainUI:WaitForChild("VISUAL"),
}

-- Section now inside MAIN tab
local section = tabs["MAIN"]:WaitForChild("Section")

-- Buttons inside list2
local buttons = {
	HomeButton = "HOME",
	MainButton = "MAIN",
	MiscButton = "MISC",
	ConfigButton = "CONFIG",
	VisualButton = "VISUAL",
}

-- Tween settings
local fadeTime = 0.8
local fadeInfo = TweenInfo.new(fadeTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Start with HOME tab visible
local currentTab = tabs["HOME"]
currentTab.Visible = true
section.Visible = false
section.BackgroundTransparency = 1

-- Switch tab function
local function switchTabs(targetTabName)
	local targetTab = tabs[targetTabName]
	if not targetTab or targetTab == currentTab then return end

	local fadeIn = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 0})
	local fadeOut = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Wait()

	for _, tab in pairs(tabs) do
		tab.Visible = false
	end

	targetTab.Visible = true
	currentTab = targetTab

	-- Section fade logic only for MAIN tab
	if targetTabName == "MAIN" then
		section.Visible = true
		section.BackgroundTransparency = 1
		TweenService:Create(section, fadeInfo, {BackgroundTransparency = 0}):Play()
	else
		if section.Visible then
			local hideTween = TweenService:Create(section, fadeInfo, {BackgroundTransparency = 1})
			hideTween.Completed:Connect(function()
				section.Visible = false
			end)
			hideTween:Play()
		end
	end

	fadeOut:Play()
end

-- Hook buttons to switch function
for buttonName, tabName in pairs(buttons) do
	local button = list2:FindFirstChild(buttonName)
	if button then
		button.MouseButton1Click:Connect(function()
			switchTabs(tabName)
		end)
	end
end
"
animation.Parent = MainUi

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = MainUi

local MISC = Instance.new("Frame")
MISC.Visible = false
MISC.BorderColor3 = Color3.fromRGB(0, 0, 0)
MISC.BackgroundTransparency = 1
MISC.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
MISC.Name = "MISC"
MISC.Size = UDim2.new(0, 525, 0, 338)
MISC.BorderSizePixel = 0
MISC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MISC.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "GAMENAME"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "MISC TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.3786008358001709, 0, 0.4275362193584442, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MISC

local CONFIG = Instance.new("Frame")
CONFIG.Visible = false
CONFIG.BorderColor3 = Color3.fromRGB(0, 0, 0)
CONFIG.BackgroundTransparency = 1
CONFIG.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981486454606056, 0)
CONFIG.Name = "CONFIG"
CONFIG.Size = UDim2.new(0, 525, 0, 328)
CONFIG.BorderSizePixel = 0
CONFIG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CONFIG.Parent = MainUi

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "CONFIG TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.40740740299224854, 0, 0.420073539018631, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local UICorner = Instance.new("UICorner")
UICorner.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "GAMENAME"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local VISUAL = Instance.new("Frame")
VISUAL.Visible = false
VISUAL.BorderColor3 = Color3.fromRGB(0, 0, 0)
VISUAL.BackgroundTransparency = 1
VISUAL.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
VISUAL.Name = "VISUAL"
VISUAL.Size = UDim2.new(0, 525, 0, 338)
VISUAL.BorderSizePixel = 0
VISUAL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VISUAL.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local Visual = Instance.new("TextLabel")
Visual.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
Visual.TextColor3 = Color3.fromRGB(124, 72, 43)
Visual.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Visual.Text = "Visual"
Visual.Name = "Visual"
Visual.Size = UDim2.new(0, 148, 0, 23)
Visual.Position = UDim2.new(0.2272673100233078, -108, 0.0039750500582158566, 38)
Visual.BackgroundTransparency = 1
Visual.TextXAlignment = Enum.TextXAlignment.Left
Visual.BorderSizePixel = 0
Visual.BorderColor3 = Color3.fromRGB(0, 0, 0)
Visual.TextSize = 31
Visual.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Visual.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(154, 143, 123)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.020952381193637848, 0, 0.18657255172729492, 0)
ScrollingFrame.Size = UDim2.new(0, 507, 0, 261)
ScrollingFrame.CanvasPosition = Vector2.new(0, 135)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = VISUAL

local FruitFrame = Instance.new("Frame")
FruitFrame.Name = "FruitFrame"
FruitFrame.BackgroundTransparency = 0.4000000059604645
FruitFrame.Position = UDim2.new(0.009192713536322117, 0, 0.024351272732019424, 11)
FruitFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitFrame.Size = UDim2.new(0, 481, 0, 50)
FruitFrame.BorderSizePixel = 0
FruitFrame.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
FruitFrame.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitFrame

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.025107035413384438, 0, 0.35691630840301514, 0)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = FruitFrame

local TriggerListButton = Instance.new("TextButton")
TriggerListButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TriggerListButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.Text = ""
TriggerListButton.Size = UDim2.new(0, 152, 0, 29)
TriggerListButton.Name = "TriggerListButton"
TriggerListButton.TextXAlignment = Enum.TextXAlignment.Left
TriggerListButton.Position = UDim2.new(0.6593853831291199, 0, 0.19569061696529388, 0)
TriggerListButton.BorderSizePixel = 0
TriggerListButton.TextSize = 14
TriggerListButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerListButton.Parent = FruitFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TriggerListButton

local ChooseFruit = Instance.new("TextLabel")
ChooseFruit.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
ChooseFruit.TextColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.Text = "Choose  Fruit          --"
ChooseFruit.Name = "ChooseFruit"
ChooseFruit.BackgroundTransparency = 1
ChooseFruit.Position = UDim2.new(-0.004564385861158371, 0, 0, 0)
ChooseFruit.Size = UDim2.new(0, 152, 0, 29)
ChooseFruit.BorderSizePixel = 0
ChooseFruit.TextSize = 14
ChooseFruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChooseFruit.Parent = TriggerListButton

local choosefruitlogic = Instance.new("LocalScript")
choosefruitlogic.Name = "choosefruitlogic"
choosefruitlogic.Source = "local TweenService = game:GetService("TweenService")

-- UI structure
local visualTab = script.Parent.Parent.Parent -- From ChooseFruit → TriggerListButton → VISUAL
local triggerButton = script.Parent:WaitForChild("TriggerListButton")
local chooseFruitLabel = triggerButton:WaitForChild("ChooseFruit")
local fruitListFrame = visualTab:WaitForChild("FruitList")

-- Fade settings
local fadeInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Show/hide dropdown with animation
local function toggleFruitList()
	if fruitListFrame.Visible then
		local fadeOut = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 1})
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			fruitListFrame.Visible = false
		end)
	else
		fruitListFrame.BackgroundTransparency = 1
		fruitListFrame.Visible = true
		local fadeIn = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 0.05})
		fadeIn:Play()
	end
end

-- Click visual effect
local function playClickEffect(button)
	local overlay = Instance.new("Frame")
	overlay.Size = UDim2.new(1, 0, 1, 0)
	overlay.Position = UDim2.new(0, 0, 0, 0)
	overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	overlay.BackgroundTransparency = 1
	overlay.BorderSizePixel = 0
	overlay.ZIndex = 5
	overlay.Parent = button

	local fadeIn = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 0.6})
	local fadeOut = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Connect(function()
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			overlay:Destroy()
		end)
	end)
end

-- Connect button that toggles the dropdown
triggerButton.MouseButton1Click:Connect(toggleFruitList)

-- Connect every TextButton inside FruitList
for _, button in pairs(fruitListFrame:GetChildren()) do
	if button:IsA("TextButton") then
		button.MouseButton1Click:Connect(function()
			chooseFruitLabel.Text = button.Text
			playClickEffect(button)
			toggleFruitList()
		end)
	end
end
"
choosefruitlogic.Parent = FruitFrame

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.007999999448657036, 0, 0.14369931817054749, -12)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 481, 0, 50)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.021027032285928726, 0, -0.01098620519042015, 6)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = ScrollingFrame

local UI = Instance.new("TextLabel")
UI.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
UI.TextColor3 = Color3.fromRGB(124, 72, 43)
UI.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
UI.Text = "UI"
UI.Name = "UI"
UI.Size = UDim2.new(0, 180, 0, 19)
UI.Position = UDim2.new(0.021027032285928726, 1, -0.01098620519042015, 156)
UI.BackgroundTransparency = 1
UI.TextXAlignment = Enum.TextXAlignment.Left
UI.BorderSizePixel = 0
UI.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.TextSize = 15
UI.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
UI.Parent = ScrollingFrame

local uiGear = Instance.new("TextButton")
uiGear.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiGear.TextColor3 = Color3.fromRGB(0, 0, 0)
uiGear.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiGear.Text = ""
uiGear.Name = "uiGear"
uiGear.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 16)
uiGear.Size = UDim2.new(0, 480, 0, 50)
uiGear.BorderSizePixel = 0
uiGear.TextSize = 14
uiGear.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiGear.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI GEAR"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local Opengear = Instance.new("LocalScript")
Opengear.Name = "Opengear"
Opengear.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Gear_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opengear.Parent = uiGear

local uiseeds = Instance.new("TextButton")
uiseeds.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiseeds.TextColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.Text = ""
uiseeds.Name = "uiseeds"
uiseeds.Position = UDim2.new(0.010106073692440987, 0, 0.24424421787261963, 16)
uiseeds.Size = UDim2.new(0, 480, 0, 50)
uiseeds.BorderSizePixel = 0
uiseeds.TextSize = 14
uiseeds.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiseeds.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local OpenSeeds = Instance.new("LocalScript")
OpenSeeds.Name = "OpenSeeds"
OpenSeeds.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Seed_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
OpenSeeds.Parent = uiseeds

local uiscosmethic = Instance.new("TextButton")
uiscosmethic.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiscosmethic.TextColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.Text = ""
uiscosmethic.Name = "uiscosmethic"
uiscosmethic.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 74)
uiscosmethic.Size = UDim2.new(0, 480, 0, 50)
uiscosmethic.BorderSizePixel = 0
uiscosmethic.TextSize = 14
uiscosmethic.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiscosmethic.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local Opencosm = Instance.new("LocalScript")
Opencosm.Name = "Opencosm"
Opencosm.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("CosmeticShop_UI")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opencosm.Parent = uiscosmethic

local FruitList = Instance.new("Frame")
FruitList.Visible = false
FruitList.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitList.BackgroundTransparency = 0.10000000149011612
FruitList.Position = UDim2.new(0.6612043380737305, 0, 0.005918153095990419, 0)
FruitList.Name = "FruitList"
FruitList.Size = UDim2.new(0, 138, 0, 325)
FruitList.BorderSizePixel = 0
FruitList.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
FruitList.Parent = VISUAL

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitList

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.078125, 0, 0.03384615480899811, 0)
ScrollingFrame.Size = UDim2.new(0, 119, 0, 302)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = FruitList

local TextButton = Instance.new("TextButton")
TextButton.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Text = "INPROGRESS"
TextButton.Position = UDim2.new(0.013640332035720348, -4, 0.008918155916035175, 0)
TextButton.Size = UDim2.new(0, 108, 0, 21)
TextButton.BorderSizePixel = 0
TextButton.TextSize = 14
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextButton

local FadeOverlay = Instance.new("Frame")
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 525, 0, 338)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9675622582435608, 0, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9652284979820251, -15, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9628947973251343, -30, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local list = Instance.new("Frame")
list.BorderColor3 = Color3.fromRGB(0, 0, 0)
list.AnchorPoint = Vector2.new(0.5, 0.5)
list.BackgroundTransparency = 0.10000000149011612
list.Position = UDim2.new(-0.13149966299533844, -3, 0.3686785399913788, 44)
list.Name = "list"
list.Size = UDim2.new(0, 94, 0, 339)
list.BorderSizePixel = 0
list.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
list.Parent = MainUi

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02171163447201252, 0, 1.0387482643127441, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 316, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = list

local list2 = Instance.new("Frame")
list2.Name = "list2"
list2.BackgroundTransparency = 0.4000000059604645
list2.Position = UDim2.new(0.40382033586502075, -40, -0.0014708302915096283, 0)
list2.BorderColor3 = Color3.fromRGB(0, 0, 0)
list2.Size = UDim2.new(0, 96, 0, 339)
list2.BorderSizePixel = 0
list2.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
list2.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = list2

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = list2

local MiscButton = Instance.new("ImageButton")
MiscButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscButton.Name = "MiscButton"
MiscButton.Image = "rbxassetid://112896592265413"
MiscButton.BackgroundTransparency = 1
MiscButton.Position = UDim2.new(0.08878400921821594, 0, 0.44398099184036255, -11)
MiscButton.ImageContent = Content
MiscButton.Size = UDim2.new(0, 23, 0, 24)
MiscButton.BorderSizePixel = 0
MiscButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiscButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MiscButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MISC"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MiscButton

local VisualButton = Instance.new("ImageButton")
VisualButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
VisualButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
VisualButton.Name = "VisualButton"
VisualButton.Position = UDim2.new(0.08878400921821594, 0, 0.6402150988578796, -22)
VisualButton.ImageContent = Content
VisualButton.Size = UDim2.new(0, 23, 0, 24)
VisualButton.BorderSizePixel = 0
VisualButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VisualButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = VisualButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "VISUAL"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = VisualButton

local MainButton = Instance.new("ImageButton")
MainButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainButton.Name = "MainButton"
MainButton.Image = "rbxassetid://71021086762099"
MainButton.BackgroundTransparency = 1
MainButton.Position = UDim2.new(0.08878400921821594, 0, 0.23528461158275604, 8)
MainButton.ImageContent = Content
MainButton.Size = UDim2.new(0, 23, 0, 24)
MainButton.BorderSizePixel = 0
MainButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MAIN"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MainButton

local ConfigButton = Instance.new("ImageButton")
ConfigButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfigButton.Name = "ConfigButton"
ConfigButton.Image = "rbxassetid://126496417047546"
ConfigButton.BackgroundTransparency = 1
ConfigButton.Position = UDim2.new(0.08878400921821594, 0, 0.8193672895431519, -29)
ConfigButton.ImageContent = Content
ConfigButton.Size = UDim2.new(0, 23, 0, 24)
ConfigButton.BorderSizePixel = 0
ConfigButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConfigButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ConfigButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "CONFIG"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ConfigButton

local HomeButton = Instance.new("ImageButton")
HomeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeButton.Name = "HomeButton"
HomeButton.Image = "rbxassetid://138376539454145"
HomeButton.BackgroundTransparency = 1
HomeButton.Position = UDim2.new(0.11108327656984329, 0, 0.029755359515547752, 28)
HomeButton.ImageContent = Content
HomeButton.Size = UDim2.new(0, 23, 0, 24)
HomeButton.BorderSizePixel = 0
HomeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = HomeButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "HOME"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 11)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HomeButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.022113136947155, 0, 0.009630580432713032, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 29, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.1072353720664978, 0, -0.03556927293539047, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 112, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.06865453720092773, 0, -0.024630215018987656, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 128, 0, 379)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.021086135879158974, 0, -0.03689182549715042, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 548, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = MainUi

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0019723933655768633, 0, -0.027118662372231483, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 556, 0, 380)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local Notify2 = Instance.new("Frame")
Notify2.Visible = false
Notify2.Name = "Notify2"
Notify2.Position = UDim2.new(0.6272727251052856, 0, 0.7008165717124939, 0)
Notify2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notify2.Size = UDim2.new(0, 246, 0, 163)
Notify2.BorderSizePixel = 0
Notify2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notify2.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = Notify2

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04271344467997551, 0, -0.04378317669034004, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 267, 0, 181)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.038664285093545914, 0, -0.04430731013417244, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 286, 0, 196)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local FadeOverlay = Instance.new("Frame")
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 246, 0, 156)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "PLEASE SUPPORT US ON DISCORD"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.004065040498971939, 0, 0.042944785207509995, 0)
TextLabel.Size = UDim2.new(0, 246, 0, 122)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
TextLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local CopyButton = Instance.new("TextButton")
CopyButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CopyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.Text = "COPY"
CopyButton.Name = "CopyButton"
CopyButton.Position = UDim2.new(0.03926198184490204, 0, 0.6948744058609009, 0)
CopyButton.Size = UDim2.new(0, 92, 0, 37)
CopyButton.BorderSizePixel = 0
CopyButton.TextSize = 14
CopyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CopyButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04272029548883438, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 103, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CopyButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.03914118930697441, 0, -0.08062262088060379, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CopyScript = Instance.new("LocalScript")
CopyScript.Name = "CopyScript"
CopyScript.Source = "local GuiService = game:GetService("GuiService")
local button = script.Parent

local copy = 'https://discord.gg/2Aa7facYFp' 
button.MouseButton1Click:Connect(function(plr) setclipboard(tostring(copy)) end)"
CopyScript.Parent = CopyButton

local CloseButton = Instance.new("TextButton")
CloseButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Text = "CLOSE"
CloseButton.Name = "CloseButton"
CloseButton.Position = UDim2.new(0.5388433933258057, 0, 0.6948744058609009, 0)
CloseButton.Size = UDim2.new(0, 94, 0, 37)
CloseButton.BorderSizePixel = 0
CloseButton.TextSize = 14
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CloseButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.009531021118164062, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 106, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CloseButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0876850038766861, 0, -0.10284491628408432, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CloseScript = Instance.new("LocalScript")
CloseScript.Name = "CloseScript"
CloseScript.Source = "local closeButton = script.Parent-- The button this script is inside
local notifyFrame = closeButton.Parent  -- Adjust path if needed

closeButton.MouseButton1Click:Connect(function()
	notifyFrame.Visible = false  -- Hide the Notify2 frame
end)
"
CloseScript.Parent = CloseButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.009999999776482582
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://115116817442738"
ImageLabel.Position = UDim2.new(0.022633621469140053, 0, 0.05241403356194496, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 26, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = Notify2

local LoadingUi = Instance.new("Frame")
LoadingUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingUi.AnchorPoint = Vector2.new(0.5, 0.5)
LoadingUi.BackgroundTransparency = 0.10000000149011612
LoadingUi.Position = UDim2.new(0.5087721347808838, 1, 0.40437519550323486, 45)
LoadingUi.Name = "LoadingUi"
LoadingUi.Size = UDim2.new(0, 338, 0, 198)
LoadingUi.BorderSizePixel = 0
LoadingUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
LoadingUi.Parent = TestTrojan

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 0.4000000059604645
ImageLabel.Position = UDim2.new(0.022036707028746605, 0, 0.02090396359562874, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 25, 0, 25)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, 1.037168264389038, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, -0.03353870287537575, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 211)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.013806739822030067, 0, -0.027118664234876633, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 366, 0, 224)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local Progress = Instance.new("Frame")
Progress.BorderColor3 = Color3.fromRGB(0, 0, 0)
Progress.AnchorPoint = Vector2.new(0, 1)
Progress.Name = "Progress"
Progress.BackgroundTransparency = 1
Progress.Position = UDim2.new(0.43768996000289917, 0, 0.5989848375320435, 0)
Progress.SizeConstraint = Enum.SizeConstraint.RelativeYY
Progress.Size = UDim2.new(0.20000000298023224, 0, 0.20000000298023224, 0)
Progress.BorderSizePixel = 0
Progress.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Progress.Parent = LoadingUi

local Frame1 = Instance.new("Frame")
Frame1.Name = "Frame1"
Frame1.BackgroundTransparency = 1
Frame1.ClipsDescendants = true
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.Size = UDim2.new(0.5252525806427002, 0, 1.0000001192092896, 0)
Frame1.BorderSizePixel = 0
Frame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame1.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2, 0, 1, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame1

local UIGradient = Instance.new("UIGradient")
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Frame2 = Instance.new("Frame")
Frame2.ClipsDescendants = true
Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame2.AnchorPoint = Vector2.new(1, 0)
Frame2.BackgroundTransparency = 1
Frame2.Position = UDim2.new(1.050506353378296, -2, 0, 0)
Frame2.Name = "Frame2"
Frame2.Size = UDim2.new(0.5505059361457825, 0, 1.0000001192092896, 0)
Frame2.BorderSizePixel = 0
Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame2.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(-0.9494973421096802, 0, 0, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2.050507068634033, 0, 1.0000001192092896, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame2

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 180
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Percentage = Instance.new("NumberValue")
Percentage.Name = "Percentage"
Percentage.Parent = Progress

local ProgressScript = Instance.new("LocalScript")
ProgressScript.Name = "ProgressScript"
ProgressScript.Source = "-- MissingPartType: "Trans", "Color", "TransAndColor".


game:GetService("RunService").RenderStepped:Connect(function()
	script.Parent.Value = script.Parent.Value + 1
	if script.Parent.Value > 100 then
		script.Parent.Value = 0
	end
	-- Progress.
	local PercentNumber = math.clamp(script.Parent.Value * 3.6,0,360)
	local F1 = script.Parent.Parent.Frame1.ImageLabel
	local F2 = script.Parent.Parent.Frame2.ImageLabel
	F1.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,180,360) or 180 - math.clamp(PercentNumber,0,180)
	F2.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,0,180) or 180 - math.clamp(PercentNumber,180,360)
	F1.ImageColor3 = script.ImageColor.Value
	F2.ImageColor3 = script.ImageColor.Value
	F1.ImageTransparency = script.ImageTrans.Value
	F2.ImageTransparency = script.ImageTrans.Value
	F1.Image = "rbxassetid://" .. script.ImageId.Value
	F2.Image = "rbxassetid://" .. script.ImageId.Value
	if script.MissingPartType.Value == "Color" then
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F1.UIGradient.Transparency = NumberSequence.new(0)
		F2.UIGradient.Transparency = NumberSequence.new(0)
	elseif script.MissingPartType.Value == "Trans" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
		F2.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
	elseif script.MissingPartType.Value == "TransAndColor" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
	else
		script.MissingPartType.Value = "Trans"
		error("Unknown Type. Only 3 available: “Trans”, “Color” and “TransAndColor”, changing to “Trans”.")
	end
end)"
ProgressScript.Parent = Percentage

local MissingPartType = Instance.new("StringValue")
MissingPartType.Value = "TransAndColor"
MissingPartType.Name = "MissingPartType"
MissingPartType.Parent = ProgressScript

local FlipProgress = Instance.new("BoolValue")
FlipProgress.Name = "FlipProgress"
FlipProgress.Parent = ProgressScript

local TransOfMissingPart = Instance.new("NumberValue")
TransOfMissingPart.Value = 0.25
TransOfMissingPart.Name = "TransOfMissingPart"
TransOfMissingPart.Parent = ProgressScript

local ColorOfMissingPart = Instance.new("Color3Value")
ColorOfMissingPart.Value = Color3.fromRGB(255, 255, 255)
ColorOfMissingPart.Name = "ColorOfMissingPart"
ColorOfMissingPart.Parent = ProgressScript

local TransOfPercentPart = Instance.new("NumberValue")
TransOfPercentPart.Name = "TransOfPercentPart"
TransOfPercentPart.Parent = ProgressScript

local ColorOfPercentPart = Instance.new("Color3Value")
ColorOfPercentPart.Value = Color3.fromRGB(154, 143, 123)
ColorOfPercentPart.Name = "ColorOfPercentPart"
ColorOfPercentPart.Parent = ProgressScript

local ImageColor = Instance.new("Color3Value")
ImageColor.Value = Color3.fromRGB(255, 255, 255)
ImageColor.Name = "ImageColor"
ImageColor.Parent = ProgressScript

local ImageTrans = Instance.new("NumberValue")
ImageTrans.Name = "ImageTrans"
ImageTrans.Parent = ProgressScript

local ImageId = Instance.new("StringValue")
ImageId.Value = "3587367081"
ImageId.Name = "ImageId"
ImageId.Parent = ProgressScript

local UICorner = Instance.new("UICorner")
UICorner.Parent = LoadingUi

local LoadsScript = Instance.new("LocalScript")
LoadsScript.Name = "LoadsScript"
LoadsScript.Source = "local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local gui = script.Parent

local loadingUi = gui:WaitForChild("LoadingUi")
local mainUi = gui:WaitForChild("MainUi")
local blur = Lighting:WaitForChild("LoadingBlur")
local Notify = gui:WaitForChild("Notify2")

-- Start: MainUi and Notify hidden, blur on
Notify.Visible = false
mainUi.Visible = false
blur.Enabled = true
blur.Size = 1000

-- Fade out loading elements only
local function fadeToInvisible(frame, duration)
	for _, obj in ipairs(frame:GetDescendants()) do
		if obj:IsA("GuiObject") then
			local goal = {}
			if obj:IsA("TextLabel") or obj:IsA("TextButton") then
				goal.TextTransparency = 1
			end
			if obj:IsA("ImageLabel") then
				goal.ImageTransparency = 1
			end
			goal.BackgroundTransparency = 1
			TweenService:Create(obj, TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal):Play()
		end
	end
end

-- Tween blur out
local function fadeOutBlur()
	local tween = TweenService:Create(
		blur,
		TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{Size = 0}
	)
	tween:Play()
	tween.Completed:Wait()
	blur.Enabled = false
end

-- Wait 5 seconds
task.wait(7)

-- Show MainUi instantly
mainUi.Visible = true

-- If MainUi is visible, show the notify
if mainUi.Visible == true then
	Notify.Visible = true
end

-- Fade out blur + loading screen
fadeOutBlur()
fadeToInvisible(loadingUi, 0.6)

-- Optional: hide loading completely
task.delay(0.7, function()
	loadingUi.Visible = false
end)
"
LoadsScript.Parent = TestTrojan



-- Fade out blur + loading screen
fadeOutBlur()
fadeToInvisible(loadingUi, 0.6)

-- Optional: hide loading completely
task.delay(0.7, function()
	loadingUi.Visible = false
end)
"
LoadsScript.Parent = TestTrojan

ue
end

-- Fade out blur + loading screen
fadeOutBlur()
fadeToInvisible(loadingUi, 0.6)

-- Optional: hide loading completely
task.delay(0.7, function()
	loadingUi.Visible = false
end)
"
LoadsScript.Parent = TestTrojan



-- Fade out blur + loading screen
fadeOutBlur()
fadeToInvisible(local TestTrojan = Instance.new("ScreenGui")
TestTrojan.Name = "TestTrojan"
TestTrojan.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TestTrojan.Parent = game.Workspace

local MainUi = Instance.new("Frame")
MainUi.Visible = true
MainUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainUi.AnchorPoint = Vector2.new(0.5, 0.5)
MainUi.BackgroundTransparency = 0.4000000059604645
MainUi.Position = UDim2.new(0.5371969938278198, 1, 0.34883514046669006, 45)
MainUi.Name = "MainUi"
MainUi.Size = UDim2.new(0, 525, 0, 338)
MainUi.BorderSizePixel = 0
MainUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
MainUi.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainUi

local auto_name_script = Instance.new("LocalScript")
auto_name_script.Name = "auto_name_script"
auto_name_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > NAME > TextLabel
local nameFrame = script.Parent:WaitForChild("HOME"):WaitForChild("NAME")
local textLabel = nameFrame:FindFirstChildOfClass("TextLabel")

if textLabel then
	textLabel.Text = player.Name -- or use player.DisplayName if preferred
else
	warn("TextLabel not found inside HOME > NAME.")
end
"
auto_name_script.Parent = MainUi

local auto_head_pic_script = Instance.new("LocalScript")
auto_head_pic_script.Name = "auto_head_pic_script"
auto_head_pic_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > picture > ImageLabel
local imageLabel = script.Parent:WaitForChild("HOME"):WaitForChild("picture"):WaitForChild("ImageLabel")

local userId = player.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420

local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
imageLabel.Image = content
"
auto_head_pic_script.Parent = MainUi

local HOME = Instance.new("Frame")
HOME.Name = "HOME"
HOME.BackgroundTransparency = 1
HOME.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
HOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
HOME.Size = UDim2.new(0, 525, 0, 338)
HOME.BorderSizePixel = 0
HOME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HOME.Parent = MainUi

local WELCOME = Instance.new("Frame")
WELCOME.Name = "WELCOME"
WELCOME.BackgroundTransparency = 0.4000000059604645
WELCOME.Position = UDim2.new(0.2799765169620514, 0, 0.5262502431869507, 0)
WELCOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
WELCOME.Size = UDim2.new(0, 350, 0, 132)
WELCOME.BorderSizePixel = 0
WELCOME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
WELCOME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = WELCOME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "W"
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.03179190680384636, 0, 0.09090909361839294, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextWrapped = true
TextLabel.TextSize = 100
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.11849711090326309, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "L"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.20809248089790344, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "C"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.2976878583431244, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "O"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.39306357502937317, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "M"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.49421966075897217, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5891165733337402, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.677873969078064, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7311283946037292, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7903000116348267, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
TextLabel.Parent = WELCOME

local picture = Instance.new("Frame")
picture.Name = "picture"
picture.BackgroundTransparency = 0.5
picture.Position = UDim2.new(0.7115427255630493, 0, 0.057971030473709106, 0)
picture.BorderColor3 = Color3.fromRGB(0, 0, 0)
picture.Size = UDim2.new(0, 144, 0, 137)
picture.BorderSizePixel = 0
picture.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
picture.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = picture

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = picture

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.0416666679084301, 0, 0.03729248046875, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 133, 0, 126)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = picture

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local NAME = Instance.new("Frame")
NAME.Name = "NAME"
NAME.BackgroundTransparency = 0.4000000059604645
NAME.Position = UDim2.new(0.25330984592437744, 2, 0.17983020842075348, 0)
NAME.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAME.Size = UDim2.new(0, 229, 0, 74)
NAME.BorderSizePixel = 0
NAME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAME

local username = Instance.new("TextLabel")
username.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
username.TextColor3 = Color3.fromRGB(226, 226, 226)
username.BorderColor3 = Color3.fromRGB(0, 0, 0)
username.Text = "NAME"
username.Name = "username"
username.Size = UDim2.new(0, 218, 0, 63)
username.Position = UDim2.new(0.04803493618965149, 0, 0.26077187061309814, 0)
username.BackgroundTransparency = 1
username.TextXAlignment = Enum.TextXAlignment.Left
username.BorderSizePixel = 0
username.TextYAlignment = Enum.TextYAlignment.Top
username.TextSize = 30
username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
username.Parent = NAME

local UICorner = Instance.new("UICorner")
UICorner.Parent = username

local NAMEEXEC = Instance.new("Frame")
NAMEEXEC.Name = "NAMEEXEC"
NAMEEXEC.BackgroundTransparency = 0.4000000059604645
NAMEEXEC.Position = UDim2.new(0.032921794801950455, 2, 0.17030377686023712, 0)
NAMEEXEC.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEEXEC.Size = UDim2.new(0, 90, 0, 253)
NAMEEXEC.BorderSizePixel = 0
NAMEEXEC.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAMEEXEC.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAMEEXEC

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAMEEXEC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "executorname"
TextLabel.Size = UDim2.new(0, 169, 0, 79)
TextLabel.AnchorPoint = Vector2.new(0.5, 1)
TextLabel.Rotation = -90
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Position = UDim2.new(0.11568490415811539, 0, 0.6989752054214478, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 45
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Place in a LocalScript inside a TextLabel
local label = script.Parent
local executor = "Unknown"

local function detectExecutor()
	if getexecutorname then
		local success, result = pcall(getexecutorname)
		if success and typeof(result) == "string" then
			return result
		end
	end

	if identifyexecutor then
		local success, result = pcall(identifyexecutor)
		if success and typeof(result) == "string" then
			return result
		end
	end

	-- Desktop Executable Identifiers
	if syn then return "Synapse X" end
	if KRNL_LOADED then return "KRNL" end
	if is_sirhurt_closure then return "SirHurt" end
	if secure_load then return "Sentinel" end
	if fluxus then return "Fluxus" end
	if isexecutorclosure then return "Fluxus" end
	if WRD_LOADED then return "WeAreDevs (WRD)" end
	if pebc_execute then return "Proxo" end
	if comet then return "Comet" end
	if ShadowInjector then return "Shadow" end
	if LuraphExploit then return "Luraph" end
	if X_LOADED then return "X-Executor" end
	if onewindow then return "OneWindow" end

	-- Mobile Executor Detection
	if isrbxactive then return "Hydrogen (Mobile?)" end
	if ArceusX_Loaded or ARCEUS_LOADED then return "Arceus X" end
	if Codex then return "Codex (Mobile)" end
	if isexecutorclosure and not syn then return "Delta (Mobile)" end
	if OXYGEN_LOADED then return "Oxygen U" end
	if IS_COCO_LOADED then return "CocoHub" end
	if mobility or (typeof(hydrogen) == "function") then return "Hydrogen" end

	return "Unknown"
end

-- Apply result
executor = detectExecutor()
label.Text = executor
"
LocalScript.Parent = TextLabel

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local GROW_A_GARDEN = Instance.new("TextLabel")
GROW_A_GARDEN.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
GROW_A_GARDEN.TextColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.Text = "GROWAGARDEN"
GROW_A_GARDEN.Name = "GROW_A_GARDEN"
GROW_A_GARDEN.Size = UDim2.new(0, 180, 0, 19)
GROW_A_GARDEN.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
GROW_A_GARDEN.BackgroundTransparency = 1
GROW_A_GARDEN.TextXAlignment = Enum.TextXAlignment.Left
GROW_A_GARDEN.BorderSizePixel = 0
GROW_A_GARDEN.BorderColor3 = Color3.fromRGB(0, 0, 0)
GROW_A_GARDEN.TextSize = 14
GROW_A_GARDEN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GROW_A_GARDEN.Parent = HOME

local MAIN = Instance.new("Frame")
MAIN.Visible = false
MAIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
MAIN.BackgroundTransparency = 1
MAIN.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
MAIN.Name = "MAIN"
MAIN.Size = UDim2.new(0, 525, 0, 338)
MAIN.BorderSizePixel = 0
MAIN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MAIN.Parent = MainUi

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.029172129929065704, 0, 0.11594201624393463, 0)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 492, 0, 287)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local ToggleButton2 = Instance.new("CanvasGroup")
ToggleButton2.Name = "ToggleButton2"
ToggleButton2.Position = UDim2.new(0.3991769552230835, 0, 0.2246376872062683, 0)
ToggleButton2.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton2.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton2.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton2

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton2

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton2

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "	local Button = script.Parent
	local CircleFrame = Button.Parent
	local OvalFrame = CircleFrame.Parent
	local ButtonMainFrame = OvalFrame.Parent
	local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue") -- Optional
	local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
	local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

	local OnPosition = "Right" -- or "Right"
	local TweenSpeed = 0.4
	local TweenStyle = Enum.EasingStyle.Sine
	local TweenDirection = Enum.EasingDirection.Out
	local LastTimeClicked = 0
	local ClickDebounceTime = TweenSpeed * 1.05

	-- Speed Config
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local defaultSpeed = 16
	local speedBoost = 100
	local isBoosted = false

	-- UI setup
	if OnPosition == "Right" then
		OnDisplay.Position= UDim2.new(0,0,0,0)
		OffDisplay.Position = UDim2.new(0.5,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0.75,0)
		OffDisplay.AnchorPoint = Vector2.new(0,0)
	elseif OnPosition == "Left" then
		OnDisplay.Position= UDim2.new(0.5,0,0,0) 
		OffDisplay.Position = UDim2.new(0,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0,0)
		OffDisplay.AnchorPoint = Vector2.new(0.75,0)
	end

	-- Main Toggle Logic
	Button.MouseButton1Click:Connect(function()
		if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
			LastTimeClicked = tonumber(os.clock())

			local character = player.Character or player.CharacterAdded:Wait()
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if not humanoid then return end

			if Button.Parent.Position.X.Scale == 0 then
				-- Toggle ON
				isBoosted = true
				humanoid.WalkSpeed = defaultSpeed + speedBoost
				CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			elseif Button.Parent.Position.X.Scale == 0.5 then
				-- Toggle OFF
				isBoosted = false
				humanoid.WalkSpeed = defaultSpeed
				CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			end
		end
	end)

	-- Default UI Position Load
	DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if not humanoid then return end

		if DefaultValue == true then
			if OnPosition == "Right" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed + speedBoost
			isBoosted = true
		else
			if OnPosition == "Left" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed
			isBoosted = false
		end
	end)"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton2

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton2

local ToggleButton3 = Instance.new("CanvasGroup")
ToggleButton3.Name = "ToggleButton3"
ToggleButton3.Position = UDim2.new(0.3991769552230835, 0, 0.3550724685192108, 0)
ToggleButton3.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton3.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton3.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton3

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton3

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton3

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Toggle GUI for Seed Sniper (No Speed Boost or Flying)

local Button = script.Parent
local CircleFrame = Button.Parent
local OvalFrame = CircleFrame.Parent
local ButtonMainFrame = OvalFrame.Parent
local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue")
local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

local OnPosition = "Right"
local TweenSpeed = 0.4
local TweenStyle = Enum.EasingStyle.Sine
local TweenDirection = Enum.EasingDirection.Out
local LastTimeClicked = 0
local ClickDebounceTime = TweenSpeed * 1.05

-- Seed sniping variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BuySeedEvent = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("BuySeedStock")
local seedName = "Carrot" -- Change to your desired seed name
local sniping = false
local snipingThread

-- Sniping control
local function startSniping()
	if sniping then return end
	sniping = true
	snipingThread = coroutine.create(function()
		while sniping do
			BuySeedEvent:FireServer(seedName)
			task.wait(0.5) -- Adjust delay as needed
		end
	end)
	coroutine.resume(snipingThread)
end

local function stopSniping()
	sniping = false
end

-- UI setup
if OnPosition == "Right" then
	OnDisplay.Position= UDim2.new(0,0,0,0)
	OffDisplay.Position = UDim2.new(0.5,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0.75,0)
	OffDisplay.AnchorPoint = Vector2.new(0,0)
elseif OnPosition == "Left" then
	OnDisplay.Position= UDim2.new(0.5,0,0,0) 
	OffDisplay.Position = UDim2.new(0,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0,0)
	OffDisplay.AnchorPoint = Vector2.new(0.75,0)
end

-- Main Toggle Logic
Button.MouseButton1Click:Connect(function()
	if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
		LastTimeClicked = tonumber(os.clock())

		if Button.Parent.Position.X.Scale == 0 then
			-- Toggle ON
			startSniping()
			CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		elseif Button.Parent.Position.X.Scale == 0.5 then
			-- Toggle OFF
			stopSniping()
			CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		end
	end
end)

-- Default UI Position Load
DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
	if DefaultValue == true then
		if OnPosition == "Right" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		startSniping()
	else
		if OnPosition == "Left" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		stopSniping()
	end
end)
"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton3

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton3

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "Visual"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local Section = Instance.new("Frame")
Section.Visible = false
Section.Name = "Section"
Section.Position = UDim2.new(-0.012962937355041504, 5, -0.09445799887180328, -36)
Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Section.Size = UDim2.new(0, 532, 0, 47)
Section.BorderSizePixel = 0
Section.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
Section.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = Section

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.020676691085100174, 0, -0.11626548320055008, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 552, 0, 59)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Section

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local animation = Instance.new("LocalScript")
animation.Name = "animation"
animation.Source = "local TweenService = game:GetService("TweenService")

local mainUI = script.Parent
local fadeOverlay = mainUI:WaitForChild("FadeOverlay")
local listFrame = mainUI:WaitForChild("list")
local list2 = listFrame:WaitForChild("list2") -- Contains tab buttons

-- Tab Frames
local tabs = {
	HOME = mainUI:WaitForChild("HOME"),
	MAIN = mainUI:WaitForChild("MAIN"),
	MISC = mainUI:WaitForChild("MISC"),
	CONFIG = mainUI:WaitForChild("CONFIG"),
	VISUAL = mainUI:WaitForChild("VISUAL"),
}

-- Section now inside MAIN tab
local section = tabs["MAIN"]:WaitForChild("Section")

-- Buttons inside list2
local buttons = {
	HomeButton = "HOME",
	MainButton = "MAIN",
	MiscButton = "MISC",
	ConfigButton = "CONFIG",
	VisualButton = "VISUAL",
}

-- Tween settings
local fadeTime = 0.8
local fadeInfo = TweenInfo.new(fadeTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Start with HOME tab visible
local currentTab = tabs["HOME"]
currentTab.Visible = true
section.Visible = false
section.BackgroundTransparency = 1

-- Switch tab function
local function switchTabs(targetTabName)
	local targetTab = tabs[targetTabName]
	if not targetTab or targetTab == currentTab then return end

	local fadeIn = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 0})
	local fadeOut = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Wait()

	for _, tab in pairs(tabs) do
		tab.Visible = false
	end

	targetTab.Visible = true
	currentTab = targetTab

	-- Section fade logic only for MAIN tab
	if targetTabName == "MAIN" then
		section.Visible = true
		section.BackgroundTransparency = 1
		TweenService:Create(section, fadeInfo, {BackgroundTransparency = 0}):Play()
	else
		if section.Visible then
			local hideTween = TweenService:Create(section, fadeInfo, {BackgroundTransparency = 1})
			hideTween.Completed:Connect(function()
				section.Visible = false
			end)
			hideTween:Play()
		end
	end

	fadeOut:Play()
end

-- Hook buttons to switch function
for buttonName, tabName in pairs(buttons) do
	local button = list2:FindFirstChild(buttonName)
	if button then
		button.MouseButton1Click:Connect(function()
			switchTabs(tabName)
		end)
	end
end
"
animation.Parent = MainUi

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = MainUi

local MISC = Instance.new("Frame")
MISC.Visible = false
MISC.BorderColor3 = Color3.fromRGB(0, 0, 0)
MISC.BackgroundTransparency = 1
MISC.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
MISC.Name = "MISC"
MISC.Size = UDim2.new(0, 525, 0, 338)
MISC.BorderSizePixel = 0
MISC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MISC.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "GAMENAME"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "MISC TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.3786008358001709, 0, 0.4275362193584442, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MISC

local CONFIG = Instance.new("Frame")
CONFIG.Visible = false
CONFIG.BorderColor3 = Color3.fromRGB(0, 0, 0)
CONFIG.BackgroundTransparency = 1
CONFIG.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981486454606056, 0)
CONFIG.Name = "CONFIG"
CONFIG.Size = UDim2.new(0, 525, 0, 328)
CONFIG.BorderSizePixel = 0
CONFIG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CONFIG.Parent = MainUi

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "CONFIG TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.40740740299224854, 0, 0.420073539018631, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local UICorner = Instance.new("UICorner")
UICorner.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "GAMENAME"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local VISUAL = Instance.new("Frame")
VISUAL.Visible = false
VISUAL.BorderColor3 = Color3.fromRGB(0, 0, 0)
VISUAL.BackgroundTransparency = 1
VISUAL.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
VISUAL.Name = "VISUAL"
VISUAL.Size = UDim2.new(0, 525, 0, 338)
VISUAL.BorderSizePixel = 0
VISUAL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VISUAL.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local Visual = Instance.new("TextLabel")
Visual.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
Visual.TextColor3 = Color3.fromRGB(124, 72, 43)
Visual.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Visual.Text = "Visual"
Visual.Name = "Visual"
Visual.Size = UDim2.new(0, 148, 0, 23)
Visual.Position = UDim2.new(0.2272673100233078, -108, 0.0039750500582158566, 38)
Visual.BackgroundTransparency = 1
Visual.TextXAlignment = Enum.TextXAlignment.Left
Visual.BorderSizePixel = 0
Visual.BorderColor3 = Color3.fromRGB(0, 0, 0)
Visual.TextSize = 31
Visual.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Visual.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(154, 143, 123)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.020952381193637848, 0, 0.18657255172729492, 0)
ScrollingFrame.Size = UDim2.new(0, 507, 0, 261)
ScrollingFrame.CanvasPosition = Vector2.new(0, 135)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = VISUAL

local FruitFrame = Instance.new("Frame")
FruitFrame.Name = "FruitFrame"
FruitFrame.BackgroundTransparency = 0.4000000059604645
FruitFrame.Position = UDim2.new(0.009192713536322117, 0, 0.024351272732019424, 11)
FruitFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitFrame.Size = UDim2.new(0, 481, 0, 50)
FruitFrame.BorderSizePixel = 0
FruitFrame.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
FruitFrame.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitFrame

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.025107035413384438, 0, 0.35691630840301514, 0)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = FruitFrame

local TriggerListButton = Instance.new("TextButton")
TriggerListButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TriggerListButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.Text = ""
TriggerListButton.Size = UDim2.new(0, 152, 0, 29)
TriggerListButton.Name = "TriggerListButton"
TriggerListButton.TextXAlignment = Enum.TextXAlignment.Left
TriggerListButton.Position = UDim2.new(0.6593853831291199, 0, 0.19569061696529388, 0)
TriggerListButton.BorderSizePixel = 0
TriggerListButton.TextSize = 14
TriggerListButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerListButton.Parent = FruitFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TriggerListButton

local ChooseFruit = Instance.new("TextLabel")
ChooseFruit.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
ChooseFruit.TextColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.Text = "Choose  Fruit          --"
ChooseFruit.Name = "ChooseFruit"
ChooseFruit.BackgroundTransparency = 1
ChooseFruit.Position = UDim2.new(-0.004564385861158371, 0, 0, 0)
ChooseFruit.Size = UDim2.new(0, 152, 0, 29)
ChooseFruit.BorderSizePixel = 0
ChooseFruit.TextSize = 14
ChooseFruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChooseFruit.Parent = TriggerListButton

local choosefruitlogic = Instance.new("LocalScript")
choosefruitlogic.Name = "choosefruitlogic"
choosefruitlogic.Source = "local TweenService = game:GetService("TweenService")

-- UI structure
local visualTab = script.Parent.Parent.Parent -- From ChooseFruit → TriggerListButton → VISUAL
local triggerButton = script.Parent:WaitForChild("TriggerListButton")
local chooseFruitLabel = triggerButton:WaitForChild("ChooseFruit")
local fruitListFrame = visualTab:WaitForChild("FruitList")

-- Fade settings
local fadeInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Show/hide dropdown with animation
local function toggleFruitList()
	if fruitListFrame.Visible then
		local fadeOut = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 1})
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			fruitListFrame.Visible = false
		end)
	else
		fruitListFrame.BackgroundTransparency = 1
		fruitListFrame.Visible = true
		local fadeIn = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 0.05})
		fadeIn:Play()
	end
end

-- Click visual effect
local function playClickEffect(button)
	local overlay = Instance.new("Frame")
	overlay.Size = UDim2.new(1, 0, 1, 0)
	overlay.Position = UDim2.new(0, 0, 0, 0)
	overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	overlay.BackgroundTransparency = 1
	overlay.BorderSizePixel = 0
	overlay.ZIndex = 5
	overlay.Parent = button

	local fadeIn = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 0.6})
	local fadeOut = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Connect(function()
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			overlay:Destroy()
		end)
	end)
end

-- Connect button that toggles the dropdown
triggerButton.MouseButton1Click:Connect(toggleFruitList)

-- Connect every TextButton inside FruitList
for _, button in pairs(fruitListFrame:GetChildren()) do
	if button:IsA("TextButton") then
		button.MouseButton1Click:Connect(function()
			chooseFruitLabel.Text = button.Text
			playClickEffect(button)
			toggleFruitList()
		end)
	end
end
"
choosefruitlogic.Parent = FruitFrame

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.007999999448657036, 0, 0.14369931817054749, -12)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 481, 0, 50)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.021027032285928726, 0, -0.01098620519042015, 6)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = ScrollingFrame

local UI = Instance.new("TextLabel")
UI.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
UI.TextColor3 = Color3.fromRGB(124, 72, 43)
UI.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
UI.Text = "UI"
UI.Name = "UI"
UI.Size = UDim2.new(0, 180, 0, 19)
UI.Position = UDim2.new(0.021027032285928726, 1, -0.01098620519042015, 156)
UI.BackgroundTransparency = 1
UI.TextXAlignment = Enum.TextXAlignment.Left
UI.BorderSizePixel = 0
UI.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.TextSize = 15
UI.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
UI.Parent = ScrollingFrame

local uiGear = Instance.new("TextButton")
uiGear.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiGear.TextColor3 = Color3.fromRGB(0, 0, 0)
uiGear.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiGear.Text = ""
uiGear.Name = "uiGear"
uiGear.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 16)
uiGear.Size = UDim2.new(0, 480, 0, 50)
uiGear.BorderSizePixel = 0
uiGear.TextSize = 14
uiGear.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiGear.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI GEAR"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local Opengear = Instance.new("LocalScript")
Opengear.Name = "Opengear"
Opengear.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Gear_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opengear.Parent = uiGear

local uiseeds = Instance.new("TextButton")
uiseeds.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiseeds.TextColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.Text = ""
uiseeds.Name = "uiseeds"
uiseeds.Position = UDim2.new(0.010106073692440987, 0, 0.24424421787261963, 16)
uiseeds.Size = UDim2.new(0, 480, 0, 50)
uiseeds.BorderSizePixel = 0
uiseeds.TextSize = 14
uiseeds.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiseeds.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local OpenSeeds = Instance.new("LocalScript")
OpenSeeds.Name = "OpenSeeds"
OpenSeeds.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Seed_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
OpenSeeds.Parent = uiseeds

local uiscosmethic = Instance.new("TextButton")
uiscosmethic.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiscosmethic.TextColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.Text = ""
uiscosmethic.Name = "uiscosmethic"
uiscosmethic.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 74)
uiscosmethic.Size = UDim2.new(0, 480, 0, 50)
uiscosmethic.BorderSizePixel = 0
uiscosmethic.TextSize = 14
uiscosmethic.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiscosmethic.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local Opencosm = Instance.new("LocalScript")
Opencosm.Name = "Opencosm"
Opencosm.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("CosmeticShop_UI")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opencosm.Parent = uiscosmethic

local FruitList = Instance.new("Frame")
FruitList.Visible = false
FruitList.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitList.BackgroundTransparency = 0.10000000149011612
FruitList.Position = UDim2.new(0.6612043380737305, 0, 0.005918153095990419, 0)
FruitList.Name = "FruitList"
FruitList.Size = UDim2.new(0, 138, 0, 325)
FruitList.BorderSizePixel = 0
FruitList.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
FruitList.Parent = VISUAL

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitList

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.078125, 0, 0.03384615480899811, 0)
ScrollingFrame.Size = UDim2.new(0, 119, 0, 302)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = FruitList

local TextButton = Instance.new("TextButton")
TextButton.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Text = "INPROGRESS"
TextButton.Position = UDim2.new(0.013640332035720348, -4, 0.008918155916035175, 0)
TextButton.Size = UDim2.new(0, 108, 0, 21)
TextButton.BorderSizePixel = 0
TextButton.TextSize = 14
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextButton

local FadeOverlay = Instance.new("Frame")
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 525, 0, 338)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9675622582435608, 0, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9652284979820251, -15, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9628947973251343, -30, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local list = Instance.new("Frame")
list.BorderColor3 = Color3.fromRGB(0, 0, 0)
list.AnchorPoint = Vector2.new(0.5, 0.5)
list.BackgroundTransparency = 0.10000000149011612
list.Position = UDim2.new(-0.13149966299533844, -3, 0.3686785399913788, 44)
list.Name = "list"
list.Size = UDim2.new(0, 94, 0, 339)
list.BorderSizePixel = 0
list.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
list.Parent = MainUi

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02171163447201252, 0, 1.0387482643127441, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 316, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = list

local list2 = Instance.new("Frame")
list2.Name = "list2"
list2.BackgroundTransparency = 0.4000000059604645
list2.Position = UDim2.new(0.40382033586502075, -40, -0.0014708302915096283, 0)
list2.BorderColor3 = Color3.fromRGB(0, 0, 0)
list2.Size = UDim2.new(0, 96, 0, 339)
list2.BorderSizePixel = 0
list2.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
list2.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = list2

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = list2

local MiscButton = Instance.new("ImageButton")
MiscButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscButton.Name = "MiscButton"
MiscButton.Image = "rbxassetid://112896592265413"
MiscButton.BackgroundTransparency = 1
MiscButton.Position = UDim2.new(0.08878400921821594, 0, 0.44398099184036255, -11)
MiscButton.ImageContent = Content
MiscButton.Size = UDim2.new(0, 23, 0, 24)
MiscButton.BorderSizePixel = 0
MiscButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiscButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MiscButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MISC"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MiscButton

local VisualButton = Instance.new("ImageButton")
VisualButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
VisualButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
VisualButton.Name = "VisualButton"
VisualButton.Position = UDim2.new(0.08878400921821594, 0, 0.6402150988578796, -22)
VisualButton.ImageContent = Content
VisualButton.Size = UDim2.new(0, 23, 0, 24)
VisualButton.BorderSizePixel = 0
VisualButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VisualButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = VisualButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "VISUAL"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = VisualButton

local MainButton = Instance.new("ImageButton")
MainButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainButton.Name = "MainButton"
MainButton.Image = "rbxassetid://71021086762099"
MainButton.BackgroundTransparency = 1
MainButton.Position = UDim2.new(0.08878400921821594, 0, 0.23528461158275604, 8)
MainButton.ImageContent = Content
MainButton.Size = UDim2.new(0, 23, 0, 24)
MainButton.BorderSizePixel = 0
MainButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MAIN"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MainButton

local ConfigButton = Instance.new("ImageButton")
ConfigButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfigButton.Name = "ConfigButton"
ConfigButton.Image = "rbxassetid://126496417047546"
ConfigButton.BackgroundTransparency = 1
ConfigButton.Position = UDim2.new(0.08878400921821594, 0, 0.8193672895431519, -29)
ConfigButton.ImageContent = Content
ConfigButton.Size = UDim2.new(0, 23, 0, 24)
ConfigButton.BorderSizePixel = 0
ConfigButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConfigButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ConfigButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "CONFIG"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ConfigButton

local HomeButton = Instance.new("ImageButton")
HomeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeButton.Name = "HomeButton"
HomeButton.Image = "rbxassetid://138376539454145"
HomeButton.BackgroundTransparency = 1
HomeButton.Position = UDim2.new(0.11108327656984329, 0, 0.029755359515547752, 28)
HomeButton.ImageContent = Content
HomeButton.Size = UDim2.new(0, 23, 0, 24)
HomeButton.BorderSizePixel = 0
HomeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = HomeButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "HOME"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 11)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HomeButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.022113136947155, 0, 0.009630580432713032, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 29, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.1072353720664978, 0, -0.03556927293539047, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 112, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.06865453720092773, 0, -0.024630215018987656, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 128, 0, 379)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.021086135879158974, 0, -0.03689182549715042, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 548, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = MainUi

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0019723933655768633, 0, -0.027118662372231483, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 556, 0, 380)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local Notify2 = Instance.new("Frame")
Notify2.Visible = false
Notify2.Name = "Notify2"
Notify2.Position = UDim2.new(0.6272727251052856, 0, 0.7008165717124939, 0)
Notify2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notify2.Size = UDim2.new(0, 246, 0, 163)
Notify2.BorderSizePixel = 0
Notify2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notify2.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = Notify2

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04271344467997551, 0, -0.04378317669034004, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 267, 0, 181)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.038664285093545914, 0, -0.04430731013417244, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 286, 0, 196)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local FadeOverlay = Instance.new("Frame")
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 246, 0, 156)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "PLEASE SUPPORT US ON DISCORD"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.004065040498971939, 0, 0.042944785207509995, 0)
TextLabel.Size = UDim2.new(0, 246, 0, 122)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
TextLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local CopyButton = Instance.new("TextButton")
CopyButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CopyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.Text = "COPY"
CopyButton.Name = "CopyButton"
CopyButton.Position = UDim2.new(0.03926198184490204, 0, 0.6948744058609009, 0)
CopyButton.Size = UDim2.new(0, 92, 0, 37)
CopyButton.BorderSizePixel = 0
CopyButton.TextSize = 14
CopyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CopyButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04272029548883438, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 103, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CopyButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.03914118930697441, 0, -0.08062262088060379, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CopyScript = Instance.new("LocalScript")
CopyScript.Name = "CopyScript"
CopyScript.Source = "local GuiService = game:GetService("GuiService")
local button = script.Parent

local copy = 'https://discord.gg/2Aa7facYFp' 
button.MouseButton1Click:Connect(function(plr) setclipboard(tostring(copy)) end)"
CopyScript.Parent = CopyButton

local CloseButton = Instance.new("TextButton")
CloseButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Text = "CLOSE"
CloseButton.Name = "CloseButton"
CloseButton.Position = UDim2.new(0.5388433933258057, 0, 0.6948744058609009, 0)
CloseButton.Size = UDim2.new(0, 94, 0, 37)
CloseButton.BorderSizePixel = 0
CloseButton.TextSize = 14
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CloseButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.009531021118164062, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 106, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CloseButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0876850038766861, 0, -0.10284491628408432, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CloseScript = Instance.new("LocalScript")
CloseScript.Name = "CloseScript"
CloseScript.Source = "local closeButton = script.Parent-- The button this script is inside
local notifyFrame = closeButton.Parent  -- Adjust path if needed

closeButton.MouseButton1Click:Connect(function()
	notifyFrame.Visible = false  -- Hide the Notify2 frame
end)
"
CloseScript.Parent = CloseButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.009999999776482582
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://115116817442738"
ImageLabel.Position = UDim2.new(0.022633621469140053, 0, 0.05241403356194496, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 26, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = Notify2

local LoadingUi = Instance.new("Frame")
LoadingUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingUi.AnchorPoint = Vector2.new(0.5, 0.5)
LoadingUi.BackgroundTransparency = 0.10000000149011612
LoadingUi.Position = UDim2.new(0.5087721347808838, 1, 0.40437519550323486, 45)
LoadingUi.Name = "LoadingUi"
LoadingUi.Size = UDim2.new(0, 338, 0, 198)
LoadingUi.BorderSizePixel = 0
LoadingUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
LoadingUi.Parent = TestTrojan

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 0.4000000059604645
ImageLabel.Position = UDim2.new(0.022036707028746605, 0, 0.02090396359562874, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 25, 0, 25)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, 1.037168264389038, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, -0.03353870287537575, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 211)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.013806739822030067, 0, -0.027118664234876633, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 366, 0, 224)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local Progress = Instance.new("Frame")
Progress.BorderColor3 = Color3.fromRGB(0, 0, 0)
Progress.AnchorPoint = Vector2.new(0, 1)
Progress.Name = "Progress"
Progress.BackgroundTransparency = 1
Progress.Position = UDim2.new(0.43768996000289917, 0, 0.5989848375320435, 0)
Progress.SizeConstraint = Enum.SizeConstraint.RelativeYY
Progress.Size = UDim2.new(0.20000000298023224, 0, 0.20000000298023224, 0)
Progress.BorderSizePixel = 0
Progress.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Progress.Parent = LoadingUi

local Frame1 = Instance.new("Frame")
Frame1.Name = "Frame1"
Frame1.BackgroundTransparency = 1
Frame1.ClipsDescendants = true
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.Size = UDim2.new(0.5252525806427002, 0, 1.0000001192092896, 0)
Frame1.BorderSizePixel = 0
Frame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame1.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2, 0, 1, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame1

local UIGradient = Instance.new("UIGradient")
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Frame2 = Instance.new("Frame")
Frame2.ClipsDescendants = true
Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame2.AnchorPoint = Vector2.new(1, 0)
Frame2.BackgroundTransparency = 1
Frame2.Position = UDim2.new(1.050506353378296, -2, 0, 0)
Frame2.Name = "Frame2"
Frame2.Size = UDim2.new(0.5505059361457825, 0, 1.0000001192092896, 0)
Frame2.BorderSizePixel = 0
Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame2.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(-0.9494973421096802, 0, 0, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2.050507068634033, 0, 1.0000001192092896, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame2

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 180
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Percentage = Instance.new("NumberValue")
Percentage.Name = "Percentage"
Percentage.Parent = Progress

local ProgressScript = Instance.new("LocalScript")
ProgressScript.Name = "ProgressScript"
ProgressScript.Source = "-- MissingPartType: "Trans", "Color", "TransAndColor".


game:GetService("RunService").RenderStepped:Connect(function()
	script.Parent.Value = script.Parent.Value + 1
	if script.Parent.Value > 100 then
		script.Parent.Value = 0
	end
	-- Progress.
	local PercentNumber = math.clamp(script.Parent.Value * 3.6,0,360)
	local F1 = script.Parent.Parent.Frame1.ImageLabel
	local F2 = script.Parent.Parent.Frame2.ImageLabel
	F1.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,180,360) or 180 - math.clamp(PercentNumber,0,180)
	F2.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,0,180) or 180 - math.clamp(PercentNumber,180,360)
	F1.ImageColor3 = script.ImageColor.Value
	F2.ImageColor3 = script.ImageColor.Value
	F1.ImageTransparency = script.ImageTrans.Value
	F2.ImageTransparency = script.ImageTrans.Value
	F1.Image = "rbxassetid://" .. script.ImageId.Value
	F2.Image = "rbxassetid://" .. script.ImageId.Value
	if script.MissingPartType.Value == "Color" then
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F1.UIGradient.Transparency = NumberSequence.new(0)
		F2.UIGradient.Transparency = NumberSequence.new(0)
	elseif script.MissingPartType.Value == "Trans" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
		F2.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
	elseif script.MissingPartType.Value == "TransAndColor" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
	else
		script.MissingPartType.Value = "Trans"
		error("Unknown Type. Only 3 available: “Trans”, “Color” and “TransAndColor”, changing to “Trans”.")
	end
end)"
ProgressScript.Parent = Percentage

local MissingPartType = Instance.new("StringValue")
MissingPartType.Value = "TransAndColor"
MissingPartType.Name = "MissingPartType"
MissingPartType.Parent = ProgressScript

local FlipProgress = Instance.new("BoolValue")
FlipProgress.Name = "FlipProgress"
FlipProgress.Parent = ProgressScript

local TransOfMissingPart = Instance.new("NumberValue")
TransOfMissingPart.Value = 0.25
TransOfMissingPart.Name = "TransOfMissingPart"
TransOfMissingPart.Parent = ProgressScript

local ColorOfMissingPart = Instance.new("Color3Value")
ColorOfMissingPart.Value = Color3.fromRGB(255, 255, 255)
ColorOfMissingPart.Name = "ColorOfMissingPart"
ColorOfMissingPart.Parent = ProgressScript

local TransOfPercentPart = Instance.new("NumberValue")
TransOfPercentPart.Name = "TransOfPercentPart"
TransOfPercentPart.Parent = ProgressScript

local ColorOfPercentPart = Instance.new("Color3Value")
ColorOfPercentPart.Value = Color3.fromRGB(154, 143, 123)
ColorOfPercentPart.Name = "ColorOfPercentPart"
ColorOfPercentPart.Parent = ProgressScript

local ImageColor = Instance.new("Color3Value")
ImageColor.Value = Color3.fromRGB(255, 255, 255)
ImageColor.Name = "ImageColor"
ImageColor.Parent = ProgressScript

local ImageTrans = Instance.new("NumberValue")
ImageTrans.Name = "ImageTrans"
ImageTrans.Parent = ProgressScript

local ImageId = Instance.new("StringValue")
ImageId.Value = "3587367081"
ImageId.Name = "ImageId"
ImageId.Parent = ProgressScript

local UICorner = Instance.new("UICorner")
UICorner.Parent = LoadingUi

local LoadsScript = Instance.new("LocalScript")
LoadsScript.Name = "LoadsScript"
LoadsScript.Source = "local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local gui = script.Parent

local loadingUi = gui:WaitForChild("LoadingUi")
local mainUi = gui:WaitForChild("MainUi")
local blur = Lighting:WaitForChild("LoadingBlur")
local Notify = gui:WaitForChild("Notify2")

-- Start: MainUi and Notify hidden, blur on
Notify.Visible = false
mainUi.Visible = false
blur.Enabled = true
blur.Size = 1000

-- Fade out loading elements only
local function fadeToInvisible(frame, duration)
	for _, obj in ipairs(frame:GetDescendants()) do
		if obj:IsA("GuiObject") then
			local goal = {}
			if obj:IsA("TextLabel") or obj:IsA("TextButton") then
				goal.TextTransparency = 1
			end
			if obj:IsA("ImageLabel") then
				goal.ImageTransparency = 1
			end
			goal.BackgroundTransparency = 1
			TweenService:Create(obj, TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal):Play()
		end
	end
end

-- Tween blur out
local function fadeOutBlur()
	local tween = TweenService:Create(
		blur,
		TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{Size = 0}
	)
	tween:Play()
	tween.Completed:Wait()
	blur.Enabled = false
end

-- Wait 5 seconds
task.wait(7)

-- Show MainUi instantly
mainUi.Visible = true

-- If MainUi is visible, show the notify
if mainUi.Visible == true then
	Notify.Visible = true
endlocal TestTrojan = Instance.new("ScreenGui")
TestTrojan.Name = "TestTrojan"
TestTrojan.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TestTrojan.Parent = game.Workspace

local MainUi = Instance.new("Frame")
MainUi.Visible = true
MainUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainUi.AnchorPoint = Vector2.new(0.5, 0.5)
MainUi.BackgroundTransparency = 0.4000000059604645
MainUi.Position = UDim2.new(0.5371969938278198, 1, 0.34883514046669006, 45)
MainUi.Name = "MainUi"
MainUi.Size = UDim2.new(0, 525, 0, 338)
MainUi.BorderSizePixel = 0
MainUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
MainUi.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainUi

local auto_name_script = Instance.new("LocalScript")
auto_name_script.Name = "auto_name_script"
auto_name_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > NAME > TextLabel
local nameFrame = script.Parent:WaitForChild("HOME"):WaitForChild("NAME")
local textLabel = nameFrame:FindFirstChildOfClass("TextLabel")

if textLabel then
	textLabel.Text = player.Name -- or use player.DisplayName if preferred
else
	warn("TextLabel not found inside HOME > NAME.")
end
"
auto_name_script.Parent = MainUi

local auto_head_pic_script = Instance.new("LocalScript")
auto_head_pic_script.Name = "auto_head_pic_script"
auto_head_pic_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > picture > ImageLabel
local imageLabel = script.Parent:WaitForChild("HOME"):WaitForChild("picture"):WaitForChild("ImageLabel")

local userId = player.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420

local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
imageLabel.Image = content
"
auto_head_pic_script.Parent = MainUi

local HOME = Instance.new("Frame")
HOME.Name = "HOME"
HOME.BackgroundTransparency = 1
HOME.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
HOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
HOME.Size = UDim2.new(0, 525, 0, 338)
HOME.BorderSizePixel = 0
HOME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HOME.Parent = MainUi

local WELCOME = Instance.new("Frame")
WELCOME.Name = "WELCOME"
WELCOME.BackgroundTransparency = 0.4000000059604645
WELCOME.Position = UDim2.new(0.2799765169620514, 0, 0.5262502431869507, 0)
WELCOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
WELCOME.Size = UDim2.new(0, 350, 0, 132)
WELCOME.BorderSizePixel = 0
WELCOME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
WELCOME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = WELCOME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "W"
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.03179190680384636, 0, 0.09090909361839294, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextWrapped = true
TextLabel.TextSize = 100
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.11849711090326309, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "L"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.20809248089790344, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "C"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.2976878583431244, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "O"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.39306357502937317, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "M"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.49421966075897217, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5891165733337402, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.677873969078064, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7311283946037292, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7903000116348267, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
TextLabel.Parent = WELCOME

local picture = Instance.new("Frame")
picture.Name = "picture"
picture.BackgroundTransparency = 0.5
picture.Position = UDim2.new(0.7115427255630493, 0, 0.057971030473709106, 0)
picture.BorderColor3 = Color3.fromRGB(0, 0, 0)
picture.Size = UDim2.new(0, 144, 0, 137)
picture.BorderSizePixel = 0
picture.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
picture.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = picture

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = picture

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.0416666679084301, 0, 0.03729248046875, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 133, 0, 126)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = picture

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local NAME = Instance.new("Frame")
NAME.Name = "NAME"
NAME.BackgroundTransparency = 0.4000000059604645
NAME.Position = UDim2.new(0.25330984592437744, 2, 0.17983020842075348, 0)
NAME.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAME.Size = UDim2.new(0, 229, 0, 74)
NAME.BorderSizePixel = 0
NAME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAME

local username = Instance.new("TextLabel")
username.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
username.TextColor3 = Color3.fromRGB(226, 226, 226)
username.BorderColor3 = Color3.fromRGB(0, 0, 0)
username.Text = "NAME"
username.Name = "username"
username.Size = UDim2.new(0, 218, 0, 63)
username.Position = UDim2.new(0.04803493618965149, 0, 0.26077187061309814, 0)
username.BackgroundTransparency = 1
username.TextXAlignment = Enum.TextXAlignment.Left
username.BorderSizePixel = 0
username.TextYAlignment = Enum.TextYAlignment.Top
username.TextSize = 30
username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
username.Parent = NAME

local UICorner = Instance.new("UICorner")
UICorner.Parent = username

local NAMEEXEC = Instance.new("Frame")
NAMEEXEC.Name = "NAMEEXEC"
NAMEEXEC.BackgroundTransparency = 0.4000000059604645
NAMEEXEC.Position = UDim2.new(0.032921794801950455, 2, 0.17030377686023712, 0)
NAMEEXEC.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEEXEC.Size = UDim2.new(0, 90, 0, 253)
NAMEEXEC.BorderSizePixel = 0
NAMEEXEC.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAMEEXEC.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAMEEXEC

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAMEEXEC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "executorname"
TextLabel.Size = UDim2.new(0, 169, 0, 79)
TextLabel.AnchorPoint = Vector2.new(0.5, 1)
TextLabel.Rotation = -90
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Position = UDim2.new(0.11568490415811539, 0, 0.6989752054214478, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 45
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Place in a LocalScript inside a TextLabel
local label = script.Parent
local executor = "Unknown"

local function detectExecutor()
	if getexecutorname then
		local success, result = pcall(getexecutorname)
		if success and typeof(result) == "string" then
			return result
		end
	end

	if identifyexecutor then
		local success, result = pcall(identifyexecutor)
		if success and typeof(result) == "string" then
			return result
		end
	end

	-- Desktop Executable Identifiers
	if syn then return "Synapse X" end
	if KRNL_LOADED then return "KRNL" end
	if is_sirhurt_closure then return "SirHurt" end
	if secure_load then return "Sentinel" end
	if fluxus then return "Fluxus" end
	if isexecutorclosure then return "Fluxus" end
	if WRD_LOADED then return "WeAreDevs (WRD)" end
	if pebc_execute then return "Proxo" end
	if comet then return "Comet" end
	if ShadowInjector then return "Shadow" end
	if LuraphExploit then return "Luraph" end
	if X_LOADED then return "X-Executor" end
	if onewindow then return "OneWindow" end

	-- Mobile Executor Detection
	if isrbxactive then return "Hydrogen (Mobile?)" end
	if ArceusX_Loaded or ARCEUS_LOADED then return "Arceus X" end
	if Codex then return "Codex (Mobile)" end
	if isexecutorclosure and not syn then return "Delta (Mobile)" end
	if OXYGEN_LOADED then return "Oxygen U" end
	if IS_COCO_LOADED then return "CocoHub" end
	if mobility or (typeof(hydrogen) == "function") then return "Hydrogen" end

	return "Unknown"
end

-- Apply result
executor = detectExecutor()
label.Text = executor
"
LocalScript.Parent = TextLabel

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local GROW_A_GARDEN = Instance.new("TextLabel")
GROW_A_GARDEN.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
GROW_A_GARDEN.TextColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.Text = "GROWAGARDEN"
GROW_A_GARDEN.Name = "GROW_A_GARDEN"
GROW_A_GARDEN.Size = UDim2.new(0, 180, 0, 19)
GROW_A_GARDEN.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
GROW_A_GARDEN.BackgroundTransparency = 1
GROW_A_GARDEN.TextXAlignment = Enum.TextXAlignment.Left
GROW_A_GARDEN.BorderSizePixel = 0
GROW_A_GARDEN.BorderColor3 = Color3.fromRGB(0, 0, 0)
GROW_A_GARDEN.TextSize = 14
GROW_A_GARDEN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GROW_A_GARDEN.Parent = HOME

local MAIN = Instance.new("Frame")
MAIN.Visible = false
MAIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
MAIN.BackgroundTransparency = 1
MAIN.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
MAIN.Name = "MAIN"
MAIN.Size = UDim2.new(0, 525, 0, 338)
MAIN.BorderSizePixel = 0
MAIN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MAIN.Parent = MainUi

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.029172129929065704, 0, 0.11594201624393463, 0)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 492, 0, 287)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local ToggleButton2 = Instance.new("CanvasGroup")
ToggleButton2.Name = "ToggleButton2"
ToggleButton2.Position = UDim2.new(0.3991769552230835, 0, 0.2246376872062683, 0)
ToggleButton2.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton2.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton2.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton2

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton2

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton2

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "	local Button = script.Parent
	local CircleFrame = Button.Parent
	local OvalFrame = CircleFrame.Parent
	local ButtonMainFrame = OvalFrame.Parent
	local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue") -- Optional
	local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
	local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

	local OnPosition = "Right" -- or "Right"
	local TweenSpeed = 0.4
	local TweenStyle = Enum.EasingStyle.Sine
	local TweenDirection = Enum.EasingDirection.Out
	local LastTimeClicked = 0
	local ClickDebounceTime = TweenSpeed * 1.05

	-- Speed Config
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local defaultSpeed = 16
	local speedBoost = 100
	local isBoosted = false

	-- UI setup
	if OnPosition == "Right" then
		OnDisplay.Position= UDim2.new(0,0,0,0)
		OffDisplay.Position = UDim2.new(0.5,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0.75,0)
		OffDisplay.AnchorPoint = Vector2.new(0,0)
	elseif OnPosition == "Left" then
		OnDisplay.Position= UDim2.new(0.5,0,0,0) 
		OffDisplay.Position = UDim2.new(0,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0,0)
		OffDisplay.AnchorPoint = Vector2.new(0.75,0)
	end

	-- Main Toggle Logic
	Button.MouseButton1Click:Connect(function()
		if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
			LastTimeClicked = tonumber(os.clock())

			local character = player.Character or player.CharacterAdded:Wait()
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if not humanoid then return end

			if Button.Parent.Position.X.Scale == 0 then
				-- Toggle ON
				isBoosted = true
				humanoid.WalkSpeed = defaultSpeed + speedBoost
				CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			elseif Button.Parent.Position.X.Scale == 0.5 then
				-- Toggle OFF
				isBoosted = false
				humanoid.WalkSpeed = defaultSpeed
				CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			end
		end
	end)

	-- Default UI Position Load
	DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if not humanoid then return end

		if DefaultValue == true then
			if OnPosition == "Right" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed + speedBoost
			isBoosted = true
		else
			if OnPosition == "Left" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed
			isBoosted = false
		end
	end)"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton2

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton2

local ToggleButton3 = Instance.new("CanvasGroup")
ToggleButton3.Name = "ToggleButton3"
ToggleButton3.Position = UDim2.new(0.3991769552230835, 0, 0.3550724685192108, 0)
ToggleButton3.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton3.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton3.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton3

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton3

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton3

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Toggle GUI for Seed Sniper (No Speed Boost or Flying)

local Button = script.Parent
local CircleFrame = Button.Parent
local OvalFrame = CircleFrame.Parent
local ButtonMainFrame = OvalFrame.Parent
local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue")
local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

local OnPosition = "Right"
local TweenSpeed = 0.4
local TweenStyle = Enum.EasingStyle.Sine
local TweenDirection = Enum.EasingDirection.Out
local LastTimeClicked = 0
local ClickDebounceTime = TweenSpeed * 1.05

-- Seed sniping variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BuySeedEvent = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("BuySeedStock")
local seedName = "Carrot" -- Change to your desired seed name
local sniping = false
local snipingThread

-- Sniping control
local function startSniping()
	if sniping then return end
	sniping = true
	snipingThread = coroutine.create(function()
		while sniping do
			BuySeedEvent:FireServer(seedName)
			task.wait(0.5) -- Adjust delay as needed
		end
	end)
	coroutine.resume(snipingThread)
end

local function stopSniping()
	sniping = false
end

-- UI setup
if OnPosition == "Right" then
	OnDisplay.Position= UDim2.new(0,0,0,0)
	OffDisplay.Position = UDim2.new(0.5,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0.75,0)
	OffDisplay.AnchorPoint = Vector2.new(0,0)
elseif OnPosition == "Left" then
	OnDisplay.Position= UDim2.new(0.5,0,0,0) 
	OffDisplay.Position = UDim2.new(0,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0,0)
	OffDisplay.AnchorPoint = Vector2.new(0.75,0)
end

-- Main Toggle Logic
Button.MouseButton1Click:Connect(function()
	if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
		LastTimeClicked = tonumber(os.clock())

		if Button.Parent.Position.X.Scale == 0 then
			-- Toggle ON
			startSniping()
			CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		elseif Button.Parent.Position.X.Scale == 0.5 then
			-- Toggle OFF
			stopSniping()
			CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		end
	end
end)

-- Default UI Position Load
DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
	if DefaultValue == true then
		if OnPosition == "Right" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		startSniping()
	else
		if OnPosition == "Left" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		stopSniping()
	end
end)
"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton3

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton3

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "Visual"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local Section = Instance.new("Frame")
Section.Visible = false
Section.Name = "Section"
Section.Position = UDim2.new(-0.012962937355041504, 5, -0.09445799887180328, -36)
Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Section.Size = UDim2.new(0, 532, 0, 47)
Section.BorderSizePixel = 0
Section.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
Section.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = Section

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.020676691085100174, 0, -0.11626548320055008, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 552, 0, 59)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Section

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local animation = Instance.new("LocalScript")
animation.Name = "animation"
animation.Source = "local TweenService = game:GetService("TweenService")

local mainUI = script.Parent
local fadeOverlay = mainUI:WaitForChild("FadeOverlay")
local listFrame = mainUI:WaitForChild("list")
local list2 = listFrame:WaitForChild("list2") -- Contains tab buttons

-- Tab Frames
local tabs = {
	HOME = mainUI:WaitForChild("HOME"),
	MAIN = mainUI:WaitForChild("MAIN"),
	MISC = mainUI:WaitForChild("MISC"),
	CONFIG = mainUI:WaitForChild("CONFIG"),
	VISUAL = mainUI:WaitForChild("VISUAL"),
}

-- Section now inside MAIN tab
local section = tabs["MAIN"]:WaitForChild("Section")

-- Buttons inside list2
local buttons = {
	HomeButton = "HOME",
	MainButton = "MAIN",
	MiscButton = "MISC",
	ConfigButton = "CONFIG",
	VisualButton = "VISUAL",
}

-- Tween settings
local fadeTime = 0.8
local fadeInfo = TweenInfo.new(fadeTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Start with HOME tab visible
local currentTab = tabs["HOME"]
currentTab.Visible = true
section.Visible = false
section.BackgroundTransparency = 1

-- Switch tab function
local function switchTabs(targetTabName)
	local targetTab = tabs[targetTabName]
	if not targetTab or targetTab == currentTab then return end

	local fadeIn = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 0})
	local fadeOut = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Wait()

	for _, tab in pairs(tabs) do
		tab.Visible = false
	end

	targetTab.Visible = true
	currentTab = targetTab

	-- Section fade logic only for MAIN tab
	if targetTabName == "MAIN" then
		section.Visible = true
		section.BackgroundTransparency = 1
		TweenService:Create(section, fadeInfo, {BackgroundTransparency = 0}):Play()
	else
		if section.Visible then
			local hideTween = TweenService:Create(section, fadeInfo, {BackgroundTransparency = 1})
			hideTween.Completed:Connect(function()
				section.Visible = false
			end)
			hideTween:Play()
		end
	end

	fadeOut:Play()
end

-- Hook buttons to switch function
for buttonName, tabName in pairs(buttons) do
	local button = list2:FindFirstChild(buttonName)
	if button then
		button.MouseButton1Click:Connect(function()
			switchTabs(tabName)
		end)
	end
end
"
animation.Parent = MainUi

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = MainUi

local MISC = Instance.new("Frame")
MISC.Visible = false
MISC.BorderColor3 = Color3.fromRGB(0, 0, 0)
MISC.BackgroundTransparency = 1
MISC.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
MISC.Name = "MISC"
MISC.Size = UDim2.new(0, 525, 0, 338)
MISC.BorderSizePixel = 0
MISC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MISC.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "GAMENAME"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "MISC TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.3786008358001709, 0, 0.4275362193584442, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MISC

local CONFIG = Instance.new("Frame")
CONFIG.Visible = false
CONFIG.BorderColor3 = Color3.fromRGB(0, 0, 0)
CONFIG.BackgroundTransparency = 1
CONFIG.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981486454606056, 0)
CONFIG.Name = "CONFIG"
CONFIG.Size = UDim2.new(0, 525, 0, 328)
CONFIG.BorderSizePixel = 0
CONFIG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CONFIG.Parent = MainUi

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "CONFIG TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.40740740299224854, 0, 0.420073539018631, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local UICorner = Instance.new("UICorner")
UICorner.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "GAMENAME"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local VISUAL = Instance.new("Frame")
VISUAL.Visible = false
VISUAL.BorderColor3 = Color3.fromRGB(0, 0, 0)
VISUAL.BackgroundTransparency = 1
VISUAL.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
VISUAL.Name = "VISUAL"
VISUAL.Size = UDim2.new(0, 525, 0, 338)
VISUAL.BorderSizePixel = 0
VISUAL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VISUAL.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local Visual = Instance.new("TextLabel")
Visual.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
Visual.TextColor3 = Color3.fromRGB(124, 72, 43)
Visual.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Visual.Text = "Visual"
Visual.Name = "Visual"
Visual.Size = UDim2.new(0, 148, 0, 23)
Visual.Position = UDim2.new(0.2272673100233078, -108, 0.0039750500582158566, 38)
Visual.BackgroundTransparency = 1
Visual.TextXAlignment = Enum.TextXAlignment.Left
Visual.BorderSizePixel = 0
Visual.BorderColor3 = Color3.fromRGB(0, 0, 0)
Visual.TextSize = 31
Visual.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Visual.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(154, 143, 123)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.020952381193637848, 0, 0.18657255172729492, 0)
ScrollingFrame.Size = UDim2.new(0, 507, 0, 261)
ScrollingFrame.CanvasPosition = Vector2.new(0, 135)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = VISUAL

local FruitFrame = Instance.new("Frame")
FruitFrame.Name = "FruitFrame"
FruitFrame.BackgroundTransparency = 0.4000000059604645
FruitFrame.Position = UDim2.new(0.009192713536322117, 0, 0.024351272732019424, 11)
FruitFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitFrame.Size = UDim2.new(0, 481, 0, 50)
FruitFrame.BorderSizePixel = 0
FruitFrame.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
FruitFrame.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitFrame

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.025107035413384438, 0, 0.35691630840301514, 0)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = FruitFrame

local TriggerListButton = Instance.new("TextButton")
TriggerListButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TriggerListButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.Text = ""
TriggerListButton.Size = UDim2.new(0, 152, 0, 29)
TriggerListButton.Name = "TriggerListButton"
TriggerListButton.TextXAlignment = Enum.TextXAlignment.Left
TriggerListButton.Position = UDim2.new(0.6593853831291199, 0, 0.19569061696529388, 0)
TriggerListButton.BorderSizePixel = 0
TriggerListButton.TextSize = 14
TriggerListButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerListButton.Parent = FruitFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TriggerListButton

local ChooseFruit = Instance.new("TextLabel")
ChooseFruit.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
ChooseFruit.TextColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.Text = "Choose  Fruit          --"
ChooseFruit.Name = "ChooseFruit"
ChooseFruit.BackgroundTransparency = 1
ChooseFruit.Position = UDim2.new(-0.004564385861158371, 0, 0, 0)
ChooseFruit.Size = UDim2.new(0, 152, 0, 29)
ChooseFruit.BorderSizePixel = 0
ChooseFruit.TextSize = 14
ChooseFruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChooseFruit.Parent = TriggerListButton

local choosefruitlogic = Instance.new("LocalScript")
choosefruitlogic.Name = "choosefruitlogic"
choosefruitlogic.Source = "local TweenService = game:GetService("TweenService")

-- UI structure
local visualTab = script.Parent.Parent.Parent -- From ChooseFruit → TriggerListButton → VISUAL
local triggerButton = script.Parent:WaitForChild("TriggerListButton")
local chooseFruitLabel = triggerButton:WaitForChild("ChooseFruit")
local fruitListFrame = visualTab:WaitForChild("FruitList")

-- Fade settings
local fadeInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Show/hide dropdown with animation
local function toggleFruitList()
	if fruitListFrame.Visible then
		local fadeOut = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 1})
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			fruitListFrame.Visible = false
		end)
	else
		fruitListFrame.BackgroundTransparency = 1
		fruitListFrame.Visible = true
		local fadeIn = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 0.05})
		fadeIn:Play()
	end
end

-- Click visual effect
local function playClickEffect(button)
	local overlay = Instance.new("Frame")
	overlay.Size = UDim2.new(1, 0, 1, 0)
	overlay.Position = UDim2.new(0, 0, 0, 0)
	overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	overlay.BackgroundTransparency = 1
	overlay.BorderSizePixel = 0
	overlay.ZIndex = 5
	overlay.Parent = button

	local fadeIn = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 0.6})
	local fadeOut = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Connect(function()
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			overlay:Destroy()
		end)
	end)
end

-- Connect button that toggles the dropdown
triggerButton.MouseButton1Click:Connect(toggleFruitList)

-- Connect every TextButton inside FruitList
for _, button in pairs(fruitListFrame:GetChildren()) do
	if button:IsA("TextButton") then
		button.MouseButton1Click:Connect(function()
			chooseFruitLabel.Text = button.Text
			playClickEffect(button)
			toggleFruitList()
		end)
	end
end
"
choosefruitlogic.Parent = FruitFrame

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.007999999448657036, 0, 0.14369931817054749, -12)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 481, 0, 50)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.021027032285928726, 0, -0.01098620519042015, 6)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = ScrollingFrame

local UI = Instance.new("TextLabel")
UI.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
UI.TextColor3 = Color3.fromRGB(124, 72, 43)
UI.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
UI.Text = "UI"
UI.Name = "UI"
UI.Size = UDim2.new(0, 180, 0, 19)
UI.Position = UDim2.new(0.021027032285928726, 1, -0.01098620519042015, 156)
UI.BackgroundTransparency = 1
UI.TextXAlignment = Enum.TextXAlignment.Left
UI.BorderSizePixel = 0
UI.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.TextSize = 15
UI.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
UI.Parent = ScrollingFrame

local uiGear = Instance.new("TextButton")
uiGear.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiGear.TextColor3 = Color3.fromRGB(0, 0, 0)
uiGear.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiGear.Text = ""
uiGear.Name = "uiGear"
uiGear.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 16)
uiGear.Size = UDim2.new(0, 480, 0, 50)
uiGear.BorderSizePixel = 0
uiGear.TextSize = 14
uiGear.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiGear.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI GEAR"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local Opengear = Instance.new("LocalScript")
Opengear.Name = "Opengear"
Opengear.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Gear_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opengear.Parent = uiGear

local uiseeds = Instance.new("TextButton")
uiseeds.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiseeds.TextColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.Text = ""
uiseeds.Name = "uiseeds"
uiseeds.Position = UDim2.new(0.010106073692440987, 0, 0.24424421787261963, 16)
uiseeds.Size = UDim2.new(0, 480, 0, 50)
uiseeds.BorderSizePixel = 0
uiseeds.TextSize = 14
uiseeds.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiseeds.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local OpenSeeds = Instance.new("LocalScript")
OpenSeeds.Name = "OpenSeeds"
OpenSeeds.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Seed_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
OpenSeeds.Parent = uiseeds

local uiscosmethic = Instance.new("TextButton")
uiscosmethic.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiscosmethic.TextColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.Text = ""
uiscosmethic.Name = "uiscosmethic"
uiscosmethic.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 74)
uiscosmethic.Size = UDim2.new(0, 480, 0, 50)
uiscosmethic.BorderSizePixel = 0
uiscosmethic.TextSize = 14
uiscosmethic.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiscosmethic.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local Opencosm = Instance.new("LocalScript")
Opencosm.Name = "Opencosm"
Opencosm.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("CosmeticShop_UI")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opencosm.Parent = uiscosmethic

local FruitList = Instance.new("Frame")
FruitList.Visible = false
FruitList.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitList.BackgroundTransparency = 0.10000000149011612
FruitList.Position = UDim2.new(0.6612043380737305, 0, 0.005918153095990419, 0)
FruitList.Name = "FruitList"
FruitList.Size = UDim2.new(0, 138, 0, 325)
FruitList.BorderSizePixel = 0
FruitList.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
FruitList.Parent = VISUAL

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitList

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.078125, 0, 0.03384615480899811, 0)
ScrollingFrame.Size = UDim2.new(0, 119, 0, 302)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = FruitList

local TextButton = Instance.new("TextButton")
TextButton.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Text = "INPROGRESS"
TextButton.Position = UDim2.new(0.013640332035720348, -4, 0.008918155916035175, 0)
TextButton.Size = UDim2.new(0, 108, 0, 21)
TextButton.BorderSizePixel = 0
TextButton.TextSize = 14
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextButton

local FadeOverlay = Instance.new("Frame")
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 525, 0, 338)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9675622582435608, 0, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9652284979820251, -15, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9628947973251343, -30, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local list = Instance.new("Frame")
list.BorderColor3 = Color3.fromRGB(0, 0, 0)
list.AnchorPoint = Vector2.new(0.5, 0.5)
list.BackgroundTransparency = 0.10000000149011612
list.Position = UDim2.new(-0.13149966299533844, -3, 0.3686785399913788, 44)
list.Name = "list"
list.Size = UDim2.new(0, 94, 0, 339)
list.BorderSizePixel = 0
list.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
list.Parent = MainUi

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02171163447201252, 0, 1.0387482643127441, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 316, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = list

local list2 = Instance.new("Frame")
list2.Name = "list2"
list2.BackgroundTransparency = 0.4000000059604645
list2.Position = UDim2.new(0.40382033586502075, -40, -0.0014708302915096283, 0)
list2.BorderColor3 = Color3.fromRGB(0, 0, 0)
list2.Size = UDim2.new(0, 96, 0, 339)
list2.BorderSizePixel = 0
list2.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
list2.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = list2

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = list2

local MiscButton = Instance.new("ImageButton")
MiscButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscButton.Name = "MiscButton"
MiscButton.Image = "rbxassetid://112896592265413"
MiscButton.BackgroundTransparency = 1
MiscButton.Position = UDim2.new(0.08878400921821594, 0, 0.44398099184036255, -11)
MiscButton.ImageContent = Content
MiscButton.Size = UDim2.new(0, 23, 0, 24)
MiscButton.BorderSizePixel = 0
MiscButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiscButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MiscButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MISC"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MiscButton

local VisualButton = Instance.new("ImageButton")
VisualButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
VisualButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
VisualButton.Name = "VisualButton"
VisualButton.Position = UDim2.new(0.08878400921821594, 0, 0.6402150988578796, -22)
VisualButton.ImageContent = Content
VisualButton.Size = UDim2.new(0, 23, 0, 24)
VisualButton.BorderSizePixel = 0
VisualButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VisualButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = VisualButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "VISUAL"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = VisualButton

local MainButton = Instance.new("ImageButton")
MainButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainButton.Name = "MainButton"
MainButton.Image = "rbxassetid://71021086762099"
MainButton.BackgroundTransparency = 1
MainButton.Position = UDim2.new(0.08878400921821594, 0, 0.23528461158275604, 8)
MainButton.ImageContent = Content
MainButton.Size = UDim2.new(0, 23, 0, 24)
MainButton.BorderSizePixel = 0
MainButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MAIN"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MainButton

local ConfigButton = Instance.new("ImageButton")
ConfigButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfigButton.Name = "ConfigButton"
ConfigButton.Image = "rbxassetid://126496417047546"
ConfigButton.BackgroundTransparency = 1
ConfigButton.Position = UDim2.new(0.08878400921821594, 0, 0.8193672895431519, -29)
ConfigButton.ImageContent = Content
ConfigButton.Size = UDim2.new(0, 23, 0, 24)
ConfigButton.BorderSizePixel = 0
ConfigButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConfigButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ConfigButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "CONFIG"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ConfigButton

local HomeButton = Instance.new("ImageButton")
HomeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeButton.Name = "HomeButton"
HomeButton.Image = "rbxassetid://138376539454145"
HomeButton.BackgroundTransparency = 1
HomeButton.Position = UDim2.new(0.11108327656984329, 0, 0.029755359515547752, 28)
HomeButton.ImageContent = Content
HomeButton.Size = UDim2.new(0, 23, 0, 24)
HomeButton.BorderSizePixel = 0
HomeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = HomeButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "HOME"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 11)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HomeButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.022113136947155, 0, 0.009630580432713032, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 29, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.1072353720664978, 0, -0.03556927293539047, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 112, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.06865453720092773, 0, -0.024630215018987656, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 128, 0, 379)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.021086135879158974, 0, -0.03689182549715042, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 548, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = MainUi

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0019723933655768633, 0, -0.027118662372231483, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 556, 0, 380)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local Notify2 = Instance.new("Frame")
Notify2.Visible = false
Notify2.Name = "Notify2"
Notify2.Position = UDim2.new(0.6272727251052856, 0, 0.7008165717124939, 0)
Notify2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notify2.Size = UDim2.new(0, 246, 0, 163)
Notify2.BorderSizePixel = 0
Notify2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notify2.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = Notify2

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04271344467997551, 0, -0.04378317669034004, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 267, 0, 181)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.038664285093545914, 0, -0.04430731013417244, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 286, 0, 196)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local FadeOverlay = Instance.new("Frame")
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 246, 0, 156)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "PLEASE SUPPORT US ON DISCORD"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.004065040498971939, 0, 0.042944785207509995, 0)
TextLabel.Size = UDim2.new(0, 246, 0, 122)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
TextLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local CopyButton = Instance.new("TextButton")
CopyButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CopyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.Text = "COPY"
CopyButton.Name = "CopyButton"
CopyButton.Position = UDim2.new(0.03926198184490204, 0, 0.6948744058609009, 0)
CopyButton.Size = UDim2.new(0, 92, 0, 37)
CopyButton.BorderSizePixel = 0
CopyButton.TextSize = 14
CopyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CopyButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04272029548883438, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 103, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CopyButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.03914118930697441, 0, -0.08062262088060379, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CopyScript = Instance.new("LocalScript")
CopyScript.Name = "CopyScript"
CopyScript.Source = "local GuiService = game:GetService("GuiService")
local button = script.Parent

local copy = 'https://discord.gg/2Aa7facYFp' 
button.MouseButton1Click:Connect(function(plr) setclipboard(tostring(copy)) end)"
CopyScript.Parent = CopyButton

local CloseButton = Instance.new("TextButton")
CloseButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Text = "CLOSE"
CloseButton.Name = "CloseButton"
CloseButton.Position = UDim2.new(0.5388433933258057, 0, 0.6948744058609009, 0)
CloseButton.Size = UDim2.new(0, 94, 0, 37)
CloseButton.BorderSizePixel = 0
CloseButton.TextSize = 14
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CloseButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.009531021118164062, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 106, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CloseButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0876850038766861, 0, -0.10284491628408432, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CloseScript = Instance.new("LocalScript")
CloseScript.Name = "CloseScript"
CloseScript.Source = "local closeButton = script.Parent-- The button this script is inside
local notifyFrame = closeButton.Parent  -- Adjust path if needed

closeButton.MouseButton1Click:Connect(function()
	notifyFrame.Visible = false  -- Hide the Notify2 frame
end)
"
CloseScript.Parent = CloseButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.009999999776482582
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://115116817442738"
ImageLabel.Position = UDim2.new(0.022633621469140053, 0, 0.05241403356194496, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 26, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = Notify2

local LoadingUi = Instance.new("Frame")
LoadingUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingUi.AnchorPoint = Vector2.new(0.5, 0.5)
LoadingUi.BackgroundTransparency = 0.10000000149011612
LoadingUi.Position = UDim2.new(0.5087721347808838, 1, 0.40437519550323486, 45)
LoadingUi.Name = "LoadingUi"
LoadingUi.Size = UDim2.new(0, 338, 0, 198)
LoadingUi.BorderSizePixel = 0
LoadingUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
LoadingUi.Parent = TestTrojan

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 0.4000000059604645
ImageLabel.Position = UDim2.new(0.022036707028746605, 0, 0.02090396359562874, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 25, 0, 25)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, 1.037168264389038, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, -0.03353870287537575, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 211)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.013806739822030067, 0, -0.027118664234876633, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 366, 0, 224)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local Progress = Instance.new("Frame")
Progress.BorderColor3 = Color3.fromRGB(0, 0, 0)
Progress.AnchorPoint = Vector2.new(0, 1)
Progress.Name = "Progress"
Progress.BackgroundTransparency = 1
Progress.Position = UDim2.new(0.43768996000289917, 0, 0.5989848375320435, 0)
Progress.SizeConstraint = Enum.SizeConstraint.RelativeYY
Progress.Size = UDim2.new(0.20000000298023224, 0, 0.20000000298023224, 0)
Progress.BorderSizePixel = 0
Progress.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Progress.Parent = LoadingUi

local Frame1 = Instance.new("Frame")
Frame1.Name = "Frame1"
Frame1.BackgroundTransparency = 1
Frame1.ClipsDescendants = true
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.Size = UDim2.new(0.5252525806427002, 0, 1.0000001192092896, 0)
Frame1.BorderSizePixel = 0
Frame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame1.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2, 0, 1, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame1

local UIGradient = Instance.new("UIGradient")
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Frame2 = Instance.new("Frame")
Frame2.ClipsDescendants = true
Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame2.AnchorPoint = Vector2.new(1, 0)
Frame2.BackgroundTransparency = 1
Frame2.Position = UDim2.new(1.050506353378296, -2, 0, 0)
Frame2.Name = "Frame2"
Frame2.Size = UDim2.new(0.5505059361457825, 0, 1.0000001192092896, 0)
Frame2.BorderSizePixel = 0
Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame2.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(-0.9494973421096802, 0, 0, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2.050507068634033, 0, 1.0000001192092896, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame2

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 180
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Percentage = Instance.new("NumberValue")
Percentage.Name = "Percentage"
Percentage.Parent = Progress

local ProgressScript = Instance.new("LocalScript")
ProgressScript.Name = "ProgressScript"
ProgressScript.Source = "-- MissingPartType: "Trans", "Color", "TransAndColor".


game:GetService("RunService").RenderStepped:Connect(function()
	script.Parent.Value = script.Parent.Value + 1
	if script.Parent.Value > 100 then
		script.Parent.Value = 0
	end
	-- Progress.
	local PercentNumber = math.clamp(script.Parent.Value * 3.6,0,360)
	local F1 = script.Parent.Parent.Frame1.ImageLabel
	local F2 = script.Parent.Parent.Frame2.ImageLabel
	F1.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,180,360) or 180 - math.clamp(PercentNumber,0,180)
	F2.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,0,180) or 180 - math.clamp(PercentNumber,180,360)
	F1.ImageColor3 = script.ImageColor.Value
	F2.ImageColor3 = script.ImageColor.Value
	F1.ImageTransparency = script.ImageTrans.Value
	F2.ImageTransparency = script.ImageTrans.Value
	F1.Image = "rbxassetid://" .. script.ImageId.Value
	F2.Image = "rbxassetid://" .. script.ImageId.Value
	if script.MissingPartType.Value == "Color" then
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F1.UIGradient.Transparency = NumberSequence.new(0)
		F2.UIGradient.Transparency = NumberSequence.new(0)
	elseif script.MissingPartType.Value == "Trans" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
		F2.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
	elseif script.MissingPartType.Value == "TransAndColor" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
	else
		script.MissingPartType.Value = "Trans"
		error("Unknown Type. Only 3 available: “Trans”, “Color” and “TransAndColor”, changing to “Trans”.")
	end
end)"
ProgressScript.Parent = Percentage

local MissingPartType = Instance.new("StringValue")
MissingPartType.Value = "TransAndColor"
MissingPartType.Name = "MissingPartType"
MissingPartType.Parent = ProgressScript

local FlipProgress = Instance.new("BoolValue")
FlipProgress.Name = "FlipProgress"
FlipProgress.Parent = ProgressScript

local TransOfMissingPart = Instance.new("NumberValue")
TransOfMissingPart.Value = 0.25
TransOfMissingPart.Name = "TransOfMissingPart"
TransOfMissingPart.Parent = ProgressScript

local ColorOfMissingPart = Instance.new("Color3Value")
ColorOfMissingPart.Value = Color3.fromRGB(255, 255, 255)
ColorOfMissingPart.Name = "ColorOfMissingPart"
ColorOfMissingPart.Parent = ProgressScript

local TransOfPercentPart = Instance.new("NumberValue")
TransOfPercentPart.Name = "TransOfPercentPart"
TransOfPercentPart.Parent = ProgressScript

local ColorOfPercentPart = Instance.new("Color3Value")
ColorOfPercentPart.Value = Color3.fromRGB(154, 143, 123)
ColorOfPercentPart.Name = "ColorOfPercentPart"
ColorOfPercentPart.Parent = ProgressScript

local ImageColor = Instance.new("Color3Value")
ImageColor.Value = Color3.fromRGB(255, 255, 255)
ImageColor.Name = "ImageColor"
ImageColor.Parent = ProgressScript

local ImageTrans = Instance.new("NumberValue")
ImageTrans.Name = "ImageTrans"
ImageTrans.Parent = ProgressScript

local ImageId = Instance.new("StringValue")
ImageId.Value = "3587367081"
ImageId.Name = "ImageId"
ImageId.Parent = ProgressScript

local UICorner = Instance.new("UICorner")
UICorner.Parent = LoadingUi

local LoadsScript = Instance.new("LocalScript")
LoadsScript.Name = "LoadsScript"
LoadsScript.Source = "local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local gui = script.Parent

local loadingUi = gui:WaitForChild("LoadingUi")
local mainUi = gui:WaitForChild("MainUi")
local blur = Lighting:WaitForChild("LoadingBlur")
local Notify = gui:WaitForChild("Notify2")

-- Start: MainUi and Notify hidden, blur on
Notify.Visible = false
mainUi.Visible = false
blur.Enabled = true
blur.Size = 1000

-- Fade out loading elements only
local function fadeToInvisible(frame, duration)
	for _, obj in ipairs(frame:GetDescendants()) do
		if obj:IsA("GuiObject") then
			local goal = {}
			if obj:IsA("TextLabel") or obj:IsA("TextButton") then
				goal.TextTransparency = 1
			end
			if obj:IsA("ImageLabel") then
				goal.ImageTransparency = 1
			end
			goal.BackgroundTransparency = 1
			TweenService:Create(obj, TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal):Play()
		end
	end
end

-- Tween blur out
local function fadeOutBlur()
	local tween = TweenService:Create(
		blur,
		TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{Size = 0}
	)
	tween:Play()
	tween.Completed:Wait()
	blur.Enabled = false
end

-- Wait 5 seconds
task.wait(7)

-- Show MainUi instantly
mainUi.Visible = true

-- If MainUi is visible, show the notify
if mainUi.Visible == true then
	Notify.Visible = trlocal TestTrojan = Instance.new("ScreenGui")
TestTrojan.Name = "TestTrojan"
TestTrojan.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TestTrojan.Parent = game.Workspace

local MainUi = Instance.new("Frame")
MainUi.Visible = true
MainUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainUi.AnchorPoint = Vector2.new(0.5, 0.5)
MainUi.BackgroundTransparency = 0.4000000059604645
MainUi.Position = UDim2.new(0.5371969938278198, 1, 0.34883514046669006, 45)
MainUi.Name = "MainUi"
MainUi.Size = UDim2.new(0, 525, 0, 338)
MainUi.BorderSizePixel = 0
MainUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
MainUi.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainUi

local auto_name_script = Instance.new("LocalScript")
auto_name_script.Name = "auto_name_script"
auto_name_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > NAME > TextLabel
local nameFrame = script.Parent:WaitForChild("HOME"):WaitForChild("NAME")
local textLabel = nameFrame:FindFirstChildOfClass("TextLabel")

if textLabel then
	textLabel.Text = player.Name -- or use player.DisplayName if preferred
else
	warn("TextLabel not found inside HOME > NAME.")
end
"
auto_name_script.Parent = MainUi

local auto_head_pic_script = Instance.new("LocalScript")
auto_head_pic_script.Name = "auto_head_pic_script"
auto_head_pic_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > picture > ImageLabel
local imageLabel = script.Parent:WaitForChild("HOME"):WaitForChild("picture"):WaitForChild("ImageLabel")

local userId = player.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420

local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
imageLabel.Image = content
"
auto_head_pic_script.Parent = MainUi

local HOME = Instance.new("Frame")
HOME.Name = "HOME"
HOME.BackgroundTransparency = 1
HOME.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
HOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
HOME.Size = UDim2.new(0, 525, 0, 338)
HOME.BorderSizePixel = 0
HOME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HOME.Parent = MainUi

local WELCOME = Instance.new("Frame")
WELCOME.Name = "WELCOME"
WELCOME.BackgroundTransparency = 0.4000000059604645
WELCOME.Position = UDim2.new(0.2799765169620514, 0, 0.5262502431869507, 0)
WELCOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
WELCOME.Size = UDim2.new(0, 350, 0, 132)
WELCOME.BorderSizePixel = 0
WELCOME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
WELCOME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = WELCOME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "W"
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.03179190680384636, 0, 0.09090909361839294, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextWrapped = true
TextLabel.TextSize = 100
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.11849711090326309, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "L"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.20809248089790344, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "C"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.2976878583431244, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "O"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.39306357502937317, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "M"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.49421966075897217, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5891165733337402, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.677873969078064, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7311283946037292, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7903000116348267, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
TextLabel.Parent = WELCOME

local picture = Instance.new("Frame")
picture.Name = "picture"
picture.BackgroundTransparency = 0.5
picture.Position = UDim2.new(0.7115427255630493, 0, 0.057971030473709106, 0)
picture.BorderColor3 = Color3.fromRGB(0, 0, 0)
picture.Size = UDim2.new(0, 144, 0, 137)
picture.BorderSizePixel = 0
picture.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
picture.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = picture

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = picture

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.0416666679084301, 0, 0.03729248046875, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 133, 0, 126)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = picture

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local NAME = Instance.new("Frame")
NAME.Name = "NAME"
NAME.BackgroundTransparency = 0.4000000059604645
NAME.Position = UDim2.new(0.25330984592437744, 2, 0.17983020842075348, 0)
NAME.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAME.Size = UDim2.new(0, 229, 0, 74)
NAME.BorderSizePixel = 0
NAME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAME

local username = Instance.new("TextLabel")
username.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
username.TextColor3 = Color3.fromRGB(226, 226, 226)
username.BorderColor3 = Color3.fromRGB(0, 0, 0)
username.Text = "NAME"
username.Name = "username"
username.Size = UDim2.new(0, 218, 0, 63)
username.Position = UDim2.new(0.04803493618965149, 0, 0.26077187061309814, 0)
username.BackgroundTransparency = 1
username.TextXAlignment = Enum.TextXAlignment.Left
username.BorderSizePixel = 0
username.TextYAlignment = Enum.TextYAlignment.Top
username.TextSize = 30
username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
username.Parent = NAME

local UICorner = Instance.new("UICorner")
UICorner.Parent = username

local NAMEEXEC = Instance.new("Frame")
NAMEEXEC.Name = "NAMEEXEC"
NAMEEXEC.BackgroundTransparency = 0.4000000059604645
NAMEEXEC.Position = UDim2.new(0.032921794801950455, 2, 0.17030377686023712, 0)
NAMEEXEC.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEEXEC.Size = UDim2.new(0, 90, 0, 253)
NAMEEXEC.BorderSizePixel = 0
NAMEEXEC.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAMEEXEC.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAMEEXEC

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAMEEXEC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "executorname"
TextLabel.Size = UDim2.new(0, 169, 0, 79)
TextLabel.AnchorPoint = Vector2.new(0.5, 1)
TextLabel.Rotation = -90
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Position = UDim2.new(0.11568490415811539, 0, 0.6989752054214478, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 45
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Place in a LocalScript inside a TextLabel
local label = script.Parent
local executor = "Unknown"

local function detectExecutor()
	if getexecutorname then
		local success, result = pcall(getexecutorname)
		if success and typeof(result) == "string" then
			return result
		end
	end

	if identifyexecutor then
		local success, result = pcall(identifyexecutor)
		if success and typeof(result) == "string" then
			return result
		end
	end

	-- Desktop Executable Identifiers
	if syn then return "Synapse X" end
	if KRNL_LOADED then return "KRNL" end
	if is_sirhurt_closure then return "SirHurt" end
	if secure_load then return "Sentinel" end
	if fluxus then return "Fluxus" end
	if isexecutorclosure then return "Fluxus" end
	if WRD_LOADED then return "WeAreDevs (WRD)" end
	if pebc_execute then return "Proxo" end
	if comet then return "Comet" end
	if ShadowInjector then return "Shadow" end
	if LuraphExploit then return "Luraph" end
	if X_LOADED then return "X-Executor" end
	if onewindow then return "OneWindow" end

	-- Mobile Executor Detection
	if isrbxactive then return "Hydrogen (Mobile?)" end
	if ArceusX_Loaded or ARCEUS_LOADED then return "Arceus X" end
	if Codex then return "Codex (Mobile)" end
	if isexecutorclosure and not syn then return "Delta (Mobile)" end
	if OXYGEN_LOADED then return "Oxygen U" end
	if IS_COCO_LOADED then return "CocoHub" end
	if mobility or (typeof(hydrogen) == "function") then return "Hydrogen" end

	return "Unknown"
end

-- Apply result
executor = detectExecutor()
label.Text = executor
"
LocalScript.Parent = TextLabel

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local GROW_A_GARDEN = Instance.new("TextLabel")
GROW_A_GARDEN.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
GROW_A_GARDEN.TextColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.Text = "GROWAGARDEN"
GROW_A_GARDEN.Name = "GROW_A_GARDEN"
GROW_A_GARDEN.Size = UDim2.new(0, 180, 0, 19)
GROW_A_GARDEN.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
GROW_A_GARDEN.BackgroundTransparency = 1
GROW_A_GARDEN.TextXAlignment = Enum.TextXAlignment.Left
GROW_A_GARDEN.BorderSizePixel = 0
GROW_A_GARDEN.BorderColor3 = Color3.fromRGB(0, 0, 0)
GROW_A_GARDEN.TextSize = 14
GROW_A_GARDEN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GROW_A_GARDEN.Parent = HOME

local MAIN = Instance.new("Frame")
MAIN.Visible = false
MAIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
MAIN.BackgroundTransparency = 1
MAIN.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
MAIN.Name = "MAIN"
MAIN.Size = UDim2.new(0, 525, 0, 338)
MAIN.BorderSizePixel = 0
MAIN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MAIN.Parent = MainUi

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.029172129929065704, 0, 0.11594201624393463, 0)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 492, 0, 287)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local ToggleButton2 = Instance.new("CanvasGroup")
ToggleButton2.Name = "ToggleButton2"
ToggleButton2.Position = UDim2.new(0.3991769552230835, 0, 0.2246376872062683, 0)
ToggleButton2.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton2.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton2.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton2

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton2

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton2

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "	local Button = script.Parent
	local CircleFrame = Button.Parent
	local OvalFrame = CircleFrame.Parent
	local ButtonMainFrame = OvalFrame.Parent
	local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue") -- Optional
	local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
	local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

	local OnPosition = "Right" -- or "Right"
	local TweenSpeed = 0.4
	local TweenStyle = Enum.EasingStyle.Sine
	local TweenDirection = Enum.EasingDirection.Out
	local LastTimeClicked = 0
	local ClickDebounceTime = TweenSpeed * 1.05

	-- Speed Config
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local defaultSpeed = 16
	local speedBoost = 100
	local isBoosted = false

	-- UI setup
	if OnPosition == "Right" then
		OnDisplay.Position= UDim2.new(0,0,0,0)
		OffDisplay.Position = UDim2.new(0.5,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0.75,0)
		OffDisplay.AnchorPoint = Vector2.new(0,0)
	elseif OnPosition == "Left" then
		OnDisplay.Position= UDim2.new(0.5,0,0,0) 
		OffDisplay.Position = UDim2.new(0,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0,0)
		OffDisplay.AnchorPoint = Vector2.new(0.75,0)
	end

	-- Main Toggle Logic
	Button.MouseButton1Click:Connect(function()
		if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
			LastTimeClicked = tonumber(os.clock())

			local character = player.Character or player.CharacterAdded:Wait()
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if not humanoid then return end

			if Button.Parent.Position.X.Scale == 0 then
				-- Toggle ON
				isBoosted = true
				humanoid.WalkSpeed = defaultSpeed + speedBoost
				CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			elseif Button.Parent.Position.X.Scale == 0.5 then
				-- Toggle OFF
				isBoosted = false
				humanoid.WalkSpeed = defaultSpeed
				CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			end
		end
	end)

	-- Default UI Position Load
	DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if not humanoid then return end

		if DefaultValue == true then
			if OnPosition == "Right" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed + speedBoost
			isBoosted = true
		else
			if OnPosition == "Left" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed
			isBoosted = false
		end
	end)"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton2

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton2

local ToggleButton3 = Instance.new("CanvasGroup")
ToggleButton3.Name = "ToggleButton3"
ToggleButton3.Position = UDim2.new(0.3991769552230835, 0, 0.3550724685192108, 0)
ToggleButton3.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton3.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton3.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton3

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton3

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton3

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Toggle GUI for Seed Sniper (No Speed Boost or Flying)

local Button = script.Parent
local CircleFrame = Button.Parent
local OvalFrame = CircleFrame.Parent
local ButtonMainFrame = OvalFrame.Parent
local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue")
local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

local OnPosition = "Right"
local TweenSpeed = 0.4
local TweenStyle = Enum.EasingStyle.Sine
local TweenDirection = Enum.EasingDirection.Out
local LastTimeClicked = 0
local ClickDebounceTime = TweenSpeed * 1.05

-- Seed sniping variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BuySeedEvent = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("BuySeedStock")
local seedName = "Carrot" -- Change to your desired seed name
local sniping = false
local snipingThread

-- Sniping control
local function startSniping()
	if sniping then return end
	sniping = true
	snipingThread = coroutine.create(function()
		while sniping do
			BuySeedEvent:FireServer(seedName)
			task.wait(0.5) -- Adjust delay as needed
		end
	end)
	coroutine.resume(snipingThread)
end

local function stopSniping()
	sniping = false
end

-- UI setup
if OnPosition == "Right" then
	OnDisplay.Position= UDim2.new(0,0,0,0)
	OffDisplay.Position = UDim2.new(0.5,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0.75,0)
	OffDisplay.AnchorPoint = Vector2.new(0,0)
elseif OnPosition == "Left" then
	OnDisplay.Position= UDim2.new(0.5,0,0,0) 
	OffDisplay.Position = UDim2.new(0,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0,0)
	OffDisplay.AnchorPoint = Vector2.new(0.75,0)
end

-- Main Toggle Logic
Button.MouseButton1Click:Connect(function()
	if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
		LastTimeClicked = tonumber(os.clock())

		if Button.Parent.Position.X.Scale == 0 then
			-- Toggle ON
			startSniping()
			CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		elseif Button.Parent.Position.X.Scale == 0.5 then
			-- Toggle OFF
			stopSniping()
			CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		end
	end
end)

-- Default UI Position Load
DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
	if DefaultValue == true then
		if OnPosition == "Right" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		startSniping()
	else
		if OnPosition == "Left" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		stopSniping()
	end
end)
"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton3

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton3

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "Visual"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local Section = Instance.new("Frame")
Section.Visible = false
Section.Name = "Section"
Section.Position = UDim2.new(-0.012962937355041504, 5, -0.09445799887180328, -36)
Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Section.Size = UDim2.new(0, 532, 0, 47)
Section.BorderSizePixel = 0
Section.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
Section.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = Section

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.020676691085100174, 0, -0.11626548320055008, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 552, 0, 59)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Section

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local animation = Instance.new("LocalScript")
animation.Name = "animation"
animation.Source = "local TweenService = game:GetService("TweenService")

local mainUI = script.Parent
local fadeOverlay = mainUI:WaitForChild("FadeOverlay")
local listFrame = mainUI:WaitForChild("list")
local list2 = listFrame:WaitForChild("list2") -- Contains tab buttons

-- Tab Frames
local tabs = {
	HOME = mainUI:WaitForChild("HOME"),
	MAIN = mainUI:WaitForChild("MAIN"),
	MISC = mainUI:WaitForChild("MISC"),
	CONFIG = mainUI:WaitForChild("CONFIG"),
	VISUAL = mainUI:WaitForChild("VISUAL"),
}

-- Section now inside MAIN tab
local section = tabs["MAIN"]:WaitForChild("Section")

-- Buttons inside list2
local buttons = {
	HomeButton = "HOME",
	MainButton = "MAIN",
	MiscButton = "MISC",
	ConfigButton = "CONFIG",
	VisualButton = "VISUAL",
}

-- Tween settings
local fadeTime = 0.8
local fadeInfo = TweenInfo.new(fadeTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Start with HOME tab visible
local currentTab = tabs["HOME"]
currentTab.Visible = true
section.Visible = false
section.BackgroundTransparency = 1

-- Switch tab function
local function switchTabs(targetTabName)
	local targetTab = tabs[targetTabName]
	if not targetTab or targetTab == currentTab then return end

	local fadeIn = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 0})
	local fadeOut = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Wait()

	for _, tab in pairs(tabs) do
		tab.Visible = false
	end

	targetTab.Visible = true
	currentTab = targetTab

	-- Section fade logic only for MAIN tab
	if targetTabName == "MAIN" then
		section.Visible = true
		section.BackgroundTransparency = 1
		TweenService:Create(section, fadeInfo, {BackgroundTransparency = 0}):Play()
	else
		if section.Visible then
			local hideTween = TweenService:Create(section, fadeInfo, {BackgroundTransparency = 1})
			hideTween.Completed:Connect(function()
				section.Visible = false
			end)
			hideTween:Play()
		end
	end

	fadeOut:Play()
end

-- Hook buttons to switch function
for buttonName, tabName in pairs(buttons) do
	local button = list2:FindFirstChild(buttonName)
	if button then
		button.MouseButton1Click:Connect(function()
			switchTabs(tabName)
		end)
	end
end
"
animation.Parent = MainUi

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = MainUi

local MISC = Instance.new("Frame")
MISC.Visible = false
MISC.BorderColor3 = Color3.fromRGB(0, 0, 0)
MISC.BackgroundTransparency = 1
MISC.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
MISC.Name = "MISC"
MISC.Size = UDim2.new(0, 525, 0, 338)
MISC.BorderSizePixel = 0
MISC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MISC.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "GAMENAME"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "MISC TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.3786008358001709, 0, 0.4275362193584442, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MISC

local CONFIG = Instance.new("Frame")
CONFIG.Visible = false
CONFIG.BorderColor3 = Color3.fromRGB(0, 0, 0)
CONFIG.BackgroundTransparency = 1
CONFIG.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981486454606056, 0)
CONFIG.Name = "CONFIG"
CONFIG.Size = UDim2.new(0, 525, 0, 328)
CONFIG.BorderSizePixel = 0
CONFIG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CONFIG.Parent = MainUi

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "CONFIG TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.40740740299224854, 0, 0.420073539018631, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local UICorner = Instance.new("UICorner")
UICorner.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "GAMENAME"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local VISUAL = Instance.new("Frame")
VISUAL.Visible = false
VISUAL.BorderColor3 = Color3.fromRGB(0, 0, 0)
VISUAL.BackgroundTransparency = 1
VISUAL.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
VISUAL.Name = "VISUAL"
VISUAL.Size = UDim2.new(0, 525, 0, 338)
VISUAL.BorderSizePixel = 0
VISUAL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VISUAL.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local Visual = Instance.new("TextLabel")
Visual.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
Visual.TextColor3 = Color3.fromRGB(124, 72, 43)
Visual.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Visual.Text = "Visual"
Visual.Name = "Visual"
Visual.Size = UDim2.new(0, 148, 0, 23)
Visual.Position = UDim2.new(0.2272673100233078, -108, 0.0039750500582158566, 38)
Visual.BackgroundTransparency = 1
Visual.TextXAlignment = Enum.TextXAlignment.Left
Visual.BorderSizePixel = 0
Visual.BorderColor3 = Color3.fromRGB(0, 0, 0)
Visual.TextSize = 31
Visual.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Visual.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(154, 143, 123)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.020952381193637848, 0, 0.18657255172729492, 0)
ScrollingFrame.Size = UDim2.new(0, 507, 0, 261)
ScrollingFrame.CanvasPosition = Vector2.new(0, 135)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = VISUAL

local FruitFrame = Instance.new("Frame")
FruitFrame.Name = "FruitFrame"
FruitFrame.BackgroundTransparency = 0.4000000059604645
FruitFrame.Position = UDim2.new(0.009192713536322117, 0, 0.024351272732019424, 11)
FruitFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitFrame.Size = UDim2.new(0, 481, 0, 50)
FruitFrame.BorderSizePixel = 0
FruitFrame.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
FruitFrame.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitFrame

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.025107035413384438, 0, 0.35691630840301514, 0)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = FruitFrame

local TriggerListButton = Instance.new("TextButton")
TriggerListButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TriggerListButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.Text = ""
TriggerListButton.Size = UDim2.new(0, 152, 0, 29)
TriggerListButton.Name = "TriggerListButton"
TriggerListButton.TextXAlignment = Enum.TextXAlignment.Left
TriggerListButton.Position = UDim2.new(0.6593853831291199, 0, 0.19569061696529388, 0)
TriggerListButton.BorderSizePixel = 0
TriggerListButton.TextSize = 14
TriggerListButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerListButton.Parent = FruitFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TriggerListButton

local ChooseFruit = Instance.new("TextLabel")
ChooseFruit.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
ChooseFruit.TextColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.Text = "Choose  Fruit          --"
ChooseFruit.Name = "ChooseFruit"
ChooseFruit.BackgroundTransparency = 1
ChooseFruit.Position = UDim2.new(-0.004564385861158371, 0, 0, 0)
ChooseFruit.Size = UDim2.new(0, 152, 0, 29)
ChooseFruit.BorderSizePixel = 0
ChooseFruit.TextSize = 14
ChooseFruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChooseFruit.Parent = TriggerListButton

local choosefruitlogic = Instance.new("LocalScript")
choosefruitlogic.Name = "choosefruitlogic"
choosefruitlogic.Source = "local TweenService = game:GetService("TweenService")

-- UI structure
local visualTab = script.Parent.Parent.Parent -- From ChooseFruit → TriggerListButton → VISUAL
local triggerButton = script.Parent:WaitForChild("TriggerListButton")
local chooseFruitLabel = triggerButton:WaitForChild("ChooseFruit")
local fruitListFrame = visualTab:WaitForChild("FruitList")

-- Fade settings
local fadeInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Show/hide dropdown with animation
local function toggleFruitList()
	if fruitListFrame.Visible then
		local fadeOut = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 1})
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			fruitListFrame.Visible = false
		end)
	else
		fruitListFrame.BackgroundTransparency = 1
		fruitListFrame.Visible = true
		local fadeIn = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 0.05})
		fadeIn:Play()
	end
end

-- Click visual effect
local function playClickEffect(button)
	local overlay = Instance.new("Frame")
	overlay.Size = UDim2.new(1, 0, 1, 0)
	overlay.Position = UDim2.new(0, 0, 0, 0)
	overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	overlay.BackgroundTransparency = 1
	overlay.BorderSizePixel = 0
	overlay.ZIndex = 5
	overlay.Parent = button

	local fadeIn = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 0.6})
	local fadeOut = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Connect(function()
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			overlay:Destroy()
		end)
	end)
end

-- Connect button that toggles the dropdown
triggerButton.MouseButton1Click:Connect(toggleFruitList)

-- Connect every TextButton inside FruitList
for _, button in pairs(fruitListFrame:GetChildren()) do
	if button:IsA("TextButton") then
		button.MouseButton1Click:Connect(function()
			chooseFruitLabel.Text = button.Text
			playClickEffect(button)
			toggleFruitList()
		end)
	end
end
"
choosefruitlogic.Parent = FruitFrame

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.007999999448657036, 0, 0.14369931817054749, -12)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 481, 0, 50)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.021027032285928726, 0, -0.01098620519042015, 6)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = ScrollingFrame

local UI = Instance.new("TextLabel")
UI.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
UI.TextColor3 = Color3.fromRGB(124, 72, 43)
UI.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
UI.Text = "UI"
UI.Name = "UI"
UI.Size = UDim2.new(0, 180, 0, 19)
UI.Position = UDim2.new(0.021027032285928726, 1, -0.01098620519042015, 156)
UI.BackgroundTransparency = 1
UI.TextXAlignment = Enum.TextXAlignment.Left
UI.BorderSizePixel = 0
UI.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.TextSize = 15
UI.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
UI.Parent = ScrollingFrame

local uiGear = Instance.new("TextButton")
uiGear.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiGear.TextColor3 = Color3.fromRGB(0, 0, 0)
uiGear.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiGear.Text = ""
uiGear.Name = "uiGear"
uiGear.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 16)
uiGear.Size = UDim2.new(0, 480, 0, 50)
uiGear.BorderSizePixel = 0
uiGear.TextSize = 14
uiGear.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiGear.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI GEAR"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local Opengear = Instance.new("LocalScript")
Opengear.Name = "Opengear"
Opengear.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Gear_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opengear.Parent = uiGear

local uiseeds = Instance.new("TextButton")
uiseeds.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiseeds.TextColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.Text = ""
uiseeds.Name = "uiseeds"
uiseeds.Position = UDim2.new(0.010106073692440987, 0, 0.24424421787261963, 16)
uiseeds.Size = UDim2.new(0, 480, 0, 50)
uiseeds.BorderSizePixel = 0
uiseeds.TextSize = 14
uiseeds.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiseeds.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local OpenSeeds = Instance.new("LocalScript")
OpenSeeds.Name = "OpenSeeds"
OpenSeeds.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Seed_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
OpenSeeds.Parent = uiseeds

local uiscosmethic = Instance.new("TextButton")
uiscosmethic.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiscosmethic.TextColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.Text = ""
uiscosmethic.Name = "uiscosmethic"
uiscosmethic.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 74)
uiscosmethic.Size = UDim2.new(0, 480, 0, 50)
uiscosmethic.BorderSizePixel = 0
uiscosmethic.TextSize = 14
uiscosmethic.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiscosmethic.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local Opencosm = Instance.new("LocalScript")
Opencosm.Name = "Opencosm"
Opencosm.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("CosmeticShop_UI")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opencosm.Parent = uiscosmethic

local FruitList = Instance.new("Frame")
FruitList.Visible = false
FruitList.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitList.BackgroundTransparency = 0.10000000149011612
FruitList.Position = UDim2.new(0.6612043380737305, 0, 0.005918153095990419, 0)
FruitList.Name = "FruitList"
FruitList.Size = UDim2.new(0, 138, 0, 325)
FruitList.BorderSizePixel = 0
FruitList.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
FruitList.Parent = VISUAL

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitList

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.078125, 0, 0.03384615480899811, 0)
ScrollingFrame.Size = UDim2.new(0, 119, 0, 302)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = FruitList

local TextButton = Instance.new("TextButton")
TextButton.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Text = "INPROGRESS"
TextButton.Position = UDim2.new(0.013640332035720348, -4, 0.008918155916035175, 0)
TextButton.Size = UDim2.new(0, 108, 0, 21)
TextButton.BorderSizePixel = 0
TextButton.TextSize = 14
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextButton

local FadeOverlay = Instance.new("Frame")
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 525, 0, 338)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9675622582435608, 0, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9652284979820251, -15, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9628947973251343, -30, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local list = Instance.new("Frame")
list.BorderColor3 = Color3.fromRGB(0, 0, 0)
list.AnchorPoint = Vector2.new(0.5, 0.5)
list.BackgroundTransparency = 0.10000000149011612
list.Position = UDim2.new(-0.13149966299533844, -3, 0.3686785399913788, 44)
list.Name = "list"
list.Size = UDim2.new(0, 94, 0, 339)
list.BorderSizePixel = 0
list.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
list.Parent = MainUi

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02171163447201252, 0, 1.0387482643127441, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 316, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = list

local list2 = Instance.new("Frame")
list2.Name = "list2"
list2.BackgroundTransparency = 0.4000000059604645
list2.Position = UDim2.new(0.40382033586502075, -40, -0.0014708302915096283, 0)
list2.BorderColor3 = Color3.fromRGB(0, 0, 0)
list2.Size = UDim2.new(0, 96, 0, 339)
list2.BorderSizePixel = 0
list2.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
list2.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = list2

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = list2

local MiscButton = Instance.new("ImageButton")
MiscButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscButton.Name = "MiscButton"
MiscButton.Image = "rbxassetid://112896592265413"
MiscButton.BackgroundTransparency = 1
MiscButton.Position = UDim2.new(0.08878400921821594, 0, 0.44398099184036255, -11)
MiscButton.ImageContent = Content
MiscButton.Size = UDim2.new(0, 23, 0, 24)
MiscButton.BorderSizePixel = 0
MiscButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiscButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MiscButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MISC"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MiscButton

local VisualButton = Instance.new("ImageButton")
VisualButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
VisualButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
VisualButton.Name = "VisualButton"
VisualButton.Position = UDim2.new(0.08878400921821594, 0, 0.6402150988578796, -22)
VisualButton.ImageContent = Content
VisualButton.Size = UDim2.new(0, 23, 0, 24)
VisualButton.BorderSizePixel = 0
VisualButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VisualButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = VisualButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "VISUAL"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = VisualButton

local MainButton = Instance.new("ImageButton")
MainButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainButton.Name = "MainButton"
MainButton.Image = "rbxassetid://71021086762099"
MainButton.BackgroundTransparency = 1
MainButton.Position = UDim2.new(0.08878400921821594, 0, 0.23528461158275604, 8)
MainButton.ImageContent = Content
MainButton.Size = UDim2.new(0, 23, 0, 24)
MainButton.BorderSizePixel = 0
MainButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MAIN"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MainButton

local ConfigButton = Instance.new("ImageButton")
ConfigButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfigButton.Name = "ConfigButton"
ConfigButton.Image = "rbxassetid://126496417047546"
ConfigButton.BackgroundTransparency = 1
ConfigButton.Position = UDim2.new(0.08878400921821594, 0, 0.8193672895431519, -29)
ConfigButton.ImageContent = Content
ConfigButton.Size = UDim2.new(0, 23, 0, 24)
ConfigButton.BorderSizePixel = 0
ConfigButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConfigButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ConfigButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "CONFIG"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ConfigButton

local HomeButton = Instance.new("ImageButton")
HomeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeButton.Name = "HomeButton"
HomeButton.Image = "rbxassetid://138376539454145"
HomeButton.BackgroundTransparency = 1
HomeButton.Position = UDim2.new(0.11108327656984329, 0, 0.029755359515547752, 28)
HomeButton.ImageContent = Content
HomeButton.Size = UDim2.new(0, 23, 0, 24)
HomeButton.BorderSizePixel = 0
HomeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = HomeButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "HOME"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 11)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HomeButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.022113136947155, 0, 0.009630580432713032, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 29, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.1072353720664978, 0, -0.03556927293539047, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 112, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.06865453720092773, 0, -0.024630215018987656, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 128, 0, 379)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.021086135879158974, 0, -0.03689182549715042, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 548, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = MainUi

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0019723933655768633, 0, -0.027118662372231483, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 556, 0, 380)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local Notify2 = Instance.new("Frame")
Notify2.Visible = false
Notify2.Name = "Notify2"
Notify2.Position = UDim2.new(0.6272727251052856, 0, 0.7008165717124939, 0)
Notify2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notify2.Size = UDim2.new(0, 246, 0, 163)
Notify2.BorderSizePixel = 0
Notify2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notify2.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = Notify2

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04271344467997551, 0, -0.04378317669034004, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 267, 0, 181)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.038664285093545914, 0, -0.04430731013417244, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 286, 0, 196)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local FadeOverlay = Instance.new("Frame")
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 246, 0, 156)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "PLEASE SUPPORT US ON DISCORD"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.004065040498971939, 0, 0.042944785207509995, 0)
TextLabel.Size = UDim2.new(0, 246, 0, 122)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
TextLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local CopyButton = Instance.new("TextButton")
CopyButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CopyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.Text = "COPY"
CopyButton.Name = "CopyButton"
CopyButton.Position = UDim2.new(0.03926198184490204, 0, 0.6948744058609009, 0)
CopyButton.Size = UDim2.new(0, 92, 0, 37)
CopyButton.BorderSizePixel = 0
CopyButton.TextSize = 14
CopyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CopyButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04272029548883438, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 103, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CopyButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.03914118930697441, 0, -0.08062262088060379, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CopyScript = Instance.new("LocalScript")
CopyScript.Name = "CopyScript"
CopyScript.Source = "local GuiService = game:GetService("GuiService")
local button = script.Parent

local copy = 'https://discord.gg/2Aa7facYFp' 
button.MouseButton1Click:Connect(function(plr) setclipboard(tostring(copy)) end)"
CopyScript.Parent = CopyButton

local CloseButton = Instance.new("TextButton")
CloseButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Text = "CLOSE"
CloseButton.Name = "CloseButton"
CloseButton.Position = UDim2.new(0.5388433933258057, 0, 0.6948744058609009, 0)
CloseButton.Size = UDim2.new(0, 94, 0, 37)
CloseButton.BorderSizePixel = 0
CloseButton.TextSize = 14
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CloseButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.009531021118164062, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 106, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CloseButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0876850038766861, 0, -0.10284491628408432, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CloseScript = Instance.new("LocalScript")
CloseScript.Name = "CloseScript"
CloseScript.Source = "local closeButton = script.Parent-- The button this script is inside
local notifyFrame = closeButton.Parent  -- Adjust path if needed

closeButton.MouseButton1Click:Connect(function()
	notifyFrame.Visible = false  -- Hide the Notify2 frame
end)
"
CloseScript.Parent = CloseButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.009999999776482582
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://115116817442738"
ImageLabel.Position = UDim2.new(0.022633621469140053, 0, 0.05241403356194496, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 26, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = Notify2

local LoadingUi = Instance.new("Frame")
LoadingUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingUi.AnchorPoint = Vector2.new(0.5, 0.5)
LoadingUi.BackgroundTransparency = 0.10000000149011612
LoadingUi.Position = UDim2.new(0.5087721347808838, 1, 0.40437519550323486, 45)
LoadingUi.Name = "LoadingUi"
LoadingUi.Size = UDim2.new(0, 338, 0, 198)
LoadingUi.BorderSizePixel = 0
LoadingUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
LoadingUi.Parent = TestTrojan

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 0.4000000059604645
ImageLabel.Position = UDim2.new(0.022036707028746605, 0, 0.02090396359562874, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 25, 0, 25)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, 1.037168264389038, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, -0.03353870287537575, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 211)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.013806739822030067, 0, -0.027118664234876633, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 366, 0, 224)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local Progress = Instance.new("Frame")
Progress.BorderColor3 = Color3.fromRGB(0, 0, 0)
Progress.AnchorPoint = Vector2.new(0, 1)
Progress.Name = "Progress"
Progress.BackgroundTransparency = 1
Progress.Position = UDim2.new(0.43768996000289917, 0, 0.5989848375320435, 0)
Progress.SizeConstraint = Enum.SizeConstraint.RelativeYY
Progress.Size = UDim2.new(0.20000000298023224, 0, 0.20000000298023224, 0)
Progress.BorderSizePixel = 0
Progress.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Progress.Parent = LoadingUi

local Frame1 = Instance.new("Frame")
Frame1.Name = "Frame1"
Frame1.BackgroundTransparency = 1
Frame1.ClipsDescendants = true
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.Size = UDim2.new(0.5252525806427002, 0, 1.0000001192092896, 0)
Frame1.BorderSizePixel = 0
Frame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame1.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2, 0, 1, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame1

local UIGradient = Instance.new("UIGradient")
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Frame2 = Instance.new("Frame")
Frame2.ClipsDescendants = true
Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame2.AnchorPoint = Vector2.new(1, 0)
Frame2.BackgroundTransparency = 1
Frame2.Position = UDim2.new(1.050506353378296, -2, 0, 0)
Frame2.Name = "Frame2"
Frame2.Size = UDim2.new(0.5505059361457825, 0, 1.0000001192092896, 0)
Frame2.BorderSizePixel = 0
Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame2.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(-0.9494973421096802, 0, 0, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2.050507068634033, 0, 1.0000001192092896, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame2

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 180
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Percentage = Instance.new("NumberValue")
Percentage.Name = "Percentage"
Percentage.Parent = Progress

local ProgressScript = Instance.new("LocalScript")
ProgressScript.Name = "ProgressScript"
ProgressScript.Source = "-- MissingPartType: "Trans", "Color", "TransAndColor".


game:GetService("RunService").RenderStepped:Connect(function()
	script.Parent.Value = script.Parent.Value + 1
	if script.Parent.Value > 100 then
		script.Parent.Value = 0
	end
	-- Progress.
	local PercentNumber = math.clamp(script.Parent.Value * 3.6,0,360)
	local F1 = script.Parent.Parent.Frame1.ImageLabel
	local F2 = script.Parent.Parent.Frame2.ImageLabel
	F1.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,180,360) or 180 - math.clamp(PercentNumber,0,180)
	F2.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,0,180) or 180 - math.clamp(PercentNumber,180,360)
	F1.ImageColor3 = script.ImageColor.Value
	F2.ImageColor3 = script.ImageColor.Value
	F1.ImageTransparency = script.ImageTrans.Value
	F2.ImageTransparency = script.ImageTrans.Value
	F1.Image = "rbxassetid://" .. script.ImageId.Value
	F2.Image = "rbxassetid://" .. script.ImageId.Value
	if script.MissingPartType.Value == "Color" then
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F1.UIGradient.Transparency = NumberSequence.new(0)
		F2.UIGradient.Transparency = NumberSequence.new(0)
	elseif script.MissingPartType.Value == "Trans" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
		F2.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
	elseif script.MissingPartType.Value == "TransAndColor" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
	else
		script.MissingPartType.Value = "Trans"
		error("Unknown Type. Only 3 available: “Trans”, “Color” and “TransAndColor”, changing to “Trans”.")
	end
end)"
ProgressScript.Parent = Percentage

local MissingPartType = Instance.new("StringValue")
MissingPartType.Value = "TransAndColor"
MissingPartType.Name = "MissingPartType"
MissingPartType.Parent = ProgressScript

local FlipProgress = Instance.new("BoolValue")
FlipProgress.Name = "FlipProgress"
FlipProgress.Parent = ProgressScript

local TransOfMissingPart = Instance.new("NumberValue")
TransOfMissingPart.Value = 0.25
TransOfMissingPart.Name = "TransOfMissingPart"
TransOfMissingPart.Parent = ProgressScript

local ColorOfMissingPart = Instance.new("Color3Value")
ColorOfMissingPart.Value = Color3.fromRGB(255, 255, 255)
ColorOfMissingPart.Name = "ColorOfMissingPart"
ColorOfMissingPart.Parent = ProgressScript

local TransOfPercentPart = Instance.new("NumberValue")
TransOfPercentPart.Name = "TransOfPercentPart"
TransOfPercentPart.Parent = ProgressScript

local ColorOfPercentPart = Instance.new("Color3Value")
ColorOfPercentPart.Value = Color3.fromRGB(154, 143, 123)
ColorOfPercentPart.Name = "ColorOfPercentPart"
ColorOfPercentPart.Parent = ProgressScript

local ImageColor = Instance.new("Color3Value")
ImageColor.Value = Color3.fromRGB(255, 255, 255)
ImageColor.Name = "ImageColor"
ImageColor.Parent = ProgressScript

local ImageTrans = Instance.new("NumberValue")
ImageTrans.Name = "ImageTrans"
ImageTrans.Parent = ProgressScript

local ImageId = Instance.new("StringValue")
ImageId.Value = "3587367081"
ImageId.Name = "ImageId"
ImageId.Parent = ProgressScript

local UICorner = Instance.new("UICorner")
UICorner.Parent = LoadingUi

local LoadsScript = Instance.new("LocalScript")
LoadsScript.Name = "LoadsScript"
LoadsScript.Source = "local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local gui = script.Parent

local loadingUi = gui:WaitForChild("LoadingUi")
local mainUi = gui:WaitForChild("MainUi")
local blur = Lighting:WaitForChild("LoadingBlur")
local Notify = gui:WaitForChild("Notify2")

-- Start: MainUi and Notify hidden, blur on
Notify.Visible = false
mainUi.Visible = false
blur.Enabled = true
blur.Size = 1000

-- Fade out loading elements only
local function fadeToInvisible(frame, duration)
	for _, obj in ipairs(frame:GetDescendants()) do
		if obj:IsA("GuiObject") then
			local goal = {}
			if obj:IsA("TextLabel") or obj:IsA("TextButton") then
				goal.TextTransparency = 1
			end
			if obj:IsA("ImageLabel") then
				goal.ImageTransparency = 1
			end
			goal.BackgroundTransparency = 1
			TweenService:Create(obj, TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal):Play()
		end
	end
end

-- Tween blur out
local function fadeOutBlur()
	local tween = TweenService:Create(
		blur,
		TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{Size = 0}
	)
	tween:Play()
	tween.Completed:Wait()
	blur.Enabled = false
end

-- Wait 5 seconds
task.wait(7)

-- Show MainUi instantly
mainUi.Visible = true

-- If MainUi is visible, show the notify
if mainUi.Visible == true then
	Notify.Visible = true
endlocal TestTrojan = Instance.new("ScreenGui")
TestTrojan.Name = "TestTrojan"
TestTrojan.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TestTrojan.Parent = game.Workspace

local MainUi = Instance.new("Frame")
MainUi.Visible = true
MainUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainUi.AnchorPoint = Vector2.new(0.5, 0.5)
MainUi.BackgroundTransparency = 0.4000000059604645
MainUi.Position = UDim2.new(0.5371969938278198, 1, 0.34883514046669006, 45)
MainUi.Name = "MainUi"
MainUi.Size = UDim2.new(0, 525, 0, 338)
MainUi.BorderSizePixel = 0
MainUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
MainUi.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainUi

local auto_name_script = Instance.new("LocalScript")
auto_name_script.Name = "auto_name_script"
auto_name_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > NAME > TextLabel
local nameFrame = script.Parent:WaitForChild("HOME"):WaitForChild("NAME")
local textLabel = nameFrame:FindFirstChildOfClass("TextLabel")

if textLabel then
	textLabel.Text = player.Name -- or use player.DisplayName if preferred
else
	warn("TextLabel not found inside HOME > NAME.")
end
"
auto_name_script.Parent = MainUi

local auto_head_pic_script = Instance.new("LocalScript")
auto_head_pic_script.Name = "auto_head_pic_script"
auto_head_pic_script.Source = "local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Updated path: MainUI > HOME > picture > ImageLabel
local imageLabel = script.Parent:WaitForChild("HOME"):WaitForChild("picture"):WaitForChild("ImageLabel")

local userId = player.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420

local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
imageLabel.Image = content
"
auto_head_pic_script.Parent = MainUi

local HOME = Instance.new("Frame")
HOME.Name = "HOME"
HOME.BackgroundTransparency = 1
HOME.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
HOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
HOME.Size = UDim2.new(0, 525, 0, 338)
HOME.BorderSizePixel = 0
HOME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HOME.Parent = MainUi

local WELCOME = Instance.new("Frame")
WELCOME.Name = "WELCOME"
WELCOME.BackgroundTransparency = 0.4000000059604645
WELCOME.Position = UDim2.new(0.2799765169620514, 0, 0.5262502431869507, 0)
WELCOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
WELCOME.Size = UDim2.new(0, 350, 0, 132)
WELCOME.BorderSizePixel = 0
WELCOME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
WELCOME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = WELCOME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "W"
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.03179190680384636, 0, 0.09090909361839294, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextWrapped = true
TextLabel.TextSize = 100
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.11849711090326309, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "L"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.20809248089790344, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "C"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.2976878583431244, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "O"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.39306357502937317, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "M"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.49421966075897217, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "E"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5891165733337402, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.677873969078064, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7311283946037292, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = WELCOME

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "."
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.7903000116348267, 0, 0.1818181872367859, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 90)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 50
TextLabel.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
TextLabel.Parent = WELCOME

local picture = Instance.new("Frame")
picture.Name = "picture"
picture.BackgroundTransparency = 0.5
picture.Position = UDim2.new(0.7115427255630493, 0, 0.057971030473709106, 0)
picture.BorderColor3 = Color3.fromRGB(0, 0, 0)
picture.Size = UDim2.new(0, 144, 0, 137)
picture.BorderSizePixel = 0
picture.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
picture.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = picture

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = picture

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.0416666679084301, 0, 0.03729248046875, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 133, 0, 126)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = picture

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local NAME = Instance.new("Frame")
NAME.Name = "NAME"
NAME.BackgroundTransparency = 0.4000000059604645
NAME.Position = UDim2.new(0.25330984592437744, 2, 0.17983020842075348, 0)
NAME.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAME.Size = UDim2.new(0, 229, 0, 74)
NAME.BorderSizePixel = 0
NAME.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAME.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAME

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAME

local username = Instance.new("TextLabel")
username.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
username.TextColor3 = Color3.fromRGB(226, 226, 226)
username.BorderColor3 = Color3.fromRGB(0, 0, 0)
username.Text = "NAME"
username.Name = "username"
username.Size = UDim2.new(0, 218, 0, 63)
username.Position = UDim2.new(0.04803493618965149, 0, 0.26077187061309814, 0)
username.BackgroundTransparency = 1
username.TextXAlignment = Enum.TextXAlignment.Left
username.BorderSizePixel = 0
username.TextYAlignment = Enum.TextYAlignment.Top
username.TextSize = 30
username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
username.Parent = NAME

local UICorner = Instance.new("UICorner")
UICorner.Parent = username

local NAMEEXEC = Instance.new("Frame")
NAMEEXEC.Name = "NAMEEXEC"
NAMEEXEC.BackgroundTransparency = 0.4000000059604645
NAMEEXEC.Position = UDim2.new(0.032921794801950455, 2, 0.17030377686023712, 0)
NAMEEXEC.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEEXEC.Size = UDim2.new(0, 90, 0, 253)
NAMEEXEC.BorderSizePixel = 0
NAMEEXEC.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
NAMEEXEC.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = NAMEEXEC

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = NAMEEXEC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "executorname"
TextLabel.Size = UDim2.new(0, 169, 0, 79)
TextLabel.AnchorPoint = Vector2.new(0.5, 1)
TextLabel.Rotation = -90
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Position = UDim2.new(0.11568490415811539, 0, 0.6989752054214478, 0)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 45
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HOME

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Place in a LocalScript inside a TextLabel
local label = script.Parent
local executor = "Unknown"

local function detectExecutor()
	if getexecutorname then
		local success, result = pcall(getexecutorname)
		if success and typeof(result) == "string" then
			return result
		end
	end

	if identifyexecutor then
		local success, result = pcall(identifyexecutor)
		if success and typeof(result) == "string" then
			return result
		end
	end

	-- Desktop Executable Identifiers
	if syn then return "Synapse X" end
	if KRNL_LOADED then return "KRNL" end
	if is_sirhurt_closure then return "SirHurt" end
	if secure_load then return "Sentinel" end
	if fluxus then return "Fluxus" end
	if isexecutorclosure then return "Fluxus" end
	if WRD_LOADED then return "WeAreDevs (WRD)" end
	if pebc_execute then return "Proxo" end
	if comet then return "Comet" end
	if ShadowInjector then return "Shadow" end
	if LuraphExploit then return "Luraph" end
	if X_LOADED then return "X-Executor" end
	if onewindow then return "OneWindow" end

	-- Mobile Executor Detection
	if isrbxactive then return "Hydrogen (Mobile?)" end
	if ArceusX_Loaded or ARCEUS_LOADED then return "Arceus X" end
	if Codex then return "Codex (Mobile)" end
	if isexecutorclosure and not syn then return "Delta (Mobile)" end
	if OXYGEN_LOADED then return "Oxygen U" end
	if IS_COCO_LOADED then return "CocoHub" end
	if mobility or (typeof(hydrogen) == "function") then return "Hydrogen" end

	return "Unknown"
end

-- Apply result
executor = detectExecutor()
label.Text = executor
"
LocalScript.Parent = TextLabel

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = HOME

local GROW_A_GARDEN = Instance.new("TextLabel")
GROW_A_GARDEN.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
GROW_A_GARDEN.TextColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
GROW_A_GARDEN.Text = "GROWAGARDEN"
GROW_A_GARDEN.Name = "GROW_A_GARDEN"
GROW_A_GARDEN.Size = UDim2.new(0, 180, 0, 19)
GROW_A_GARDEN.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
GROW_A_GARDEN.BackgroundTransparency = 1
GROW_A_GARDEN.TextXAlignment = Enum.TextXAlignment.Left
GROW_A_GARDEN.BorderSizePixel = 0
GROW_A_GARDEN.BorderColor3 = Color3.fromRGB(0, 0, 0)
GROW_A_GARDEN.TextSize = 14
GROW_A_GARDEN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GROW_A_GARDEN.Parent = HOME

local MAIN = Instance.new("Frame")
MAIN.Visible = false
MAIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
MAIN.BackgroundTransparency = 1
MAIN.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
MAIN.Name = "MAIN"
MAIN.Size = UDim2.new(0, 525, 0, 338)
MAIN.BorderSizePixel = 0
MAIN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MAIN.Parent = MainUi

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.029172129929065704, 0, 0.11594201624393463, 0)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 492, 0, 287)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local ToggleButton2 = Instance.new("CanvasGroup")
ToggleButton2.Name = "ToggleButton2"
ToggleButton2.Position = UDim2.new(0.3991769552230835, 0, 0.2246376872062683, 0)
ToggleButton2.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton2.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton2.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton2

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton2

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton2

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "	local Button = script.Parent
	local CircleFrame = Button.Parent
	local OvalFrame = CircleFrame.Parent
	local ButtonMainFrame = OvalFrame.Parent
	local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue") -- Optional
	local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
	local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

	local OnPosition = "Right" -- or "Right"
	local TweenSpeed = 0.4
	local TweenStyle = Enum.EasingStyle.Sine
	local TweenDirection = Enum.EasingDirection.Out
	local LastTimeClicked = 0
	local ClickDebounceTime = TweenSpeed * 1.05

	-- Speed Config
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local defaultSpeed = 16
	local speedBoost = 100
	local isBoosted = false

	-- UI setup
	if OnPosition == "Right" then
		OnDisplay.Position= UDim2.new(0,0,0,0)
		OffDisplay.Position = UDim2.new(0.5,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0.75,0)
		OffDisplay.AnchorPoint = Vector2.new(0,0)
	elseif OnPosition == "Left" then
		OnDisplay.Position= UDim2.new(0.5,0,0,0) 
		OffDisplay.Position = UDim2.new(0,0,0,0)
		OnDisplay.AnchorPoint = Vector2.new(0,0)
		OffDisplay.AnchorPoint = Vector2.new(0.75,0)
	end

	-- Main Toggle Logic
	Button.MouseButton1Click:Connect(function()
		if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
			LastTimeClicked = tonumber(os.clock())

			local character = player.Character or player.CharacterAdded:Wait()
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if not humanoid then return end

			if Button.Parent.Position.X.Scale == 0 then
				-- Toggle ON
				isBoosted = true
				humanoid.WalkSpeed = defaultSpeed + speedBoost
				CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			elseif Button.Parent.Position.X.Scale == 0.5 then
				-- Toggle OFF
				isBoosted = false
				humanoid.WalkSpeed = defaultSpeed
				CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
			end
		end
	end)

	-- Default UI Position Load
	DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if not humanoid then return end

		if DefaultValue == true then
			if OnPosition == "Right" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed + speedBoost
			isBoosted = true
		else
			if OnPosition == "Left" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed
			isBoosted = false
		end
	end)"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton2

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton2

local ToggleButton3 = Instance.new("CanvasGroup")
ToggleButton3.Name = "ToggleButton3"
ToggleButton3.Position = UDim2.new(0.3991769552230835, 0, 0.3550724685192108, 0)
ToggleButton3.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToggleButton3.Size = UDim2.new(0.06378601491451263, 0, 0.12045111507177353, 0)
ToggleButton3.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton3

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 2
UIAspectRatioConstraint.Parent = ToggleButton3

local OvalFrame = Instance.new("Frame")
OvalFrame.Name = "OvalFrame"
OvalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
OvalFrame.Size = UDim2.new(1, 0, 1, 0)
OvalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OvalFrame.Parent = ToggleButton3

local Circle = Instance.new("Frame")
Circle.Name = "Circle"
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Size = UDim2.new(0.5, 0, 1, 0)
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Parent = OvalFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Circle

local OffDisplay = Instance.new("Frame")
OffDisplay.Name = "OffDisplay"
OffDisplay.Position = UDim2.new(0.5, 0, 0, 0)
OffDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OffDisplay.Size = UDim2.new(2, 0, 1, 0)
OffDisplay.BackgroundColor3 = Color3.fromRGB(162, 165, 170)
OffDisplay.Parent = Circle

local OnDisplay = Instance.new("Frame")
OnDisplay.AnchorPoint = Vector2.new(0.75, 0)
OnDisplay.Name = "OnDisplay"
OnDisplay.BorderColor3 = Color3.fromRGB(27, 42, 53)
OnDisplay.Size = UDim2.new(2, 0, 1, 0)
OnDisplay.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
OnDisplay.Parent = Circle

local ClickDetector = Instance.new("TextButton")
ClickDetector.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickDetector.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClickDetector.Text = ""
ClickDetector.Name = "ClickDetector"
ClickDetector.Size = UDim2.new(1, 0, 1, 0)
ClickDetector.TextSize = 14
ClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickDetector.Parent = Circle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ClickDetector

local LocalScript = Instance.new("LocalScript")
LocalScript.Source = "-- Toggle GUI for Seed Sniper (No Speed Boost or Flying)

local Button = script.Parent
local CircleFrame = Button.Parent
local OvalFrame = CircleFrame.Parent
local ButtonMainFrame = OvalFrame.Parent
local DefaultValueEvent = ButtonMainFrame:WaitForChild("LoadDefaultValue")
local OffDisplay = CircleFrame:WaitForChild("OffDisplay")
local OnDisplay = CircleFrame:WaitForChild("OnDisplay")

local OnPosition = "Right"
local TweenSpeed = 0.4
local TweenStyle = Enum.EasingStyle.Sine
local TweenDirection = Enum.EasingDirection.Out
local LastTimeClicked = 0
local ClickDebounceTime = TweenSpeed * 1.05

-- Seed sniping variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BuySeedEvent = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("BuySeedStock")
local seedName = "Carrot" -- Change to your desired seed name
local sniping = false
local snipingThread

-- Sniping control
local function startSniping()
	if sniping then return end
	sniping = true
	snipingThread = coroutine.create(function()
		while sniping do
			BuySeedEvent:FireServer(seedName)
			task.wait(0.5) -- Adjust delay as needed
		end
	end)
	coroutine.resume(snipingThread)
end

local function stopSniping()
	sniping = false
end

-- UI setup
if OnPosition == "Right" then
	OnDisplay.Position= UDim2.new(0,0,0,0)
	OffDisplay.Position = UDim2.new(0.5,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0.75,0)
	OffDisplay.AnchorPoint = Vector2.new(0,0)
elseif OnPosition == "Left" then
	OnDisplay.Position= UDim2.new(0.5,0,0,0) 
	OffDisplay.Position = UDim2.new(0,0,0,0)
	OnDisplay.AnchorPoint = Vector2.new(0,0)
	OffDisplay.AnchorPoint = Vector2.new(0.75,0)
end

-- Main Toggle Logic
Button.MouseButton1Click:Connect(function()
	if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
		LastTimeClicked = tonumber(os.clock())

		if Button.Parent.Position.X.Scale == 0 then
			-- Toggle ON
			startSniping()
			CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		elseif Button.Parent.Position.X.Scale == 0.5 then
			-- Toggle OFF
			stopSniping()
			CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
		end
	end
end)

-- Default UI Position Load
DefaultValueEvent.Event:Connect(function(DefaultValue: boolean)
	if DefaultValue == true then
		if OnPosition == "Right" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		startSniping()
	else
		if OnPosition == "Left" then
			CircleFrame.Position = UDim2.new(0,0,0,0)
		else
			CircleFrame.Position = UDim2.new(0.5,0,0,0)
		end
		stopSniping()
	end
end)
"
LocalScript.Parent = ClickDetector

local ToggleEvent = Instance.new("BindableEvent")
ToggleEvent.Name = "ToggleEvent"
ToggleEvent.Parent = ToggleButton3

local LoadDefaultValue = Instance.new("BindableEvent")
LoadDefaultValue.Name = "LoadDefaultValue"
LoadDefaultValue.Parent = ToggleButton3

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "Visual"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MAIN

local Section = Instance.new("Frame")
Section.Visible = false
Section.Name = "Section"
Section.Position = UDim2.new(-0.012962937355041504, 5, -0.09445799887180328, -36)
Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Section.Size = UDim2.new(0, 532, 0, 47)
Section.BorderSizePixel = 0
Section.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
Section.Parent = MAIN

local UICorner = Instance.new("UICorner")
UICorner.Parent = Section

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.020676691085100174, 0, -0.11626548320055008, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 552, 0, 59)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Section

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local animation = Instance.new("LocalScript")
animation.Name = "animation"
animation.Source = "local TweenService = game:GetService("TweenService")

local mainUI = script.Parent
local fadeOverlay = mainUI:WaitForChild("FadeOverlay")
local listFrame = mainUI:WaitForChild("list")
local list2 = listFrame:WaitForChild("list2") -- Contains tab buttons

-- Tab Frames
local tabs = {
	HOME = mainUI:WaitForChild("HOME"),
	MAIN = mainUI:WaitForChild("MAIN"),
	MISC = mainUI:WaitForChild("MISC"),
	CONFIG = mainUI:WaitForChild("CONFIG"),
	VISUAL = mainUI:WaitForChild("VISUAL"),
}

-- Section now inside MAIN tab
local section = tabs["MAIN"]:WaitForChild("Section")

-- Buttons inside list2
local buttons = {
	HomeButton = "HOME",
	MainButton = "MAIN",
	MiscButton = "MISC",
	ConfigButton = "CONFIG",
	VisualButton = "VISUAL",
}

-- Tween settings
local fadeTime = 0.8
local fadeInfo = TweenInfo.new(fadeTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Start with HOME tab visible
local currentTab = tabs["HOME"]
currentTab.Visible = true
section.Visible = false
section.BackgroundTransparency = 1

-- Switch tab function
local function switchTabs(targetTabName)
	local targetTab = tabs[targetTabName]
	if not targetTab or targetTab == currentTab then return end

	local fadeIn = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 0})
	local fadeOut = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Wait()

	for _, tab in pairs(tabs) do
		tab.Visible = false
	end

	targetTab.Visible = true
	currentTab = targetTab

	-- Section fade logic only for MAIN tab
	if targetTabName == "MAIN" then
		section.Visible = true
		section.BackgroundTransparency = 1
		TweenService:Create(section, fadeInfo, {BackgroundTransparency = 0}):Play()
	else
		if section.Visible then
			local hideTween = TweenService:Create(section, fadeInfo, {BackgroundTransparency = 1})
			hideTween.Completed:Connect(function()
				section.Visible = false
			end)
			hideTween:Play()
		end
	end

	fadeOut:Play()
end

-- Hook buttons to switch function
for buttonName, tabName in pairs(buttons) do
	local button = list2:FindFirstChild(buttonName)
	if button then
		button.MouseButton1Click:Connect(function()
			switchTabs(tabName)
		end)
	end
end
"
animation.Parent = MainUi

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = MainUi

local MISC = Instance.new("Frame")
MISC.Visible = false
MISC.BorderColor3 = Color3.fromRGB(0, 0, 0)
MISC.BackgroundTransparency = 1
MISC.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
MISC.Name = "MISC"
MISC.Size = UDim2.new(0, 525, 0, 338)
MISC.BorderSizePixel = 0
MISC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MISC.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "GAMENAME"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = MISC

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "MISC TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.3786008358001709, 0, 0.4275362193584442, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MISC

local CONFIG = Instance.new("Frame")
CONFIG.Visible = false
CONFIG.BorderColor3 = Color3.fromRGB(0, 0, 0)
CONFIG.BackgroundTransparency = 1
CONFIG.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981486454606056, 0)
CONFIG.Name = "CONFIG"
CONFIG.Size = UDim2.new(0, 525, 0, 328)
CONFIG.BorderSizePixel = 0
CONFIG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CONFIG.Parent = MainUi

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "CONFIG TAB PROGGRESS    :     1%"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.40740740299224854, 0, 0.420073539018631, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local UICorner = Instance.new("UICorner")
UICorner.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "GAMENAME"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.2272673100233078, 0, 0.0039750500582158566, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 180, 0, 19)
TextLabel.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = CONFIG

local VISUAL = Instance.new("Frame")
VISUAL.Visible = false
VISUAL.BorderColor3 = Color3.fromRGB(0, 0, 0)
VISUAL.BackgroundTransparency = 1
VISUAL.Position = UDim2.new(-0.0004462322103790939, 0, -0.0069814408197999, 0)
VISUAL.Name = "VISUAL"
VISUAL.Size = UDim2.new(0, 525, 0, 338)
VISUAL.BorderSizePixel = 0
VISUAL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VISUAL.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "SINCE 2025"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.047416187822818756, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 11
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local Visual = Instance.new("TextLabel")
Visual.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
Visual.TextColor3 = Color3.fromRGB(124, 72, 43)
Visual.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Visual.Text = "Visual"
Visual.Name = "Visual"
Visual.Size = UDim2.new(0, 148, 0, 23)
Visual.Position = UDim2.new(0.2272673100233078, -108, 0.0039750500582158566, 38)
Visual.BackgroundTransparency = 1
Visual.TextXAlignment = Enum.TextXAlignment.Left
Visual.BorderSizePixel = 0
Visual.BorderColor3 = Color3.fromRGB(0, 0, 0)
Visual.TextSize = 31
Visual.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Visual.Parent = VISUAL

local NAMEHUB25 = Instance.new("TextLabel")
NAMEHUB25.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
NAMEHUB25.TextColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
NAMEHUB25.Text = "TROJAN WARE"
NAMEHUB25.Name = "NAMEHUB25"
NAMEHUB25.Size = UDim2.new(0, 180, 0, 19)
NAMEHUB25.Position = UDim2.new(0.02917206659913063, 0, 0.003975050989538431, 0)
NAMEHUB25.BackgroundTransparency = 1
NAMEHUB25.TextXAlignment = Enum.TextXAlignment.Left
NAMEHUB25.BorderSizePixel = 0
NAMEHUB25.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMEHUB25.TextSize = 14
NAMEHUB25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAMEHUB25.Parent = VISUAL

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(154, 143, 123)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.020952381193637848, 0, 0.18657255172729492, 0)
ScrollingFrame.Size = UDim2.new(0, 507, 0, 261)
ScrollingFrame.CanvasPosition = Vector2.new(0, 135)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = VISUAL

local FruitFrame = Instance.new("Frame")
FruitFrame.Name = "FruitFrame"
FruitFrame.BackgroundTransparency = 0.4000000059604645
FruitFrame.Position = UDim2.new(0.009192713536322117, 0, 0.024351272732019424, 11)
FruitFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitFrame.Size = UDim2.new(0, 481, 0, 50)
FruitFrame.BorderSizePixel = 0
FruitFrame.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
FruitFrame.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitFrame

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.025107035413384438, 0, 0.35691630840301514, 0)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = FruitFrame

local TriggerListButton = Instance.new("TextButton")
TriggerListButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TriggerListButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerListButton.Text = ""
TriggerListButton.Size = UDim2.new(0, 152, 0, 29)
TriggerListButton.Name = "TriggerListButton"
TriggerListButton.TextXAlignment = Enum.TextXAlignment.Left
TriggerListButton.Position = UDim2.new(0.6593853831291199, 0, 0.19569061696529388, 0)
TriggerListButton.BorderSizePixel = 0
TriggerListButton.TextSize = 14
TriggerListButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerListButton.Parent = FruitFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TriggerListButton

local ChooseFruit = Instance.new("TextLabel")
ChooseFruit.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
ChooseFruit.TextColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChooseFruit.Text = "Choose  Fruit          --"
ChooseFruit.Name = "ChooseFruit"
ChooseFruit.BackgroundTransparency = 1
ChooseFruit.Position = UDim2.new(-0.004564385861158371, 0, 0, 0)
ChooseFruit.Size = UDim2.new(0, 152, 0, 29)
ChooseFruit.BorderSizePixel = 0
ChooseFruit.TextSize = 14
ChooseFruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChooseFruit.Parent = TriggerListButton

local choosefruitlogic = Instance.new("LocalScript")
choosefruitlogic.Name = "choosefruitlogic"
choosefruitlogic.Source = "local TweenService = game:GetService("TweenService")

-- UI structure
local visualTab = script.Parent.Parent.Parent -- From ChooseFruit → TriggerListButton → VISUAL
local triggerButton = script.Parent:WaitForChild("TriggerListButton")
local chooseFruitLabel = triggerButton:WaitForChild("ChooseFruit")
local fruitListFrame = visualTab:WaitForChild("FruitList")

-- Fade settings
local fadeInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Show/hide dropdown with animation
local function toggleFruitList()
	if fruitListFrame.Visible then
		local fadeOut = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 1})
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			fruitListFrame.Visible = false
		end)
	else
		fruitListFrame.BackgroundTransparency = 1
		fruitListFrame.Visible = true
		local fadeIn = TweenService:Create(fruitListFrame, fadeInfo, {BackgroundTransparency = 0.05})
		fadeIn:Play()
	end
end

-- Click visual effect
local function playClickEffect(button)
	local overlay = Instance.new("Frame")
	overlay.Size = UDim2.new(1, 0, 1, 0)
	overlay.Position = UDim2.new(0, 0, 0, 0)
	overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	overlay.BackgroundTransparency = 1
	overlay.BorderSizePixel = 0
	overlay.ZIndex = 5
	overlay.Parent = button

	local fadeIn = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 0.6})
	local fadeOut = TweenService:Create(overlay, fadeInfo, {BackgroundTransparency = 1})

	fadeIn:Play()
	fadeIn.Completed:Connect(function()
		fadeOut:Play()
		fadeOut.Completed:Connect(function()
			overlay:Destroy()
		end)
	end)
end

-- Connect button that toggles the dropdown
triggerButton.MouseButton1Click:Connect(toggleFruitList)

-- Connect every TextButton inside FruitList
for _, button in pairs(fruitListFrame:GetChildren()) do
	if button:IsA("TextButton") then
		button.MouseButton1Click:Connect(function()
			chooseFruitLabel.Text = button.Text
			playClickEffect(button)
			toggleFruitList()
		end)
	end
end
"
choosefruitlogic.Parent = FruitFrame

local maintabframe = Instance.new("Frame")
maintabframe.Name = "maintabframe"
maintabframe.BackgroundTransparency = 0.4000000059604645
maintabframe.Position = UDim2.new(0.007999999448657036, 0, 0.14369931817054749, -12)
maintabframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
maintabframe.Size = UDim2.new(0, 481, 0, 50)
maintabframe.BorderSizePixel = 0
maintabframe.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
maintabframe.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = maintabframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = maintabframe

local Fruit = Instance.new("TextLabel")
Fruit.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
Fruit.TextColor3 = Color3.fromRGB(124, 72, 43)
Fruit.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
Fruit.Text = "ESP Fruit"
Fruit.Name = "Fruit"
Fruit.Size = UDim2.new(0, 180, 0, 19)
Fruit.Position = UDim2.new(0.021027032285928726, 0, -0.01098620519042015, 6)
Fruit.BackgroundTransparency = 1
Fruit.TextXAlignment = Enum.TextXAlignment.Left
Fruit.BorderSizePixel = 0
Fruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fruit.TextSize = 15
Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fruit.Parent = ScrollingFrame

local UI = Instance.new("TextLabel")
UI.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
UI.TextColor3 = Color3.fromRGB(124, 72, 43)
UI.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
UI.Text = "UI"
UI.Name = "UI"
UI.Size = UDim2.new(0, 180, 0, 19)
UI.Position = UDim2.new(0.021027032285928726, 1, -0.01098620519042015, 156)
UI.BackgroundTransparency = 1
UI.TextXAlignment = Enum.TextXAlignment.Left
UI.BorderSizePixel = 0
UI.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.TextSize = 15
UI.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
UI.Parent = ScrollingFrame

local uiGear = Instance.new("TextButton")
uiGear.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiGear.TextColor3 = Color3.fromRGB(0, 0, 0)
uiGear.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiGear.Text = ""
uiGear.Name = "uiGear"
uiGear.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 16)
uiGear.Size = UDim2.new(0, 480, 0, 50)
uiGear.BorderSizePixel = 0
uiGear.TextSize = 14
uiGear.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiGear.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI GEAR"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiGear

local Opengear = Instance.new("LocalScript")
Opengear.Name = "Opengear"
Opengear.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Gear_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opengear.Parent = uiGear

local uiseeds = Instance.new("TextButton")
uiseeds.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiseeds.TextColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiseeds.Text = ""
uiseeds.Name = "uiseeds"
uiseeds.Position = UDim2.new(0.010106073692440987, 0, 0.24424421787261963, 16)
uiseeds.Size = UDim2.new(0, 480, 0, 50)
uiseeds.BorderSizePixel = 0
uiseeds.TextSize = 14
uiseeds.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiseeds.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiseeds

local OpenSeeds = Instance.new("LocalScript")
OpenSeeds.Name = "OpenSeeds"
OpenSeeds.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Seed_Shop")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
OpenSeeds.Parent = uiseeds

local uiscosmethic = Instance.new("TextButton")
uiscosmethic.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
uiscosmethic.TextColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.BorderColor3 = Color3.fromRGB(0, 0, 0)
uiscosmethic.Text = ""
uiscosmethic.Name = "uiscosmethic"
uiscosmethic.Position = UDim2.new(0.006161300465464592, 0, 0.33236682415008545, 74)
uiscosmethic.Size = UDim2.new(0, 480, 0, 50)
uiscosmethic.BorderSizePixel = 0
uiscosmethic.TextSize = 14
uiscosmethic.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
uiscosmethic.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN UI SEEDS"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.05624999850988388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "OPEN / CLOSE"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.6291666626930237, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = uiscosmethic

local Opencosm = Instance.new("LocalScript")
Opencosm.Name = "Opencosm"
Opencosm.Source = "local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("CosmeticShop_UI")
local button = script.Parent  -- Assuming this script is inside the button

-- Start with GUI disabled (optional)
seedShopGui.Enabled = false

-- Toggle GUI on button click
button.MouseButton1Click:Connect(function()
	seedShopGui.Enabled = not seedShopGui.Enabled
end)
"
Opencosm.Parent = uiscosmethic

local FruitList = Instance.new("Frame")
FruitList.Visible = false
FruitList.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitList.BackgroundTransparency = 0.10000000149011612
FruitList.Position = UDim2.new(0.6612043380737305, 0, 0.005918153095990419, 0)
FruitList.Name = "FruitList"
FruitList.Size = UDim2.new(0, 138, 0, 325)
FruitList.BorderSizePixel = 0
FruitList.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
FruitList.Parent = VISUAL

local UICorner = Instance.new("UICorner")
UICorner.Parent = FruitList

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.Active = true
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.078125, 0, 0.03384615480899811, 0)
ScrollingFrame.Size = UDim2.new(0, 119, 0, 302)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Parent = FruitList

local TextButton = Instance.new("TextButton")
TextButton.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Text = "INPROGRESS"
TextButton.Position = UDim2.new(0.013640332035720348, -4, 0.008918155916035175, 0)
TextButton.Size = UDim2.new(0, 108, 0, 21)
TextButton.BorderSizePixel = 0
TextButton.TextSize = 14
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Parent = ScrollingFrame

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextButton

local FadeOverlay = Instance.new("Frame")
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Position = UDim2.new(-0.0004462322103790939, 0, -0.006981395650655031, 0)
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 525, 0, 338)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9675622582435608, 0, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9652284979820251, -15, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local circledecoration = Instance.new("Frame")
circledecoration.Name = "circledecoration"
circledecoration.BackgroundTransparency = 0.5
circledecoration.Position = UDim2.new(0.9628947973251343, -30, 0.012903622351586819, -3)
circledecoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
circledecoration.Size = UDim2.new(0, 10, 0, 12)
circledecoration.BorderSizePixel = 0
circledecoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circledecoration.Parent = MainUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = circledecoration

local list = Instance.new("Frame")
list.BorderColor3 = Color3.fromRGB(0, 0, 0)
list.AnchorPoint = Vector2.new(0.5, 0.5)
list.BackgroundTransparency = 0.10000000149011612
list.Position = UDim2.new(-0.13149966299533844, -3, 0.3686785399913788, 44)
list.Name = "list"
list.Size = UDim2.new(0, 94, 0, 339)
list.BorderSizePixel = 0
list.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
list.Parent = MainUi

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02171163447201252, 0, 1.0387482643127441, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 316, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = list

local list2 = Instance.new("Frame")
list2.Name = "list2"
list2.BackgroundTransparency = 0.4000000059604645
list2.Position = UDim2.new(0.40382033586502075, -40, -0.0014708302915096283, 0)
list2.BorderColor3 = Color3.fromRGB(0, 0, 0)
list2.Size = UDim2.new(0, 96, 0, 339)
list2.BorderSizePixel = 0
list2.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
list2.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.Parent = list2

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = list2

local MiscButton = Instance.new("ImageButton")
MiscButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscButton.Name = "MiscButton"
MiscButton.Image = "rbxassetid://112896592265413"
MiscButton.BackgroundTransparency = 1
MiscButton.Position = UDim2.new(0.08878400921821594, 0, 0.44398099184036255, -11)
MiscButton.ImageContent = Content
MiscButton.Size = UDim2.new(0, 23, 0, 24)
MiscButton.BorderSizePixel = 0
MiscButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiscButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MiscButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MISC"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MiscButton

local VisualButton = Instance.new("ImageButton")
VisualButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
VisualButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
VisualButton.Name = "VisualButton"
VisualButton.Position = UDim2.new(0.08878400921821594, 0, 0.6402150988578796, -22)
VisualButton.ImageContent = Content
VisualButton.Size = UDim2.new(0, 23, 0, 24)
VisualButton.BorderSizePixel = 0
VisualButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VisualButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = VisualButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "VISUAL"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = VisualButton

local MainButton = Instance.new("ImageButton")
MainButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainButton.Name = "MainButton"
MainButton.Image = "rbxassetid://71021086762099"
MainButton.BackgroundTransparency = 1
MainButton.Position = UDim2.new(0.08878400921821594, 0, 0.23528461158275604, 8)
MainButton.ImageContent = Content
MainButton.Size = UDim2.new(0, 23, 0, 24)
MainButton.BorderSizePixel = 0
MainButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "MAIN"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MainButton

local ConfigButton = Instance.new("ImageButton")
ConfigButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfigButton.Name = "ConfigButton"
ConfigButton.Image = "rbxassetid://126496417047546"
ConfigButton.BackgroundTransparency = 1
ConfigButton.Position = UDim2.new(0.08878400921821594, 0, 0.8193672895431519, -29)
ConfigButton.ImageContent = Content
ConfigButton.Size = UDim2.new(0, 23, 0, 24)
ConfigButton.BorderSizePixel = 0
ConfigButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConfigButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ConfigButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "CONFIG"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ConfigButton

local HomeButton = Instance.new("ImageButton")
HomeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeButton.Name = "HomeButton"
HomeButton.Image = "rbxassetid://138376539454145"
HomeButton.BackgroundTransparency = 1
HomeButton.Position = UDim2.new(0.11108327656984329, 0, 0.029755359515547752, 28)
HomeButton.ImageContent = Content
HomeButton.Size = UDim2.new(0, 23, 0, 24)
HomeButton.BorderSizePixel = 0
HomeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = HomeButton

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "HOME"
TextLabel.Size = UDim2.new(0, 54, 0, 17)
TextLabel.Position = UDim2.new(1.225000262260437, 0, 0.1228078231215477, 11)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HomeButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.022113136947155, 0, 0.009630580432713032, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 29, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.1072353720664978, 0, -0.03556927293539047, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 112, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = list2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.06865453720092773, 0, -0.024630215018987656, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 128, 0, 379)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.021086135879158974, 0, -0.03689182549715042, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 548, 0, 362)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = MainUi

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0019723933655768633, 0, -0.027118662372231483, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 556, 0, 380)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local Notify2 = Instance.new("Frame")
Notify2.Visible = false
Notify2.Name = "Notify2"
Notify2.Position = UDim2.new(0.6272727251052856, 0, 0.7008165717124939, 0)
Notify2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notify2.Size = UDim2.new(0, 246, 0, 163)
Notify2.BorderSizePixel = 0
Notify2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notify2.Parent = TestTrojan

local UICorner = Instance.new("UICorner")
UICorner.Parent = Notify2

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04271344467997551, 0, -0.04378317669034004, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 267, 0, 181)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.038664285093545914, 0, -0.04430731013417244, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 286, 0, 196)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local FadeOverlay = Instance.new("Frame")
FadeOverlay.BackgroundTransparency = 1
FadeOverlay.Name = "FadeOverlay"
FadeOverlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
FadeOverlay.Size = UDim2.new(0, 246, 0, 156)
FadeOverlay.BorderSizePixel = 0
FadeOverlay.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FadeOverlay.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = FadeOverlay

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "PLEASE SUPPORT US ON DISCORD"
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.004065040498971939, 0, 0.042944785207509995, 0)
TextLabel.Size = UDim2.new(0, 246, 0, 122)
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
TextLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = TextLabel

local CopyButton = Instance.new("TextButton")
CopyButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CopyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.Text = "COPY"
CopyButton.Name = "CopyButton"
CopyButton.Position = UDim2.new(0.03926198184490204, 0, 0.6948744058609009, 0)
CopyButton.Size = UDim2.new(0, 92, 0, 37)
CopyButton.BorderSizePixel = 0
CopyButton.TextSize = 14
CopyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CopyButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.04272029548883438, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 103, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CopyButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.03914118930697441, 0, -0.08062262088060379, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CopyScript = Instance.new("LocalScript")
CopyScript.Name = "CopyScript"
CopyScript.Source = "local GuiService = game:GetService("GuiService")
local button = script.Parent

local copy = 'https://discord.gg/2Aa7facYFp' 
button.MouseButton1Click:Connect(function(plr) setclipboard(tostring(copy)) end)"
CopyScript.Parent = CopyButton

local CloseButton = Instance.new("TextButton")
CloseButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Text = "CLOSE"
CloseButton.Name = "CloseButton"
CloseButton.Position = UDim2.new(0.5388433933258057, 0, 0.6948744058609009, 0)
CloseButton.Size = UDim2.new(0, 94, 0, 37)
CloseButton.BorderSizePixel = 0
CloseButton.TextSize = 14
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = CloseButton

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.009531021118164062, 0, -0.043082572519779205, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 106, 0, 45)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = CloseButton

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.0876850038766861, 0, -0.10284491628408432, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 112, 0, 48)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local CloseScript = Instance.new("LocalScript")
CloseScript.Name = "CloseScript"
CloseScript.Source = "local closeButton = script.Parent-- The button this script is inside
local notifyFrame = closeButton.Parent  -- Adjust path if needed

closeButton.MouseButton1Click:Connect(function()
	notifyFrame.Visible = false  -- Hide the Notify2 frame
end)
"
CloseScript.Parent = CloseButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.009999999776482582
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://115116817442738"
ImageLabel.Position = UDim2.new(0.022633621469140053, 0, 0.05241403356194496, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 26, 0, 27)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Notify2

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local dragscript = Instance.new("LocalScript")
dragscript.Name = "dragscript"
dragscript.Source = "local UserInputService = game:GetService("UserInputService")
local gui = script.Parent  -- MainUi frame

local dragging = false
local dragInput
local dragStart
local startPos

local originalTransparency = gui.BackgroundTransparency or 0
local dragTransparency = 0.5  -- how transparent during drag (0 = opaque, 1 = fully transparent)

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		-- Make transparent when dragging starts
		gui.BackgroundTransparency = dragTransparency

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				-- Restore transparency when drag ends
				gui.BackgroundTransparency = originalTransparency
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
"
dragscript.Parent = Notify2

local LoadingUi = Instance.new("Frame")
LoadingUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingUi.AnchorPoint = Vector2.new(0.5, 0.5)
LoadingUi.BackgroundTransparency = 0.10000000149011612
LoadingUi.Position = UDim2.new(0.5087721347808838, 1, 0.40437519550323486, 45)
LoadingUi.Name = "LoadingUi"
LoadingUi.Size = UDim2.new(0, 338, 0, 198)
LoadingUi.BorderSizePixel = 0
LoadingUi.BackgroundColor3 = Color3.fromRGB(243, 230, 208)
LoadingUi.Parent = TestTrojan

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://92138690758194"
ImageLabel.BackgroundTransparency = 0.4000000059604645
ImageLabel.Position = UDim2.new(0.022036707028746605, 0, 0.02090396359562874, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(0, 25, 0, 25)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "TROJAN WARE"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.TextStrokeColor3 = Color3.fromRGB(124, 72, 43)
TextLabel.Text = "SINCE 2025"
TextLabel.Size = UDim2.new(0, 167, 0, 16)
TextLabel.Position = UDim2.new(1.225000023841858, 0, 0.28947368264198303, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BorderSizePixel = 0
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ImageLabel

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, 1.037168264389038, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 0)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local InnerFade = Instance.new("Frame")
InnerFade.Name = "InnerFade"
InnerFade.BackgroundTransparency = 0.5
InnerFade.Position = UDim2.new(-0.02109399251639843, 0, -0.03353870287537575, 0)
InnerFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFade.Size = UDim2.new(0, 353, 0, 211)
InnerFade.BorderSizePixel = 0
InnerFade.BackgroundColor3 = Color3.fromRGB(194, 169, 140)
InnerFade.Parent = LoadingUi

local UICorner = Instance.new("UICorner")
UICorner.Parent = InnerFade

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = InnerFade

local OuterFade = Instance.new("Frame")
OuterFade.Name = "OuterFade"
OuterFade.BackgroundTransparency = 0.699999988079071
OuterFade.Position = UDim2.new(-0.013806739822030067, 0, -0.027118664234876633, 0)
OuterFade.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFade.Size = UDim2.new(0, 366, 0, 224)
OuterFade.BorderSizePixel = 0
OuterFade.BackgroundColor3 = Color3.fromRGB(154, 143, 123)
OuterFade.Parent = InnerFade

local UICorner = Instance.new("UICorner")
UICorner.Parent = OuterFade

local Progress = Instance.new("Frame")
Progress.BorderColor3 = Color3.fromRGB(0, 0, 0)
Progress.AnchorPoint = Vector2.new(0, 1)
Progress.Name = "Progress"
Progress.BackgroundTransparency = 1
Progress.Position = UDim2.new(0.43768996000289917, 0, 0.5989848375320435, 0)
Progress.SizeConstraint = Enum.SizeConstraint.RelativeYY
Progress.Size = UDim2.new(0.20000000298023224, 0, 0.20000000298023224, 0)
Progress.BorderSizePixel = 0
Progress.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Progress.Parent = LoadingUi

local Frame1 = Instance.new("Frame")
Frame1.Name = "Frame1"
Frame1.BackgroundTransparency = 1
Frame1.ClipsDescendants = true
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.Size = UDim2.new(0.5252525806427002, 0, 1.0000001192092896, 0)
Frame1.BorderSizePixel = 0
Frame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame1.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2, 0, 1, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame1

local UIGradient = Instance.new("UIGradient")
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Frame2 = Instance.new("Frame")
Frame2.ClipsDescendants = true
Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame2.AnchorPoint = Vector2.new(1, 0)
Frame2.BackgroundTransparency = 1
Frame2.Position = UDim2.new(1.050506353378296, -2, 0, 0)
Frame2.Name = "Frame2"
Frame2.Size = UDim2.new(0.5505059361457825, 0, 1.0000001192092896, 0)
Frame2.BorderSizePixel = 0
Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame2.Parent = Progress

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageTransparency = 0.5
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(-0.9494973421096802, 0, 0, 0)
ImageLabel.ImageContent = Content
ImageLabel.Size = UDim2.new(2.050507068634033, 0, 1.0000001192092896, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Frame2

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 180
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.501, 1),
	NumberSequenceKeypoint.new(1, 1)
}
UIGradient.Parent = ImageLabel

local Percentage = Instance.new("NumberValue")
Percentage.Name = "Percentage"
Percentage.Parent = Progress

local ProgressScript = Instance.new("LocalScript")
ProgressScript.Name = "ProgressScript"
ProgressScript.Source = "-- MissingPartType: "Trans", "Color", "TransAndColor".


game:GetService("RunService").RenderStepped:Connect(function()
	script.Parent.Value = script.Parent.Value + 1
	if script.Parent.Value > 100 then
		script.Parent.Value = 0
	end
	-- Progress.
	local PercentNumber = math.clamp(script.Parent.Value * 3.6,0,360)
	local F1 = script.Parent.Parent.Frame1.ImageLabel
	local F2 = script.Parent.Parent.Frame2.ImageLabel
	F1.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,180,360) or 180 - math.clamp(PercentNumber,0,180)
	F2.UIGradient.Rotation = script.FlipProgress.Value == false and math.clamp(PercentNumber,0,180) or 180 - math.clamp(PercentNumber,180,360)
	F1.ImageColor3 = script.ImageColor.Value
	F2.ImageColor3 = script.ImageColor.Value
	F1.ImageTransparency = script.ImageTrans.Value
	F2.ImageTransparency = script.ImageTrans.Value
	F1.Image = "rbxassetid://" .. script.ImageId.Value
	F2.Image = "rbxassetid://" .. script.ImageId.Value
	if script.MissingPartType.Value == "Color" then
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F1.UIGradient.Transparency = NumberSequence.new(0)
		F2.UIGradient.Transparency = NumberSequence.new(0)
	elseif script.MissingPartType.Value == "Trans" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
		F2.UIGradient.Color = ColorSequence.new(Color3.new(1,1,1))
	elseif script.MissingPartType.Value == "TransAndColor" then
		F1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.5,script.TransOfPercentPart.Value),NumberSequenceKeypoint.new(0.501,script.TransOfMissingPart.Value),NumberSequenceKeypoint.new(1,script.TransOfMissingPart.Value)})
		F1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
		F2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.5,script.ColorOfPercentPart.Value),ColorSequenceKeypoint.new(0.501,script.ColorOfMissingPart.Value),ColorSequenceKeypoint.new(1,script.ColorOfMissingPart.Value)})
	else
		script.MissingPartType.Value = "Trans"
		error("Unknown Type. Only 3 available: “Trans”, “Color” and “TransAndColor”, changing to “Trans”.")
	end
end)"
ProgressScript.Parent = Percentage

local MissingPartType = Instance.new("StringValue")
MissingPartType.Value = "TransAndColor"
MissingPartType.Name = "MissingPartType"
MissingPartType.Parent = ProgressScript

local FlipProgress = Instance.new("BoolValue")
FlipProgress.Name = "FlipProgress"
FlipProgress.Parent = ProgressScript

local TransOfMissingPart = Instance.new("NumberValue")
TransOfMissingPart.Value = 0.25
TransOfMissingPart.Name = "TransOfMissingPart"
TransOfMissingPart.Parent = ProgressScript

local ColorOfMissingPart = Instance.new("Color3Value")
ColorOfMissingPart.Value = Color3.fromRGB(255, 255, 255)
ColorOfMissingPart.Name = "ColorOfMissingPart"
ColorOfMissingPart.Parent = ProgressScript

local TransOfPercentPart = Instance.new("NumberValue")
TransOfPercentPart.Name = "TransOfPercentPart"
TransOfPercentPart.Parent = ProgressScript

local ColorOfPercentPart = Instance.new("Color3Value")
ColorOfPercentPart.Value = Color3.fromRGB(154, 143, 123)
ColorOfPercentPart.Name = "ColorOfPercentPart"
ColorOfPercentPart.Parent = ProgressScript

local ImageColor = Instance.new("Color3Value")
ImageColor.Value = Color3.fromRGB(255, 255, 255)
ImageColor.Name = "ImageColor"
ImageColor.Parent = ProgressScript

local ImageTrans = Instance.new("NumberValue")
ImageTrans.Name = "ImageTrans"
ImageTrans.Parent = ProgressScript

local ImageId = Instance.new("StringValue")
ImageId.Value = "3587367081"
ImageId.Name = "ImageId"
ImageId.Parent = ProgressScript

local UICorner = Instance.new("UICorner")
UICorner.Parent = LoadingUi

local LoadsScript = Instance.new("LocalScript")
LoadsScript.Name = "LoadsScript"
LoadsScript.Source = "local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local gui = script.Parent

local loadingUi = gui:WaitForChild("LoadingUi")
local mainUi = gui:WaitForChild("MainUi")
local blur = Lighting:WaitForChild("LoadingBlur")
local Notify = gui:WaitForChild("Notify2")

-- Start: MainUi and Notify hidden, blur on
Notify.Visible = false
mainUi.Visible = false
blur.Enabled = true
blur.Size = 1000

-- Fade out loading elements only
local function fadeToInvisible(frame, duration)
	for _, obj in ipairs(frame:GetDescendants()) do
		if obj:IsA("GuiObject") then
			local goal = {}
			if obj:IsA("TextLabel") or obj:IsA("TextButton") then
				goal.TextTransparency = 1
			end
			if obj:IsA("ImageLabel") then
				goal.ImageTransparency = 1
			end
			goal.BackgroundTransparency = 1
			TweenService:Create(obj, TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal):Play()
		end
	end
end

-- Tween blur out
local function fadeOutBlur()
	local tween = TweenService:Create(
		blur,
		TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{Size = 0}
	)
	tween:Play()
	tween.Completed:Wait()
	blur.Enabled = false
end

-- Wait 5 seconds
task.wait(7)

-- Show MainUi instantly
mainUi.Visible = true

-- If MainUi is visible, show the notify
if mainUi.Visible == true then
	Notify.Visible = true
end

-- Fade out blur + loading screen
fadeOutBlur()
fadeToInvisible(loadingUi, 0.6)

-- Optional: hide loading completely
task.delay(0.7, function()
	loadingUi.Visible = false
end)
"
LoadsScript.Parent = TestTrojan



-- Fade out blur + loading screen
fadeOutBlur()
fadeToInvisible(loadingUi, 0.6)

-- Optional: hide loading completely
task.delay(0.7, function()
	loadingUi.Visible = false
end)
"
LoadsScript.Parent = TestTrojan

ue
end

-- Fade out blur + loading screen
fadeOutBlur()
fadeToInvisible(loadingUi, 0.6)

-- Optional: hide loading completely
task.delay(0.7, function()
	loadingUi.Visible = false
end)
"
LoadsScript.Parent = TestTrojan



-- Fade out blur + loading screen
fadeOutBlur()
fadeToInvisible(loadingUi, 0.6)

-- Optional: hide loading completely
task.delay(0.7, function()
	loadingUi.Visible = false
end)
"
LoadsScript.Parent = TestTrojan

loadingUi, 0.6)

-- Optional: hide loading completely
task.delay(0.7, function()
	loadingUi.Visible = false
end)
"
LoadsScript.Parent = TestTrojan

