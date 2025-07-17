-- HatanUi v3
local HatanUi = {}
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")

function HatanUi:CreateWindow(config)
    config = config or {}
    local Title = config.Title or "HatanUi"
    local Rounded = config.Rounded or true
    local Theme = config.Theme or {
        Background = Color3.fromRGB(30,30,30),
        TitleBar = Color3.fromRGB(20,20,20),
        TabList = Color3.fromRGB(40,40,40),
        Content = Color3.fromRGB(45,45,45),
        Button = Color3.fromRGB(60,60,60),
        Text = Color3.fromRGB(255,255,255),
    }

    local NotificationTheme = config.NotificationTheme or {
        Success = Color3.fromRGB(46,204,113),
        Warning = Color3.fromRGB(241,196,15),
        Error   = Color3.fromRGB(231,76,60),
        Info    = Color3.fromRGB(52,152,219),
    }

    -- Root Gui
    local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
    gui.Name = "HatanUi"
    
    -- Main window
    local frame = Instance.new("Frame", gui)
    frame.Size = UDim2.new(0, 450, 0, 350)
    frame.Position = UDim2.new(0.5, -225, 0.5, -175)
    frame.BackgroundColor3 = Theme.Background
    frame.BorderSizePixel = 0
    frame.Active = true; frame.Draggable = true

    if Rounded then Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12) end

    -- Shadow effect
    local shadow = Instance.new("ImageLabel", frame)
    shadow.Name = "Shadow"
    shadow.Size = UDim2.new(1,0,1,0)
    shadow.Position = UDim2.new(0,0,0,0)
    shadow.BackgroundTransparency = 1
    shadow.Image = "rbxassetid://6023426915"
    shadow.ScaleType = Enum.ScaleType.Slice
    shadow.SliceCenter = Rect.new(100,100,100,100)
    shadow.ImageColor3 = Color3.new(0,0,0)
    shadow.ImageTransparency = 0.9

    -- Title Bar
    local titleBar = Instance.new("TextLabel", frame)
    titleBar.Size = UDim2.new(1,0,0,40)
    titleBar.BackgroundColor3 = Theme.TitleBar
    titleBar.Text = Title
    titleBar.TextColor3 = Theme.Text
    titleBar.Font = Enum.Font.GothamBold
    titleBar.TextSize = 20
    if Rounded then Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 12) end

    -- Tabs panel
    local tabList = Instance.new("Frame", frame)
    tabList.Size = UDim2.new(0,140,1,-40)
    tabList.Position = UDim2.new(0,0,0,40)
    tabList.BackgroundColor3 = Theme.TabList
    tabList.BorderSizePixel = 0
    if Rounded then Instance.new("UICorner", tabList).CornerRadius = UDim.new(0,8) end
    local tabListLayout = Instance.new("UIListLayout", tabList)
    tabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    tabListLayout.Padding = UDim.new(0,8)

    -- Content panel
    local contentPane = Instance.new("Frame", frame)
    contentPane.Size = UDim2.new(1,-140,1,-40)
    contentPane.Position = UDim2.new(0,140,0,40)
    contentPane.BackgroundColor3 = Theme.Content
    contentPane.BorderSizePixel = 0
    if Rounded then Instance.new("UICorner", contentPane).CornerRadius = UDim.new(0,8) end

    local tabs = {}
    local tabButtons = {}
    local activeContent

    function tabs:CreateTab(name)
        local btn = Instance.new("TextButton", tabList)
        btn.Size = UDim2.new(1,-16,0,30)
        btn.BackgroundColor3 = Theme.Button
        btn.Text = name
        btn.TextColor3 = Theme.Text
        btn.Font = Enum.Font.Gotham
        btn.TextSize = 16
        if Rounded then Instance.new("UICorner", btn).CornerRadius = UDim.new(0,6) end

        local frameContent = Instance.new("ScrollingFrame", contentPane)
        frameContent.Size = UDim2.new(1,0,1,0)
        frameContent.BackgroundTransparency = 1
        frameContent.Visible = false
        local layout = Instance.new("UIListLayout", frameContent)
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Padding = UDim.new(0,8)

        btn.MouseButton1Click:Connect(function()
            for _, f in ipairs(contentPane:GetChildren()) do
                if f:IsA("ScrollingFrame") then f.Visible = false end
            end
            frameContent.Visible = true
        end)

        table.insert(tabButtons, btn)
        if #tabButtons == 1 then btn:Activate(); frameContent.Visible = true end

        local tab = {}

        -- Label
        function tab:AddLabel(text)
            local lbl = Instance.new("TextLabel", frameContent)
            lbl.Size = UDim2.new(1,-20,0,25)
            lbl.Text = text
            lbl.TextColor3 = Theme.Text
            lbl.BackgroundTransparency = 1
            lbl.Font = Enum.Font.Gotham
            lbl.TextSize = 16
            return lbl
        end

        -- Button
        function tab:AddButton(text, cb)
            local b = Instance.new("TextButton", frameContent)
            b.Size = UDim2.new(1,-20,0,30)
            b.BackgroundColor3 = Theme.Button
            b.Text = text
            b.TextColor3 = Theme.Text
            b.Font = Enum.Font.GothamBold
            b.TextSize = 16
            if Rounded then Instance.new("UICorner", b).CornerRadius = UDim.new(0,6) end
            b.MouseButton1Click:Connect(cb)
            return b
        end

        -- Toggle
        function tab:AddToggle(text, default, cb)
            local t = Instance.new("TextButton", frameContent)
            t.Size = UDim2.new(1,-20,0,30)
            t.BackgroundColor3 = Theme.Button
            t.TextColor3 = Theme.Text
            t.Font = Enum.Font.Gotham
            t.TextSize = 16
            if Rounded then Instance.new("UICorner", t).CornerRadius = UDim.new(0,6) end
            local state = default or false
            local function update()
                t.Text = text.." : "..(state and "ON" or "OFF")
                if cb then cb(state) end
            end
            update()
            t.MouseButton1Click:Connect(function()
                state = not state
                update()
            end)
            return t
        end

        -- Slider
        function tab:AddSlider(text, min, max, default, cb)
            local container = Instance.new("Frame", frameContent)
            container.Size = UDim2.new(1,-20,0,50)
            container.BackgroundTransparency = 1
            local label = Instance.new("TextLabel", container)
            label.Position = UDim2.new(0,0,0,0)
            label.Size = UDim2.new(1,0,0,20)
            label.Font = Enum.Font.Gotham
            label.TextSize = 16
            label.TextColor3 = Theme.Text
            label.BackgroundTransparency = 1

            local bar = Instance.new("Frame", container)
            bar.Position = UDim2.new(0,0,0,25)
            bar.Size = UDim2.new(1,0,0,8)
            bar.BackgroundColor3 = Theme.Button
            if Rounded then Instance.new("UICorner", bar).CornerRadius=UDim.new(0,4) end

            local fill = Instance.new("Frame", bar)
            fill.Size = UDim2.new(0,0,1,0)
            fill.BackgroundColor3 = Theme.TitleBar
            if Rounded then Instance.new("UICorner", fill).CornerRadius=UDim.new(0,4) end

            local val = default or min
            label.Text = text.." : "..tostring(val)
            local sliding = false

            bar.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then sliding = true end
            end)
            bar.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then sliding = false end
            end)
            bar.InputChanged:Connect(function(input)
                if sliding and input.UserInputType == Enum.UserInputType.MouseMovement then
                    local pos = math.clamp((input.Position.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X,0,1)
                    val = min + pos*(max-min)
                    fill.Size = UDim2.new(pos,0,1,0)
                    label.Text = text.." : "..string.format("%.2f",val)
                    if cb then cb(val) end
                end
            end)
            return container
        end

        -- Dropdown
        function tab:AddDropdown(text, options, default, cb)
            local container = Instance.new("Frame", frameContent)
            container.Size = UDim2.new(1,-20,0,30)
            container.BackgroundTransparency = 1
            local label = Instance.new("TextLabel", container)
            label.Position = UDim2.new(0,0,0,0)
            label.Size = UDim2.new(0.5,0,1,0)
            label.Font = Enum.Font.Gotham
            label.TextSize = 16
            label.TextColor3 = Theme.Text
            label.BackgroundTransparency = 1
            label.Text = text

            local btn = Instance.new("TextButton", container)
            btn.Position = UDim2.new(0.5,0,0,0)
            btn.Size = UDim2.new(0.5,0,1,0)
            btn.Text = default or options[1]
            btn.Font = Enum.Font.Gotham
            btn.TextSize = 16
            btn.TextColor3 = Theme.Text
            btn.BackgroundColor3 = Theme.Button
            if Rounded then Instance.new("UICorner", btn).CornerRadius = UDim.new(0,6) end

            local menu = Instance.new("Frame", container)
            menu.Position = UDim2.new(0.5,0,1,2)
            menu.Size = UDim2.new(0.5,0,#options*25)
            menu.BackgroundColor3 = Theme.Button
            menu.Visible = false
            if Rounded then Instance.new("UICorner", menu).CornerRadius = UDim.new(0,6) end

            for i,opt in ipairs(options) do
                local item = Instance.new("TextButton", menu)
                item.Size = UDim2.new(1,0,0,25)
                item.Position = UDim2.new(0,0,0,(i-1)*25)
                item.Text = opt
                item.TextColor3 = Theme.Text
                item.Font = Enum.Font.Gotham
                item.TextSize = 16
                if Rounded then Instance.new("UICorner", item).CornerRadius = UDim.new(0,4) end
                item.MouseButton1Click:Connect(function()
                    btn.Text = opt
                    menu.Visible = false
                    if cb then cb(opt) end
                end)
            end
            btn.MouseButton1Click:Connect(function()
                menu.Visible = not menu.Visible
            end)
            return container
        end

        return tab
    end

    -- Notification system (same styled and animated)
    -- [Insert notification code from previous message here]

    -- Save / Load config
    function tabs:SaveConfig(tbl, filename)
        filename = filename or (Title:gsub(" ","")..".json")
        local json = HttpService:JSONEncode(tbl)
        writefile(filename, json)
    end
    function tabs:LoadConfig(filename)
        filename = filename or (Title:gsub(" ","")..".json")
        if isfile(filename) then
            local json = readfile(filename)
            return HttpService:JSONDecode(json)
        else
            return nil
        end
    end

    return tabs
end

return HatanUi
