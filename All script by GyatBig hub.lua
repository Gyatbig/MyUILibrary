-- Load the UILibrary from GitHub
local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/GyatBig/MyUILibrary/main/UILibrary.lua"))()

-- Function to Create Smooth Sections with Animation
function CreateSection(parent, text, position)
    -- Create the section frame
    local Section = Instance.new("Frame")
    Section.Size = UDim2.new(0, 120, 0, 40)
    Section.Position = UDim2.new(0, (position - 1) * 130, 0, 10) -- Dynamically position sections
    Section.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Section.BorderSizePixel = 0
    Section.Parent = parent

    -- Create rounded corners for smooth edges
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 12)
    UICorner.Parent = Section

    -- Add text inside the section
    local SectionText = Instance.new("TextLabel")
    SectionText.Size = UDim2.new(1, 0, 1, 0)
    SectionText.BackgroundTransparency = 1
    SectionText.Text = text
    SectionText.TextColor3 = Color3.fromRGB(255, 255, 255)
    SectionText.Font = Enum.Font.Gotham
    SectionText.TextSize = 18
    SectionText.TextAlign = Enum.TextAlign.Center
    SectionText.Parent = Section

    -- Smooth animation for section appearance
    Section.Position = UDim2.new(0, (position - 1) * 130, 0, -50) -- Start position off-screen
    Section:TweenPosition(UDim2.new(0, (position - 1) * 130, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
    
    return Section
end

-- Create the Main Window
local Window = UILibrary:CreateWindow("🔥 My Cool UI 🔥")

-- Create the Section Bar (Top Section)
local SectionBar = Instance.new("Frame")
SectionBar.Size = UDim2.new(1, 0, 0, 60)
SectionBar.Position = UDim2.new(0, 0, 0, 0)
SectionBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SectionBar.BorderSizePixel = 0
SectionBar.Parent = Window

-- Create rounded corners for the section bar
local SectionBarCorner = Instance.new("UICorner")
SectionBarCorner.CornerRadius = UDim.new(0, 20)
SectionBarCorner.Parent = SectionBar

-- Add Sections (5 Sections)
local Section1 = CreateSection(SectionBar, "Section 1", 1)
local Section2 = CreateSection(SectionBar, "Section 2", 2)
local Section3 = CreateSection(SectionBar, "Section 3", 3)
local Section4 = CreateSection(SectionBar, "Section 4", 4)
local Section5 = CreateSection(SectionBar, "Section 5", 5)

-- Create content for each section (for example, when clicked)
local SectionContent = Instance.new("Frame")
SectionContent.Size = UDim2.new(1, 0, 0, 300)  -- Increased size for description space
SectionContent.Position = UDim2.new(0, 0, 0, 70)
SectionContent.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SectionContent.BorderSizePixel = 0
SectionContent.Parent = Window

local UICornerContent = Instance.new("UICorner")
UICornerContent.CornerRadius = UDim.new(0, 20)
UICornerContent.Parent = SectionContent

-- Function to update content based on selected section and show 10 buttons with descriptions
local function SetSectionContent(text, sectionNumber)
    -- Clear previous content
    for _, child in pairs(SectionContent:GetChildren()) do
        if child:IsA("TextLabel") or child:IsA("TextButton") then
            child:Destroy()
        end
    end
    
    -- Add the section header text
    local ContentText = Instance.new("TextLabel")
    ContentText.Size = UDim2.new(1, 0, 0, 40)
    ContentText.BackgroundTransparency = 1
    ContentText.Text = text
    ContentText.TextColor3 = Color3.fromRGB(255, 255, 255)
    ContentText.Font = Enum.Font.Gotham
    ContentText.TextSize = 20
    ContentText.TextAlign = Enum.TextAlign.Center
    ContentText.Parent = SectionContent

    -- Add 10 buttons under the section
    for i = 1, 10 do
        local Button = Instance.new("TextButton")
        Button.Size = UDim2.new(0, 180, 0, 40)
        Button.Position = UDim2.new(0, 0, 0, 40 + (i - 1) * 50) -- Adjust position for each button
        Button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        Button.BorderSizePixel = 0
        Button.Text = "Button " .. i
        Button.TextColor3 = Color3.fromRGB(255, 255, 255)
        Button.Font = Enum.Font.Gotham
        Button.TextSize = 18
        Button.Parent = SectionContent

        -- Add rounded corners to buttons
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 12)
        UICorner.Parent = Button
        
        -- Create description text under each button
        local Description = Instance.new("TextLabel")
        Description.Size = UDim2.new(1, 0, 0, 20)
        Description.Position = UDim2.new(0, 0, 0, Button.Position.Y.Offset + Button.Size.Y.Offset)  -- Position below the button
        Description.BackgroundTransparency = 1
        Description.Text = "This is the description for Button " .. i
        Description.TextColor3 = Color3.fromRGB(180, 180, 180)
        Description.Font = Enum.Font.Gotham
        Description.TextSize = 14
        Description.TextAlign = Enum.TextAlign.Center
        Description.Parent = SectionContent

        -- Add a placeholder action when the button is clicked
        Button.MouseButton1Click:Connect(function()
            UILibrary:CreateNotification("You clicked Button " .. i .. " in Section " .. sectionNumber, 2)
        end)
    end
end

-- Set default content with 10 buttons for Section 1
SetSectionContent("Welcome to Section 1! Here are 10 buttons:", 1)

-- Add interactions for sections
Section1.MouseButton1Click:Connect(function()
    SetSectionContent("You selected Section 1! Here are 10 buttons:", 1)
end)

Section2.MouseButton1Click:Connect(function()
    SetSectionContent("You selected Section 2! Here are 10 buttons:", 2)
end)

Section3.MouseButton1Click:Connect(function()
    SetSectionContent("You selected Section 3! Here are 10 buttons:", 3)
end)

Section4.MouseButton1Click:Connect(function()
    SetSectionContent("You selected Section 4! Here are 10 buttons:", 4)
end)

Section5.MouseButton1Click:Connect(function()
    SetSectionContent("You selected Section 5! Here are 10 buttons:", 5)
end)
