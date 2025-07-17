local TrojanWare = {}
TrojanWare.__index = TrojanWare

-- Services
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")

-- Default configuration
TrojanWare.DefaultSettings = {
    BlurSize = 24,
    DefaultTab = "HOME",
    LoadingDuration = 7,
    MainColor = Color3.fromRGB(244, 231, 209),
    SecondaryColor = Color3.fromRGB(195, 170, 141),
    AccentColor = Color3.fromRGB(125, 73, 44),
    Font = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic),
    SmallFont = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic),
    DiscordLink = "https://discord.gg/example",
    GameName = "GAMENAME",
    ExecutorName = "Unknown"
}

function TrojanWare.new(settings)
    local self = setmetatable({}, TrojanWare)
    self.Settings = setmetatable(settings or {}, {__index = TrojanWare.DefaultSettings})
    self.GUI = nil
    self.CurrentTab = nil
    self.BlurEffect = nil
    self.LoadingComplete = false
    return self
end

-- Utility functions
local function createInstance(className, properties)
    local instance = Instance.new(className)
    for property, value in pairs(properties) do
        instance[property] = value
    end
    return instance
end

local function applyDrag(gui)
    local dragging = false
    local dragInput, dragStart, startPos

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
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and input == dragInput then
            update(input)
        end
    end)
end

-- Main UI creation
function TrojanWare:CreateMainUI()
    local screenGui = createInstance("ScreenGui", {
        Name = "TrojanWareUI",
        Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"),
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    })

    -- Create blur effect
    self.BlurEffect = createInstance("BlurEffect", {
        Name = "TrojanWareBlur",
        Enabled = false,
        Size = self.Settings.BlurSize,
        Parent = Lighting
    })

    -- Main UI Frame
    local mainFrame = createInstance("Frame", {
        Name = "MainUi",
        Parent = screenGui,
        Visible = false,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.MainColor,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Size = UDim2.new(0, 525, 0, 338),
        Position = UDim2.new(0.54093, 1, 0.34667, 45),
        BackgroundTransparency = 0.1
    })

    -- Add rounded corners
    createInstance("UICorner", {Parent = mainFrame})

    -- Fade overlay for transitions
    local fadeOverlay = createInstance("Frame", {
        Name = "FadeOverlay",
        Parent = mainFrame,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(47, 47, 47),
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1
    })
    createInstance("UICorner", {Parent = fadeOverlay})

    -- Create tabs
    self:CreateTab("HOME", mainFrame)
    self:CreateTab("MAIN", mainFrame)
    self:CreateTab("MISC", mainFrame)
    self:CreateTab("CONFIG", mainFrame)
    self:CreateTab("IDK", mainFrame)

    -- Create sidebar
    self:CreateSidebar(mainFrame)

    -- Create loading UI
    self:CreateLoadingUI(screenGui)

    -- Create notification UI
    self:CreateNotificationUI(screenGui)

    self.GUI = screenGui
    return screenGui
end

function TrojanWare:CreateTab(tabName, parent)
    local tab = createInstance("Frame", {
        Name = tabName,
        Parent = parent,
        Visible = false,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1
    })

    if tabName == "HOME" then
        self:CreateHomeTab(tab)
    elseif tabName == "MAIN" then
        self:CreateMainTab(tab)
    elseif tabName == "MISC" then
        self:CreateMiscTab(tab)
    elseif tabName == "CONFIG" then
        self:CreateConfigTab(tab)
    elseif tabName == "IDK" then
        self:CreateIDKTab(tab)
    end

    return tab
end

function TrojanWare:CreateHomeTab(parent)
    -- Welcome frame
    local welcomeFrame = createInstance("Frame", {
        Name = "WELCOME",
        Parent = parent,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.SecondaryColor,
        Size = UDim2.new(0, 350, 0, 132),
        Position = UDim2.new(0.27998, 0, 0.52625, 0),
        BackgroundTransparency = 0.4
    })
    createInstance("UICorner", {Parent = welcomeFrame})
    createInstance("UIGradient", {Parent = welcomeFrame})

    -- Welcome text (individual letters for animation)
    local letters = {"W", "E", "L", "C", "O", "M", "E", ".", ".", "."}
    for i, letter in ipairs(letters) do
        local textSize = i == 1 and 100 or 50
        local positionX = (i-1) * 0.1
        createInstance("TextLabel", {
            Parent = welcomeFrame,
            BorderSizePixel = 0,
            TextSize = textSize,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            FontFace = self.Settings.Font,
            TextColor3 = Color3.fromRGB(227, 227, 227),
            BackgroundTransparency = 1,
            Size = UDim2.new(0, 89, 0, 90),
            Text = letter,
            Position = UDim2.new(positionX, 0, 0.18182, 0)
        })
    end

    -- Player picture frame
    local pictureFrame = createInstance("Frame", {
        Name = "picture",
        Parent = parent,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.SecondaryColor,
        Size = UDim2.new(0, 144, 0, 137),
        Position = UDim2.new(0.71154, 0, 0.05797, 0),
        BackgroundTransparency = 0.5
    })
    createInstance("UICorner", {Parent = pictureFrame})
    createInstance("UIGradient", {Parent = pictureFrame})

    -- Player image
    local playerImage = createInstance("ImageLabel", {
        Parent = pictureFrame,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        Image = "rbxasset://textures/ui/GuiImagePlaceholder.png",
        Size = UDim2.new(0, 133, 0, 126),
        Position = UDim2.new(0.04167, 0, 0.03729, 0),
        BackgroundTransparency = 1
    })
    createInstance("UICorner", {Parent = playerImage})

    -- Player name
    local nameFrame = createInstance("Frame", {
        Name = "NAME",
        Parent = parent,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.SecondaryColor,
        Size = UDim2.new(0, 229, 0, 74),
        Position = UDim2.new(0.25331, 2, 0.17983, 0),
        BackgroundTransparency = 0.4
    })
    createInstance("UICorner", {Parent = nameFrame})
    createInstance("UIGradient", {Parent = nameFrame})

    local usernameLabel = createInstance("TextLabel", {
        Name = "username",
        Parent = nameFrame,
        BorderSizePixel = 0,
        TextSize = 30,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.Font,
        TextColor3 = Color3.fromRGB(227, 227, 227),
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 218, 0, 63),
        Text = "NAME",
        Position = UDim2.new(0.04803, 0, 0.26077, 0)
    })
    createInstance("UICorner", {Parent = usernameLabel})

    -- Executor name display
    local execNameLabel = createInstance("TextLabel", {
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 35,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.Font,
        TextColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        AnchorPoint = Vector2.new(0.5, 1),
        Size = UDim2.new(0, 169, 0, 79),
        Text = self.Settings.ExecutorName,
        Rotation = -90,
        Position = UDim2.new(0.11568, 0, 0.69898, 0)
    })
    createInstance("UICorner", {Parent = execNameLabel})

    -- Game name and branding
    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = self.Settings.GameName,
        Position = UDim2.new(0.22727, 0, 0.00398, 0)
    })

    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 11,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = "SINCE 2025",
        Position = UDim2.new(0.02917, 0, 0.04742, 0)
    })

    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = "TROJAN WARE",
        Position = UDim2.new(0.02917, 0, 0.00398, 0)
    })

    -- Auto-fill scripts
    self:CreateAutoNameScript(parent)
    self:CreateAutoHeadPicScript(parent)
end

function TrojanWare:CreateMainTab(parent)
    -- Main content frame
    local mainFrame = createInstance("Frame", {
        Name = "maintabframe",
        Parent = parent,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.SecondaryColor,
        Size = UDim2.new(0, 492, 0, 287),
        Position = UDim2.new(0.02917, 0, 0.11594, 0),
        BackgroundTransparency = 0.4
    })
    createInstance("UICorner", {Parent = mainFrame})
    createInstance("UIGradient", {Parent = mainFrame})

    -- Toggle buttons
    self:CreateToggleButton(parent, "ToggleButton2", UDim2.new(0.39918, 0, 0.22464, 0), "Speed Boost", function(state)
        -- Speed boost functionality
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = state and 100 or 16
        end
    end)

    self:CreateToggleButton(parent, "ToggleButton3", UDim2.new(0.39918, 0, 0.35507, 0), "Auto Farm", function(state)
        -- Auto farm functionality
        -- Implementation depends on the game
    end)

    -- Branding labels (same as home tab)
    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = self.Settings.GameName,
        Position = UDim2.new(0.22727, 0, 0.00398, 0)
    })

    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 11,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = "SINCE 2025",
        Position = UDim2.new(0.02917, 0, 0.04742, 0)
    })

    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = "TROJAN WARE",
        Position = UDim2.new(0.02917, 0, 0.00398, 0)
    })

    -- Section (hidden by default)
    local section = createInstance("Frame", {
        Name = "Section",
        Parent = parent,
        Visible = false,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.MainColor,
        Size = UDim2.new(0, 532, 0, 47),
        Position = UDim2.new(-0.01296, 5, -0.09446, -36),
        BackgroundTransparency = 1
    })
    createInstance("UICorner", {Parent = section})

    local innerFade = createInstance("Frame", {
        Name = "InnerFade",
        Parent = section,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.SecondaryColor,
        Size = UDim2.new(0, 552, 0, 59),
        Position = UDim2.new(-0.02068, 0, -0.11627, 0),
        BackgroundTransparency = 0.5
    })
    createInstance("UICorner", {Parent = innerFade})
    createInstance("UIGradient", {Parent = innerFade})
end

function TrojanWare:CreateMiscTab(parent)
    -- Branding labels
    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = "TROJAN WARE",
        Position = UDim2.new(0.02917, 0, 0.00398, 0)
    })

    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = self.Settings.GameName,
        Position = UDim2.new(0.22727, 0, 0.00398, 0)
    })

    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 11,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = "SINCE 2025",
        Position = UDim2.new(0.02917, 0, 0.04742, 0)
    })

    -- Progress indicator
    createInstance("TextLabel", {
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 14,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
        TextColor3 = Color3.fromRGB(0, 0, 0),
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 200, 0, 50),
        Text = "MISC TAB PROGGRESS    :     1%",
        Position = UDim2.new(0.3786, 0, 0.42754, 0)
    })
end

function TrojanWare:CreateConfigTab(parent)
    -- Progress indicator
    createInstance("TextLabel", {
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 14,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
        TextColor3 = Color3.fromRGB(0, 0, 0),
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 200, 0, 50),
        Text = "CONFIG TAB PROGGRESS    :     1%",
        Position = UDim2.new(0.40741, 0, 0.42007, 0)
    })

    -- Branding labels
    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 11,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = "SINCE 2025",
        Position = UDim2.new(0.02917, 0, 0.04742, 0)
    })

    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = self.Settings.GameName,
        Position = UDim2.new(0.22727, 0, 0.00398, 0)
    })

    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = "TROJAN WARE",
        Position = UDim2.new(0.02917, 0, 0.00398, 0)
    })
end

function TrojanWare:CreateIDKTab(parent)
    -- Progress indicator
    createInstance("TextLabel", {
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 14,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
        TextColor3 = Color3.fromRGB(0, 0, 0),
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 200, 0, 50),
        Text = ".... TAB PROGGRESS    :     1%",
        Position = UDim2.new(0.40741, 0, 0.42007, 0)
    })

    -- Branding labels
    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 11,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = "SINCE 2025",
        Position = UDim2.new(0.02917, 0, 0.04742, 0)
    })

    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = self.Settings.GameName,
        Position = UDim2.new(0.22727, 0, 0.00398, 0)
    })

    createInstance("TextLabel", {
        Name = "NAMEHUB25",
        Parent = parent,
        BorderSizePixel = 0,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 180, 0, 19),
        Text = "TROJAN WARE",
        Position = UDim2.new(0.02917, 0, 0.00398, 0)
    })
end

function TrojanWare:CreateSidebar(parent)
    local listFrame = createInstance("Frame", {
        Name = "list",
        Parent = parent,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.MainColor,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Size = UDim2.new(0, 94, 0, 339),
        Position = UDim2.new(-0.1315, -3, 0.36868, 44),
        BackgroundTransparency = 0.1
    })
    createInstance("UICorner", {Parent = listFrame})

    local list2 = createInstance("Frame", {
        Name = "list2",
        Parent = listFrame,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.SecondaryColor,
        Size = UDim2.new(0, 92, 0, 339),
        Position = UDim2.new(0.43471, -40, -0.00147, 0),
        BackgroundTransparency = 0.4
    })
    createInstance("UICorner", {Parent = list2})
    createInstance("UIGradient", {Parent = list2})

    -- Tab buttons
    local buttons = {
        {Name = "HomeButton", Position = UDim2.new(0.11108, 0, 0.02976, 28), Text = "HOME", Image = "rbxassetid://138376539454145"},
        {Name = "MainButton", Position = UDim2.new(0.08878, 0, 0.23528, 8), Text = "MAIN", Image = "rbxassetid://71021086762099"},
        {Name = "MiscButton", Position = UDim2.new(0.08878, 0, 0.44398, -11), Text = "MISC", Image = "rbxassetid://112896592265413"},
        {Name = "IdkButton", Position = UDim2.new(0.08878, 0, 0.64022, -22), Text = "IDK", Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"},
        {Name = "ConfigButton", Position = UDim2.new(0.08878, 0, 0.81937, -29), Text = "CONFIG", Image = "rbxassetid://126496417047546"}
    }

    for _, buttonInfo in ipairs(buttons) do
        local button = createInstance("ImageButton", {
            Name = buttonInfo.Name,
            Parent = list2,
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            Image = buttonInfo.Image,
            Size = UDim2.new(0, 23, 0, 24),
            Position = buttonInfo.Position
        })
        createInstance("UICorner", {Parent = button})

        createInstance("TextLabel", {
            Parent = button,
            BorderSizePixel = 0,
            TextSize = 11,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextStrokeColor3 = self.Settings.AccentColor,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            FontFace = self.Settings.SmallFont,
            TextColor3 = self.Settings.AccentColor,
            BackgroundTransparency = 1,
            Size = UDim2.new(0, 54, 0, 17),
            Text = buttonInfo.Text,
            Position = UDim2.new(1.225, 0, 0.12281, 0)
        })
    end

    -- Logo
    local logo = createInstance("ImageLabel", {
        Parent = list2,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        ImageTransparency = 0.5,
        Image = "rbxassetid://92138690758194",
        Size = UDim2.new(0, 29, 0, 27),
        BackgroundTransparency = 1,
        Position = UDim2.new(0.02211, 0, 0.00963, 0)
    })
    createInstance("UICorner", {Parent = logo})

    -- Fade effects
    local innerFade = createInstance("Frame", {
        Name = "InnerFade",
        Parent = list2,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.SecondaryColor,
        Size = UDim2.new(0, 112, 0, 362),
        Position = UDim2.new(-0.10724, 0, -0.03557, 0),
        BackgroundTransparency = 0.5
    })
    createInstance("UICorner", {Parent = innerFade})
    createInstance("UIGradient", {Parent = innerFade})

    local outerFade = createInstance("Frame", {
        Name = "OuterFade",
        Parent = innerFade,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(155, 144, 124),
        Size = UDim2.new(0, 128, 0, 379),
        Position = UDim2.new(-0.06865, 0, -0.02463, 0),
        BackgroundTransparency = 0.7
    })
    createInstance("UICorner", {Parent = outerFade})
end

function TrojanWare:CreateLoadingUI(parent)
    local loadingFrame = createInstance("Frame", {
        Name = "LoadingUi",
        Parent = parent,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.MainColor,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Size = UDim2.new(0, 338, 0, 198),
        Position = UDim2.new(0.50877, 1, 0.40438, 45),
        BackgroundTransparency = 0.1
    })
    createInstance("UICorner", {Parent = loadingFrame})

    -- Logo
    local logo = createInstance("ImageLabel", {
        Parent = loadingFrame,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        Image = "rbxassetid://92138690758194",
        Size = UDim2.new(0, 25, 0, 25),
        BackgroundTransparency = 0.4,
        Position = UDim2.new(0.02204, 0, 0.0209, 0)
    })
    createInstance("UICorner", {Parent = logo})

    -- Branding labels
    createInstance("TextLabel", {
        Parent = logo,
        BorderSizePixel = 0,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 167, 0, 16),
        Text = "TROJAN WARE",
        Position = UDim2.new(1.225, 0, 0, 0)
    })

    createInstance("TextLabel", {
        Parent = logo,
        BorderSizePixel = 0,
        TextSize = 11,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 167, 0, 16),
        Text = "SINCE 2025",
        Position = UDim2.new(1.225, 0, 0.28947, 0)
    })

    -- Fade effects
    local innerFade = createInstance("Frame", {
        Name = "InnerFade",
        Parent = loadingFrame,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.SecondaryColor,
        Size = UDim2.new(0, 353, 0, 211),
        Position = UDim2.new(-0.02109, 0, -0.03354, 0),
        BackgroundTransparency = 0.5
    })
    createInstance("UICorner", {Parent = innerFade})
    createInstance("UIGradient", {Parent = innerFade})

    local outerFade = createInstance("Frame", {
        Name = "OuterFade",
        Parent = innerFade,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(155, 144, 124),
        Size = UDim2.new(0, 366, 0, 224),
        Position = UDim2.new(-0.01381, 0, -0.02712, 0),
        BackgroundTransparency = 0.7
    })
    createInstance("UICorner", {Parent = outerFade})

    -- Progress bar
    local progress = createInstance("Frame", {
        Name = "Progress",
        Parent = loadingFrame,
        SizeConstraint = Enum.SizeConstraint.RelativeYY,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        AnchorPoint = Vector2.new(0, 1),
        Size = UDim2.new(0.2, 0, 0.2, 0),
        Position = UDim2.new(0.43769, 0, 0.59898, 0),
        BackgroundTransparency = 1
    })

    local frame1 = createInstance("Frame", {
        Name = "Frame1",
        Parent = progress,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        ClipsDescendants = true,
        Size = UDim2.new(0.52525, 0, 1, 0),
        BackgroundTransparency = 1
    })

    local image1 = createInstance("ImageLabel", {
        Parent = frame1,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        ImageTransparency = 0.5,
        Image = "rbxasset://textures/ui/GuiImagePlaceholder.png",
        Size = UDim2.new(2, 0, 1, 0),
        BackgroundTransparency = 1
    })

    local gradient1 = createInstance("UIGradient", {
        Parent = image1,
        Transparency = NumberSequence.new{
            NumberSequenceKeypoint.new(0, 0),
            NumberSequenceKeypoint.new(0.500, 0),
            NumberSequenceKeypoint.new(0.501, 1),
            NumberSequenceKeypoint.new(1.000, 1)
        }
    })

    local frame2 = createInstance("Frame", {
        Name = "Frame2",
        Parent = progress,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        AnchorPoint = Vector2.new(1, 0),
        ClipsDescendants = true,
        Size = UDim2.new(0.55051, 0, 1, 0),
        Position = UDim2.new(1.05051, 0, 0, 0),
        BackgroundTransparency = 1
    })

    local image2 = createInstance("ImageLabel", {
        Parent = frame2,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        ImageTransparency = 0.5,
        Image = "rbxasset://textures/ui/GuiImagePlaceholder.png",
        Size = UDim2.new(2.05051, 0, 1, 0),
        Position = UDim2.new(-0.9495, 0, 0, 0),
        BackgroundTransparency = 1
    })

    local gradient2 = createInstance("UIGradient", {
        Parent = image2,
        Rotation = 180,
        Transparency = NumberSequence.new{
            NumberSequenceKeypoint.new(0, 0),
            NumberSequenceKeypoint.new(0.500, 0),
            NumberSequenceKeypoint.new(0.501, 1),
            NumberSequenceKeypoint.new(1.000, 1)
        }
    })

    local percentage = createInstance("NumberValue", {
        Name = "Percentage",
        Parent = progress
    })

    -- Progress script
    local progressScript = createInstance("LocalScript", {
        Name = "ProgressScript",
        Parent = percentage
    })

    -- Script values
    createInstance("StringValue", {
        Name = "MissingPartType",
        Parent = progressScript,
        Value = "TransAndColor"
    })

    createInstance("BoolValue", {
        Name = "FlipProgress",
        Parent = progressScript
    })

    createInstance("NumberValue", {
        Name = "TransOfMissingPart",
        Parent = progressScript,
        Value = 0.25
    })

    createInstance("Color3Value", {
        Name = "ColorOfMissingPart",
        Parent = progressScript,
        Value = Color3.fromRGB(255, 255, 255)
    })

    createInstance("NumberValue", {
        Name = "TransOfPercentPart",
        Parent = progressScript
    })

    createInstance("Color3Value", {
        Name = "ColorOfPercentPart",
        Parent = progressScript,
        Value = Color3.fromRGB(155, 144, 124)
    })

    createInstance("Color3Value", {
        Name = "ImageColor",
        Parent = progressScript,
        Value = Color3.fromRGB(255, 255, 255)
    })

    createInstance("NumberValue", {
        Name = "ImageTrans",
        Parent = progressScript
    })

    createInstance("StringValue", {
        Name = "ImageId",
        Parent = progressScript,
        Value = "3587367081"
    })

    -- Progress script code
    progressScript.Source = [[
        game:GetService("RunService").RenderStepped:Connect(function()
            script.Parent.Value = script.Parent.Value + 1
            if script.Parent.Value > 100 then
                script.Parent.Value = 0
            end
            
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
                error("Unknown Type. Only 3 available: "Trans", "Color" and "TransAndColor", changing to "Trans".")
            end
        end)
    ]]
end

function TrojanWare:CreateNotificationUI(parent)
    local notifyFrame = createInstance("Frame", {
        Name = "Notify2",
        Parent = parent,
        Visible = false,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        Size = UDim2.new(0, 246, 0, 163),
        Position = UDim2.new(0.62727, 0, 0.70082, 0)
    })
    createInstance("UICorner", {Parent = notifyFrame})

    -- Fade effects
    local innerFade = createInstance("Frame", {
        Name = "InnerFade",
        Parent = notifyFrame,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.SecondaryColor,
        Size = UDim2.new(0, 267, 0, 181),
        Position = UDim2.new(-0.04271, 0, -0.04378, 0),
        BackgroundTransparency = 0.5
    })
    createInstance("UICorner", {Parent = innerFade})
    createInstance("UIGradient", {Parent = innerFade})

    local outerFade = createInstance("Frame", {
        Name = "OuterFade",
        Parent = innerFade,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(155, 144, 124),
        Size = UDim2.new(0, 286, 0, 196),
        Position = UDim2.new(-0.03866, 0, -0.04431, 0),
        BackgroundTransparency = 0.7
    })
    createInstance("UICorner", {Parent = outerFade})

    -- Fade overlay
    local fadeOverlay = createInstance("Frame", {
        Name = "FadeOverlay",
        Parent = notifyFrame,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(47, 47, 47),
        Size = UDim2.new(1, 0, 0.957, 0),
        BackgroundTransparency = 1
    })
    createInstance("UICorner", {Parent = fadeOverlay})

    -- Message
    local messageLabel = createInstance("TextLabel", {
        Parent = notifyFrame,
        BorderSizePixel = 0,
        TextSize = 14,
        BackgroundColor3 = Color3.fromRGB(155, 144, 124),
        FontFace = self.Settings.Font,
        TextColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 0.748, 0),
        Text = "PLEASE SUPPORT US ON DISCORD",
        Position = UDim2.new(0.00407, 0, 0.09816, 0)
    })
    createInstance("UICorner", {Parent = messageLabel})

    -- Copy button
    local copyButton = createInstance("TextButton", {
        Name = "CopyButton",
        Parent = notifyFrame,
        BorderSizePixel = 0,
        TextSize = 14,
        TextColor3 = Color3.fromRGB(0, 0, 0),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal),
        Size = UDim2.new(0, 92, 0, 37),
        Text = "COPY",
        Position = UDim2.new(0.03926, 0, 0.69487, 0)
    })
    createInstance("UICorner", {Parent = copyButton})

    -- Copy button fade effects
    local copyInnerFade = createInstance("Frame", {
        Name = "InnerFade",
        Parent = copyButton,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.SecondaryColor,
        Size = UDim2.new(1.119, 0, 1.216, 0),
        Position = UDim2.new(-0.04272, 0, -0.04308, 0),
        BackgroundTransparency = 0.5
    })
    createInstance("UICorner", {Parent = copyInnerFade})
    createInstance("UIGradient", {Parent = copyInnerFade})

    local copyOuterFade = createInstance("Frame", {
        Name = "OuterFade",
        Parent = copyInnerFade,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(155, 144, 124),
        Size = UDim2.new(1.217, 0, 1.297, 0),
        Position = UDim2.new(-0.03914, 0, -0.08062, 0),
        BackgroundTransparency = 0.7
    })
    createInstance("UICorner", {Parent = copyOuterFade})

    -- Copy script
    local copyScript = createInstance("LocalScript", {
        Name = "CopyScript",
        Parent = copyButton,
        Source = [[
            local button = script.Parent
            button.MouseButton1Click:Connect(function()
                setclipboard("]] .. self.Settings.DiscordLink .. [[")
            end)
        ]]
    })

    -- Close button
    local closeButton = createInstance("TextButton", {
        Name = "CloseButton",
        Parent = notifyFrame,
        BorderSizePixel = 0,
        TextSize = 14,
        TextColor3 = Color3.fromRGB(0, 0, 0),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal),
        Size = UDim2.new(0, 94, 0, 37),
        Text = "CLOSE",
        Position = UDim2.new(0.53884, 0, 0.69487, 0)
    })
    createInstance("UICorner", {Parent = closeButton})

    -- Close button fade effects
    local closeInnerFade = createInstance("Frame", {
        Name = "InnerFade",
        Parent = closeButton,
        BorderSizePixel = 0,
        BackgroundColor3 = self.Settings.SecondaryColor,
        Size = UDim2.new(1.127, 0, 1.216, 0),
        Position = UDim2.new(-0.00953, 0, -0.04308, 0),
        BackgroundTransparency = 0.5
    })
    createInstance("UICorner", {Parent = closeInnerFade})
    createInstance("UIGradient", {Parent = closeInnerFade})

    local closeOuterFade = createInstance("Frame", {
        Name = "OuterFade",
        Parent = closeInnerFade,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(155, 144, 124),
        Size = UDim2.new(1.217, 0, 1.297, 0),
        Position = UDim2.new(-0.08769, 0, -0.10284, 0),
        BackgroundTransparency = 0.7
    })
    createInstance("UICorner", {Parent = closeOuterFade})

    -- Close script
    local closeScript = createInstance("LocalScript", {
        Name = "CloseScript",
        Parent = closeButton,
        Source = [[
            local closeButton = script.Parent
            local notifyFrame = closeButton.Parent
            closeButton.MouseButton1Click:Connect(function()
                notifyFrame.Visible = false
            end)
        ]]
    })

    -- Logo
    local logo = createInstance("ImageLabel", {
        Parent = notifyFrame,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        ImageTransparency = 0.01,
        Image = "rbxassetid://127398033419250",
        Size = UDim2.new(0, 26, 0, 27),
        Position = UDim2.new(0.02263, 0, 0.05241, 0)
    })
    createInstance("UICorner", {Parent = logo})

    -- Branding labels
    createInstance("TextLabel", {
        Parent = logo,
        BorderSizePixel = 0,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 167, 0, 16),
        Text = "TROJAN WARE",
        Position = UDim2.new(1.225, 0, 0, 0)
    })

    createInstance("TextLabel", {
        Parent = logo,
        BorderSizePixel = 0,
        TextSize = 11,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextStrokeColor3 = self.Settings.AccentColor,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.SmallFont,
        TextColor3 = self.Settings.AccentColor,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 167, 0, 16),
        Text = "SINCE 2025",
        Position = UDim2.new(1.225, 0, 0.28947, 0)
    })

    -- Drag script
    local dragScript = createInstance("LocalScript", {
        Name = "dragscript",
        Parent = notifyFrame,
        Source = [[
            local UserInputService = game:GetService("UserInputService")
            local gui = script.Parent
            
            local dragging = false
            local dragInput, dragStart, startPos
            
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
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = true
                    dragStart = input.Position
                    startPos = gui.Position
            
                    input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragging = false
                        end
                    end)
                end
            end)
            
            gui.InputChanged:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                    dragInput = input
                end
            end)
            
            UserInputService.InputChanged:Connect(function(input)
                if dragging and input == dragInput then
                    update(input)
                end
            end)
        ]]
    })
end

function TrojanWare:CreateToggleButton(parent, name, position, labelText, callback)
    local buttonGroup = createInstance("CanvasGroup", {
        Name = name,
        Parent = parent,
        Size = UDim2.new(0.06379, 0, 0.12045, 0),
        Position = position
    })
    createInstance("UICorner", {CornerRadius = UDim.new(1, 0), Parent = buttonGroup})
    createInstance("UIAspectRatioConstraint", {AspectRatio = 2, Parent = buttonGroup})

    local ovalFrame = createInstance("Frame", {
        Name = "OvalFrame",
        Parent = buttonGroup,
        BackgroundColor3 = Color3.fromRGB(0, 0, 0),
        Size = UDim2.new(1, 0, 1, 0)
    })

    local circle = createInstance("Frame", {
        Name = "Circle",
        Parent = ovalFrame,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        Size = UDim2.new(0.5, 0, 1, 0)
    })
    createInstance("UICorner", {CornerRadius = UDim.new(1, 0), Parent = circle})

    local offDisplay = createInstance("Frame", {
        Name = "OffDisplay",
        Parent = circle,
        BackgroundColor3 = Color3.fromRGB(163, 166, 171),
        Size = UDim2.new(2, 0, 1, 0),
        Position = UDim2.new(0.5, 0, 0, 0)
    })

    local onDisplay = createInstance("Frame", {
        Name = "OnDisplay",
        Parent = circle,
        BackgroundColor3 = name == "ToggleButton2" and Color3.fromRGB(244, 231, 209) or Color3.fromRGB(0, 171, 0),
        AnchorPoint = Vector2.new(0.75, 0),
        Size = UDim2.new(2, 0, 1, 0)
    })

    local clickDetector = createInstance("TextButton", {
        Name = "ClickDetector",
        Parent = circle,
        TextSize = 14,
        TextColor3 = Color3.fromRGB(0, 0, 0),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
        Size = UDim2.new(1, 0, 1, 0),
        Text = ""
    })
    createInstance("UICorner", {CornerRadius = UDim.new(1, 0), Parent = clickDetector})

    -- Toggle event
    local toggleEvent = createInstance("BindableEvent", {
        Name = "ToggleEvent",
        Parent = buttonGroup
    })

    -- Default value event
    local defaultValueEvent = createInstance("BindableEvent", {
        Name = "LoadDefaultValue",
        Parent = buttonGroup
    })

    -- Toggle script
    local scriptSource = [[
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
        local isToggled = false
    
        -- UI setup
        if OnPosition == "Right" then
            OnDisplay.Position = UDim2.new(0,0,0,0)
            OffDisplay.Position = UDim2.new(0.5,0,0,0)
            OnDisplay.AnchorPoint = Vector2.new(0.75,0)
            OffDisplay.AnchorPoint = Vector2.new(0,0)
        elseif OnPosition == "Left" then
            OnDisplay.Position = UDim2.new(0.5,0,0,0) 
            OffDisplay.Position = UDim2.new(0,0,0,0)
            OnDisplay.AnchorPoint = Vector2.new(0,0)
            OffDisplay.AnchorPoint = Vector2.new(0.75,0)
        end
    
        -- Main Toggle Logic
        Button.MouseButton1Click:Connect(function()
            if tonumber(os.clock()) - LastTimeClicked >= ClickDebounceTime then
                LastTimeClicked = tonumber(os.clock())
                isToggled = not isToggled
    
                if Button.Parent.Position.X.Scale == 0 then
                    CircleFrame:TweenPosition(UDim2.new(0.5,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
                elseif Button.Parent.Position.X.Scale == 0.5 then
                    CircleFrame:TweenPosition(UDim2.new(0,0,0,0), TweenDirection, TweenStyle, TweenSpeed, false)
                end
    
                -- Fire callback
                ButtonMainFrame:FindFirstChild("ToggleEvent"):Fire(isToggled)
            end
        end)
    
        -- Default UI Position Load
        DefaultValueEvent.Event:Connect(function(DefaultValue)
            if DefaultValue == true then
                if OnPosition == "Right" then
                    CircleFrame.Position = UDim2.new(0,0,0,0)
                else
                    CircleFrame.Position = UDim2.new(0.5,0,0,0)
                end
                isToggled = true
            else
                if OnPosition == "Left" then
                    CircleFrame.Position = UDim2.new(0,0,0,0)
                else
                    CircleFrame.Position = UDim2.new(0.5,0,0,0)
                end
                isToggled = false
            end
            ButtonMainFrame:FindFirstChild("ToggleEvent"):Fire(isToggled)
        end)
    ]]

    local toggleScript = createInstance("LocalScript", {
        Parent = clickDetector,
        Source = scriptSource
    })

    -- Connect the callback
    toggleEvent.Event:Connect(callback)

    return buttonGroup
end

function TrojanWare:CreateAutoNameScript(parent)
    local script = createInstance("LocalScript", {
        Name = "auto name script",
        Parent = parent,
        Source = [[
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            
            local nameFrame = script.Parent:WaitForChild("HOME"):WaitForChild("NAME")
            local textLabel = nameFrame:FindFirstChildOfClass("TextLabel")
            
            if textLabel then
                textLabel.Text = player.Name
            else
                warn("TextLabel not found inside HOME > NAME.")
            end
        ]]
    })
end

function TrojanWare:CreateAutoHeadPicScript(parent)
    local script = createInstance("LocalScript", {
        Name = "auto head pic script",
        Parent = parent,
        Source = [[
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            
            local imageLabel = script.Parent:WaitForChild("HOME"):WaitForChild("picture"):WaitForChild("ImageLabel")
            
            local userId = player.UserId
            local thumbType = Enum.ThumbnailType.HeadShot
            local thumbSize = Enum.ThumbnailSize.Size420x420
            
            local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
            imageLabel.Image = content
        ]]
    })
end

function TrojanWare:CreateExecutorScript(parent)
    local script = createInstance("LocalScript", {
        Name = "executor script",
        Parent = parent,
        Source = [[
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
        ]]
    })
end

function TrojanWare:CreateAnimationScript(parent)
    local script = createInstance("LocalScript", {
        Name = "animation",
        Parent = parent,
        Source = [[
            local TweenService = game:GetService("TweenService")
            
            local mainUI = script.Parent
            local fadeOverlay = mainUI:WaitForChild("FadeOverlay")
            local listFrame = mainUI:WaitForChild("list")
            local list2 = listFrame:WaitForChild("list2")
            
            -- Tab Frames
            local tabs = {
                HOME = mainUI:WaitForChild("HOME"),
                MAIN = mainUI:WaitForChild("MAIN"),
                MISC = mainUI:WaitForChild("MISC"),
                CONFIG = mainUI:WaitForChild("CONFIG"),
                IDK = mainUI:WaitForChild("IDK"),
            }
            
            -- Section now inside MAIN tab
            local section = tabs["MAIN"]:WaitForChild("Section")
            
            -- Buttons inside list2
            local buttons = {
                HomeButton = "HOME",
                MainButton = "MAIN",
                MiscButton = "MISC",
                ConfigButton = "CONFIG",
                IdkButton = "IDK",
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
        ]]
    })
end

function TrojanWare:CreateDragScript(parent)
    local script = createInstance("LocalScript", {
        Name = "dragscript",
        Parent = parent,
        Source = [[
            local UserInputService = game:GetService("UserInputService")
            local gui = script.Parent
            
            local dragging = false
            local dragInput
            local dragStart
            local startPos
            
            local originalTransparency = gui.BackgroundTransparency or 0
            local dragTransparency = 0.5
            
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
                    gui.BackgroundTransparency = dragTransparency
            
                    input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragging = false
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
        ]]
    })
end

function TrojanWare:CreateLoadScript(parent)
    local script = createInstance("LocalScript", {
        Name = "LoadsScript",
        Parent = parent,
        Source = [[
            local TweenService = game:GetService("TweenService")
            local Lighting = game:GetService("Lighting")
            local gui = script.Parent
            
            local loadingUi = gui:WaitForChild("LoadingUi")
            local mainUi = gui:WaitForChild("MainUi")
            local blur = Lighting:WaitForChild("TrojanWareBlur")
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
            
            -- Wait loading duration
            task.wait(]] .. tostring(self.Settings.LoadingDuration) .. [[)
            
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
        ]]
    })
end

-- Public methods
function TrojanWare:Show()
    if not self.GUI then
        self:CreateMainUI()
    end
    self.GUI.Enabled = true
end

function TrojanWare:Hide()
    if self.GUI then
        self.GUI.Enabled = false
    end
end

function TrojanWare:Toggle()
    if self.GUI then
        self.GUI.Enabled = not self.GUI.Enabled
    end
end

function TrojanWare:Destroy()
    if self.GUI then
        self.GUI:Destroy()
        self.GUI = nil
    end
    if self.BlurEffect then
        self.BlurEffect:Destroy()
        self.BlurEffect = nil
    end
end

function TrojanWare:Notify(message, duration)
    if not self.GUI then return end
    
    local notify = self.GUI:FindFirstChild("Notify2")
    if not notify then return end
    
    local messageLabel = notify:FindFirstChildOfClass("TextLabel")
    if messageLabel then
        messageLabel.Text = message or "PLEASE SUPPORT US ON DISCORD"
    end
    
    notify.Visible = true
    
    if duration then
        task.delay(duration, function()
            notify.Visible = false
        end)
    end
end

function TrojanWare:SwitchTab(tabName)
    if not self.GUI then return end
    
    local mainUi = self.GUI:FindFirstChild("MainUi")
    if not mainUi then return end
    
    local fadeOverlay = mainUi:FindFirstChild("FadeOverlay")
    local tabs = {
        HOME = mainUi:FindFirstChild("HOME"),
        MAIN = mainUi:FindFirstChild("MAIN"),
        MISC = mainUi:FindFirstChild("MISC"),
        CONFIG = mainUi:FindFirstChild("CONFIG"),
        IDK = mainUi:FindFirstChild("IDK")
    }
    
    local section = tabs["MAIN"] and tabs["MAIN"]:FindFirstChild("Section")
    
    if not tabs[tabName] or tabs[tabName] == self.CurrentTab then return end
    
    local fadeTime = 0.8
    local fadeInfo = TweenInfo.new(fadeTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    local fadeIn = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 0})
    local fadeOut = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 1})
    
    fadeIn:Play()
    fadeIn.Completed:Wait()
    
    for _, tab in pairs(tabs) do
        tab.Visible = false
    end
    
    tabs[tabName].Visible = true
    self.CurrentTab = tabs[tabName]
    
    -- Section fade logic only for MAIN tab
    if tabName == "MAIN" then
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

function TrojanWare:AddButton(tabName, buttonName, position, callback)
    if not self.GUI then return end
    
    local tab = self.GUI:FindFirstChild("MainUi"):FindFirstChild(tabName)
    if not tab then return end
    
    local button = createInstance("TextButton", {
        Name = buttonName,
        Parent = tab,
        Text = buttonName,
        Position = position,
        Size = UDim2.new(0, 100, 0, 50),
        BackgroundColor3 = self.Settings.SecondaryColor,
        TextColor3 = Color3.fromRGB(255, 255, 255),
        FontFace = self.Settings.Font
    })
    createInstance("UICorner", {Parent = button})
    
    button.MouseButton1Click:Connect(callback)
    
    return button
end

function TrojanWare:AddToggle(tabName, toggleName, position, callback)
    if not self.GUI then return end
    
    local tab = self.GUI:FindFirstChild("MainUi"):FindFirstChild(tabName)
    if not tab then return end
    
    return self:CreateToggleButton(tab, toggleName, position, "", callback)
end

return TrojanWare
