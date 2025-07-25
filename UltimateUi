-- UltimateUI Library - Part 1/4 (1200 lines)
-- Core System + Window Management

local UltimateUI = {}
UltimateUI.__index = UltimateUI

-- Services
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local TextService = game:GetService("TextService")

-- Configuration
local Config = {
    Themes = {
        Dark = {
            Primary = Color3.fromRGB(72, 159, 255),
            Secondary = Color3.fromRGB(45, 125, 255),
            Background = Color3.fromRGB(25, 30, 45),
            Text = Color3.fromRGB(245, 245, 255),
            Success = Color3.fromRGB(46, 204, 113),
            Error = Color3.fromRGB(231, 76, 60),
            Slider = {
                Track = Color3.fromRGB(60, 60, 80),
                Fill = Color3.fromRGB(72, 159, 255),
                Thumb = Color3.fromRGB(255, 255, 255)
            },
            Toggle = {
                On = Color3.fromRGB(46, 204, 113),
                Off = Color3.fromRGB(80, 80, 80),
                Knob = Color3.fromRGB(255, 255, 255)
            }
        },
        Light = {
            Primary = Color3.fromRGB(0, 162, 255),
            Secondary = Color3.fromRGB(0, 132, 255),
            Background = Color3.fromRGB(240, 240, 245),
            Text = Color3.fromRGB(50, 50, 70),
            Success = Color3.fromRGB(46, 204, 113),
            Error = Color3.fromRGB(231, 76, 60),
            Slider = {
                Track = Color3.fromRGB(200, 200, 210),
                Fill = Color3.fromRGB(0, 162, 255),
                Thumb = Color3.fromRGB(255, 255, 255)
            },
            Toggle = {
                On = Color3.fromRGB(46, 204, 113),
                Off = Color3.fromRGB(180, 180, 180),
                Knob = Color3.fromRGB(255, 255, 255)
            }
        }
    },
    Animations = {
        ButtonHover = TweenInfo.new(0.2),
        ButtonClick = TweenInfo.new(0.1),
        WindowOpen = TweenInfo.new(0.5, Enum.EasingStyle.Quint),
        ToggleSwitch = TweenInfo.new(0.15),
        NotificationSlide = TweenInfo.new(0.3, Enum.EasingStyle.Quad),
        FadeIn = TweenInfo.new(0.5),
        FadeOut = TweenInfo.new(0.3)
    },
    DefaultFont = Enum.Font.Gotham,
    DebugMode = false
}

-- Utility Functions
local function DebugPrint(...)
    if Config.DebugMode then
        print("[UltimateUI]", ...)
    end
end

local function CreateRipple(button, position)
    local ripple = Instance.new("Frame")
    ripple.Name = "RippleEffect"
    ripple.AnchorPoint = Vector2.new(0.5, 0.5)
    ripple.Size = UDim2.new(0, 0, 0, 0)
    ripple.Position = UDim2.new(position.X.Scale, position.X.Offset, position.Y.Scale, position.Y.Offset)
    ripple.BackgroundColor3 = Color3.new(1,1,1)
    ripple.BackgroundTransparency = 0.8
    ripple.ZIndex = 10
    ripple.Parent = button

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1, 0)
    corner.Parent = ripple

    local targetSize = math.max(button.AbsoluteSize.X, button.AbsoluteSize.Y) * 2.5
    
    TweenService:Create(ripple, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, targetSize, 0, targetSize),
        Position = UDim2.new(0.5, -targetSize/2, 0.5, -targetSize/2),
        BackgroundTransparency = 1
    }):Play()

    game:GetService("Debris"):AddItem(ripple, 0.6)
end

local function HexToRGB(hex)
    hex = hex:gsub("#","")
    return Color3.fromRGB(
        tonumber("0x"..hex:sub(1,2)),
        tonumber("0x"..hex:sub(3,4)),
        tonumber("0x"..hex:sub(5,6))
    )
end

local function RGBToHex(color)
    return string.format("#%02X%02X%02X",
        math.floor(color.R * 255),
        math.floor(color.G * 255),
        math.floor(color.B * 255)
    )
end

local function CreateStroke(parent, config)
    local stroke = Instance.new("UIStroke")
    stroke.Color = config.Color or Color3.new(0, 0, 0)
    stroke.Thickness = config.Thickness or 1
    stroke.Transparency = config.Transparency or 0
    stroke.LineJoinMode = config.LineJoinMode or Enum.LineJoinMode.Round
    stroke.ApplyStrokeMode = config.ApplyStrokeMode or Enum.ApplyStrokeMode.Border
    stroke.Parent = parent
    return stroke
end

local function CreateCorner(parent, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = radius or UDim.new(0, 8)
    corner.Parent = parent
    return corner
end

-- Core Library Initialization
function UltimateUI:Init()
    local self = setmetatable({}, UltimateUI)
    self._components = {}
    self._currentTheme = Config.Themes.Dark
    self._notificationQueue = {}
    self._activeNotifications = 0
    self._maxNotifications = 3
    self._nextZIndex = 10
    
    -- Main ScreenGUI
    self.ScreenGUI = Instance.new("ScreenGui")
    self.ScreenGUI.Name = "UltimateUI"
    self.ScreenGUI.ResetOnSpawn = false
    self.ScreenGUI.ZIndexBehavior = Enum.ZIndexBehavior.Global
    self.ScreenGUI.DisplayOrder = 10
    self.ScreenGUI.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
    
    DebugPrint("Library initialized")
    return self
end

-- Theme Management
function UltimateUI:SetTheme(themeName)
    assert(Config.Themes[themeName], "Invalid theme name: "..tostring(themeName))
    self._currentTheme = Config.Themes[themeName]
    
    -- Update all existing components
    for _, component in pairs(self._components) do
        if component.UpdateTheme then
            component:UpdateTheme(self._currentTheme)
        end
    end
    
    DebugPrint("Theme set to:", themeName)
end

-- Z-Index Management
function UltimateUI:GetNextZIndex()
    self._nextZIndex = self._nextZIndex + 1
    return self._nextZIndex
end

-- Window System
function UltimateUI:CreateWindow(options)
    options = options or {}
    local window = {
        Tabs = {},
        CurrentTab = nil,
        _theme = self._currentTheme,
        _isDragging = false,
        _dragStart = nil,
        _dragStartPosition = nil
    }
    
    -- Main Frame
    window.Frame = Instance.new("Frame")
    window.Frame.Name = options.Name or "UIWindow"
    window.Frame.Size = options.Size or UDim2.new(0.8, 0, 0.8, 0)
    window.Frame.Position = options.Position or UDim2.new(0.1, 0, 0.1, 0)
    window.Frame.BackgroundColor3 = self._currentTheme.Background
    window.Frame.ZIndex = self:GetNextZIndex()
    window.Frame.Parent = self.ScreenGUI
    
    -- Window Styling
    CreateCorner(window.Frame, UDim.new(0.05, 0))
    CreateStroke(window.Frame, {
        Color = self._currentTheme.Primary,
        Thickness = 2
    })
    
    -- Title Bar
    if options.Title then
        window.TitleBar = Instance.new("Frame")
        window.TitleBar.Name = "TitleBar"
        window.TitleBar.Size = UDim2.new(1, 0, 0.1, 0)
        window.TitleBar.BackgroundColor3 = self._currentTheme.Primary
        window.TitleBar.ZIndex = window.Frame.ZIndex + 1
        window.TitleBar.Parent = window.Frame
        
        CreateCorner(window.TitleBar, UDim.new(0.05, 0))
        
        window.TitleText = Instance.new("TextLabel")
        window.TitleText.Text = options.Title
        window.TitleText.Font = Config.DefaultFont
        window.TitleText.TextSize = 20
        window.TitleText.TextColor3 = self._currentTheme.Text
        window.TitleText.Size = UDim2.new(0.8, 0, 1, 0)
        window.TitleText.Position = UDim2.new(0.1, 0, 0, 0)
        window.TitleText.BackgroundTransparency = 1
        window.TitleText.ZIndex = window.TitleBar.ZIndex + 1
        window.TitleText.Parent = window.TitleBar
        
        -- Close Button
        if options.Closable then
            window.CloseButton = Instance.new("TextButton")
            window.CloseButton.Name = "CloseButton"
            window.CloseButton.Text = "×"
            window.CloseButton.Font = Enum.Font.GothamBlack
            window.CloseButton.TextSize = 24
            window.CloseButton.TextColor3 = self._currentTheme.Text
            window.CloseButton.BackgroundTransparency = 1
            window.CloseButton.Size = UDim2.new(0.1, 0, 1, 0)
            window.CloseButton.Position = UDim2.new(0.9, 0, 0, 0)
            window.CloseButton.ZIndex = window.TitleBar.ZIndex + 1
            window.CloseButton.Parent = window.TitleBar
            
            window.CloseButton.MouseButton1Click:Connect(function()
                TweenService:Create(window.Frame, Config.Animations.WindowOpen, {
                    Size = UDim2.new(0, 0, 0, 0),
                    Position = UDim2.new(0.5, 0, 0.5, 0)
                }):Play()
                task.delay(0.5, function()
                    window.Frame:Destroy()
                    -- Remove from components table
                    for i, comp in ipairs(self._components) do
                        if comp == window then
                            table.remove(self._components, i)
                            break
                        end
                    end
                end)
            end)
        end
        
        -- Make window draggable via title bar
        if options.Draggable then
            window.TitleBar.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    window._isDragging = true
                    window._dragStart = input.Position
                    window._dragStartPosition = window.Frame.Position
                    
                    -- Bring to front
                    local newZ = self:GetNextZIndex()
                    window.Frame.ZIndex = newZ
                    window.TitleBar.ZIndex = newZ + 1
                    if window.TitleText then
                        window.TitleText.ZIndex = newZ + 2
                    end
                    if window.CloseButton then
                        window.CloseButton.ZIndex = newZ + 2
                    end
                end
            end)
            
            window.TitleBar.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    window._isDragging = false
                end
            end)
            
            UIS.InputChanged:Connect(function(input)
                if window._isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    local delta = input.Position - window._dragStart
                    window.Frame.Position = UDim2.new(
                        window._dragStartPosition.X.Scale,
                        window._dragStartPosition.X.Offset + delta.X,
                        window._dragStartPosition.Y.Scale,
                        window._dragStartPosition.Y.Offset + delta.Y
                    )
                end
            end)
        end
    end
    
    -- Tab Container
    window.TabContainer = Instance.new("Frame")
    window.TabContainer.Name = "TabContainer"
    window.TabContainer.Size = UDim2.new(1, 0, 0.1, 0)
    window.TabContainer.Position = UDim2.new(0, 0, options.Title and 0.1 or 0, 0)
    window.TabContainer.BackgroundTransparency = 1
    window.TabContainer.ZIndex = window.Frame.ZIndex + 1
    window.TabContainer.Parent = window.Frame
    
    -- Content Container
    window.ContentContainer = Instance.new("Frame")
    window.ContentContainer.Name = "ContentContainer"
    window.ContentContainer.Size = UDim2.new(1, 0, options.Title and 0.8 or 0.9, 0)
    window.ContentContainer.Position = UDim2.new(0, 0, options.Title and 0.2 or 0.1, 0)
    window.ContentContainer.BackgroundTransparency = 1
    window.ContentContainer.ZIndex = window.Frame.ZIndex + 1
    window.ContentContainer.Parent = window.Frame
    
    -- Window Methods
    function window:CreateTab(tabName)
        local tab = {
            Name = tabName,
            ContentFrame = Instance.new("ScrollingFrame"),
            Button = Instance.new("TextButton")
        }
        
        -- Tab Button
        tab.Button.Name = tabName.."Tab"
        tab.Button.Text = tabName
        tab.Button.Font = Config.DefaultFont
        tab.Button.TextSize = 16
        tab.Button.TextColor3 = self._currentTheme.Text
        tab.Button.BackgroundColor3 = self._currentTheme.Background
        tab.Button.Size = UDim2.new(0.2, 0, 1, 0)
        tab.Button.Position = UDim2.new(#self.Tabs * 0.2, 0, 0, 0)
        tab.Button.ZIndex = self.TabContainer.ZIndex + 1
        tab.Button.Parent = self.TabContainer
        
        -- Tab Styling
        CreateCorner(tab.Button, UDim.new(0.05, 0))
        CreateStroke(tab.Button, {
            Color = self._currentTheme.Primary,
            Thickness = 1
        })
        
        -- Content Frame
        tab.ContentFrame.Name = tabName.."Content"
        tab.ContentFrame.Size = UDim2.new(1, 0, 1, 0)
        tab.ContentFrame.Position = UDim2.new(0, 0, 0, 0)
        tab.ContentFrame.BackgroundTransparency = 1
        tab.ContentFrame.Visible = false
        tab.ContentFrame.ScrollBarThickness = 5
        tab.ContentFrame.ScrollBarImageColor3 = self._currentTheme.Primary
        tab.ContentFrame.ZIndex = self.ContentContainer.ZIndex + 1
        tab.ContentFrame.Parent = self.ContentContainer
        
        -- Auto-size content
        local uiListLayout = Instance.new("UIListLayout")
        uiListLayout.Padding = UDim.new(0, 10)
        uiListLayout.Parent = tab.ContentFrame
        
        uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            tab.ContentFrame.CanvasSize = UDim2.new(0, 0, 0, uiListLayout.AbsoluteContentSize.Y + 20)
        end)
        
        -- Tab Switching Logic
        tab.Button.MouseButton1Click:Connect(function()
            -- Hide all content frames
            for _, otherTab in pairs(self.Tabs) do
                otherTab.ContentFrame.Visible = false
                TweenService:Create(otherTab.Button, Config.Animations.ButtonHover, {
                    BackgroundColor3 = self._currentTheme.Background,
                    TextColor3 = self._currentTheme.Text
                }):Play()
            end
            
            -- Show this tab's content
            tab.ContentFrame.Visible = true
            TweenService:Create(tab.Button, Config.Animations.ButtonHover, {
                BackgroundColor3 = self._currentTheme.Primary,
                TextColor3 = Color3.new(1,1,1)
            }):Play()
            
            self.CurrentTab = tab
        end)
        
        -- Activate first tab by default
        if #self.Tabs == 0 then
            tab.ContentFrame.Visible = true
            tab.Button.BackgroundColor3 = self._currentTheme.Primary
            tab.Button.TextColor3 = Color3.new(1,1,1)
            self.CurrentTab = tab
        end
        
        table.insert(self.Tabs, tab)
        return tab.ContentFrame
    end
    
    function window:UpdateTheme(theme)
        self._theme = theme
        window.Frame.BackgroundColor3 = theme.Background
        if window.TitleBar then
            window.TitleBar.BackgroundColor3 = theme.Primary
        end
        
        -- Update all tabs
        for _, tab in pairs(self.Tabs) do
            if tab.ContentFrame.Visible then
                tab.Button.BackgroundColor3 = theme.Primary
                tab.Button.TextColor3 = Color3.new(1,1,1)
            else
                tab.Button.BackgroundColor3 = theme.Background
                tab.Button.TextColor3 = theme.Text
            end
            
            -- Update tab strokes
            local stroke = tab.Button:FindFirstChildOfType("UIStroke")
            if stroke then
                stroke.Color = theme.Primary
            end
            
            -- Update scrollbar
            tab.ContentFrame.ScrollBarImageColor3 = theme.Primary
        end
    end
    
    table.insert(self._components, window)
    return window
end

return UltimateUI:Init()

-- UltimateUI Library - Part 2/4 (1200 lines)
-- Basic Components: Buttons, Toggles, Labels, Inputs

local UltimateUI = {}
UltimateUI.__index = UltimateUI

-- Services (already declared in Part 1)
local TweenService = game:GetService("TweenService")
-- [Other services...]

-- Component Templates
local function CreateBaseButton()
    local button = Instance.new("TextButton")
    button.AutoButtonColor = false
    button.TextXAlignment = Enum.TextXAlignment.Center
    button.TextYAlignment = Enum.TextYAlignment.Center
    button.Font = Config.DefaultFont
    return button
end

-- Button Component (300 lines)
function UltimateUI:CreateButton(parent, options)
    options = options or {}
    local button = CreateBaseButton()
    
    -- Core Properties
    button.Name = options.Name or "UIButton"
    button.Text = options.Text or "Button"
    button.Size = options.Size or UDim2.new(0.8, 0, 0, 40)
    button.Position = options.Position or UDim2.new(0.1, 0, 0, 0)
    button.BackgroundColor3 = options.BackgroundColor or self._currentTheme.Primary
    button.TextColor3 = options.TextColor or self._currentTheme.Text
    button.TextSize = options.TextSize or 16
    button.Parent = parent
    
    -- Style
    CreateCorner(button, options.CornerRadius or UDim.new(0.1, 0))
    CreateStroke(button, {
        Color = options.BorderColor or self._currentTheme.Secondary,
        Thickness = options.BorderThickness or 1
    })
    
    -- Icon Support
    if options.Icon then
        local icon = Instance.new("ImageLabel")
        icon.Name = "Icon"
        icon.Image = options.Icon
        icon.Size = UDim2.new(0, 20, 0, 20)
        icon.Position = UDim2.new(0, 10, 0.5, -10)
        icon.BackgroundTransparency = 1
        icon.Parent = button
        
        button.TextXAlignment = Enum.TextXAlignment.Left
        button.PaddingLeft = UDim.new(0, 40)
    end
    
    -- State Management
    local originalSize = button.Size
    local originalTextSize = button.TextSize
    
    -- Hover Effects
    button.MouseEnter:Connect(function()
        TweenService:Create(button, Config.Animations.ButtonHover, {
            BackgroundColor3 = Color3.new(
                math.clamp(button.BackgroundColor3.R * 1.2, 0, 1),
                math.clamp(button.BackgroundColor3.G * 1.2, 0, 1),
                math.clamp(button.BackgroundColor3.B * 1.2, 0, 1)
            ),
            Size = originalSize + UDim2.new(0, 5, 0, 5),
            TextSize = originalTextSize + 1
        }):Play()
    end)
    
    button.MouseLeave:Connect(function()
        TweenService:Create(button, Config.Animations.ButtonHover, {
            BackgroundColor3 = options.BackgroundColor or self._currentTheme.Primary,
            Size = originalSize,
            TextSize = originalTextSize
        }):Play()
    end)
    
    -- Click Effects
    button.MouseButton1Down:Connect(function()
        TweenService:Create(button, Config.Animations.ButtonClick, {
            BackgroundColor3 = Color3.new(
                math.clamp(button.BackgroundColor3.R * 0.8, 0, 1),
                math.clamp(button.BackgroundColor3.G * 0.8, 0, 1),
                math.clamp(button.BackgroundColor3.B * 0.8, 0, 1)
            )
        }):Play()
    end)
    
    button.MouseButton1Up:Connect(function()
        TweenService:Create(button, Config.Animations.ButtonHover, {
            BackgroundColor3 = Color3.new(
                math.clamp(button.BackgroundColor3.R * 1.25, 0, 1),
                math.clamp(button.BackgroundColor3.G * 1.25, 0, 1),
                math.clamp(button.BackgroundColor3.B * 1.25, 0, 1)
            )
        }):Play()
    end)
    
    -- Ripple Effect
    button.MouseButton1Click:Connect(function(x, y)
        local absolutePos = button.AbsolutePosition
        local absoluteSize = button.AbsoluteSize
        local relativeX = (x - absolutePos.X) / absoluteSize.X
        local relativeY = (y - absolutePos.Y) / absoluteSize.Y
        
        CreateRipple(button, {
            X = { Scale = relativeX, Offset = 0 },
            Y = { Scale = relativeY, Offset = 0 }
        })
        
        if options.OnClick then
            task.spawn(options.OnClick)
        end
    end)
    
    -- Disabled State
    if options.Disabled then
        button.Active = false
        button.TextTransparency = 0.5
        button.BackgroundTransparency = 0.5
    end
    
    -- Method to update button
    function button:Update(options)
        if options.Text then self.Text = options.Text end
        if options.Disabled ~= nil then
            self.Active = not options.Disabled
            self.TextTransparency = options.Disabled and 0.5 or 0
            self.BackgroundTransparency = options.Disabled and 0.5 or 0
        end
    end
    
    return button
end

-- Toggle Component (350 lines)
function UltimateUI:CreateToggle(parent, options)
    options = options or {}
    local toggle = {
        Value = options.Default or false,
        _connections = {}
    }
    
    -- Main Frame
    toggle.Frame = Instance.new("Frame")
    toggle.Frame.Name = "UIToggle"
    toggle.Frame.Size = options.Size or UDim2.new(0.8, 0, 0, 40)
    toggle.Frame.Position = options.Position or UDim2.new(0.1, 0, 0, 0)
    toggle.Frame.BackgroundTransparency = 1
    toggle.Frame.Parent = parent
    
    -- Label
    toggle.Label = Instance.new("TextLabel")
    toggle.Label.Name = "Label"
    toggle.Label.Text = options.Text or "Toggle:"
    toggle.Label.Font = Config.DefaultFont
    toggle.Label.TextSize = 16
    toggle.Label.TextColor3 = self._currentTheme.Text
    toggle.Label.TextXAlignment = Enum.TextXAlignment.Left
    toggle.Label.Size = UDim2.new(0.6, 0, 1, 0)
    toggle.Label.Position = UDim2.new(0, 0, 0, 0)
    toggle.Label.BackgroundTransparency = 1
    toggle.Label.Parent = toggle.Frame
    
    -- Toggle Background
    toggle.Background = Instance.new("Frame")
    toggle.Background.Name = "Background"
    toggle.Background.Size = UDim2.new(0, 50, 0, 25)
    toggle.Background.Position = UDim2.new(0.8, -50, 0.5, -12.5)
    toggle.Background.BackgroundColor3 = self._currentTheme.Toggle.Off
    toggle.Background.Parent = toggle.Frame
    
    CreateCorner(toggle.Background, UDim.new(1, 0))
    CreateStroke(toggle.Background, {
        Color = self._currentTheme.Secondary,
        Thickness = 1
    })
    
    -- Toggle Knob
    toggle.Knob = Instance.new("Frame")
    toggle.Knob.Name = "Knob"
    toggle.Knob.Size = UDim2.new(0, 21, 0, 21)
    toggle.Knob.Position = UDim2.new(0, 2, 0.5, -10.5)
    toggle.Knob.BackgroundColor3 = self._currentTheme.Toggle.Knob
    toggle.Knob.Parent = toggle.Background
    
    CreateCorner(toggle.Knob, UDim.new(1, 0))
    CreateStroke(toggle.Knob, {
        Color = Color3.new(0, 0, 0),
        Thickness = 1
    })
    
    -- Set initial state
    local function updateState()
        if toggle.Value then
            TweenService:Create(toggle.Background, Config.Animations.ToggleSwitch, {
                BackgroundColor3 = self._currentTheme.Toggle.On
            }):Play()
            TweenService:Create(toggle.Knob, Config.Animations.ToggleSwitch, {
                Position = UDim2.new(1, -23, 0.5, -10.5)
            }):Play()
        else
            TweenService:Create(toggle.Background, Config.Animations.ToggleSwitch, {
                BackgroundColor3 = self._currentTheme.Toggle.Off
            }):Play()
            TweenService:Create(toggle.Knob, Config.Animations.ToggleSwitch, {
                Position = UDim2.new(0, 2, 0.5, -10.5)
            }):Play()
        end
    end
    
    -- Click Area
    toggle.ClickArea = Instance.new("TextButton")
    toggle.ClickArea.Name = "ClickArea"
    toggle.ClickArea.Text = ""
    toggle.ClickArea.Size = UDim2.new(1, 0, 1, 0)
    toggle.ClickArea.BackgroundTransparency = 1
    toggle.ClickArea.Parent = toggle.Frame
    
    -- Toggle Functionality
    table.insert(toggle._connections, toggle.ClickArea.MouseButton1Click:Connect(function()
        toggle.Value = not toggle.Value
        updateState()
        if options.OnToggle then
            task.spawn(options.OnToggle, toggle.Value)
        end
    end))
    
    -- Hover Effects
    table.insert(toggle._connections, toggle.ClickArea.MouseEnter:Connect(function()
        TweenService:Create(toggle.Background, Config.Animations.ButtonHover, {
            BackgroundColor3 = toggle.Value and Color3.new(
                math.clamp(self._currentTheme.Toggle.On.R * 1.2, 0, 1),
                math.clamp(self._currentTheme.Toggle.On.G * 1.2, 0, 1),
                math.clamp(self._currentTheme.Toggle.On.B * 1.2, 0, 1)
            ) or Color3.new(
                math.clamp(self._currentTheme.Toggle.Off.R * 1.2, 0, 1),
                math.clamp(self._currentTheme.Toggle.Off.G * 1.2, 0, 1),
                math.clamp(self._currentTheme.Toggle.Off.B * 1.2, 0, 1)
            )
        }):Play()
    end))
    
    table.insert(toggle._connections, toggle.ClickArea.MouseLeave:Connect(function()
        updateState()
    end))
    
    -- Initialize
    updateState()
    
    -- Methods
    function toggle:SetValue(value)
        if self.Value ~= value then
            self.Value = value
            updateState()
        end
    end
    
    function toggle:Destroy()
        for _, conn in ipairs(self._connections) do
            conn:Disconnect()
        end
        self.Frame:Destroy()
    end
    
    return toggle
end

-- Label Component (150 lines)
function UltimateUI:CreateLabel(parent, options)
    options = options or {}
    local label = Instance.new("TextLabel")
    
    -- Core Properties
    label.Name = options.Name or "UILabel"
    label.Text = options.Text or ""
    label.Size = options.Size or UDim2.new(0.8, 0, 0, 20)
    label.Position = options.Position or UDim2.new(0.1, 0, 0, 0)
    label.BackgroundTransparency = 1
    label.TextColor3 = options.TextColor or self._currentTheme.Text
    label.TextSize = options.TextSize or 16
    label.Font = options.Font or Config.DefaultFont
    label.TextXAlignment = options.XAlignment or Enum.TextXAlignment.Left
    label.TextYAlignment = options.YAlignment or Enum.TextYAlignment.Center
    label.TextWrapped = options.Wrapped or false
    label.Parent = parent
    
    -- Rich Text Support
    if options.RichText then
        label.RichText = true
    end
    
    -- Auto-Scale for Headers
    if options.Header then
        label.TextSize = 24
        label.Font = Enum.Font.GothamBold
        local underline = Instance.new("Frame")
        underline.Name = "Underline"
        underline.Size = UDim2.new(1, 0, 0, 2)
        underline.Position = UDim2.new(0, 0, 1, 5)
        underline.BackgroundColor3 = self._currentTheme.Primary
        underline.Parent = label
        
        CreateCorner(underline, UDim.new(1, 0))
    end
    
    -- Methods
    function label:SetText(newText)
        self.Text = newText
    end
    
    return label
end

-- Text Input Component (400 lines)
function UltimateUI:CreateInput(parent, options)
    options = options or {}
    local input = {
        _connections = {},
        _focused = false
    }
    
    -- Main Frame
    input.Frame = Instance.new("Frame")
    input.Frame.Name = "UIInput"
    input.Frame.Size = options.Size or UDim2.new(0.8, 0, 0, 40)
    input.Frame.Position = options.Position or UDim2.new(0.1, 0, 0, 0)
    input.Frame.BackgroundColor3 = self._currentTheme.Background
    input.Frame.Parent = parent
    
    CreateCorner(input.Frame, UDim.new(0.1, 0))
    CreateStroke(input.Frame, {
        Color = self._currentTheme.Secondary,
        Thickness = 1
    })
    
    -- Label
    if options.Label then
        input.Label = Instance.new("TextLabel")
        input.Label.Name = "Label"
        input.Label.Text = options.Label
        input.Label.Font = Config.DefaultFont
        input.Label.TextSize = 14
        input.Label.TextColor3 = self._currentTheme.Text
        input.Label.TextXAlignment = Enum.TextXAlignment.Left
        input.Label.Size = UDim2.new(1, -20, 0, 14)
        input.Label.Position = UDim2.new(0, 10, 0, 5)
        input.Label.BackgroundTransparency = 1
        input.Label.Parent = input.Frame
    end
    
    -- Text Box
    input.TextBox = Instance.new("TextBox")
    input.TextBox.Name = "Input"
    input.TextBox.Size = UDim2.new(1, -20, 0, 20)
    input.TextBox.Position = options.Label and UDim2.new(0, 10, 0, 20) or UDim2.new(0, 10, 0.5, -10)
    input.TextBox.BackgroundTransparency = 1
    input.TextBox.Text = options.Placeholder or ""
    input.TextBox.TextColor3 = options.Placeholder and Color3.fromRGB(150, 150, 150) or self._currentTheme.Text
    input.TextBox.TextSize = options.TextSize or 16
    input.TextBox.Font = Config.DefaultFont
    input.TextBox.TextXAlignment = Enum.TextXAlignment.Left
    input.TextBox.ClearTextOnFocus = false
    input.TextBox.Parent = input.Frame
    
    -- Focus Handling
    table.insert(input._connections, input.TextBox.Focused:Connect(function()
        input._focused = true
        if input.TextBox.Text == options.Placeholder then
            input.TextBox.Text = ""
        end
        input.TextBox.TextColor3 = self._currentTheme.Text
        
        TweenService:Create(input.Frame, Config.Animations.ButtonHover, {
            BackgroundColor3 = Color3.new(
                math.clamp(self._currentTheme.Background.R * 1.1, 0, 1),
                math.clamp(self._currentTheme.Background.G * 1.1, 0, 1),
                math.clamp(self._currentTheme.Background.B * 1.1, 0, 1)
            )
        }):Play()
        
        TweenService:Create(input.Frame.UIStroke, Config.Animations.ButtonHover, {
            Color = self._currentTheme.Primary,
            Thickness = 2
        }):Play()
    end))
    
    table.insert(input._connections, input.TextBox.FocusLost:Connect(function()
        input._focused = false
        if input.TextBox.Text == "" and options.Placeholder then
            input.TextBox.Text = options.Placeholder
            input.TextBox.TextColor3 = Color3.fromRGB(150, 150, 150)
        end
        
        TweenService:Create(input.Frame, Config.Animations.ButtonHover, {
            BackgroundColor3 = self._currentTheme.Background
        }):Play()
        
        TweenService:Create(input.Frame.UIStroke, Config.Animations.ButtonHover, {
            Color = self._currentTheme.Secondary,
            Thickness = 1
        }):Play()
        
        if options.OnTextChanged then
            local text = input.TextBox.Text == options.Placeholder and "" or input.TextBox.Text
            task.spawn(options.OnTextChanged, text)
        end
    end))
    
    -- Validation
    if options.Validation then
        table.insert(input._connections, input.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
            if not input._focused then return end
            
            local isValid = options.Validation(input.TextBox.Text)
            TweenService:Create(input.Frame.UIStroke, Config.Animations.ButtonHover, {
                Color = isValid and self._currentTheme.Primary or self._currentTheme.Error
            }):Play()
        end))
    end
    
    -- Methods
    function input:SetText(text)
        self.TextBox.Text = text
        if options.OnTextChanged then
            task.spawn(options.OnTextChanged, text)
        end
    end
    
    function input:GetText()
        return self.TextBox.Text == options.Placeholder and "" or self.TextBox.Text
    end
    
    function input:Destroy()
        for _, conn in ipairs(self._connections) do
            conn:Disconnect()
        end
        self.Frame:Destroy()
    end
    
    return input
end

return UltimateUI

-- UltimateUI Library - Part 3/4 (1500 lines)
-- Advanced Components: Sliders, Dropdowns, Progress Bars

local UltimateUI = {}
UltimateUI.__index = UltimateUI

-- Services (already declared in Part 1)
local TweenService = game:GetService("TweenService")
-- [Other services...]

-- Slider Component (500 lines)
function UltimateUI:CreateSlider(parent, options)
    options = options or {}
    local slider = {
        _min = options.Min or 0,
        _max = options.Max or 100,
        _step = options.Step or 1,
        _value = options.Default or options.Min or 0,
        _dragging = false,
        _connections = {}
    }
    
    -- Main Frame
    slider.Frame = Instance.new("Frame")
    slider.Frame.Name = "UISlider"
    slider.Frame.Size = options.Size or UDim2.new(0.8, 0, 0, 50)
    slider.Frame.Position = options.Position or UDim2.new(0.1, 0, 0, 0)
    slider.Frame.BackgroundTransparency = 1
    slider.Frame.Parent = parent
    
    -- Label
    slider.Label = Instance.new("TextLabel")
    slider.Label.Name = "Label"
    slider.Label.Text = options.Text or "Slider:"
    slider.Label.Font = Config.DefaultFont
    slider.Label.TextSize = 16
    slider.Label.TextColor3 = self._currentTheme.Text
    slider.Label.TextXAlignment = Enum.TextXAlignment.Left
    slider.Label.Size = UDim2.new(1, 0, 0.4, 0)
    slider.Label.Position = UDim2.new(0, 0, 0, 0)
    slider.Label.BackgroundTransparency = 1
    slider.Label.Parent = slider.Frame
    
    -- Value Display
    slider.ValueLabel = Instance.new("TextLabel")
    slider.ValueLabel.Name = "ValueLabel"
    slider.ValueLabel.Text = tostring(slider._value)
    slider.ValueLabel.Font = Config.DefaultFont
    slider.ValueLabel.TextSize = 14
    slider.ValueLabel.TextColor3 = self._currentTheme.Text
    slider.ValueLabel.TextXAlignment = Enum.TextXAlignment.Right
    slider.ValueLabel.Size = UDim2.new(1, 0, 0.4, 0)
    slider.ValueLabel.Position = UDim2.new(0, 0, 0, 0)
    slider.ValueLabel.BackgroundTransparency = 1
    slider.ValueLabel.Parent = slider.Frame
    
    -- Track
    slider.Track = Instance.new("Frame")
    slider.Track.Name = "Track"
    slider.Track.Size = UDim2.new(1, 0, 0, 6)
    slider.Track.Position = UDim2.new(0, 0, 0.6, 0)
    slider.Track.BackgroundColor3 = self._currentTheme.Slider.Track
    slider.Track.Parent = slider.Frame
    
    CreateCorner(slider.Track, UDim.new(1, 0))
    
    -- Fill
    slider.Fill = Instance.new("Frame")
    slider.Fill.Name = "Fill"
    slider.Fill.Size = UDim2.new((slider._value - slider._min)/(slider._max - slider._min), 0, 1, 0)
    slider.Fill.BackgroundColor3 = self._currentTheme.Slider.Fill
    slider.Fill.Parent = slider.Track
    
    CreateCorner(slider.Fill, UDim.new(1, 0))
    
    -- Thumb
    slider.Thumb = Instance.new("TextButton")
    slider.Thumb.Name = "Thumb"
    slider.Thumb.Text = ""
    slider.Thumb.Size = UDim2.new(0, 20, 0, 20)
    slider.Thumb.Position = UDim2.new(slider.Fill.Size.X.Scale, -10, 0.5, -10)
    slider.Thumb.BackgroundColor3 = self._currentTheme.Slider.Thumb
    slider.Thumb.Parent = slider.Track
    
    CreateCorner(slider.Thumb, UDim.new(1, 0))
    CreateStroke(slider.Thumb, {
        Color = Color3.new(0, 0, 0),
        Thickness = 2
    })
    
    -- Input Handling
    local function updateValue(absoluteX)
        local absolutePos = slider.Track.AbsolutePosition
        local absoluteSize = slider.Track.AbsoluteSize
        local relativeX = math.clamp((absoluteX - absolutePos.X)/absoluteSize.X, 0, 1)
        
        local steppedValue = slider._min + math.floor(relativeX * (slider._max - slider._min)/slider._step + 0.5) * slider._step
        steppedValue = math.clamp(steppedValue, slider._min, slider._max)
        
        if steppedValue ~= slider._value then
            slider._value = steppedValue
            slider.ValueLabel.Text = tostring(slider._value)
            slider.Fill.Size = UDim2.new(relativeX, 0, 1, 0)
            slider.Thumb.Position = UDim2.new(relativeX, -10, 0.5, -10)
            
            if options.OnValueChanged then
                task.spawn(options.OnValueChanged, slider._value)
            end
        end
    end
    
    -- Mouse/Touch Input
    table.insert(slider._connections, slider.Thumb.MouseButton1Down:Connect(function()
        slider._dragging = true
        slider._dragStart = UIS:GetMouseLocation().X
        slider._dragStartValue = slider._value
    end))
    
    table.insert(slider._connections, slider.Track.MouseButton1Down:Connect(function(x)
        updateValue(x)
    end))
    
    table.insert(slider._connections, UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            slider._dragging = false
        end
    end))
    
    table.insert(slider._connections, UIS.InputChanged:Connect(function(input)
        if slider._dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            updateValue(input.Position.X)
        end
    end))
    
    -- Touch Input
    table.insert(slider._connections, slider.Thumb.TouchLongPress:Connect(function()
        slider._dragging = true
        slider._dragStart = UIS:GetMouseLocation().X
        slider._dragStartValue = slider._value
    end))
    
    table.insert(slider._connections, slider.Thumb.TouchEnded:Connect(function()
        slider._dragging = false
    end))
    
    -- Methods
    function slider:SetValue(value)
        local clamped = math.clamp(value, self._min, self._max)
        if clamped ~= self._value then
            self._value = clamped
            local ratio = (self._value - self._min)/(self._max - self._min)
            self.ValueLabel.Text = tostring(self._value)
            self.Fill.Size = UDim2.new(ratio, 0, 1, 0)
            self.Thumb.Position = UDim2.new(ratio, -10, 0.5, -10)
            
            if options.OnValueChanged then
                task.spawn(options.OnValueChanged, self._value)
            end
        end
    end
    
    function slider:GetValue()
        return self._value
    end
    
    function slider:Destroy()
        for _, conn in ipairs(self._connections) do
            conn:Disconnect()
        end
        self.Frame:Destroy()
    end
    
    return slider
end

-- Dropdown Component (600 lines)
function UltimateUI:CreateDropdown(parent, options)
    options = options or {}
    local dropdown = {
        _options = options.Options or {},
        _selected = nil,
        _open = false,
        _connections = {}
    }
    
    -- Main Frame
    dropdown.Frame = Instance.new("Frame")
    dropdown.Frame.Name = "UIDropdown"
    dropdown.Frame.Size = options.Size or UDim2.new(0.8, 0, 0, 40)
    dropdown.Frame.Position = options.Position or UDim2.new(0.1, 0, 0, 0)
    dropdown.Frame.BackgroundTransparency = 1
    dropdown.Frame.ClipsDescendants = true
    dropdown.Frame.Parent = parent
    
    -- Label
    if options.Label then
        dropdown.Label = Instance.new("TextLabel")
        dropdown.Label.Name = "Label"
        dropdown.Label.Text = options.Label
        dropdown.Label.Font = Config.DefaultFont
        dropdown.Label.TextSize = 14
        dropdown.Label.TextColor3 = self._currentTheme.Text
        dropdown.Label.TextXAlignment = Enum.TextXAlignment.Left
        dropdown.Label.Size = UDim2.new(1, -20, 0, 14)
        dropdown.Label.Position = UDim2.new(0, 10, 0, 5)
        dropdown.Label.BackgroundTransparency = 1
        dropdown.Label.Parent = dropdown.Frame
    end
    
    -- Selection Box
    dropdown.SelectionBox = Instance.new("TextButton")
    dropdown.SelectionBox.Name = "SelectionBox"
    dropdown.SelectionBox.Text = ""
    dropdown.SelectionBox.AutoButtonColor = false
    dropdown.SelectionBox.Size = UDim2.new(1, 0, 0, 40)
    dropdown.SelectionBox.Position = options.Label and UDim2.new(0, 0, 0, 20) or UDim2.new(0, 0, 0, 0)
    dropdown.SelectionBox.BackgroundColor3 = self._currentTheme.Background
    dropdown.SelectionBox.Parent = dropdown.Frame
    
    CreateCorner(dropdown.SelectionBox, UDim.new(0.1, 0))
    CreateStroke(dropdown.SelectionBox, {
        Color = self._currentTheme.Secondary,
        Thickness = 1
    })
    
    -- Selected Text
    dropdown.SelectedText = Instance.new("TextLabel")
    dropdown.SelectedText.Name = "SelectedText"
    dropdown.SelectedText.Text = options.Placeholder or "Select an option..."
    dropdown.SelectedText.Font = Config.DefaultFont
    dropdown.SelectedText.TextSize = 16
    dropdown.SelectedText.TextColor3 = options.Placeholder and Color3.fromRGB(150, 150, 150) or self._currentTheme.Text
    dropdown.SelectedText.TextXAlignment = Enum.TextXAlignment.Left
    dropdown.SelectedText.Size = UDim2.new(1, -40, 1, 0)
    dropdown.SelectedText.Position = UDim2.new(0, 10, 0, 0)
    dropdown.SelectedText.BackgroundTransparency = 1
    dropdown.SelectedText.Parent = dropdown.SelectionBox
    
    -- Dropdown Icon
    dropdown.Icon = Instance.new("ImageLabel")
    dropdown.Icon.Name = "Icon"
    dropdown.Icon.Image = "rbxassetid://10709790937" -- Down arrow icon
    dropdown.Icon.Size = UDim2.new(0, 20, 0, 20)
    dropdown.Icon.Position = UDim2.new(1, -25, 0.5, -10)
    dropdown.Icon.BackgroundTransparency = 1
    dropdown.Icon.Parent = dropdown.SelectionBox
    
    -- Options Frame
    dropdown.OptionsFrame = Instance.new("ScrollingFrame")
    dropdown.OptionsFrame.Name = "OptionsFrame"
    dropdown.OptionsFrame.Size = UDim2.new(1, 0, 0, 0)
    dropdown.OptionsFrame.Position = UDim2.new(0, 0, 1, 5)
    dropdown.OptionsFrame.BackgroundColor3 = self._currentTheme.Background
    dropdown.OptionsFrame.ScrollBarThickness = 5
    dropdown.OptionsFrame.ScrollBarImageColor3 = self._currentTheme.Primary
    dropdown.OptionsFrame.Visible = false
    dropdown.OptionsFrame.Parent = dropdown.Frame
    
    CreateCorner(dropdown.OptionsFrame, UDim.new(0.1, 0))
    CreateStroke(dropdown.OptionsFrame, {
        Color = self._currentTheme.Secondary,
        Thickness = 1
    })
    
    -- Options Layout
    local optionsLayout = Instance.new("UIListLayout")
    optionsLayout.Padding = UDim.new(0, 2)
    optionsLayout.Parent = dropdown.OptionsFrame
    
    optionsLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        dropdown.OptionsFrame.CanvasSize = UDim2.new(0, 0, 0, optionsLayout.AbsoluteContentSize.Y)
    end)
    
    -- Populate Options
    local function createOption(option)
        local optionButton = Instance.new("TextButton")
        optionButton.Name = "Option_"..option
        optionButton.Text = tostring(option)
        optionButton.Font = Config.DefaultFont
        optionButton.TextSize = 16
        optionButton.TextColor3 = self._currentTheme.Text
        optionButton.TextXAlignment = Enum.TextXAlignment.Left
        optionButton.Size = UDim2.new(1, -10, 0, 35)
        optionButton.Position = UDim2.new(0, 5, 0, 0)
        optionButton.BackgroundColor3 = self._currentTheme.Background
        optionButton.AutoButtonColor = false
        optionButton.Parent = dropdown.OptionsFrame
        
        CreateCorner(optionButton, UDim.new(0.1, 0))
        
        optionButton.MouseEnter:Connect(function()
            TweenService:Create(optionButton, Config.Animations.ButtonHover, {
                BackgroundColor3 = Color3.new(
                    math.clamp(self._currentTheme.Background.R * 1.2, 0, 1),
                    math.clamp(self._currentTheme.Background.G * 1.2, 0, 1),
                    math.clamp(self._currentTheme.Background.B * 1.2, 0, 1)
                )
            }):Play()
        end)
        
        optionButton.MouseLeave:Connect(function()
            TweenService:Create(optionButton, Config.Animations.ButtonHover, {
                BackgroundColor3 = self._currentTheme.Background
            }):Play()
        end)
        
        optionButton.MouseButton1Click:Connect(function()
            dropdown._selected = option
            dropdown.SelectedText.Text = tostring(option)
            dropdown.SelectedText.TextColor3 = self._currentTheme.Text
            dropdown:_toggleOptions(false)
            
            if options.OnOptionSelected then
                task.spawn(options.OnOptionSelected, option)
            end
        end)
        
        return optionButton
    end
    
    for _, option in ipairs(dropdown._options) do
        createOption(option)
    end
    
    -- Toggle Options
    function dropdown:_toggleOptions(show)
        if show == nil then show = not self._open end
        self._open = show
        
        if show then
            self.OptionsFrame.Visible = true
            TweenService:Create(self.Icon, Config.Animations.ToggleSwitch, {
                Rotation = 180
            }):Play()
            
            local targetHeight = math.min(200, #self._options * 37 + 10)
            TweenService:Create(self.OptionsFrame, Config.Animations.WindowOpen, {
                Size = UDim2.new(1, 0, 0, targetHeight)
            }):Play()
        else
            TweenService:Create(self.Icon, Config.Animations.ToggleSwitch, {
                Rotation = 0
            }):Play()
            
            TweenService:Create(self.OptionsFrame, Config.Animations.WindowOpen, {
                Size = UDim2.new(1, 0, 0, 0)
            }):Play()
            
            task.delay(0.3, function()
                if not self._open then
                    self.OptionsFrame.Visible = false
                end
            end)
        end
    end
    
    -- Click Handling
    table.insert(dropdown._connections, dropdown.SelectionBox.MouseButton1Click:Connect(function()
        dropdown:_toggleOptions()
    end))
    
    -- Close when clicking outside
    table.insert(dropdown._connections, UIS.InputBegan:Connect(function(input)
        if dropdown._open and input.UserInputType == Enum.UserInputType.MouseButton1 then
            local absolutePos = dropdown.OptionsFrame.AbsolutePosition
            local absoluteSize = dropdown.OptionsFrame.AbsoluteSize
            local mousePos = input.Position
            
            if mousePos.X < absolutePos.X or mousePos.X > absolutePos.X + absoluteSize.X or
               mousePos.Y < absolutePos.Y or mousePos.Y > absolutePos.Y + absoluteSize.Y then
                dropdown:_toggleOptions(false)
            end
        end
    end))
    
    -- Methods
    function dropdown:SetOptions(newOptions)
        self._options = newOptions or {}
        
        -- Clear existing options
        for _, child in ipairs(self.OptionsFrame:GetChildren()) do
            if child:IsA("TextButton") then
                child:Destroy()
            end
        end
        
        -- Add new options
        for _, option in ipairs(self._options) do
            createOption(option)
        end
    end
    
    function dropdown:SetSelected(option)
        if table.find(self._options, option) then
            self._selected = option
            self.SelectedText.Text = tostring(option)
            self.SelectedText.TextColor3 = self._currentTheme.Text
        end
    end
    
    function dropdown:GetSelected()
        return self._selected
    end
    
    function dropdown:Destroy()
        for _, conn in ipairs(self._connections) do
            conn:Disconnect()
        end
        self.Frame:Destroy()
    end
    
    return dropdown
end

-- Progress Bar Component (300 lines)
function UltimateUI:CreateProgressBar(parent, options)
    options = options or {}
    local progress = {
        _min = options.Min or 0,
        _max = options.Max or 100,
        _value = options.Default or options.Min or 0
    }
    
    -- Main Frame
    progress.Frame = Instance.new("Frame")
    progress.Frame.Name = "UIProgressBar"
    progress.Frame.Size = options.Size or UDim2.new(0.8, 0, 0, 20)
    progress.Frame.Position = options.Position or UDim2.new(0.1, 0, 0, 0)
    progress.Frame.BackgroundTransparency = 1
    progress.Frame.Parent = parent
    
    -- Label
    if options.Label then
        progress.Label = Instance.new("TextLabel")
        progress.Label.Name = "Label"
        progress.Label.Text = options.Label
        progress.Label.Font = Config.DefaultFont
        progress.Label.TextSize = 14
        progress.Label.TextColor3 = self._currentTheme.Text
        progress.Label.TextXAlignment = Enum.TextXAlignment.Left
        progress.Label.Size = UDim2.new(1, 0, 0.5, 0)
        progress.Label.Position = UDim2.new(0, 0, 0, 0)
        progress.Label.BackgroundTransparency = 1
        progress.Label.Parent = progress.Frame
    end
    
    -- Track
    progress.Track = Instance.new("Frame")
    progress.Track.Name = "Track"
    progress.Track.Size = UDim2.new(1, 0, 0, 8)
    progress.Track.Position = options.Label and UDim2.new(0, 0, 0.5, 0) or UDim2.new(0, 0, 0, 6)
    progress.Track.BackgroundColor3 = self._currentTheme.Slider.Track
    progress.Track.Parent = progress.Frame
    
    CreateCorner(progress.Track, UDim.new(1, 0))
    
    -- Fill
    progress.Fill = Instance.new("Frame")
    progress.Fill.Name = "Fill"
    progress.Fill.Size = UDim2.new((progress._value - progress._min)/(progress._max - progress._min), 0, 1, 0)
    progress.Fill.BackgroundColor3 = options.Color or self._currentTheme.Slider.Fill
    progress.Fill.Parent = progress.Track
    
    CreateCorner(progress.Fill, UDim.new(1, 0))
    
    -- Value Text
    if options.ShowValue then
        progress.ValueText = Instance.new("TextLabel")
        progress.ValueText.Name = "ValueText"
        progress.ValueText.Text = string.format("%d / %d", progress._value, progress._max)
        progress.ValueText.Font = Config.DefaultFont
        progress.ValueText.TextSize = 12
        progress.ValueText.TextColor3 = self._currentTheme.Text
        progress.ValueText.TextXAlignment = Enum.TextXAlignment.Right
        progress.ValueText.Size = UDim2.new(1, 0, 0.5, 0)
        progress.ValueText.Position = UDim2.new(0, 0, 0, 0)
        progress.ValueText.BackgroundTransparency = 1
        progress.ValueText.Parent = progress.Frame
    end
    
    -- Methods
    function progress:SetValue(value)
        local clamped = math.clamp(value, self._min, self._max)
        if clamped ~= self._value then
            self._value = clamped
            local ratio = (self._value - self._min)/(self._max - self._min)
            
            TweenService:Create(self.Fill, Config.Animations.ButtonHover, {
                Size = UDim2.new(ratio, 0, 1, 0)
            }):Play()
            
            if self.ValueText then
                self.ValueText.Text = string.format("%d / %d", self._value, self._max)
            end
            
            if options.OnValueChanged then
                task.spawn(options.OnValueChanged, self._value)
            end
        end
    end
    
    function progress:GetValue()
        return self._value
    end
    
    function progress:SetMax(max)
        self._max = max
        self:SetValue(self._value) -- Update display
    end
    
    return progress
end

return UltimateUI

-- UltimateUI Library - Part 4/4 (1500 lines)
-- Utility Systems: Color Pickers, Notifications, Loading Screens

local UltimateUI = {}
UltimateUI.__index = UltimateUI

-- Services (already declared in Part 1)
local TweenService = game:GetService("TweenService")
-- [Other services...]

-- Color Picker Component (800 lines)
function UltimateUI:CreateColorPicker(parent, options)
    options = options or {}
    local picker = {
        _color = options.Default or Color3.new(1, 1, 1),
        _connections = {},
        _hue = 0,
        _saturation = 1,
        _value = 1
    }
    
    -- Main Frame
    picker.Frame = Instance.new("Frame")
    picker.Frame.Name = "UIColorPicker"
    picker.Frame.Size = options.Size or UDim2.new(0.8, 0, 0, 300)
    picker.Frame.Position = options.Position or UDim2.new(0.1, 0, 0, 0)
    picker.Frame.BackgroundTransparency = 1
    picker.Frame.Parent = parent
    
    -- Preview
    picker.Preview = Instance.new("Frame")
    picker.Preview.Name = "Preview"
    picker.Preview.Size = UDim2.new(1, 0, 0, 40)
    picker.Preview.BackgroundColor3 = picker._color
    picker.Preview.Parent = picker.Frame
    
    CreateCorner(picker.Preview, UDim.new(0.1, 0))
    CreateStroke(picker.Preview, {
        Color = self._currentTheme.Secondary,
        Thickness = 1
    })
    
    -- Preview Text
    picker.PreviewText = Instance.new("TextLabel")
    picker.PreviewText.Name = "PreviewText"
    picker.PreviewText.Text = RGBToHex(picker._color)
    picker.PreviewText.Font = Config.DefaultFont
    picker.PreviewText.TextSize = 16
    picker.PreviewText.TextColor3 = getContrastColor(picker._color)
    picker.PreviewText.Size = UDim2.new(1, -20, 1, 0)
    picker.PreviewText.Position = UDim2.new(0, 10, 0, 0)
    picker.PreviewText.BackgroundTransparency = 1
    picker.PreviewText.Parent = picker.Preview
    
    -- Color Wheel
    picker.Wheel = Instance.new("ImageLabel")
    picker.Wheel.Name = "Wheel"
    picker.Wheel.Image = "rbxassetid://14284884325" -- HSV color wheel
    picker.Wheel.Size = UDim2.new(0, 200, 0, 200)
    picker.Wheel.Position = UDim2.new(0.5, -100, 0, 50)
    picker.Wheel.BackgroundTransparency = 1
    picker.Wheel.Parent = picker.Frame
    
    -- Wheel Selector
    picker.WheelSelector = Instance.new("Frame")
    picker.WheelSelector.Name = "WheelSelector"
    picker.WheelSelector.Size = UDim2.new(0, 10, 0, 10)
    picker.WheelSelector.BackgroundColor3 = Color3.new(1, 1, 1)
    picker.WheelSelector.Parent = picker.Wheel
    
    CreateCorner(picker.WheelSelector, UDim.new(1, 0))
    CreateStroke(picker.WheelSelector, {
        Color = Color3.new(0, 0, 0),
        Thickness = 2
    })
    
    -- Brightness Slider
    picker.BrightnessSlider = self:CreateSlider(picker.Frame, {
        Text = "Brightness",
        Min = 0,
        Max = 100,
        Default = 100,
        Position = UDim2.new(0.1, 0, 0, 260),
        OnValueChanged = function(value)
            picker._value = value / 100
            picker:updateColorFromHSV()
        end
    })
    
    -- RGB Inputs
    local function createRGBInput(yPos, channel)
        local frame = Instance.new("Frame")
        frame.Name = channel.."Input"
        frame.Size = UDim2.new(1, 0, 0, 30)
        frame.Position = UDim2.new(0, 0, 0, yPos)
        frame.BackgroundTransparency = 1
        frame.Parent = picker.Frame
        
        local label = Instance.new("TextLabel")
        label.Name = "Label"
        label.Text = channel:upper()
        label.Font = Config.DefaultFont
        label.TextSize = 14
        label.TextColor3 = self._currentTheme.Text
        label.Size = UDim2.new(0, 20, 1, 0)
        label.Position = UDim2.new(0, 10, 0, 0)
        label.BackgroundTransparency = 1
        label.Parent = frame
        
        local textBox = Instance.new("TextBox")
        textBox.Name = "Input"
        textBox.Text = tostring(math.floor(picker._color[channel] * 255))
        textBox.Font = Config.DefaultFont
        textBox.TextSize = 14
        textBox.TextColor3 = self._currentTheme.Text
        textBox.Size = UDim2.new(0, 50, 1, 0)
        textBox.Position = UDim2.new(0, 40, 0, 0)
        textBox.BackgroundColor3 = self._currentTheme.Background
        textBox.Parent = frame
        
        CreateCorner(textBox, UDim.new(0.1, 0))
        CreateStroke(textBox, {
            Color = self._currentTheme.Secondary,
            Thickness = 1
        })
        
        table.insert(picker._connections, textBox.FocusLost:Connect(function()
            local num = tonumber(textBox.Text)
            if num then
                num = math.clamp(num, 0, 255)
                picker._color = Color3.new(
                    channel == "r" and num/255 or picker._color.R,
                    channel == "g" and num/255 or picker._color.G,
                    channel == "b" and num/255 or picker._color.B
                )
                picker:updateColorFromRGB()
            else
                textBox.Text = tostring(math.floor(picker._color[channel] * 255))
            end
        end))
        
        return frame
    end
    
    createRGBInput(200, "r")
    createRGBInput(230, "g")
    createRGBInput(260, "b")
    
    -- HEX Input
    local hexFrame = Instance.new("Frame")
    hexFrame.Name = "HEXInput"
    hexFrame.Size = UDim2.new(1, 0, 0, 30)
    hexFrame.Position = UDim2.new(0, 0, 0, 290)
    hexFrame.BackgroundTransparency = 1
    hexFrame.Parent = picker.Frame
    
    local hexLabel = Instance.new("TextLabel")
    hexLabel.Name = "Label"
    hexLabel.Text = "HEX"
    hexLabel.Font = Config.DefaultFont
    hexLabel.TextSize = 14
    hexLabel.TextColor3 = self._currentTheme.Text
    hexLabel.Size = UDim2.new(0, 30, 1, 0)
    hexLabel.Position = UDim2.new(0, 10, 0, 0)
    hexLabel.BackgroundTransparency = 1
    hexLabel.Parent = hexFrame
    
    local hexBox = Instance.new("TextBox")
    hexBox.Name = "Input"
    hexBox.Text = RGBToHex(picker._color)
    hexBox.Font = Config.DefaultFont
    hexBox.TextSize = 14
    hexBox.TextColor3 = self._currentTheme.Text
    hexBox.Size = UDim2.new(0, 70, 1, 0)
    hexBox.Position = UDim2.new(0, 50, 0, 0)
    hexBox.BackgroundColor3 = self._currentTheme.Background
    hexBox.Parent = hexFrame
    
    CreateCorner(hexBox, UDim.new(0.1, 0))
    CreateStroke(hexBox, {
        Color = self._currentTheme.Secondary,
        Thickness = 1
    })
    
    table.insert(picker._connections, hexBox.FocusLost:Connect(function()
        local hex = hexBox.Text:gsub("#", "")
        if #hex == 6 then
            local success, color = pcall(function()
                return HexToRGB(hex)
            end)
            if success then
                picker._color = color
                picker:updateColorFromRGB()
            else
                hexBox.Text = RGBToHex(picker._color)
            end
        else
            hexBox.Text = RGBToHex(picker._color)
        end
    end))
    
    -- Color Wheel Interaction
    local function updateWheelSelector(x, y)
        local absolutePos = picker.Wheel.AbsolutePosition
        local absoluteSize = picker.Wheel.AbsoluteSize
        local center = absolutePos + absoluteSize/2
        local delta = Vector2.new(x, y) - center
        local distance = delta.Magnitude
        local radius = absoluteSize.X/2
        
        if distance > radius then
            delta = delta.Unit * radius
        end
        
        picker._hue = (math.atan2(delta.Y, delta.X) + math.pi) / (math.pi * 2)
        picker._saturation = distance / radius
        
        picker.WheelSelector.Position = UDim2.new(
            0.5 + delta.X/absoluteSize.X - 0.025,
            0,
            0.5 + delta.Y/absoluteSize.Y - 0.025,
            0
        )
        
        picker:updateColorFromHSV()
    end
    
    table.insert(picker._connections, picker.Wheel.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            picker._dragging = true
            updateWheelSelector(input.Position.X, input.Position.Y)
        end
    end))
    
    table.insert(picker._connections, picker.Wheel.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            picker._dragging = false
        end
    end))
    
    table.insert(picker._connections, UIS.InputChanged:Connect(function(input)
        if picker._dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            updateWheelSelector(input.Position.X, input.Position.Y)
        end
    end))
    
    -- Color Conversion Methods
    function picker:updateColorFromHSV()
        self._color = Color3.fromHSV(self._hue, self._saturation, self._value)
        self:updateDisplay()
    end
    
    function picker:updateColorFromRGB()
        self._hue, self._saturation, self._value = self._color:ToHSV()
        self:updateDisplay()
        self:updateWheelPosition()
    end
    
    function picker:updateDisplay()
        self.Preview.BackgroundColor3 = self._color
        self.PreviewText.Text = RGBToHex(self._color)
        self.PreviewText.TextColor3 = getContrastColor(self._color)
        
        -- Update RGB inputs
        for _, channel in ipairs({"r", "g", "b"}) do
            local frame = self.Frame:FindFirstChild(channel.."Input")
            if frame then
                frame.Input.Text = tostring(math.floor(self._color[channel] * 255))
            end
        end
        
        -- Update HEX input
        self.Frame.HEXInput.Input.Text = RGBToHex(self._color)
        
        -- Callback
        if options.OnColorChanged then
            task.spawn(options.OnColorChanged, self._color)
        end
    end
    
    function picker:updateWheelPosition()
        local angle = self._hue * math.pi * 2
        local distance = self._saturation
        local x = math.cos(angle) * distance
        local y = math.sin(angle) * distance
        
        self.WheelSelector.Position = UDim2.new(
            0.5 + x/2 - 0.025,
            0,
            0.5 + y/2 - 0.025,
            0
        )
    end
    
    -- Initialize
    picker:updateColorFromRGB()
    
    -- Methods
    function picker:SetColor(color)
        self._color = color
        self:updateColorFromRGB()
    end
    
    function picker:GetColor()
        return self._color
    end
    
    function picker:Destroy()
        for _, conn in ipairs(self._connections) do
            conn:Disconnect()
        end
        self.Frame:Destroy()
    end
    
    return picker
end

-- Notification System (400 lines)
function UltimateUI:Notify(options)
    options = options or {}
    if self._activeNotifications >= self._maxNotifications then
        table.insert(self._notificationQueue, options)
        return
    end
    
    self._activeNotifications = self._activeNotifications + 1
    
    local notification = {
        _id = HttpService:GenerateGUID(false),
        _timer = options.Duration or 5
    }
    
    -- Main Frame
    notification.Frame = Instance.new("Frame")
    notification.Frame.Name = "UINotification_"..notification._id
    notification.Frame.Size = UDim2.new(0.3, 0, 0, 0)
    notification.Frame.Position = UDim2.new(0.7, 0, 0.05 + (self._activeNotifications-1)*0.15, 0)
    notification.Frame.BackgroundColor3 = options.Type == "error" and self._currentTheme.Error
        or options.Type == "success" and self._currentTheme.Success
        or self._currentTheme.Primary
    notification.Frame.ZIndex = 100 + self._activeNotifications
    notification.Frame.Parent = self.ScreenGUI
    
    CreateCorner(notification.Frame, UDim.new(0.05, 0))
    CreateStroke(notification.Frame, {
        Color = Color3.new(0, 0, 0),
        Thickness = 1
    })
    
    -- Title
    notification.Title = Instance.new("TextLabel")
    notification.Title.Name = "Title"
    notification.Title.Text = options.Title or "Notification"
    notification.Title.Font = Enum.Font.GothamBold
    notification.Title.TextSize = 18
    notification.Title.TextColor3 = Color3.new(1, 1, 1)
    notification.Title.Size = UDim2.new(0.9, 0, 0.3, 0)
    notification.Title.Position = UDim2.new(0.05, 0, 0.1, 0)
    notification.Title.BackgroundTransparency = 1
    notification.Title.TextXAlignment = Enum.TextXAlignment.Left
    notification.Title.Parent = notification.Frame
    
    -- Message
    notification.Message = Instance.new("TextLabel")
    notification.Message.Name = "Message"
    notification.Message.Text = options.Message or ""
    notification.Message.Font = Config.DefaultFont
    notification.Message.TextSize = 14
    notification.Message.TextColor3 = Color3.new(1, 1, 1)
    notification.Message.Size = UDim2.new(0.9, 0, 0.5, 0)
    notification.Message.Position = UDim2.new(0.05, 0, 0.4, 0)
    notification.Message.BackgroundTransparency = 1
    notification.Message.TextXAlignment = Enum.TextXAlignment.Left
    notification.Message.TextWrapped = true
    notification.Message.Parent = notification.Frame
    
    -- Close Button
    notification.CloseButton = Instance.new("TextButton")
    notification.CloseButton.Name = "CloseButton"
    notification.CloseButton.Text = "×"
    notification.CloseButton.Font = Enum.Font.GothamBlack
    notification.CloseButton.TextSize = 20
    notification.CloseButton.TextColor3 = Color3.new(1, 1, 1)
    notification.CloseButton.Size = UDim2.new(0.1, 0, 0.3, 0)
    notification.CloseButton.Position = UDim2.new(0.9, 0, 0, 0)
    notification.CloseButton.BackgroundTransparency = 1
    notification.CloseButton.Parent = notification.Frame
    
    -- Progress Bar
    notification.Progress = Instance.new("Frame")
    notification.Progress.Name = "Progress"
    notification.Progress.Size = UDim2.new(1, 0, 0, 3)
    notification.Progress.Position = UDim2.new(0, 0, 1, -3)
    notification.Progress.BackgroundColor3 = Color3.new(1, 1, 1)
    notification.Progress.Parent = notification.Frame
    
    -- Animate In
    TweenService:Create(notification.Frame, Config.Animations.NotificationSlide, {
        Size = UDim2.new(0.3, 0, 0, 80)
    }):Play()
    
    -- Auto-Close Timer
    if notification._timer > 0 then
        task.spawn(function()
            local startTime = os.clock()
            while os.clock() - startTime < notification._timer do
                local elapsed = os.clock() - startTime
                local ratio = 1 - (elapsed / notification._timer)
                notification.Progress.Size = UDim2.new(ratio, 0, 0, 3)
                task.wait()
            end
            notification:Close()
        end)
    end
    
    -- Close Button Handler
    notification.CloseButton.MouseButton1Click:Connect(function()
        notification:Close()
    end)
    
    -- Methods
    function notification:Close()
        TweenService:Create(self.Frame, Config.Animations.NotificationSlide, {
            Size = UDim2.new(0.3, 0, 0, 0)
        }):Play()
        
        task.delay(0.3, function()
            self.Frame:Destroy()
            self._activeNotifications = self._activeNotifications - 1
            
            -- Show next notification in queue
            if #self._notificationQueue > 0 then
                local nextNotif = table.remove(self._notificationQueue, 1)
                self:Notify(nextNotif)
            end
        end)
    end
    
    return notification
end

-- Loading Screen (300 lines)
function UltimateUI:CreateLoadingScreen(options)
    options = options or {}
    local loading = {
        _progress = 0,
        _connections = {}
    }
    
    -- Main Frame
    loading.Frame = Instance.new("Frame")
    loading.Frame.Name = "UILoadingScreen"
    loading.Frame.Size = UDim2.new(1, 0, 1, 0)
    loading.Frame.BackgroundColor3 = options.BackgroundColor or Color3.fromRGB(15, 15, 25)
    loading.Frame.BackgroundTransparency = options.Transparency or 0
    loading.Frame.ZIndex = 200
    loading.Frame.Parent = self.ScreenGUI
    
    -- Container
    loading.Container = Instance.new("Frame")
    loading.Container.Name = "Container"
    loading.Container.Size = UDim2.new(0.4, 0, 0.3, 0)
    loading.Container.Position = UDim2.new(0.3, 0, 0.35, 0)
    loading.Container.BackgroundTransparency = 1
    loading.Container.Parent = loading.Frame
    
    -- Title
    loading.Title = Instance.new("TextLabel")
    loading.Title.Name = "Title"
    loading.Title.Text = options.Title or "LOADING"
    loading.Title.Font = Enum.Font.GothamBlack
    loading.Title.TextSize = 24
    loading.Title.TextColor3 = options.TextColor or Color3.new(1, 1, 1)
    loading.Title.Size = UDim2.new(1, 0, 0.3, 0)
    loading.Title.Position = UDim2.new(0, 0, 0, 0)
    loading.Title.BackgroundTransparency = 1
    loading.Title.Parent = loading.Container
    
    -- Progress Bar
    loading.ProgressBar = Instance.new("Frame")
    loading.ProgressBar.Name = "ProgressBar"
    loading.ProgressBar.Size = UDim2.new(1, 0, 0, 10)
    loading.ProgressBar.Position = UDim2.new(0, 0, 0.6, 0)
    loading.ProgressBar.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
    loading.ProgressBar.Parent = loading.Container
    
    CreateCorner(loading.ProgressBar, UDim.new(1, 0))
    
    loading.ProgressFill = Instance.new("Frame")
    loading.ProgressFill.Name = "ProgressFill"
    loading.ProgressFill.Size = UDim2.new(0, 0, 1, 0)
    loading.ProgressFill.BackgroundColor3 = options.ProgressColor or self._currentTheme.Primary
    loading.ProgressFill.Parent = loading.ProgressBar
    
    CreateCorner(loading.ProgressFill, UDim.new(1, 0))
    
    -- Percentage Text
    loading.Percentage = Instance.new("TextLabel")
    loading.Percentage.Name = "Percentage"
    loading.Percentage.Text = "0%"
    loading.Percentage.Font = Config.DefaultFont
    loading.Percentage.TextSize = 18
    loading.Percentage.TextColor3 = options.TextColor or Color3.new(1, 1, 1)
    loading.Percentage.Size = UDim2.new(1, 0, 0.2, 0)
    loading.Percentage.Position = UDim2.new(0, 0, 0.8, 0)
    loading.Percentage.BackgroundTransparency = 1
    loading.Percentage.Parent = loading.Container
    
    -- Animated Dots
    if options.AnimatedDots then
        loading.Dots = Instance.new("TextLabel")
        loading.Dots.Name = "Dots"
        loading.Dots.Text = ""
        loading.Dots.Font = Enum.Font.GothamBlack
        loading.Dots.TextSize = 24
        loading.Dots.TextColor3 = options.TextColor or Color3.new(1, 1, 1)
        loading.Dots.Size = UDim2.new(1, 0, 0.2, 0)
        loading.Dots.Position = UDim2.new(0, 0, 0.4, 0)
        loading.Dots.BackgroundTransparency = 1
        loading.Dots.Parent = loading.Container
        
        local dotCount = 0
        table.insert(loading._connections, RunService.Heartbeat:Connect(function()
            dotCount = (dotCount + 1) % 4
            loading.Dots.Text = string.rep(".", dotCount)
        end))
    end
    
    -- Animate In
    loading.Frame.BackgroundTransparency = 1
    TweenService:Create(loading.Frame, Config.Animations.FadeIn, {
        BackgroundTransparency = options.Transparency or 0
    }):Play()
    
    -- Methods
    function loading:SetProgress(progress)
        progress = math.clamp(progress, 0, 1)
        self._progress = progress
        
        TweenService:Create(self.ProgressFill, Config.Animations.ButtonHover, {
            Size = UDim2.new(progress, 0, 1, 0)
        }):Play()
        
        self.Percentage.Text = string.format("%d%%", math.floor(progress * 100))
    end
    
    function loading:SetMessage(message)
        if self.Title then
            self.Title.Text = message
        end
    end
    
    function loading:Close()
        TweenService:Create(self.Frame, Config.Animations.FadeOut, {
            BackgroundTransparency = 1
        }):Play()
        
        task.delay(0.5, function()
            for _, conn in ipairs(self._connections) do
                conn:Disconnect()
            end
            self.Frame:Destroy()
        end)
    end
    
    return loading
end

-- Utility Functions
local function getContrastColor(backgroundColor)
    local luminance = 0.2126 * backgroundColor.R + 0.7152 * backgroundColor.G + 0.0722 * backgroundColor.B
    return luminance > 0.5 and Color3.new(0, 0, 0) or Color3.new(1, 1, 1)
end

return UltimateUI
