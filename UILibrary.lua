local UILibrary = {}

-- 🌟 Create Loading Screen with Smooth Edges and a Loading Spinner
function UILibrary:CreateLoadingScreen()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    -- 🔲 Main Frame (Loading Screen)
    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 400, 0, 200)
    MainFrame.Position = UDim2.new(0.5, -200, 0.5, -100)
    MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    MainFrame.BorderSizePixel = 0
    MainFrame.Visible = true
    MainFrame.Parent = ScreenGui

    -- 🖼 UI Corner for Rounded Edges
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 16)
    UICorner.Parent = MainFrame

    -- 🌟 Title (Loading)
    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0.2, 0)
    Title.Position = UDim2.new(0, 0, 0, 0)
    Title.BackgroundTransparency = 1
    Title.Text = "Loading..."
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 24
    Title.TextStrokeTransparency = 0.5
    Title.Parent = MainFrame

    -- 🌟 Loading Spinner (Center)
    local Spinner = Instance.new("Frame")
    Spinner.Size = UDim2.new(0, 50, 0, 50)
    Spinner.Position = UDim2.new(0.5, -25, 0.5, -25)
    Spinner.BackgroundTransparency = 1
    Spinner.Parent = MainFrame

    -- 🌟 Spinner Circle
    local Circle = Instance.new("Frame")
    Circle.Size = UDim2.new(1, 0, 1, 0)
    Circle.Position = UDim2.new(0, 0, 0, 0)
    Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Circle.BorderSizePixel = 0
    Circle.Parent = Spinner

    local CircleCorner = Instance.new("UICorner")
    CircleCorner.CornerRadius = UDim.new(1, 0)
    CircleCorner.Parent = Circle

    -- 🌟 Spinner Animation (Rotating)
    local Tween = game:GetService("TweenService")
    local SpinTween = Tween:Create(Circle, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true), {Rotation = 360})
    SpinTween:Play()

    -- 🌟 Footer (Made by GyatBig)
    local Footer = Instance.new("TextLabel")
    Footer.Size = UDim2.new(1, 0, 0.2, 0)
    Footer.Position = UDim2.new(0, 0, 0.8, 0)
    Footer.BackgroundTransparency = 1
    Footer.Text = "Made by GyatBig"
    Footer.TextColor3 = Color3.fromRGB(255, 255, 255)
    Footer.Font = Enum.Font.Gotham
    Footer.TextSize = 14
    Footer.TextStrokeTransparency = 0.7
    Footer.TextAlign = Enum.TextAlign.Center
    Footer.Parent = MainFrame

    return ScreenGui
end

-- 🌟 Function to Create a Main UI Window with Smooth Edges and Tabs
function UILibrary:CreateWindow(title)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    -- 🔲 Main Frame (Window)
    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 600, 0, 400)
    MainFrame.Position = UDim2.new(0.5, -300, 0.5, -200)
    MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    MainFrame.BorderSizePixel = 0
    MainFrame.Visible = false
    MainFrame.Parent = ScreenGui

    -- 🖼 UI Corner for Rounded Edges
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 20)
    UICorner.Parent = MainFrame

    -- 🌟 Title Bar
    local TitleBar = Instance.new("Frame")
    TitleBar.Size = UDim2.new(1, 0, 0, 50)
    TitleBar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    TitleBar.Parent = MainFrame

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 1, 0)
    Title.BackgroundTransparency = 1
    Title.Text = title
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 20
    Title.Parent = TitleBar

    -- 🌟 Smooth Opening Animation
    MainFrame.Visible = true
    MainFrame:TweenPosition(UDim2.new(0.5, -300, 0.5, -200), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)

    -- 🌟 Close Button (X)
    local CloseButton = Instance.new("TextButton")
    CloseButton.Size = UDim2.new(0, 40, 0, 40)
    CloseButton.Position = UDim2.new(1, -45, 0, 5)
    CloseButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
    CloseButton.Text = "X"
    CloseButton.Font = Enum.Font.GothamBold
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.Parent = TitleBar

    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(0, 8)
    CloseCorner.Parent = CloseButton

    CloseButton.MouseButton1Click:Connect(function()
        MainFrame:TweenPosition(UDim2.new(0.5, -300, 1.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true, function()
            MainFrame.Visible = false
        end)
    end)

    return MainFrame
end

-- 🌟 Function to Create Buttons with Hover Animations
function UILibrary:CreateButton(parent, text, callback)
    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(0, 250, 0, 50)
    Button.Position = UDim2.new(0.5, -125, 0, 100)
    Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Button.Text = text
    Button.Font = Enum.Font.GothamBold
    Button.TextSize = 18
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Parent = parent

    local ButtonCorner = Instance.new("UICorner")
    ButtonCorner.CornerRadius = UDim.new(0, 10)
    ButtonCorner.Parent = Button

    -- 🌟 Neon Hover Animation
    local UIGradient = Instance.new("UIGradient")
    UIGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 200, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 50, 200))
    }
    UIGradient.Rotation = 90
    UIGradient.Parent = Button

    Button.MouseEnter:Connect(function()
        Button:TweenSize(UDim2.new(0, 250, 0, 60), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
    end)
    Button.MouseLeave:Connect(function()
        Button:TweenSize(UDim2.new(0, 250, 0, 50), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
    end)

    Button.MouseButton1Click:Connect(callback)
end

-- 🌟 Function to Create a Notification
function UILibrary:CreateNotification(message, duration)
    local NotificationFrame = Instance.new("Frame")
    NotificationFrame.Size = UDim2.new(0, 300, 0, 60)
    NotificationFrame.Position = UDim2.new(0.5, -150, -0.2, 0)
    NotificationFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    NotificationFrame.Parent = game.Players.LocalPlayer.PlayerGui:FindFirstChildOfClass("ScreenGui")

    local NotificationCorner = Instance.new("UICorner")
    NotificationCorner.CornerRadius = UDim.new(0, 8)
    NotificationCorner.Parent = NotificationFrame

    local NotificationText = Instance.new("TextLabel")
    NotificationText.Size = UDim2.new(1, -10, 1, -10)
    NotificationText.Position = UDim2.new(0, 5, 0, 5)
    NotificationText.BackgroundTransparency = 1
    NotificationText.Text = message
    NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
    NotificationText.Font = Enum.Font.Gotham
    NotificationText.TextSize = 16
    NotificationText.Parent = NotificationFrame

    -- 🌟 Slide-in Animation
    NotificationFrame:TweenPosition(UDim2.new(0.5, -150, 0.05, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.4, true)

    -- 🌟 Auto-Dismiss After Duration
    task.wait(duration or 3)
    NotificationFrame:TweenPosition(UDim2.new(0.5, -150, -0.2, 0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.4, true, function()
        NotificationFrame:Destroy()
    end)
end

return UILibrary
