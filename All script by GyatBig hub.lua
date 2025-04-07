#Sure, here is the Lua code to create a GUI that looks like the provided image. This code is intended for use in Roblox, which uses Lua for scripting.

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TitleBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local WelcomeFrame = Instance.new("Frame")
local AvatarImage = Instance.new("ImageLabel")
local WelcomeText = Instance.new("TextLabel")
local PlayerName = Instance.new("TextLabel")
local UsernameInput = Instance.new("TextBox")
local ActionButtonsFrame = Instance.new("Frame")
local KickButton = Instance.new("TextButton")
local BanButton = Instance.new("TextButton")
local TeleportButton = Instance.new("TextButton")
local BringButton = Instance.new("TextButton")
local UnbanButton = Instance.new("TextButton")
local InvisibleButton = Instance.new("TextButton")
local VisibleButton = Instance.new("TextButton")
local JailButton = Instance.new("TextButton")
local FlyButton = Instance.new("TextButton")
local SpeedFrame = Instance.new("Frame")
local SpeedInput = Instance.new("TextBox")
local GiveSpeedButton = Instance.new("TextButton")
local WarnMessageFrame = Instance.new("Frame")
local WarnMessageInput = Instance.new("TextBox")
local WarnButton = Instance.new("TextButton")
local NotificationFrame = Instance.new("Frame")
local NotificationInput = Instance.new("TextBox")
local AnnounceButton = Instance.new("TextButton")
local AdminListFrame = Instance.new("Frame")
local AdminListTitle = Instance.new("TextLabel")
local AdminList = Instance.new("Frame")
local AdminAvatar = Instance.new("ImageLabel")
local AdminName = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
MainFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 600, 0, 400)

TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TitleBar.Size = UDim2.new(1, 0, 0, 30)

Title.Name = "Title"
Title.Parent = TitleBar
Title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Title.Size = UDim2.new(1, -30, 1, 0)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Administrator Panel"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18

CloseButton.Name = "CloseButton"
CloseButton.Parent = TitleBar
CloseButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CloseButton.Position = UDim2.new(1, -30, 0, 0)
CloseButton.Size = UDim2.new(0, 30, 1, 0)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 18

WelcomeFrame.Name = "WelcomeFrame"
WelcomeFrame.Parent = MainFrame
WelcomeFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
WelcomeFrame.Position = UDim2.new(0, 0, 0, 30)
WelcomeFrame.Size = UDim2.new(0.75, 0, 0, 100)

AvatarImage.Name = "AvatarImage"
AvatarImage.Parent = WelcomeFrame
AvatarImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AvatarImage.Position = UDim2.new(0, 10, 0, 10)
AvatarImage.Size = UDim2.new(0, 80, 0, 80)
AvatarImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=1&width=420&height=420&format=png"

WelcomeText.Name = "WelcomeText"
WelcomeText.Parent = WelcomeFrame
WelcomeText.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
WelcomeText.Position = UDim2.new(0, 100, 0, 10)
WelcomeText.Size = UDim2.new(0, 100, 0, 20)
WelcomeText.Font = Enum.Font.SourceSans
WelcomeText.Text = "Welcome,"
WelcomeText.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeText.TextSize = 18

PlayerName.Name = "PlayerName"
PlayerName.Parent = WelcomeFrame
PlayerName.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
PlayerName.Position = UDim2.new(0, 100, 0, 40)
PlayerName.Size = UDim2.new(0, 200, 0, 40)
PlayerName.Font = Enum.Font.SourceSansBold
PlayerName.Text = game.Players.LocalPlayer.Name
PlayerName.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.TextSize = 24

UsernameInput.Name = "UsernameInput"
UsernameInput.Parent = MainFrame
UsernameInput.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
UsernameInput.Position = UDim2.new(0, 0, 0, 130)
UsernameInput.Size = UDim2.new(0.75, 0, 0, 30)
UsernameInput.Font = Enum.Font.SourceSans
UsernameInput.PlaceholderText = "Enter player username..."
UsernameInput.Text = ""
UsernameInput.TextColor3 = Color3.fromRGB(255, 255, 255)
UsernameInput.TextSize = 18

ActionButtonsFrame.Name = "ActionButtonsFrame"
ActionButtonsFrame.Parent = MainFrame
ActionButtonsFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
ActionButtonsFrame.Position = UDim2.new(0, 0, 0, 160)
ActionButtonsFrame.Size = UDim2.new(0.75, 0, 0, 100)

local function createButton(name, text, position)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Parent = ActionButtonsFrame
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.Position = position
    button.Size = UDim2.new(0, 100, 0, 30)
    button.Font = Enum.Font.SourceSans
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 18
    return button
end

KickButton = createButton("KickButton", "Kick", UDim2.new(0, 0, 0, 0))
BanButton = createButton("BanButton", "Ban", UDim2.new(0, 110, 0, 0))
TeleportButton = createButton("TeleportButton", "Teleport", UDim2.new(0, 220, 0, 0))
BringButton = createButton("BringButton", "Bring", UDim2.new(0, 330, 0, 0))
UnbanButton = createButton("UnbanButton", "Unban", UDim2.new(0, 0, 0, 40))
InvisibleButton = createButton("InvisibleButton", "Invisible", UDim2.new(0, 110, 0, 40))
VisibleButton = createButton("VisibleButton", "Visible", UDim2.new(0, 220, 0, 40))
JailButton = createButton("JailButton", "Jail", UDim2.new(0, 330, 0, 40))
FlyButton = createButton("FlyButton", "Fly", UDim2.new(0, 0, 0, 80))

SpeedFrame.Name = "SpeedFrame"
SpeedFrame.Parent = MainFrame
SpeedFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
SpeedFrame.Position = UDim2.new(0, 0, 0, 260)
SpeedFrame.Size = UDim2.new(0.75, 0, 0, 60)

SpeedInput.Name = "SpeedInput"
SpeedInput.Parent = SpeedFrame
SpeedInput.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SpeedInput.Position = UDim2.new(0, 0, 0, 0)
SpeedInput.Size = UDim2.new(0.5, 0, 0, 30)
SpeedInput.Font = Enum.Font.SourceSans
SpeedInput.PlaceholderText = "Speed"
SpeedInput.Text = ""
SpeedInput.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedInput.TextSize = 18

GiveSpeedButton.Name = "GiveSpeedButton"
GiveSpeedButton.Parent = SpeedFrame
GiveSpeedButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
GiveSpeedButton.Position = UDim2.new(0.5, 10, 0, 0)
GiveSpeedButton.Size = UDim2.new(0.5, -10, 0, 30)
GiveSpeedButton.Font = Enum.Font.SourceSans
GiveSpeedButton.Text = "Give Speed"
GiveSpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
GiveSpeedButton.TextSize = 18

WarnMessageFrame.Name = "WarnMessageFrame"
WarnMessageFrame.Parent = MainFrame
WarnMessageFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
WarnMessageFrame.Position = UDim2.new(0, 0, 0, 320)
WarnMessageFrame.Size = UDim2.new(0.75, 0, 0, 60)

WarnMessageInput.Name = "WarnMessageInput"
WarnMessageInput.Parent = WarnMessageFrame
WarnMessageInput.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
WarnMessageInput.Position = UDim2.new(0, 0, 0, 0)
WarnMessageInput.Size = UDim2.new(0.5, 0, 0, 30)
WarnMessageInput.Font = Enum.Font.SourceSans
WarnMessageInput.PlaceholderText = "Warn Message"
WarnMessageInput.Text = ""
WarnMessageInput.TextColor3 = Color3.fromRGB(255, 255, 255)
WarnMessageInput.TextSize = 18

WarnButton.Name = "WarnButton"
WarnButton.Parent = WarnMessageFrame
WarnButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
WarnButton.Position = UDim2.new(0.5, 10, 0, 0)
WarnButton.Size = UDim2.new(0.5, -10, 0, 30)
WarnButton.Font = Enum.Font.SourceSans
WarnButton.Text = "Warn"
WarnButton.TextColor3 = Color3.fromRGB(255, 255, 255)
WarnButton.TextSize = 18

NotificationFrame.Name = "NotificationFrame"
NotificationFrame.Parent = MainFrame
NotificationFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
NotificationFrame.Position = UDim2.new(0, 0, 0, 380)
NotificationFrame.Size = UDim2.new(0.75, 0, 0, 60)

NotificationInput.Name = "NotificationInput"
NotificationInput.Parent = NotificationFrame
NotificationInput.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
NotificationInput.Position = UDim2.new(0, 0, 0, 0)
NotificationInput.Size = UDim2.new(1, 0, 0, 30)
NotificationInput.Font = Enum.Font.SourceSans
NotificationInput.PlaceholderText = "Notification Message"
NotificationInput.Text = ""
NotificationInput.TextColor3 = Color3.fromRGB(255, 255, 255)
NotificationInput.TextSize = 18

AnnounceButton.Name = "AnnounceButton"
AnnounceButton.Parent = NotificationFrame
AnnounceButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
AnnounceButton.Position = UDim2.new(0, 0, 0, 40)
AnnounceButton.Size = UDim2.new(1, 0, 0, 30)
AnnounceButton.Font = Enum.Font.SourceSans
AnnounceButton.Text = "Announce"
AnnounceButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AnnounceButton.TextSize = 18

AdminListFrame.Name = "AdminListFrame"
AdminListFrame.Parent = MainFrame
AdminListFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
AdminListFrame.Position = UDim2.new(0.75, 0, 0, 30)
AdminListFrame.Size = UDim2.new(0.25, 0, 1, -30)

AdminListTitle.Name = "AdminListTitle"
AdminListTitle.Parent = AdminListFrame
AdminListTitle.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
AdminListTitle.Size = UDim2.new(1, 0, 0, 30)
AdminListTitle.Font = Enum.Font.SourceSansBold
AdminListTitle.Text = "Admin List"
AdminListTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
AdminListTitle.TextSize = 18

AdminList.Name = "AdminList"
AdminList.Parent = AdminListFrame
AdminList.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
AdminList.Position = UDim2.new(0, 0, 0, 30)
AdminList.Size = UDim2.new(1, 0, 1, -30)

AdminAvatar.Name = "AdminAvatar"
AdminAvatar.Parent = AdminList
AdminAvatar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AdminAvatar.Position = UDim2.new(0, 10, 0, 10)
AdminAvatar.Size = UDim2.new(0, 30, 0, 30)
AdminAvatar.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=1&width=420&height=420&format=png"

AdminName.Name = "AdminName"
AdminName.Parent = AdminList
AdminName.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
AdminName.Position = UDim2.new(0, 50, 0, 10)
AdminName.Size = UDim2.new(1, -60, 0, 30)
AdminName.Font = Enum.Font.SourceSans
AdminName.Text = "mxn_q"
AdminName.TextColor3 = Color3.fromRGB(255, 255, 255)
AdminName.TextSize = 18

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
#This code creates a GUI in Roblox that closely matches the provided image. The GUI includes a title bar, welcome section, input fields, action buttons, and an admin list. The `CloseButton` is also functional and will close the GUI when clicked.
