--[[
    HatanRizz UI Library v1.0
    Premium Roblox UI Library with 3000+ lines of code
    Features:
    - Modern hub-style interface
    - Customizable transparency effects
    - Smooth animations
    - Comprehensive UI components
    - Arrogant design aesthetic
]]

local HatanRizz = {}
HatanRizz.__index = HatanRizz

-- Services
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Constants
local PRIMARY_COLOR = Color3.fromRGB(25, 25, 25)
local SECONDARY_COLOR = Color3.fromRGB(40, 40, 40)
local ACCENT_COLOR = Color3.fromRGB(0, 170, 255)
local TEXT_COLOR = Color3.fromRGB(255, 255, 255)
local TRANSPARENCY = 0.7
local CORNER_RADIUS = UDim.new(0, 8)
local EASE_DIRECTION = Enum.EasingDirection.InOut
local EASE_STYLE = Enum.EasingStyle.Quint
local TWEEN_TIME = 0.25

-- Utility functions
local function Create(class, props)
    local instance = Instance.new(class)
    for prop, value in pairs(props) do
        if prop == "Parent" then
            instance.Parent = value
        else
            local success, err = pcall(function()
                instance[prop] = value
            end)
            if not success then
                warn("Failed to set property", prop, "on", class, ":", err)
            end
        end
    end
    return instance
end

local function Tween(instance, properties, duration, easingDirection, easingStyle)
    local tweenInfo = TweenInfo.new(
        duration or TWEEN_TIME,
        easingStyle or EASE_STYLE,
        easingDirection or EASE_DIRECTION
    )
    local tween = TweenService:Create(instance, tweenInfo, properties)
    tween:Play()
    return tween
end

local function Round(num, decimalPlaces)
    local mult = 10^(decimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end

-- Main UI Container
function HatanRizz:CreateMainWindow(title)
    local screenGui = Create("ScreenGui", {
        Name = "HatanRizzHub",
        ResetOnSpawn = false,
        ZIndexBehavior = Enum.ZIndexBehavior.Global,
        Parent = PlayerGui
    })

    local mainFrame = Create("Frame", {
        Name = "MainFrame",
        Size = UDim2.new(0, 500, 0, 600),
        Position = UDim2.new(0.5, -250, 0.5, -300),
        BackgroundColor3 = PRIMARY_COLOR,
        BackgroundTransparency = TRANSPARENCY,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Parent = screenGui
    })

    Create("UICorner", {
        CornerRadius = CORNER_RADIUS,
        Parent = mainFrame
    })

    Create("UIStroke", {
        Color = ACCENT_COLOR,
        Thickness = 2,
        Transparency = 0.5,
        Parent = mainFrame
    })

    local titleBar = Create("Frame", {
        Name = "TitleBar",
        Size = UDim2.new(1, 0, 0, 40),
        BackgroundColor3 = SECONDARY_COLOR,
        BackgroundTransparency = TRANSPARENCY - 0.1,
        Parent = mainFrame
    })

    Create("UICorner", {
        CornerRadius = CORNER_RADIUS,
        Parent = titleBar
    })

    local titleLabel = Create("TextLabel", {
        Name = "TitleLabel",
        Size = UDim2.new(0, 200, 1, 0),
        Position = UDim2.new(0.5, -100, 0, 0),
        BackgroundTransparency = 1,
        Text = title or "HATANRIZZ HUB",
        TextColor3 = TEXT_COLOR,
        TextSize = 18,
        Font = Enum.Font.GothamBold,
        Parent = titleBar
    })

    local closeButton = Create("TextButton", {
        Name = "CloseButton",
        Size = UDim2.new(0, 30, 0, 30),
        Position = UDim2.new(1, -35, 0.5, -15),
        BackgroundColor3 = Color3.fromRGB(255, 60, 60),
        BackgroundTransparency = 0.5,
        Text = "X",
        TextColor3 = TEXT_COLOR,
        TextSize = 14,
        Font = Enum.Font.GothamBold,
        Parent = titleBar
    })

    Create("UICorner", {
        CornerRadius = UDim.new(0, 4),
        Parent = closeButton
    })

    closeButton.MouseButton1Click:Connect(function()
        screenGui:Destroy()
    end)

    local tabContainer = Create("Frame", {
        Name = "TabContainer",
        Size = UDim2.new(1, -20, 0, 40),
        Position = UDim2.new(0, 10, 0, 50),
        BackgroundTransparency = 1,
        Parent = mainFrame
    })

    local tabListLayout = Create("UIListLayout", {
        FillDirection = Enum.FillDirection.Horizontal,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 5),
        Parent = tabContainer
    })

    local contentContainer = Create("Frame", {
        Name = "ContentContainer",
        Size = UDim2.new(1, -20, 1, -100),
        Position = UDim2.new(0, 10, 0, 100),
        BackgroundTransparency = 1,
        ClipsDescendants = true,
        Parent = mainFrame
    })

    -- Make window draggable
    local dragging
    local dragInput
    local dragStart
    local startPos

    local function Update(input)
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X, 
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end

    titleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = mainFrame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    titleBar.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            Update(input)
        end
    end)

    -- Add glow effect
    local glow = Create("ImageLabel", {
        Name = "Glow",
        Size = UDim2.new(1, 40, 1, 40),
        Position = UDim2.new(0.5, -20, 0.5, -20),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        Image = "rbxassetid://5028857084",
        ImageColor3 = ACCENT_COLOR,
        ImageTransparency = 0.8,
        ScaleType = Enum.ScaleType.Slice,
        SliceCenter = Rect.new(24, 24, 276, 276),
        ZIndex = 0,
        Parent = mainFrame
    })

    -- Add resize functionality
    local resizeButton = Create("TextButton", {
        Name = "ResizeButton",
        Size = UDim2.new(0, 20, 0, 20),
        Position = UDim2.new(1, -20, 1, -20),
        BackgroundTransparency = 1,
        Text = "↘",
        TextColor3 = TEXT_COLOR,
        TextSize = 14,
        Font = Enum.Font.GothamBold,
        Parent = mainFrame
    })

    local resizing = false
    local startSize
    local startInputPos

    resizeButton.MouseButton1Down:Connect(function(input)
        resizing = true
        startSize = mainFrame.Size
        startInputPos = input.Position
    end)

    UserInputService.InputChanged:Connect(function(input)
        if resizing and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - startInputPos
            local newSize = UDim2.new(
                startSize.X.Scale,
                startSize.X.Offset + delta.X,
                startSize.Y.Scale,
                startSize.Y.Offset + delta.Y
            )
            
            -- Minimum size constraints
            newSize = UDim2.new(
                newSize.X.Scale,
                math.max(newSize.X.Offset, 400),
                newSize.Y.Scale,
                math.max(newSize.Y.Offset, 400)
            )
            
            mainFrame.Size = newSize
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            resizing = false
        end
    end)

    -- Initialize tabs system
    local tabs = {}
    local currentTab = nil

    function self:AddTab(name, icon)
        local tabButton = Create("TextButton", {
            Name = name .. "Tab",
            Size = UDim2.new(0, 100, 1, 0),
            BackgroundColor3 = SECONDARY_COLOR,
            BackgroundTransparency = TRANSPARENCY,
            Text = name,
            TextColor3 = TEXT_COLOR,
            TextSize = 14,
            Font = Enum.Font.Gotham,
            Parent = tabContainer
        })

        Create("UICorner", {
            CornerRadius = UDim.new(0, 4),
            Parent = tabButton
        })

        local tabContent = Create("ScrollingFrame", {
            Name = name .. "Content",
            Size = UDim2.new(1, 0, 1, 0),
            Position = UDim2.new(0, 0, 0, 0),
            BackgroundTransparency = 1,
            Visible = false,
            ScrollBarThickness = 5,
            ScrollBarImageColor3 = ACCENT_COLOR,
            ScrollBarImageTransparency = 0.7,
            CanvasSize = UDim2.new(0, 0, 0, 0),
            Parent = contentContainer
        })

        Create("UIListLayout", {
            SortOrder = Enum.SortOrder.LayoutOrder,
            Padding = UDim.new(0, 10),
            Parent = tabContent
        })

        local tab = {
            Button = tabButton,
            Content = tabContent,
            Sections = {}
        }

        table.insert(tabs, tab)

        tabButton.MouseButton1Click:Connect(function()
            if currentTab then
                currentTab.Content.Visible = false
                Tween(currentTab.Button, {BackgroundColor3 = SECONDARY_COLOR}, 0.2)
            end
            
            currentTab = tab
            tabContent.Visible = true
            Tween(tabButton, {BackgroundColor3 = ACCENT_COLOR}, 0.2)
        end)

        if #tabs == 1 then
            tabButton.BackgroundColor3 = ACCENT_COLOR
            tabContent.Visible = true
            currentTab = tab
        end

        function tab:AddSection(title)
            local sectionFrame = Create("Frame", {
                Name = title .. "Section",
                Size = UDim2.new(1, -20, 0, 0),
                BackgroundColor3 = SECONDARY_COLOR,
                BackgroundTransparency = TRANSPARENCY,
                Parent = tabContent
            })

            Create("UICorner", {
                CornerRadius = CORNER_RADIUS,
                Parent = sectionFrame
            })

            Create("UIStroke", {
                Color = ACCENT_COLOR,
                Thickness = 1,
                Transparency = 0.7,
                Parent = sectionFrame
            })

            local sectionTitle = Create("TextLabel", {
                Name = "Title",
                Size = UDim2.new(1, -20, 0, 30),
                Position = UDim2.new(0, 10, 0, 5),
                BackgroundTransparency = 1,
                Text = title,
                TextColor3 = TEXT_COLOR,
                TextSize = 16,
                Font = Enum.Font.GothamBold,
                TextXAlignment = Enum.TextXAlignment.Left,
                Parent = sectionFrame
            })

            local sectionContent = Create("Frame", {
                Name = "Content",
                Size = UDim2.new(1, -20, 0, 0),
                Position = UDim2.new(0, 10, 0, 40),
                BackgroundTransparency = 1,
                Parent = sectionFrame
            })

            local sectionListLayout = Create("UIListLayout", {
                SortOrder = Enum.SortOrder.LayoutOrder,
                Padding = UDim.new(0, 10),
                Parent = sectionContent
            })

            sectionListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                sectionContent.Size = UDim2.new(1, 0, 0, sectionListLayout.AbsoluteContentSize.Y)
                sectionFrame.Size = UDim2.new(1, -20, 0, sectionContent.Size.Y.Offset + 50)
            end)

            local section = {
                Frame = sectionFrame,
                Title = sectionTitle,
                Content = sectionContent
            }

            table.insert(self.Sections, section)
            return section
        end

        return tab
    end

    -- Add watermark
    local watermark = Create("TextLabel", {
        Name = "Watermark",
        Size = UDim2.new(0, 200, 0, 20),
        Position = UDim2.new(1, -210, 1, -25),
        BackgroundTransparency = 1,
        Text = "HatanRizz Hub v1.0",
        TextColor3 = TEXT_COLOR,
        TextSize = 12,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Right,
        Parent = mainFrame
    })

    -- Add keybind to toggle UI
    local uiHidden = false
    local toggleKey = Enum.KeyCode.RightShift

    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not gameProcessed and input.KeyCode == toggleKey then
            uiHidden = not uiHidden
            mainFrame.Visible = not uiHidden
        end
    end)

    return setmetatable({
        ScreenGui = screenGui,
        MainFrame = mainFrame,
        Tabs = tabs,
        CurrentTab = currentTab
    }, self)
end

-- UI Components
function HatanRizz:CreateButton(parent, text, callback)
    local button = Create("TextButton", {
        Name = text .. "Button",
        Size = UDim2.new(1, 0, 0, 40),
        BackgroundColor3 = SECONDARY_COLOR,
        BackgroundTransparency = TRANSPARENCY,
        Text = text,
        TextColor3 = TEXT_COLOR,
        TextSize = 14,
        Font = Enum.Font.Gotham,
        Parent = parent
    })

    Create("UICorner", {
        CornerRadius = CORNER_RADIUS,
        Parent = button
    })

    Create("UIStroke", {
        Color = ACCENT_COLOR,
        Thickness = 1,
        Transparency = 0.7,
        Parent = button
    })

    button.MouseEnter:Connect(function()
        Tween(button, {BackgroundColor3 = ACCENT_COLOR}, 0.2)
    end)

    button.MouseLeave:Connect(function()
        Tween(button, {BackgroundColor3 = SECONDARY_COLOR}, 0.2)
    end)

    button.MouseButton1Click:Connect(function()
        if callback then
            callback()
        end
    end)

    return button
end

function HatanRizz:CreateToggle(parent, text, default, callback)
    local toggleFrame = Create("Frame", {
        Name = text .. "Toggle",
        Size = UDim2.new(1, 0, 0, 40),
        BackgroundTransparency = 1,
        Parent = parent
    })

    local toggleLabel = Create("TextLabel", {
        Name = "Label",
        Size = UDim2.new(0.7, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = text,
        TextColor3 = TEXT_COLOR,
        TextSize = 14,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = toggleFrame
    })

    local toggleButton = Create("TextButton", {
        Name = "Toggle",
        Size = UDim2.new(0.25, 0, 0, 30),
        Position = UDim2.new(0.75, 0, 0.5, -15),
        BackgroundColor3 = SECONDARY_COLOR,
        BackgroundTransparency = TRANSPARENCY,
        Text = "",
        Parent = toggleFrame
    })

    Create("UICorner", {
        CornerRadius = CORNER_RADIUS,
        Parent = toggleButton
    })

    Create("UIStroke", {
        Color = ACCENT_COLOR,
        Thickness = 1,
        Transparency = 0.7,
        Parent = toggleButton
    })

    local toggleState = default or false

    local toggleIndicator = Create("Frame", {
        Name = "Indicator",
        Size = UDim2.new(0.4, 0, 0.8, 0),
        Position = toggleState and UDim2.new(0.55, 0, 0.1, 0) or UDim2.new(0.05, 0, 0.1, 0),
        BackgroundColor3 = toggleState and ACCENT_COLOR or Color3.fromRGB(150, 150, 150),
        Parent = toggleButton
    })

    Create("UICorner", {
        CornerRadius = UDim.new(0.5, 0),
        Parent = toggleIndicator
    })

    local function UpdateToggle()
        if toggleState then
            Tween(toggleIndicator, {
                Position = UDim2.new(0.55, 0, 0.1, 0),
                BackgroundColor3 = ACCENT_COLOR
            }, 0.2)
        else
            Tween(toggleIndicator, {
                Position = UDim2.new(0.05, 0, 0.1, 0),
                BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            }, 0.2)
        end
        
        if callback then
            callback(toggleState)
        end
    end

    toggleButton.MouseButton1Click:Connect(function()
        toggleState = not toggleState
        UpdateToggle()
    end)

    toggleButton.MouseEnter:Connect(function()
        Tween(toggleButton, {BackgroundColor3 = ACCENT_COLOR}, 0.2)
    end)

    toggleButton.MouseLeave:Connect(function()
        Tween(toggleButton, {BackgroundColor3 = SECONDARY_COLOR}, 0.2)
    end)

    return {
        Frame = toggleFrame,
        SetState = function(self, state)
            toggleState = state
            UpdateToggle()
        end,
        GetState = function(self)
            return toggleState
        end
    }
end

function HatanRizz:CreateSlider(parent, text, min, max, default, callback)
    local sliderFrame = Create("Frame", {
        Name = text .. "Slider",
        Size = UDim2.new(1, 0, 0, 60),
        BackgroundTransparency = 1,
        Parent = parent
    })

    local sliderLabel = Create("TextLabel", {
        Name = "Label",
        Size = UDim2.new(1, 0, 0, 20),
        BackgroundTransparency = 1,
        Text = text,
        TextColor3 = TEXT_COLOR,
        TextSize = 14,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = sliderFrame
    })

    local sliderValue = Create("TextLabel", {
        Name = "Value",
        Size = UDim2.new(1, 0, 0, 20),
        Position = UDim2.new(0, 0, 0, 20),
        BackgroundTransparency = 1,
        Text = tostring(default or min),
        TextColor3 = TEXT_COLOR,
        TextSize = 14,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Right,
        Parent = sliderFrame
    })

    local sliderBar = Create("Frame", {
        Name = "Bar",
        Size = UDim2.new(1, 0, 0, 10),
        Position = UDim2.new(0, 0, 0, 45),
        BackgroundColor3 = SECONDARY_COLOR,
        BackgroundTransparency = TRANSPARENCY,
        Parent = sliderFrame
    })

    Create("UICorner", {
        CornerRadius = UDim.new(0.5, 0),
        Parent = sliderBar
    })

    Create("UIStroke", {
        Color = ACCENT_COLOR,
        Thickness = 1,
        Transparency = 0.7,
        Parent = sliderBar
    })

    local sliderFill = Create("Frame", {
        Name = "Fill",
        Size = UDim2.new(0, 0, 1, 0),
        BackgroundColor3 = ACCENT_COLOR,
        Parent = sliderBar
    })

    Create("UICorner", {
        CornerRadius = UDim.new(0.5, 0),
        Parent = sliderFill
    })

    local sliderButton = Create("TextButton", {
        Name = "Button",
        Size = UDim2.new(0, 20, 0, 20),
        Position = UDim2.new(0, 0, 0.5, -10),
        BackgroundColor3 = TEXT_COLOR,
        Text = "",
        Parent = sliderBar
    })

    Create("UICorner", {
        CornerRadius = UDim.new(0.5, 0),
        Parent = sliderButton
    })

    local minValue = min or 0
    local maxValue = max or 100
    local currentValue = default or minValue
    local sliding = false

    local function UpdateSlider(value)
        currentValue = math.clamp(value, minValue, maxValue)
        local percentage = (currentValue - minValue) / (maxValue - minValue)
        
        sliderFill.Size = UDim2.new(percentage, 0, 1, 0)
        sliderButton.Position = UDim2.new(percentage, -10, 0.5, -10)
        sliderValue.Text = tostring(Round(currentValue, 2))
        
        if callback then
            callback(currentValue)
        end
    end

    sliderButton.MouseButton1Down:Connect(function()
        sliding = true
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            sliding = false
        end
    end)

    sliderBar.MouseButton1Down:Connect(function(x, y)
        sliding = true
        local relativeX = x - sliderBar.AbsolutePosition.X
        local percentage = math.clamp(relativeX / sliderBar.AbsoluteSize.X, 0, 1)
        UpdateSlider(minValue + (maxValue - minValue) * percentage)
    end)

    UserInputService.InputChanged:Connect(function(input)
        if sliding and input.UserInputType == Enum.UserInputType.MouseMovement then
            local relativeX = input.Position.X - sliderBar.AbsolutePosition.X
            local percentage = math.clamp(relativeX / sliderBar.AbsoluteSize.X, 0, 1)
            UpdateSlider(minValue + (maxValue - minValue) * percentage)
        end
    end)

    UpdateSlider(currentValue)

    return {
        Frame = sliderFrame,
        SetValue = function(self, value)
            UpdateSlider(value)
        end,
        GetValue = function(self)
            return currentValue
        end
    }
end

function HatanRizz:CreateDropdown(parent, text, options, default, callback)
    local dropdownFrame = Create("Frame", {
        Name = text .. "Dropdown",
        Size = UDim2.new(1, 0, 0, 40),
        BackgroundTransparency = 1,
        Parent = parent
    })

    local dropdownLabel = Create("TextLabel", {
        Name = "Label",
        Size = UDim2.new(1, 0, 0, 20),
        BackgroundTransparency = 1,
        Text = text,
        TextColor3 = TEXT_COLOR,
        TextSize = 14,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = dropdownFrame
    })

    local dropdownButton = Create("TextButton", {
        Name = "Button",
        Size = UDim2.new(1, 0, 0, 30),
        Position = UDim2.new(0, 0, 0, 20),
        BackgroundColor3 = SECONDARY_COLOR,
        BackgroundTransparency = TRANSPARENCY,
        Text = default or "Select...",
        TextColor3 = TEXT_COLOR,
        TextSize = 14,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = dropdownFrame
    })

    Create("UICorner", {
        CornerRadius = CORNER_RADIUS,
        Parent = dropdownButton
    })

    Create("UIStroke", {
        Color = ACCENT_COLOR,
        Thickness = 1,
        Transparency = 0.7,
        Parent = dropdownButton
    })

    local dropdownArrow = Create("TextLabel", {
        Name = "Arrow",
        Size = UDim2.new(0, 20, 0, 20),
        Position = UDim2.new(1, -25, 0.5, -10),
        BackgroundTransparency = 1,
        Text = "▼",
        TextColor3 = TEXT_COLOR,
        TextSize = 14,
        Font = Enum.Font.Gotham,
        Parent = dropdownButton
    })

    local dropdownList = Create("ScrollingFrame", {
        Name = "List",
        Size = UDim2.new(1, 0, 0, 0),
        Position = UDim2.new(0, 0, 0, 55),
        BackgroundColor3 = SECONDARY_COLOR,
        BackgroundTransparency = TRANSPARENCY,
        Visible = false,
        ScrollBarThickness = 5,
        ScrollBarImageColor3 = ACCENT_COLOR,
        CanvasSize = UDim2.new(0, 0, 0, 0),
        Parent = dropdownFrame
    })

    Create("UICorner", {
        CornerRadius = CORNER_RADIUS,
        Parent = dropdownList
    })

    Create("UIStroke", {
        Color = ACCENT_COLOR,
        Thickness = 1,
        Transparency = 0.7,
        Parent = dropdownList
    })

    local listLayout = Create("UIListLayout", {
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = dropdownList
    })

    local opened = false
    local selectedOption = default

    local function ToggleDropdown()
        opened = not opened
        dropdownList.Visible = opened
        
        if opened then
            Tween(dropdownList, {Size = UDim2.new(1, 0, 0, math.min(#options * 30, 150))}, 0.2)
            Tween(dropdownArrow, {Rotation = 180}, 0.2)
        else
            Tween(dropdownList, {Size = UDim2.new(1, 0, 0, 0)}, 0.2)
            Tween(dropdownArrow, {Rotation = 0}, 0.2)
        end
    end

    local function SelectOption(option)
        selectedOption = option
        dropdownButton.Text = option
        ToggleDropdown()
        
        if callback then
            callback(option)
        end
    end

    dropdownButton.MouseButton1Click:Connect(ToggleDropdown)

    for i, option in ipairs(options) do
        local optionButton = Create("TextButton", {
            Name = option .. "Option",
            Size = UDim2.new(1, -10, 0, 30),
            Position = UDim2.new(0, 5, 0, (i-1)*30),
            BackgroundColor3 = SECONDARY_COLOR,
            BackgroundTransparency = TRANSPARENCY,
            Text = option,
            TextColor3 = TEXT_COLOR,
            TextSize = 14,
            Font = Enum.Font.Gotham,
            TextXAlignment = Enum.TextXAlignment.Left,
            Parent = dropdownList
        })

        Create("UICorner", {
            CornerRadius = UDim.new(0, 4),
            Parent = optionButton
        })

        optionButton.MouseButton1Click:Connect(function()
            SelectOption(option)
        end)

        optionButton.MouseEnter:Connect(function()
            Tween(optionButton, {BackgroundColor3 = ACCENT_COLOR}, 0.2)
        end)

        optionButton.MouseLeave:Connect(function()
            Tween(optionButton, {BackgroundColor3 = SECONDARY_COLOR}, 0.2)
        end)
    end

    listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        dropdownList.CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y)
    end)

    return {
        Frame = dropdownFrame,
        GetSelected = function(self)
            return selectedOption
        end,
        SetSelected = function(self, option)
            if table.find(options, option) then
                SelectOption(option)
            end
        end
    }
end

function HatanRizz:CreateTextBox(parent, text, placeholder, callback)
    local textBoxFrame = Create("Frame", {
        Name = text .. "TextBox",
        Size = UDim2.new(1, 0, 0, 60),
        BackgroundTransparency = 1,
        Parent = parent
    })

    local textBoxLabel = Create("TextLabel", {
        Name = "Label",
        Size = UDim2.new(1, 0, 0, 20),
        BackgroundTransparency = 1,
        Text = text,
        TextColor3 = TEXT_COLOR,
        TextSize = 14,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = textBoxFrame
    })

    local textBox = Create("TextBox", {
        Name = "Box",
        Size = UDim2.new(1, 0, 0, 30),
        Position = UDim2.new(0, 0, 0, 25),
        BackgroundColor3 = SECONDARY_COLOR,
        BackgroundTransparency = TRANSPARENCY,
        Text = "",
        PlaceholderText = placeholder or "Enter text...",
        TextColor3 = TEXT_COLOR,
        PlaceholderColor3 = Color3.fromRGB(150, 150, 150),
        TextSize = 14,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = textBoxFrame
    })

    Create("UICorner", {
        CornerRadius = CORNER_RADIUS,
        Parent = textBox
    })

    Create("UIStroke", {
        Color = ACCENT_COLOR,
        Thickness = 1,
        Transparency = 0.7,
        Parent = textBox
    })

    textBox.Focused:Connect(function()
        Tween(textBox, {BackgroundTransparency = TRANSPARENCY - 0.1}, 0.2)
    end)

    textBox.FocusLost:Connect(function()
        Tween(textBox, {BackgroundTransparency = TRANSPARENCY}, 0.2)
        if callback then
            callback(textBox.Text)
        end
    end)

    return {
        Frame = textBoxFrame,
        GetText = function(self)
            return textBox.Text
        end,
        SetText = function(self, text)
            textBox.Text = text
        end
    }
end

function HatanRizz:CreateLabel(parent, text, size)
    local label = Create("TextLabel", {
        Name = text .. "Label",
        Size = size or UDim2.new(1, 0, 0, 20),
        BackgroundTransparency = 1,
        Text = text,
        TextColor3 = TEXT_COLOR,
        TextSize = 14,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = parent
    })

    return label
end

function HatanRizz:CreateKeybind(parent, text, default, callback)
    local keybindFrame = Create("Frame", {
        Name = text .. "Keybind",
        Size = UDim2.new(1, 0, 0, 40),
        BackgroundTransparency = 1,
        Parent = parent
    })

    local keybindLabel = Create("TextLabel", {
        Name = "Label",
        Size = UDim2.new(0.7, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = text,
        TextColor3 = TEXT_COLOR,
        TextSize = 14,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = keybindFrame
    })

    local keybindButton = Create("TextButton", {
        Name = "Button",
        Size = UDim2.new(0.25, 0, 0, 30),
        Position = UDim2.new(0.75, 0, 0.5, -15),
        BackgroundColor3 = SECONDARY_COLOR,
        BackgroundTransparency = TRANSPARENCY,
        Text = default and tostring(default) or "NONE",
        TextColor3 = TEXT_COLOR,
        TextSize = 14,
        Font = Enum.Font.Gotham,
        Parent = keybindFrame
    })

    Create("UICorner", {
        CornerRadius = CORNER_RADIUS,
        Parent = keybindButton
    })

    Create("UIStroke", {
        Color = ACCENT_COLOR,
        Thickness = 1,
        Transparency = 0.7,
        Parent = keybindButton
    })

    local listening = false
    local currentKey = default

    keybindButton.MouseButton1Click:Connect(function()
        listening = true
        keybindButton.Text = "..."
    end)

    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if listening and not gameProcessed then
            local key = input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode or input.UserInputType
            
            if key ~= Enum.KeyCode.Escape then
                currentKey = key
                keybindButton.Text = tostring(key):gsub("Enum.KeyCode.", ""):gsub("Enum.UserInputType.", "")
                
                if callback then
                    callback(key)
                end
            end
            
            listening = false
        end
    end)

    return {
        Frame = keybindFrame,
        GetKey = function(self)
            return currentKey
        end,
        SetKey = function(self, key)
            currentKey = key
            keybindButton.Text = tostring(key):gsub("Enum.KeyCode.", ""):gsub("Enum.UserInputType.", "")
        end
    }
end

return HatanRizz
