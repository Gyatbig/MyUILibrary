
-- HatanUiModern.lua
-- Modern UI Framework inspired by clean dashboard design

local HatanUi = {}
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local function createRoundedFrame(props)
    local frame = Instance.new("Frame")
    frame.BackgroundColor3 = props.BackgroundColor3 or Color3.fromRGB(255,255,255)
    frame.Size = props.Size or UDim2.new(0, 200, 0, 100)
    frame.Position = props.Position or UDim2.new(0, 0, 0, 0)
    frame.BackgroundTransparency = props.BackgroundTransparency or 0
    frame.BorderSizePixel = 0
    frame.AnchorPoint = props.AnchorPoint or Vector2.zero
    frame.Name = props.Name or "Card"

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = props.Radius or UDim.new(0, 12)
    uicorner.Parent = frame

    local uistroke = Instance.new("UIStroke")
    uistroke.Color = props.StrokeColor or Color3.fromRGB(230,230,230)
    uistroke.Thickness = 1
    uistroke.Parent = frame

    local uishadow = Instance.new("ImageLabel")
    uishadow.Name = "Shadow"
    uishadow.AnchorPoint = Vector2.new(0.5, 0.5)
    uishadow.Position = UDim2.new(0.5, 0, 0.5, 4)
    uishadow.Size = UDim2.new(1, 12, 1, 12)
    uishadow.BackgroundTransparency = 1
    uishadow.Image = "rbxassetid://1316045217"
    uishadow.ImageTransparency = 0.7
    uishadow.ScaleType = Enum.ScaleType.Slice
    uishadow.SliceCenter = Rect.new(10,10,118,118)
    uishadow.ZIndex = -1
    uishadow.Parent = frame

    return frame
end

function HatanUi:CreateWindow(config)
    local screenGui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
    screenGui.Name = "HatanUiModern"
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.ResetOnSpawn = false

    -- Sidebar
    local sidebar = Instance.new("Frame", screenGui)
    sidebar.Size = UDim2.new(0, 60, 1, 0)
    sidebar.BackgroundColor3 = config.Theme.Sidebar or Color3.fromRGB(240,242,255)
    sidebar.BorderSizePixel = 0

    local uicorner = Instance.new("UICorner", sidebar)
    uicorner.CornerRadius = UDim.new(0, config.Rounded and 10 or 0)

    -- Main content area
    local contentArea = Instance.new("Frame", screenGui)
    contentArea.Position = UDim2.new(0, 70, 0, 20)
    contentArea.Size = UDim2.new(1, -90, 1, -40)
    contentArea.BackgroundTransparency = 1

    -- Example card
    local card = createRoundedFrame({
        Size = UDim2.new(0, 220, 0, 120),
        Position = UDim2.new(0, 40, 0, 40),
        BackgroundColor3 = config.Theme.Card or Color3.fromRGB(255,255,255),
        Radius = UDim.new(0, config.Rounded and 16 or 0)
    })
    card.Parent = contentArea

    local label = Instance.new("TextLabel", card)
    label.Text = config.Title or "HatanUI Dashboard"
    label.Size = UDim2.new(1, -20, 0, 40)
    label.Position = UDim2.new(0, 10, 0, 10)
    label.BackgroundTransparency = 1
    label.TextColor3 = config.Theme.Text or Color3.fromRGB(0,0,0)
    label.Font = Enum.Font.GothamMedium
    label.TextSize = 20
    label.TextXAlignment = Enum.TextXAlignment.Left

    return {
        Gui = screenGui,
        AddCard = function(self, cardConfig)
            local newCard = createRoundedFrame({
                Size = cardConfig.Size or UDim2.new(0, 200, 0, 100),
                Position = cardConfig.Position or UDim2.new(0, 0, 0, 0),
                BackgroundColor3 = config.Theme.Card or Color3.fromRGB(255,255,255),
                Radius = UDim.new(0, config.Rounded and 12 or 0)
            })
            newCard.Parent = contentArea
            return newCard
        end
    }
end

return HatanUi
