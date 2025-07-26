--[[
    Ultimate Professional UI v4.0
    Features:
    - Loads Fluent UI when "Thank You" selected
    - Kicks player when "Nothing" selected
    - Sleek professional design
    - Dynamic transparency
    - Draggable window
]]

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

-- Main UI Container
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PremiumUI"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

if RunService:IsStudio() then
    ScreenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
else
    ScreenGui.Parent = game:GetService("CoreGui")
end

-- Main Frame with glass effect
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 360, 0, 220)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
MainFrame.BackgroundTransparency = 0.3
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Parent = ScreenGui

-- Outer shadow effect
local OuterShadow = Instance.new("ImageLabel")
OuterShadow.Name = "OuterShadow"
OuterShadow.Size = UDim2.new(1, 24, 1, 24)
OuterShadow.Position = UDim2.new(0, -12, 0, -12)
OuterShadow.BackgroundTransparency = 1
OuterShadow.Image = "rbxassetid://1316045217"
OuterShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
OuterShadow.ImageTransparency = 0.9
OuterShadow.ScaleType = Enum.ScaleType.Slice
OuterShadow.SliceCenter = Rect.new(10, 10, 118, 118)
OuterShadow.ZIndex = -1
OuterShadow.Parent = MainFrame

-- Corner rounding
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 14)
UICorner.Parent = MainFrame

-- Header with gradient
local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1, 0, 0, 42)
Header.Position = UDim2.new(0, 0, 0, 0)
Header.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
Header.BackgroundTransparency = 0.5
Header.BorderSizePixel = 0
Header.Parent = MainFrame

local HeaderGradient = Instance.new("UIGradient")
HeaderGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 60, 75)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 40))
})
HeaderGradient.Rotation = 90
HeaderGradient.Parent = Header

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0, 14)
HeaderCorner.Parent = Header

-- Premium title
local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, -50, 1, 0)
Title.Position = UDim2.new(0, 15, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "PREMIUM ACCESS"
Title.TextColor3 = Color3.fromRGB(220, 220, 255)
Title.TextSize = 16
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Header

-- Premium close button
local CloseButton = Instance.new("ImageButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0, 22, 0, 22)
CloseButton.Position = UDim2.new(1, -30, 0.5, -11)
CloseButton.AnchorPoint = Vector2.new(0.5, 0.5)
CloseButton.BackgroundTransparency = 1
CloseButton.Image = "rbxassetid://3926305904"
CloseButton.ImageRectOffset = Vector2.new(284, 4)
CloseButton.ImageRectSize = Vector2.new(24, 24)
CloseButton.ImageColor3 = Color3.fromRGB(180, 180, 200)
CloseButton.Parent = Header

-- Content frame
local Content = Instance.new("Frame")
Content.Name = "Content"
Content.Size = UDim2.new(1, -20, 1, -62)
Content.Position = UDim2.new(0, 10, 0, 52)
Content.BackgroundTransparency = 1
Content.Parent = MainFrame

-- Prompt text
local PromptText = Instance.new("TextLabel")
PromptText.Name = "PromptText"
PromptText.Size = UDim2.new(0.5, -10, 0, 40)
PromptText.Position = UDim2.new(0, 0, 0, 0)
PromptText.BackgroundTransparency = 1
PromptText.Text = "SAYYWHAT??"
PromptText.TextColor3 = Color3.fromRGB(200, 200, 220)
PromptText.TextSize = 14
PromptText.Font = Enum.Font.Gotham
PromptText.TextXAlignment = Enum.TextXAlignment.Left
PromptText.TextYAlignment = Enum.TextYAlignment.Center
PromptText.Parent = Content

-- Dropdown container
local DropdownContainer = Instance.new("Frame")
DropdownContainer.Name = "DropdownContainer"
DropdownContainer.Size = UDim2.new(0.5, -10, 0, 38)
DropdownContainer.Position = UDim2.new(0.5, 0, 0, 0)
DropdownContainer.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
DropdownContainer.BackgroundTransparency = 0.6
DropdownContainer.BorderSizePixel = 0
DropdownContainer.Parent = Content

local DropdownCorner = Instance.new("UICorner")
DropdownCorner.CornerRadius = UDim.new(0, 8)
DropdownCorner.Parent = DropdownContainer

-- Dropdown button
local DropdownButton = Instance.new("TextButton")
DropdownButton.Name = "DropdownButton"
DropdownButton.Size = UDim2.new(1, 0, 1, 0)
DropdownButton.Position = UDim2.new(0, 0, 0, 0)
DropdownButton.BackgroundTransparency = 1
DropdownButton.Text = "Choose..."
DropdownButton.TextColor3 = Color3.fromRGB(200, 200, 220)
DropdownButton.TextSize = 14
DropdownButton.Font = Enum.Font.Gotham
DropdownButton.TextXAlignment = Enum.TextXAlignment.Left
DropdownButton.Parent = DropdownContainer

local DropdownPadding = Instance.new("UIPadding")
DropdownPadding.PaddingLeft = UDim.new(0, 12)
DropdownPadding.Parent = DropdownButton

local DropdownIcon = Instance.new("ImageLabel")
DropdownIcon.Name = "DropdownIcon"
DropdownIcon.Size = UDim2.new(0, 16, 0, 16)
DropdownIcon.Position = UDim2.new(1, -26, 0.5, -8)
DropdownIcon.AnchorPoint = Vector2.new(0.5, 0.5)
DropdownIcon.BackgroundTransparency = 1
DropdownIcon.Image = "rbxassetid://10709790937"
DropdownIcon.ImageColor3 = Color3.fromRGB(200, 200, 220)
DropdownIcon.Rotation = 0
DropdownIcon.Parent = DropdownButton

-- Dropdown list
local DropdownList = Instance.new("ScrollingFrame")
DropdownList.Name = "DropdownList"
DropdownList.Size = UDim2.new(1, 0, 0, 0)
DropdownList.Position = UDim2.new(0, 0, 0, 42)
DropdownList.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
DropdownList.BackgroundTransparency = 0.4
DropdownList.BorderSizePixel = 0
DropdownList.ScrollBarThickness = 4
DropdownList.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 120)
DropdownList.CanvasSize = UDim2.new(0, 0, 0, 0)
DropdownList.Visible = false
DropdownList.Parent = DropdownContainer

local DropdownListCorner = Instance.new("UICorner")
DropdownListCorner.CornerRadius = UDim.new(0, 8)
DropdownListCorner.Parent = DropdownList

local DropdownListLayout = Instance.new("UIListLayout")
DropdownListLayout.Name = "DropdownListLayout"
DropdownListLayout.Padding = UDim.new(0, 2)
DropdownListLayout.SortOrder = Enum.SortOrder.LayoutOrder
DropdownListLayout.Parent = DropdownList

local DropdownListPadding = Instance.new("UIPadding")
DropdownListPadding.PaddingTop = UDim.new(0, 4)
DropdownListPadding.PaddingBottom = UDim.new(0, 4)
DropdownListPadding.PaddingLeft = UDim.new(0, 2)
DropdownListPadding.PaddingRight = UDim.new(0, 2)
DropdownListPadding.Parent = DropdownList

-- Action button
local ActionButton = Instance.new("TextButton")
ActionButton.Name = "ActionButton"
ActionButton.Size = UDim2.new(1, 0, 0, 42)
ActionButton.Position = UDim2.new(0, 0, 1, -42)
ActionButton.BackgroundColor3 = Color3.fromRGB(60, 130, 230)
ActionButton.BackgroundTransparency = 0.4
ActionButton.BorderSizePixel = 0
ActionButton.Text = "CONFIRM"
ActionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ActionButton.TextSize = 14
ActionButton.Font = Enum.Font.GothamBold
ActionButton.Parent = Content

local ActionButtonCorner = Instance.new("UICorner")
ActionButtonCorner.CornerRadius = UDim.new(0, 8)
ActionButtonCorner.Parent = ActionButton

-- Status label
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Name = "StatusLabel"
StatusLabel.Size = UDim2.new(1, 0, 0, 20)
StatusLabel.Position = UDim2.new(0, 0, 1, -72)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
StatusLabel.TextSize = 12
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.TextXAlignment = Enum.TextXAlignment.Center
StatusLabel.Visible = false
StatusLabel.Parent = Content

-- Dropdown options
local DropdownOptions = {
    {Text = "Thank You", Value = "thank_you"},
    {Text = "Nothing", Value = "nothing"}
}

-- Animation variables
local DropdownTweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local ButtonTweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local FadeTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Selected option
local SelectedOption = nil

-- Create dropdown options
local function CreateDropdownOptions()
    for _, child in ipairs(DropdownList:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end
    
    for i, option in ipairs(DropdownOptions) do
        local OptionButton = Instance.new("TextButton")
        OptionButton.Name = "Option_"..option.Value
        OptionButton.Size = UDim2.new(1, -4, 0, 34)
        OptionButton.Position = UDim2.new(0, 0, 0, (i-1)*36)
        OptionButton.BackgroundColor3 = Color3.fromRGB(50, 50, 65)
        OptionButton.BackgroundTransparency = 0.6
        OptionButton.BorderSizePixel = 0
        OptionButton.Text = option.Text
        OptionButton.TextColor3 = Color3.fromRGB(200, 200, 220)
        OptionButton.TextSize = 14
        OptionButton.Font = Enum.Font.Gotham
        OptionButton.TextXAlignment = Enum.TextXAlignment.Left
        OptionButton.LayoutOrder = i
        OptionButton.AutoButtonColor = false
        OptionButton.Parent = DropdownList
        
        local OptionCorner = Instance.new("UICorner")
        OptionCorner.CornerRadius = UDim.new(0, 6)
        OptionCorner.Parent = OptionButton
        
        local OptionPadding = Instance.new("UIPadding")
        OptionPadding.PaddingLeft = UDim.new(0, 12)
        OptionPadding.Parent = OptionButton
        
        OptionButton.MouseEnter:Connect(function()
            if SelectedOption ~= option.Value then
                TweenService:Create(OptionButton, ButtonTweenInfo, {
                    BackgroundColor3 = Color3.fromRGB(60, 60, 80),
                    BackgroundTransparency = 0.4,
                    TextColor3 = Color3.fromRGB(230, 230, 255)
                }):Play()
            end
        end)
        
        OptionButton.MouseLeave:Connect(function()
            if SelectedOption ~= option.Value then
                TweenService:Create(OptionButton, ButtonTweenInfo, {
                    BackgroundColor3 = Color3.fromRGB(50, 50, 65),
                    BackgroundTransparency = 0.6,
                    TextColor3 = Color3.fromRGB(200, 200, 220)
                }):Play()
            end
        end)
        
        OptionButton.MouseButton1Click:Connect(function()
            SelectedOption = option.Value
            DropdownButton.Text = option.Text
            
            for _, btn in ipairs(DropdownList:GetChildren()) do
                if btn:IsA("TextButton") then
                    if btn.Name == "Option_"..option.Value then
                        TweenService:Create(btn, ButtonTweenInfo, {
                            BackgroundColor3 = Color3.fromRGB(70, 70, 90),
                            BackgroundTransparency = 0.3,
                            TextColor3 = Color3.fromRGB(255, 255, 255)
                        }):Play()
                    else
                        TweenService:Create(btn, ButtonTweenInfo, {
                            BackgroundColor3 = Color3.fromRGB(50, 50, 65),
                            BackgroundTransparency = 0.6,
                            TextColor3 = Color3.fromRGB(200, 200, 220)
                        }):Play()
                    end
                end
            end
            
            DropdownList.Visible = false
            TweenService:Create(DropdownIcon, DropdownTweenInfo, {
                Rotation = 0
            }):Play()
            
            TweenService:Create(DropdownList, DropdownTweenInfo, {
                Size = UDim2.new(1, 0, 0, 0)
            }):Play()
        end)
    end
    
    DropdownList.CanvasSize = UDim2.new(0, 0, 0, DropdownListLayout.AbsoluteContentSize.Y + 8)
end

-- Toggle dropdown visibility
local function ToggleDropdown()
    if DropdownList.Visible then
        DropdownList.Visible = false
        TweenService:Create(DropdownIcon, DropdownTweenInfo, {
            Rotation = 0
        }):Play()
        
        TweenService:Create(DropdownList, DropdownTweenInfo, {
            Size = UDim2.new(1, 0, 0, 0)
        }):Play()
    else
        DropdownList.Visible = true
        TweenService:Create(DropdownIcon, DropdownTweenInfo, {
            Rotation = 180
        }):Play()
        
        local maxHeight = math.min(160, DropdownListLayout.AbsoluteContentSize.Y + 8)
        TweenService:Create(DropdownList, DropdownTweenInfo, {
            Size = UDim2.new(1, 0, 0, maxHeight)
        }):Play()
    end
end

-- Show status message
local function ShowStatus(message, color)
    StatusLabel.Text = message
    StatusLabel.TextColor3 = color or Color3.fromRGB(255, 80, 80)
    StatusLabel.Visible = true
    
    delay(3, function()
        TweenService:Create(StatusLabel, FadeTweenInfo, {
            TextTransparency = 1
        }):Play()
        
        delay(0.3, function()
            StatusLabel.Visible = false
            StatusLabel.TextTransparency = 0
        end)
    end)
end

-- Load Fluent UI function
local function LoadFluentUI()
    -- Close current UI
    TweenService:Create(MainFrame, FadeTweenInfo, {
        Size = UDim2.new(0, 360, 0, 0),
        Position = UDim2.new(0.5, -180, 0.5, -110),
        BackgroundTransparency = 1
    }):Play()
    
    delay(0.3, function()
        ScreenGui:Destroy()
        
        -- Load Fluent UI
        local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
        local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
        local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

        -- Create Window
        local Window = Fluent:CreateWindow({
            Title = "Fluent " .. Fluent.Version,
            SubTitle = "Craft Bot",
            TabWidth = 160,
            Size = UDim2.fromOffset(580, 460),
            Acrylic = true,
            Theme = "Dark",
            MinimizeKey = Enum.KeyCode.LeftControl
        })

        -- Tabs
        local Tabs = {
            Craft = Window:AddTab({ Title = "Craft", Icon = "hammer" }),
            Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
        }

        -- Options table
        local Options = Fluent.Options

        -- ================================
        --         SEED SECTION
        -- ================================
        local SelectedSeed = nil

        local SeedDropdown = Tabs.Craft:AddDropdown("SeedDropdown", {
            Title = "Select Seed",
            Values = { "Horsetail", "Lingon Berry", "Amber Spine", "Grand Volcania",
                       "Peace Lily", "Aloe Vera", "Guanabana", "Manuka Flower",
                       "Dandelion", "Lumira", "Honeysuckle", "Bee Balm",
                       "Nectar Thorn", "Suncoil" },
            Multi = false,
            Default = 1
        })

        SeedDropdown:OnChanged(function(Value)
            SelectedSeed = Value
        end)

        Tabs.Craft:AddButton({
            Title = "Apply Seed",
            Description = "Apply selected seed recipe",
            Callback = function()
                if SelectedSeed then
                    local args = {
                        "SetRecipe",
                        workspace:WaitForChild("CraftingTables"):WaitForChild("SeedEventCraftingWorkBench"),
                        "SeedEventWorkbench",
                        SelectedSeed
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents")
                        :WaitForChild("CraftingGlobalObjectService"):FireServer(unpack(args))

                    Fluent:Notify({
                        Title = "Success",
                        Content = SelectedSeed .. " Applied!",
                        Duration = 5
                    })
                else
                    Fluent:Notify({
                        Title = "Error",
                        Content = "No seed selected!",
                        Duration = 5
                    })
                end
            end
        })

        -- ================================
        --         GEAR SECTION
        -- ================================
        local SelectedGear = nil

        local GearDropdown = Tabs.Craft:AddDropdown("GearDropdown", {
            Title = "Select Gear",
            Values = {
                "Lightning Rod", "Reclaimer", "Tropical Mist Sprinkler",
                "Berry Blusher Sprinkler", "Spice Spritzer Sprinkler",
                "Flower Froster Sprinkler", "Stalk Sprout Sprinkler",
                "Sweet Soaker Sprinkler", "Mutation Spray Choc",
                "Mutation Spray Chilled", "Mutation Spray Shocked",
                "Anti Bee Egg", "Small Toy", "Small Treat",
                "Pack Bee", "Mutation Spray Pollinated",
                "Honey Crafters Crate"
            },
            Multi = false,
            Default = 1
        })

        GearDropdown:OnChanged(function(Value)
            SelectedGear = Value
        end)

        Tabs.Craft:AddButton({
            Title = "Apply Gear",
            Description = "Apply selected gear recipe",
            Callback = function()
                if SelectedGear then
                    local args = {
                        "SetRecipe",
                        workspace:WaitForChild("CraftingTables"):WaitForChild("EventCraftingWorkBench"),
                        "GearEventWorkbench",
                        SelectedGear
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents")
                        :WaitForChild("CraftingGlobalObjectService"):FireServer(unpack(args))

                    Fluent:Notify({
                        Title = "Success",
                        Content = SelectedGear .. " Applied!",
                        Duration = 5
                    })
                else
                    Fluent:Notify({
                        Title = "Error",
                        Content = "No gear selected!",
                        Duration = 5
                    })
                end
            end
        })

        -- ================================
        --       SETTINGS & SAVE
        -- ================================
        InterfaceManager:SetLibrary(Fluent)
        SaveManager:SetLibrary(Fluent)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({})
        InterfaceManager:SetFolder("FluentCraftBot")
        SaveManager:SetFolder("FluentCraftBot/Configs")
        InterfaceManager:BuildInterfaceSection(Tabs.Settings)
        SaveManager:BuildConfigSection(Tabs.Settings)
        Window:SelectTab(1)
        Fluent:Notify({ Title = "Fluent", Content = "Craft UI Loaded.", Duration = 8 })
        SaveManager:LoadAutoloadConfig()
    end)
end

-- Execute selected action
local function ExecuteAction()
    if not SelectedOption then
        ShowStatus("Please select an option first")
        return
    end
    
    -- Premium button press animation
    local btnSize = ActionButton.Size
    local btnPos = ActionButton.Position
    
    TweenService:Create(ActionButton, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(1.05, 0, 0, 46),
        Position = UDim2.new(-0.025, 0, 1, -44),
        BackgroundTransparency = 0.2
    }):Play()
    
    delay(0.1, function()
        TweenService:Create(ActionButton, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
            Size = btnSize,
            Position = btnPos,
            BackgroundTransparency = 0.4
        }):Play()
    end)
    
    if SelectedOption == "thank_you" then
        LoadFluentUI()
    elseif SelectedOption == "nothing" then
        ShowStatus("Goodbye!", Color3.fromRGB(255, 150, 150))
        delay(1, function()
            game:GetService("Players").LocalPlayer:Kick("You selected nothing")
        end)
    end
end

-- Initialize UI
CreateDropdownOptions()

-- Connect events
DropdownButton.MouseButton1Click:Connect(ToggleDropdown)
ActionButton.MouseButton1Click:Connect(ExecuteAction)

CloseButton.MouseButton1Click:Connect(function()
    TweenService:Create(MainFrame, FadeTweenInfo, {
        Size = UDim2.new(0, 360, 0, 0),
        Position = UDim2.new(0.5, -180, 0.5, -110),
        BackgroundTransparency = 1
    }):Play()
    
    delay(0.3, function()
        ScreenGui:Destroy()
    end)
end)

-- Dragging functionality with dynamic transparency
local dragging
local dragInput
local dragStart
local startPos

local function UpdateInput(input)
    local delta = input.Position - dragStart
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
end

Header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        
        -- Increase transparency when dragging
        TweenService:Create(MainFrame, TweenInfo.new(0.2), {
            BackgroundTransparency = 0.5
        }):Play()
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
                -- Return to normal transparency
                TweenService:Create(MainFrame, TweenInfo.new(0.2), {
                    BackgroundTransparency = 0.3
                }):Play()
            end
        end)
    end
end)

Header.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        UpdateInput(input)
    end
end)

-- Close dropdown when clicking outside
UserInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        if not DropdownContainer:IsDescendantOf(input.Target) and DropdownList.Visible then
            ToggleDropdown()
        end
    end
end)

-- Button hover effects
local function SetupButtonHover(button)
    button.MouseEnter:Connect(function()
        if button == ActionButton then
            TweenService:Create(button, ButtonTweenInfo, {
                BackgroundTransparency = 0.3,
                TextColor3 = Color3.fromRGB(255, 255, 255)
            }):Play()
        end
    end)
    
    button.MouseLeave:Connect(function()
        if button == ActionButton then
            TweenService:Create(button, ButtonTweenInfo, {
                BackgroundTransparency = 0.4,
                TextColor3 = Color3.fromRGB(255, 255, 255)
            }):Play()
        end
    end)
end

SetupButtonHover(ActionButton)

-- Close button effects
CloseButton.MouseEnter:Connect(function()
    TweenService:Create(CloseButton, TweenInfo.new(0.2), {
        ImageColor3 = Color3.fromRGB(255, 100, 100),
        Rotation = 180,
        Size = UDim2.new(0, 24, 0, 24)
    }):Play()
end)

CloseButton.MouseLeave:Connect(function()
    TweenService:Create(CloseButton, TweenInfo.new(0.3), {
        ImageColor3 = Color3.fromRGB(180, 180, 200),
        Rotation = 0,
        Size = UDim2.new(0, 22, 0, 22)
    }):Play()
end)

-- Initial animations
MainFrame.Size = UDim2.new(0, 0, 0, 0)
MainFrame.BackgroundTransparency = 1

local openTween = TweenService:Create(MainFrame, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(0, 360, 0, 220),
    BackgroundTransparency = 0.3
})

-- Make sure dropdown is closed initially
DropdownList.Size = UDim2.new(1, 0, 0, 0)
DropdownList.Visible = false

-- Start animations
openTween:Play()

-- Responsive adjustments
local function UpdateUI()
    local viewportSize = workspace.CurrentCamera.ViewportSize
    
    if viewportSize.Y < 600 then
        MainFrame.Size = UDim2.new(0, 320, 0, 200)
        MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
        
        PromptText.TextSize = 13
        DropdownButton.TextSize = 13
    else
        MainFrame.Size = UDim2.new(0, 360, 0, 220)
        MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
        
        PromptText.TextSize = 14
        DropdownButton.TextSize = 14
    end
end

-- Initial update
UpdateUI()

-- Connect resize event
workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(UpdateUI)
