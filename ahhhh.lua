--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 186 | Scripts: 12 | Modules: 0 | Tags: 0
local G2L = {};

-- Create a loading blur (disabled by default)
local Lighting = game:GetService("Lighting")
local blur = Lighting:FindFirstChild("LoadingBlur")
if not blur then
    blur = Instance.new("BlurEffect")
    blur.Name = "LoadingBlur"
    blur.Size = 55
    blur.Enabled = false
    blur.Parent = Lighting
end

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.ScreenGui.MainUi
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["Visible"] = false;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(244, 231, 209);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 486, 0, 276);
G2L["2"]["Position"] = UDim2.new(0.49794, 1, 0.41958, 45);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[MainUi]];
G2L["2"]["BackgroundTransparency"] = 0.1;


-- StarterGui.ScreenGui.MainUi.InnerFade
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["3"]["Size"] = UDim2.new(0, 507, 0, 295);
G2L["3"]["Position"] = UDim2.new(-0.02058, 0, -0.03261, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[InnerFade]];
G2L["3"]["BackgroundTransparency"] = 0.5;


-- StarterGui.ScreenGui.MainUi.InnerFade.UICorner
G2L["4"] = Instance.new("UICorner", G2L["3"]);



-- StarterGui.ScreenGui.MainUi.InnerFade.UIGradient
G2L["5"] = Instance.new("UIGradient", G2L["3"]);



-- StarterGui.ScreenGui.MainUi.InnerFade.OuterFade
G2L["6"] = Instance.new("Frame", G2L["3"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(155, 144, 124);
G2L["6"]["Size"] = UDim2.new(0, 521, 0, 310);
G2L["6"]["Position"] = UDim2.new(-0.01381, 0, -0.02712, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Name"] = [[OuterFade]];
G2L["6"]["BackgroundTransparency"] = 0.7;


-- StarterGui.ScreenGui.MainUi.InnerFade.OuterFade.UICorner
G2L["7"] = Instance.new("UICorner", G2L["6"]);



-- StarterGui.ScreenGui.MainUi.UICorner
G2L["8"] = Instance.new("UICorner", G2L["2"]);



-- StarterGui.ScreenGui.MainUi.ImageLabel
G2L["9"] = Instance.new("ImageLabel", G2L["2"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(155, 144, 124);
G2L["9"]["ImageTransparency"] = 0.3;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["9"]["ImageColor3"] = Color3.fromRGB(244, 231, 209);
G2L["9"]["Image"] = [[rbxassetid://92138690758194]];
G2L["9"]["Size"] = UDim2.new(0, 36, 0, 35);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Position"] = UDim2.new(0.01646, 0, 0.01087, 0);


-- StarterGui.ScreenGui.MainUi.ImageLabel.UICorner
G2L["a"] = Instance.new("UICorner", G2L["9"]);



-- StarterGui.ScreenGui.MainUi.ImageLabel.TextLabel
G2L["b"] = Instance.new("TextLabel", G2L["9"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextSize"] = 14;
G2L["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["b"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Size"] = UDim2.new(0, 167, 0, 16);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[TROJAN WARE]];
G2L["b"]["Position"] = UDim2.new(1.225, 0, 0, 0);


-- StarterGui.ScreenGui.MainUi.ImageLabel.TextLabel
G2L["c"] = Instance.new("TextLabel", G2L["9"]);
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextSize"] = 11;
G2L["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["c"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["Size"] = UDim2.new(0, 167, 0, 16);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[SINCE 2025]];
G2L["c"]["Position"] = UDim2.new(1.225, 0, 0.28947, 0);


-- StarterGui.ScreenGui.MainUi.InnerFade
G2L["d"] = Instance.new("Frame", G2L["2"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["d"]["Size"] = UDim2.new(0, 507, 0, 0);
G2L["d"]["Position"] = UDim2.new(-0.02058, 0, 1.03623, 0);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[InnerFade]];
G2L["d"]["BackgroundTransparency"] = 0.5;


-- StarterGui.ScreenGui.MainUi.InnerFade.UICorner
G2L["e"] = Instance.new("UICorner", G2L["d"]);



-- StarterGui.ScreenGui.MainUi.InnerFade.UIGradient
G2L["f"] = Instance.new("UIGradient", G2L["d"]);



-- StarterGui.ScreenGui.MainUi.list
G2L["10"] = Instance.new("Frame", G2L["2"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["10"]["Size"] = UDim2.new(0, 90, 0, 214);
G2L["10"]["Position"] = UDim2.new(0.02263, 0, 0.17391, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Name"] = [[list]];
G2L["10"]["BackgroundTransparency"] = 0.4;


-- StarterGui.ScreenGui.MainUi.list.UICorner
G2L["11"] = Instance.new("UICorner", G2L["10"]);



-- StarterGui.ScreenGui.MainUi.list.UIGradient
G2L["12"] = Instance.new("UIGradient", G2L["10"]);



-- StarterGui.ScreenGui.MainUi.list.MiscButton
G2L["13"] = Instance.new("ImageButton", G2L["10"]);
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["Image"] = [[rbxassetid://112896592265413]];
G2L["13"]["Size"] = UDim2.new(0, 26, 0, 24);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Name"] = [[MiscButton]];
G2L["13"]["Position"] = UDim2.new(0.08848, 0, 0.44277, 0);


-- StarterGui.ScreenGui.MainUi.list.MiscButton.UICorner
G2L["14"] = Instance.new("UICorner", G2L["13"]);



-- StarterGui.ScreenGui.MainUi.list.MiscButton.TextLabel
G2L["15"] = Instance.new("TextLabel", G2L["13"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["TextSize"] = 11;
G2L["15"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["15"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["15"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["15"]["BackgroundTransparency"] = 1;
G2L["15"]["Size"] = UDim2.new(0, 54, 0, 17);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Text"] = [[MISC]];
G2L["15"]["Position"] = UDim2.new(1.225, 0, 0.12281, 0);


-- StarterGui.ScreenGui.MainUi.list.IdkButton
G2L["16"] = Instance.new("ImageButton", G2L["10"]);
G2L["16"]["BorderSizePixel"] = 0;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["16"]["Size"] = UDim2.new(0, 26, 0, 24);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Name"] = [[IdkButton]];
G2L["16"]["Position"] = UDim2.new(0.08848, 0, 0.63853, 0);


-- StarterGui.ScreenGui.MainUi.list.IdkButton.UICorner
G2L["17"] = Instance.new("UICorner", G2L["16"]);



-- StarterGui.ScreenGui.MainUi.list.IdkButton.TextLabel
G2L["18"] = Instance.new("TextLabel", G2L["16"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextSize"] = 11;
G2L["18"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["18"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["18"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["Size"] = UDim2.new(0, 54, 0, 17);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[IDK]];
G2L["18"]["Position"] = UDim2.new(1.225, 0, 0.12281, 0);


-- StarterGui.ScreenGui.MainUi.list.MainButton
G2L["19"] = Instance.new("ImageButton", G2L["10"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["Image"] = [[rbxassetid://71021086762099]];
G2L["19"]["Size"] = UDim2.new(0, 26, 0, 24);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Name"] = [[MainButton]];
G2L["19"]["Position"] = UDim2.new(0.08848, 0, 0.23453, 0);


-- StarterGui.ScreenGui.MainUi.list.MainButton.UICorner
G2L["1a"] = Instance.new("UICorner", G2L["19"]);



-- StarterGui.ScreenGui.MainUi.list.MainButton.TextLabel
G2L["1b"] = Instance.new("TextLabel", G2L["19"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["TextSize"] = 11;
G2L["1b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["1b"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["1b"]["BackgroundTransparency"] = 1;
G2L["1b"]["Size"] = UDim2.new(0, 54, 0, 17);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Text"] = [[MAIN]];
G2L["1b"]["Position"] = UDim2.new(1.225, 0, 0.12281, 0);


-- StarterGui.ScreenGui.MainUi.list.ConfigButton
G2L["1c"] = Instance.new("ImageButton", G2L["10"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["Image"] = [[rbxassetid://126496417047546]];
G2L["1c"]["Size"] = UDim2.new(0, 26, 0, 24);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Name"] = [[ConfigButton]];
G2L["1c"]["Position"] = UDim2.new(0.08848, 0, 0.81722, 0);


-- StarterGui.ScreenGui.MainUi.list.ConfigButton.UICorner
G2L["1d"] = Instance.new("UICorner", G2L["1c"]);



-- StarterGui.ScreenGui.MainUi.list.ConfigButton.TextLabel
G2L["1e"] = Instance.new("TextLabel", G2L["1c"]);
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["TextSize"] = 11;
G2L["1e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1e"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["1e"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["1e"]["BackgroundTransparency"] = 1;
G2L["1e"]["Size"] = UDim2.new(0, 54, 0, 17);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Text"] = [[CONFIG]];
G2L["1e"]["Position"] = UDim2.new(1.225, 0, 0.12281, 0);


-- StarterGui.ScreenGui.MainUi.list.HomeButton
G2L["1f"] = Instance.new("ImageButton", G2L["10"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["Image"] = [[rbxassetid://138376539454145]];
G2L["1f"]["Size"] = UDim2.new(0, 26, 0, 24);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Name"] = [[HomeButton]];
G2L["1f"]["Position"] = UDim2.new(0.1107, 0, 0.02943, 0);


-- StarterGui.ScreenGui.MainUi.list.HomeButton.UICorner
G2L["20"] = Instance.new("UICorner", G2L["1f"]);



-- StarterGui.ScreenGui.MainUi.list.HomeButton.TextLabel
G2L["21"] = Instance.new("TextLabel", G2L["1f"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["TextSize"] = 11;
G2L["21"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["21"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["21"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["21"]["BackgroundTransparency"] = 1;
G2L["21"]["Size"] = UDim2.new(0, 54, 0, 17);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Text"] = [[HOME]];
G2L["21"]["Position"] = UDim2.new(1.225, 0, 0.12281, 0);


-- StarterGui.ScreenGui.MainUi.auto name script
G2L["22"] = Instance.new("LocalScript", G2L["2"]);
G2L["22"]["Name"] = [[auto name script]];


-- StarterGui.ScreenGui.MainUi.auto head pic script
G2L["23"] = Instance.new("LocalScript", G2L["2"]);
G2L["23"]["Name"] = [[auto head pic script]];


-- StarterGui.ScreenGui.MainUi.HOME
G2L["24"] = Instance.new("Frame", G2L["2"]);
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["Size"] = UDim2.new(0, 486, 0, 276);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Name"] = [[HOME]];
G2L["24"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.MainUi.HOME.WELCOME
G2L["25"] = Instance.new("Frame", G2L["24"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["25"]["Size"] = UDim2.new(0, 338, 0, 99);
G2L["25"]["Position"] = UDim2.new(0.23045, 0, 0.53623, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Name"] = [[WELCOME]];
G2L["25"]["BackgroundTransparency"] = 0.4;


-- StarterGui.ScreenGui.MainUi.HOME.WELCOME.UICorner
G2L["26"] = Instance.new("UICorner", G2L["25"]);



-- StarterGui.ScreenGui.MainUi.HOME.WELCOME.UIGradient
G2L["27"] = Instance.new("UIGradient", G2L["25"]);



-- StarterGui.ScreenGui.MainUi.HOME.WELCOME.TextLabel
G2L["28"] = Instance.new("TextLabel", G2L["25"]);
G2L["28"]["TextWrapped"] = true;
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["TextSize"] = 100;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["28"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["28"]["BackgroundTransparency"] = 1;
G2L["28"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["Text"] = [[W]];
G2L["28"]["Position"] = UDim2.new(-0.03179, 0, 0.09091, 0);


-- StarterGui.ScreenGui.MainUi.HOME.WELCOME.TextLabel
G2L["29"] = Instance.new("TextLabel", G2L["25"]);
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["TextSize"] = 50;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["29"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Text"] = [[E]];
G2L["29"]["Position"] = UDim2.new(0.1185, 0, 0.18182, 0);


-- StarterGui.ScreenGui.MainUi.HOME.WELCOME.TextLabel
G2L["2a"] = Instance.new("TextLabel", G2L["25"]);
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["TextSize"] = 50;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["2a"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["2a"]["BackgroundTransparency"] = 1;
G2L["2a"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Text"] = [[L]];
G2L["2a"]["Position"] = UDim2.new(0.20809, 0, 0.18182, 0);


-- StarterGui.ScreenGui.MainUi.HOME.WELCOME.TextLabel
G2L["2b"] = Instance.new("TextLabel", G2L["25"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["TextSize"] = 50;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["2b"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["2b"]["BackgroundTransparency"] = 1;
G2L["2b"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Text"] = [[C]];
G2L["2b"]["Position"] = UDim2.new(0.29769, 0, 0.18182, 0);


-- StarterGui.ScreenGui.MainUi.HOME.WELCOME.TextLabel
G2L["2c"] = Instance.new("TextLabel", G2L["25"]);
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["TextSize"] = 50;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["2c"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["2c"]["BackgroundTransparency"] = 1;
G2L["2c"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Text"] = [[O]];
G2L["2c"]["Position"] = UDim2.new(0.39306, 0, 0.18182, 0);


-- StarterGui.ScreenGui.MainUi.HOME.WELCOME.TextLabel
G2L["2d"] = Instance.new("TextLabel", G2L["25"]);
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["TextSize"] = 50;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["2d"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["2d"]["BackgroundTransparency"] = 1;
G2L["2d"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Text"] = [[M]];
G2L["2d"]["Position"] = UDim2.new(0.49422, 0, 0.18182, 0);


-- StarterGui.ScreenGui.MainUi.HOME.WELCOME.TextLabel
G2L["2e"] = Instance.new("TextLabel", G2L["25"]);
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["TextSize"] = 50;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["2e"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["2e"]["BackgroundTransparency"] = 1;
G2L["2e"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Text"] = [[E]];
G2L["2e"]["Position"] = UDim2.new(0.58912, 0, 0.18182, 0);


-- StarterGui.ScreenGui.MainUi.HOME.WELCOME.TextLabel
G2L["2f"] = Instance.new("TextLabel", G2L["25"]);
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["TextSize"] = 50;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["2f"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["2f"]["BackgroundTransparency"] = 1;
G2L["2f"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["Text"] = [[.]];
G2L["2f"]["Position"] = UDim2.new(0.67787, 0, 0.18182, 0);


-- StarterGui.ScreenGui.MainUi.HOME.WELCOME.TextLabel
G2L["30"] = Instance.new("TextLabel", G2L["25"]);
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["TextSize"] = 50;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["30"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["30"]["BackgroundTransparency"] = 1;
G2L["30"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Text"] = [[.]];
G2L["30"]["Position"] = UDim2.new(0.73113, 0, 0.18182, 0);


-- StarterGui.ScreenGui.MainUi.HOME.WELCOME.TextLabel
G2L["31"] = Instance.new("TextLabel", G2L["25"]);
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["TextSize"] = 50;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(244, 231, 209);
G2L["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["31"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["31"]["BackgroundTransparency"] = 1;
G2L["31"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Text"] = [[.]];
G2L["31"]["Position"] = UDim2.new(0.7903, 0, 0.18182, 0);


-- StarterGui.ScreenGui.MainUi.HOME.picture
G2L["32"] = Instance.new("Frame", G2L["24"]);
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["32"]["Size"] = UDim2.new(0, 109, 0, 106);
G2L["32"]["Position"] = UDim2.new(0.74074, 0, 0.05797, 0);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Name"] = [[picture]];
G2L["32"]["BackgroundTransparency"] = 0.4;


-- StarterGui.ScreenGui.MainUi.HOME.picture.UICorner
G2L["33"] = Instance.new("UICorner", G2L["32"]);



-- StarterGui.ScreenGui.MainUi.HOME.picture.UIGradient
G2L["34"] = Instance.new("UIGradient", G2L["32"]);



-- StarterGui.ScreenGui.MainUi.HOME.picture.ImageLabel
G2L["35"] = Instance.new("ImageLabel", G2L["32"]);
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["35"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["35"]["Size"] = UDim2.new(0, 86, 0, 79);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["BackgroundTransparency"] = 1;
G2L["35"]["Position"] = UDim2.new(0.11009, 0, 0.11111, 0);


-- StarterGui.ScreenGui.MainUi.HOME.picture.ImageLabel.UICorner
G2L["36"] = Instance.new("UICorner", G2L["35"]);



-- StarterGui.ScreenGui.MainUi.HOME.NAME
G2L["37"] = Instance.new("Frame", G2L["24"]);
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["37"]["Size"] = UDim2.new(0, 229, 0, 74);
G2L["37"]["Position"] = UDim2.new(0.23045, 0, 0.17391, 0);
G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Name"] = [[NAME]];
G2L["37"]["BackgroundTransparency"] = 0.4;


-- StarterGui.ScreenGui.MainUi.HOME.NAME.UICorner
G2L["38"] = Instance.new("UICorner", G2L["37"]);



-- StarterGui.ScreenGui.MainUi.HOME.NAME.UIGradient
G2L["39"] = Instance.new("UIGradient", G2L["37"]);



-- StarterGui.ScreenGui.MainUi.HOME.NAME.username
G2L["3a"] = Instance.new("TextLabel", G2L["37"]);
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["TextSize"] = 30;
G2L["3a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3a"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["3a"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["3a"]["BackgroundTransparency"] = 1;
G2L["3a"]["Size"] = UDim2.new(0, 218, 0, 63);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Text"] = [[NAME]];
G2L["3a"]["Name"] = [[username]];
G2L["3a"]["Position"] = UDim2.new(0.04803, 0, 0.26077, 0);


-- StarterGui.ScreenGui.MainUi.HOME.NAME.username.UICorner
G2L["3b"] = Instance.new("UICorner", G2L["3a"]);



-- StarterGui.ScreenGui.MainUi.MAIN
G2L["3c"] = Instance.new("Frame", G2L["2"]);
G2L["3c"]["Visible"] = false;
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["Size"] = UDim2.new(0, 486, 0, 276);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["Name"] = [[MAIN]];
G2L["3c"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.MainUi.MAIN.maintabframe
G2L["3d"] = Instance.new("Frame", G2L["3c"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["3d"]["Size"] = UDim2.new(0, 347, 0, 224);
G2L["3d"]["Position"] = UDim2.new(0.24486, 0, 0.0942, 0);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Name"] = [[maintabframe]];
G2L["3d"]["BackgroundTransparency"] = 0.4;


-- StarterGui.ScreenGui.MainUi.MAIN.maintabframe.UICorner
G2L["3e"] = Instance.new("UICorner", G2L["3d"]);



-- StarterGui.ScreenGui.MainUi.MAIN.maintabframe.UIGradient
G2L["3f"] = Instance.new("UIGradient", G2L["3d"]);



-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton1
G2L["40"] = Instance.new("CanvasGroup", G2L["3c"]);
G2L["40"]["Size"] = UDim2.new(0.06379, 0, 0.12045, 0);
G2L["40"]["Position"] = UDim2.new(0.39918, 0, 0.11594, 0);
G2L["40"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["40"]["Name"] = [[ToggleButton1]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton1.UICorner
G2L["41"] = Instance.new("UICorner", G2L["40"]);
G2L["41"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton1.UIAspectRatioConstraint
G2L["42"] = Instance.new("UIAspectRatioConstraint", G2L["40"]);
G2L["42"]["AspectRatio"] = 2;


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton1.OvalFrame
G2L["43"] = Instance.new("Frame", G2L["40"]);
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["43"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["43"]["Name"] = [[OvalFrame]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton1.OvalFrame.Circle
G2L["44"] = Instance.new("Frame", G2L["43"]);
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["44"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["44"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["44"]["Name"] = [[Circle]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton1.OvalFrame.Circle.UICorner
G2L["45"] = Instance.new("UICorner", G2L["44"]);
G2L["45"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton1.OvalFrame.Circle.OffDisplay
G2L["46"] = Instance.new("Frame", G2L["44"]);
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(163, 166, 171);
G2L["46"]["Size"] = UDim2.new(2, 0, 1, 0);
G2L["46"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["46"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["46"]["Name"] = [[OffDisplay]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton1.OvalFrame.Circle.OnDisplay
G2L["47"] = Instance.new("Frame", G2L["44"]);
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(244, 231, 209);
G2L["47"]["AnchorPoint"] = Vector2.new(0.75, 0);
G2L["47"]["Size"] = UDim2.new(2, 0, 1, 0);
G2L["47"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["47"]["Name"] = [[OnDisplay]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton1.OvalFrame.Circle.ClickDetector
G2L["48"] = Instance.new("TextButton", G2L["44"]);
G2L["48"]["TextSize"] = 14;
G2L["48"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["48"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["48"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["48"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["48"]["Text"] = [[]];
G2L["48"]["Name"] = [[ClickDetector]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton1.OvalFrame.Circle.ClickDetector.UICorner
G2L["49"] = Instance.new("UICorner", G2L["48"]);
G2L["49"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton1.OvalFrame.Circle.ClickDetector.LocalScript
G2L["4a"] = Instance.new("LocalScript", G2L["48"]);



-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton1.ToggleEvent
G2L["4b"] = Instance.new("BindableEvent", G2L["40"]);
G2L["4b"]["Name"] = [[ToggleEvent]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton1.LoadDefaultValue
G2L["4c"] = Instance.new("BindableEvent", G2L["40"]);
G2L["4c"]["Name"] = [[LoadDefaultValue]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton2
G2L["4d"] = Instance.new("CanvasGroup", G2L["3c"]);
G2L["4d"]["Size"] = UDim2.new(0.06379, 0, 0.12045, 0);
G2L["4d"]["Position"] = UDim2.new(0.39918, 0, 0.22464, 0);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4d"]["Name"] = [[ToggleButton2]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton2.UICorner
G2L["4e"] = Instance.new("UICorner", G2L["4d"]);
G2L["4e"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton2.UIAspectRatioConstraint
G2L["4f"] = Instance.new("UIAspectRatioConstraint", G2L["4d"]);
G2L["4f"]["AspectRatio"] = 2;


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton2.OvalFrame
G2L["50"] = Instance.new("Frame", G2L["4d"]);
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["50"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["50"]["Name"] = [[OvalFrame]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton2.OvalFrame.Circle
G2L["51"] = Instance.new("Frame", G2L["50"]);
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["51"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["51"]["Name"] = [[Circle]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton2.OvalFrame.Circle.UICorner
G2L["52"] = Instance.new("UICorner", G2L["51"]);
G2L["52"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton2.OvalFrame.Circle.OffDisplay
G2L["53"] = Instance.new("Frame", G2L["51"]);
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(163, 166, 171);
G2L["53"]["Size"] = UDim2.new(2, 0, 1, 0);
G2L["53"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["53"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["53"]["Name"] = [[OffDisplay]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton2.OvalFrame.Circle.OnDisplay
G2L["54"] = Instance.new("Frame", G2L["51"]);
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(244, 231, 209);
G2L["54"]["AnchorPoint"] = Vector2.new(0.75, 0);
G2L["54"]["Size"] = UDim2.new(2, 0, 1, 0);
G2L["54"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["54"]["Name"] = [[OnDisplay]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton2.OvalFrame.Circle.ClickDetector
G2L["55"] = Instance.new("TextButton", G2L["51"]);
G2L["55"]["TextSize"] = 14;
G2L["55"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["55"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["55"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["55"]["Text"] = [[]];
G2L["55"]["Name"] = [[ClickDetector]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton2.OvalFrame.Circle.ClickDetector.UICorner
G2L["56"] = Instance.new("UICorner", G2L["55"]);
G2L["56"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton2.OvalFrame.Circle.ClickDetector.LocalScript
G2L["57"] = Instance.new("LocalScript", G2L["55"]);



-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton2.ToggleEvent
G2L["58"] = Instance.new("BindableEvent", G2L["4d"]);
G2L["58"]["Name"] = [[ToggleEvent]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton2.LoadDefaultValue
G2L["59"] = Instance.new("BindableEvent", G2L["4d"]);
G2L["59"]["Name"] = [[LoadDefaultValue]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton3
G2L["5a"] = Instance.new("CanvasGroup", G2L["3c"]);
G2L["5a"]["Size"] = UDim2.new(0.06379, 0, 0.12045, 0);
G2L["5a"]["Position"] = UDim2.new(0.39918, 0, 0.35507, 0);
G2L["5a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["5a"]["Name"] = [[ToggleButton3]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton3.UICorner
G2L["5b"] = Instance.new("UICorner", G2L["5a"]);
G2L["5b"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton3.UIAspectRatioConstraint
G2L["5c"] = Instance.new("UIAspectRatioConstraint", G2L["5a"]);
G2L["5c"]["AspectRatio"] = 2;


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton3.OvalFrame
G2L["5d"] = Instance.new("Frame", G2L["5a"]);
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["5d"]["Name"] = [[OvalFrame]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton3.OvalFrame.Circle
G2L["5e"] = Instance.new("Frame", G2L["5d"]);
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["5e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["5e"]["Name"] = [[Circle]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton3.OvalFrame.Circle.UICorner
G2L["5f"] = Instance.new("UICorner", G2L["5e"]);
G2L["5f"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton3.OvalFrame.Circle.OffDisplay
G2L["60"] = Instance.new("Frame", G2L["5e"]);
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(163, 166, 171);
G2L["60"]["Size"] = UDim2.new(2, 0, 1, 0);
G2L["60"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["60"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["60"]["Name"] = [[OffDisplay]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton3.OvalFrame.Circle.OnDisplay
G2L["61"] = Instance.new("Frame", G2L["5e"]);
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(0, 171, 0);
G2L["61"]["AnchorPoint"] = Vector2.new(0.75, 0);
G2L["61"]["Size"] = UDim2.new(2, 0, 1, 0);
G2L["61"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["61"]["Name"] = [[OnDisplay]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton3.OvalFrame.Circle.ClickDetector
G2L["62"] = Instance.new("TextButton", G2L["5e"]);
G2L["62"]["TextSize"] = 14;
G2L["62"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["62"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["62"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["62"]["Text"] = [[]];
G2L["62"]["Name"] = [[ClickDetector]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton3.OvalFrame.Circle.ClickDetector.UICorner
G2L["63"] = Instance.new("UICorner", G2L["62"]);
G2L["63"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton3.OvalFrame.Circle.ClickDetector.LocalScript
G2L["64"] = Instance.new("LocalScript", G2L["62"]);



-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton3.ToggleEvent
G2L["65"] = Instance.new("BindableEvent", G2L["5a"]);
G2L["65"]["Name"] = [[ToggleEvent]];


-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton3.LoadDefaultValue
G2L["66"] = Instance.new("BindableEvent", G2L["5a"]);
G2L["66"]["Name"] = [[LoadDefaultValue]];


-- StarterGui.ScreenGui.MainUi.animation
G2L["67"] = Instance.new("LocalScript", G2L["2"]);
G2L["67"]["Name"] = [[animation]];


-- StarterGui.ScreenGui.MainUi.dragscript
G2L["68"] = Instance.new("LocalScript", G2L["2"]);
G2L["68"]["Name"] = [[dragscript]];


-- StarterGui.ScreenGui.MainUi.MISC
G2L["69"] = Instance.new("Frame", G2L["2"]);
G2L["69"]["Visible"] = false;
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["Size"] = UDim2.new(0, 486, 0, 276);
G2L["69"]["Position"] = UDim2.new(0, 0, -0, 0);
G2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["Name"] = [[MISC]];
G2L["69"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.MainUi.MISC.UICorner
G2L["6a"] = Instance.new("UICorner", G2L["69"]);



-- StarterGui.ScreenGui.MainUi.MISC.TextLabel
G2L["6b"] = Instance.new("TextLabel", G2L["69"]);
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["TextSize"] = 14;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["BackgroundTransparency"] = 1;
G2L["6b"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Text"] = [[MISC TAB PROGGRESS    :     1%]];
G2L["6b"]["Position"] = UDim2.new(0.3786, 0, 0.42754, 0);


-- StarterGui.ScreenGui.MainUi.CONFIG
G2L["6c"] = Instance.new("Frame", G2L["2"]);
G2L["6c"]["Visible"] = false;
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["Size"] = UDim2.new(0, 486, 0, 268);
G2L["6c"]["Position"] = UDim2.new(0, 0, -0, 0);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["Name"] = [[CONFIG]];
G2L["6c"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.MainUi.CONFIG.TextLabel
G2L["6d"] = Instance.new("TextLabel", G2L["6c"]);
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["TextSize"] = 14;
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["BackgroundTransparency"] = 1;
G2L["6d"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["Text"] = [[CONFIG TAB PROGGRESS    :     1%]];
G2L["6d"]["Position"] = UDim2.new(0.40741, 0, 0.42007, 0);


-- StarterGui.ScreenGui.MainUi.CONFIG.UICorner
G2L["6e"] = Instance.new("UICorner", G2L["6c"]);



-- StarterGui.ScreenGui.MainUi.IDK
G2L["6f"] = Instance.new("Frame", G2L["2"]);
G2L["6f"]["Visible"] = false;
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6f"]["Size"] = UDim2.new(0, 486, 0, 276);
G2L["6f"]["Position"] = UDim2.new(0, 0, -0, 0);
G2L["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Name"] = [[IDK]];
G2L["6f"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.MainUi.IDK.UICorner
G2L["70"] = Instance.new("UICorner", G2L["6f"]);



-- StarterGui.ScreenGui.MainUi.IDK.TextLabel
G2L["71"] = Instance.new("TextLabel", G2L["6f"]);
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["TextSize"] = 14;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["71"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["BackgroundTransparency"] = 1;
G2L["71"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["Text"] = [[.... TAB PROGGRESS    :     1%]];
G2L["71"]["Position"] = UDim2.new(0.40741, 0, 0.42007, 0);


-- StarterGui.ScreenGui.MainUi.FadeOverlay
G2L["72"] = Instance.new("Frame", G2L["2"]);
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(47, 47, 47);
G2L["72"]["Size"] = UDim2.new(0, 486, 0, 276);
G2L["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["Name"] = [[FadeOverlay]];
G2L["72"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.MainUi.FadeOverlay.UICorner
G2L["73"] = Instance.new("UICorner", G2L["72"]);



-- StarterGui.ScreenGui.MainUi.circledecoration
G2L["74"] = Instance.new("Frame", G2L["2"]);
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["Size"] = UDim2.new(0, 10, 0, 10);
G2L["74"]["Position"] = UDim2.new(0.96502, 0, 0.02174, -3);
G2L["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["74"]["Name"] = [[circledecoration]];
G2L["74"]["BackgroundTransparency"] = 0.5;


-- StarterGui.ScreenGui.MainUi.circledecoration.UICorner
G2L["75"] = Instance.new("UICorner", G2L["74"]);



-- StarterGui.ScreenGui.MainUi.circledecoration
G2L["76"] = Instance.new("Frame", G2L["2"]);
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["Size"] = UDim2.new(0, 10, 0, 10);
G2L["76"]["Position"] = UDim2.new(0.96502, -15, 0.02174, -3);
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["Name"] = [[circledecoration]];
G2L["76"]["BackgroundTransparency"] = 0.5;


-- StarterGui.ScreenGui.MainUi.circledecoration.UICorner
G2L["77"] = Instance.new("UICorner", G2L["76"]);



-- StarterGui.ScreenGui.MainUi.circledecoration
G2L["78"] = Instance.new("Frame", G2L["2"]);
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["Size"] = UDim2.new(0, 10, 0, 10);
G2L["78"]["Position"] = UDim2.new(0.96502, -30, 0.02174, -3);
G2L["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["78"]["Name"] = [[circledecoration]];
G2L["78"]["BackgroundTransparency"] = 0.5;


-- StarterGui.ScreenGui.MainUi.circledecoration.UICorner
G2L["79"] = Instance.new("UICorner", G2L["78"]);



-- StarterGui.ScreenGui.Notify2
G2L["7a"] = Instance.new("Frame", G2L["1"]);
G2L["7a"]["Visible"] = false;
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7a"]["Size"] = UDim2.new(0, 246, 0, 163);
G2L["7a"]["Position"] = UDim2.new(0.62727, 0, 0.70082, 0);
G2L["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["Name"] = [[Notify2]];


-- StarterGui.ScreenGui.Notify2.UICorner
G2L["7b"] = Instance.new("UICorner", G2L["7a"]);



-- StarterGui.ScreenGui.Notify2.InnerFade
G2L["7c"] = Instance.new("Frame", G2L["7a"]);
G2L["7c"]["BorderSizePixel"] = 0;
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["7c"]["Size"] = UDim2.new(0, 267, 0, 181);
G2L["7c"]["Position"] = UDim2.new(-0.04271, 0, -0.04378, 0);
G2L["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7c"]["Name"] = [[InnerFade]];
G2L["7c"]["BackgroundTransparency"] = 0.5;


-- StarterGui.ScreenGui.Notify2.InnerFade.UICorner
G2L["7d"] = Instance.new("UICorner", G2L["7c"]);



-- StarterGui.ScreenGui.Notify2.InnerFade.UIGradient
G2L["7e"] = Instance.new("UIGradient", G2L["7c"]);



-- StarterGui.ScreenGui.Notify2.InnerFade.OuterFade
G2L["7f"] = Instance.new("Frame", G2L["7c"]);
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(155, 144, 124);
G2L["7f"]["Size"] = UDim2.new(0, 286, 0, 196);
G2L["7f"]["Position"] = UDim2.new(-0.03866, 0, -0.04431, 0);
G2L["7f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7f"]["Name"] = [[OuterFade]];
G2L["7f"]["BackgroundTransparency"] = 0.7;


-- StarterGui.ScreenGui.Notify2.InnerFade.OuterFade.UICorner
G2L["80"] = Instance.new("UICorner", G2L["7f"]);



-- StarterGui.ScreenGui.Notify2.FadeOverlay
G2L["81"] = Instance.new("Frame", G2L["7a"]);
G2L["81"]["BorderSizePixel"] = 0;
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(47, 47, 47);
G2L["81"]["Size"] = UDim2.new(0, 246, 0, 156);
G2L["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["Name"] = [[FadeOverlay]];
G2L["81"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Notify2.FadeOverlay.UICorner
G2L["82"] = Instance.new("UICorner", G2L["81"]);



-- StarterGui.ScreenGui.Notify2.TextLabel
G2L["83"] = Instance.new("TextLabel", G2L["7a"]);
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["TextSize"] = 14;
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(155, 144, 124);
G2L["83"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["83"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["BackgroundTransparency"] = 1;
G2L["83"]["Size"] = UDim2.new(0, 246, 0, 122);
G2L["83"]["Visible"] = false;
G2L["83"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["Text"] = [[PLEASE SUPPORT US ON DISCORD]];
G2L["83"]["Position"] = UDim2.new(0.00407, 0, 0.09816, 0);


-- StarterGui.ScreenGui.Notify2.TextLabel.UICorner
G2L["84"] = Instance.new("UICorner", G2L["83"]);



-- StarterGui.ScreenGui.Notify2.CopyButton
G2L["85"] = Instance.new("TextButton", G2L["7a"]);
G2L["85"]["BorderSizePixel"] = 0;
G2L["85"]["TextSize"] = 14;
G2L["85"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["85"]["Size"] = UDim2.new(0, 92, 0, 37);
G2L["85"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["85"]["Text"] = [[COPY]];
G2L["85"]["Name"] = [[CopyButton]];
G2L["85"]["Position"] = UDim2.new(0.03926, 0, 0.69487, 0);


-- StarterGui.ScreenGui.Notify2.CopyButton.UICorner
G2L["86"] = Instance.new("UICorner", G2L["85"]);



-- StarterGui.ScreenGui.Notify2.CopyButton.InnerFade
G2L["87"] = Instance.new("Frame", G2L["85"]);
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["87"]["Size"] = UDim2.new(0, 103, 0, 45);
G2L["87"]["Position"] = UDim2.new(-0.04272, 0, -0.04308, 0);
G2L["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Name"] = [[InnerFade]];
G2L["87"]["BackgroundTransparency"] = 0.5;


-- StarterGui.ScreenGui.Notify2.CopyButton.InnerFade.UICorner
G2L["88"] = Instance.new("UICorner", G2L["87"]);



-- StarterGui.ScreenGui.Notify2.CopyButton.InnerFade.UIGradient
G2L["89"] = Instance.new("UIGradient", G2L["87"]);



-- StarterGui.ScreenGui.Notify2.CopyButton.InnerFade.OuterFade
G2L["8a"] = Instance.new("Frame", G2L["87"]);
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(155, 144, 124);
G2L["8a"]["Size"] = UDim2.new(0, 112, 0, 48);
G2L["8a"]["Position"] = UDim2.new(-0.03914, 0, -0.08062, 0);
G2L["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["Name"] = [[OuterFade]];
G2L["8a"]["BackgroundTransparency"] = 0.7;


-- StarterGui.ScreenGui.Notify2.CopyButton.InnerFade.OuterFade.UICorner
G2L["8b"] = Instance.new("UICorner", G2L["8a"]);



-- StarterGui.ScreenGui.Notify2.CopyButton.CopyScript
G2L["8c"] = Instance.new("LocalScript", G2L["85"]);
G2L["8c"]["Name"] = [[CopyScript]];


-- StarterGui.ScreenGui.Notify2.CloseButton
G2L["8d"] = Instance.new("TextButton", G2L["7a"]);
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["TextSize"] = 14;
G2L["8d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["8d"]["Size"] = UDim2.new(0, 94, 0, 37);
G2L["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["Text"] = [[CLOSE]];
G2L["8d"]["Name"] = [[CloseButton]];
G2L["8d"]["Position"] = UDim2.new(0.53884, 0, 0.69487, 0);


-- StarterGui.ScreenGui.Notify2.CloseButton.UICorner
G2L["8e"] = Instance.new("UICorner", G2L["8d"]);



-- StarterGui.ScreenGui.Notify2.CloseButton.InnerFade
G2L["8f"] = Instance.new("Frame", G2L["8d"]);
G2L["8f"]["BorderSizePixel"] = 0;
G2L["8f"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["8f"]["Size"] = UDim2.new(0, 106, 0, 45);
G2L["8f"]["Position"] = UDim2.new(-0.00953, 0, -0.04308, 0);
G2L["8f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8f"]["Name"] = [[InnerFade]];
G2L["8f"]["BackgroundTransparency"] = 0.5;


-- StarterGui.ScreenGui.Notify2.CloseButton.InnerFade.UICorner
G2L["90"] = Instance.new("UICorner", G2L["8f"]);



-- StarterGui.ScreenGui.Notify2.CloseButton.InnerFade.UIGradient
G2L["91"] = Instance.new("UIGradient", G2L["8f"]);



-- StarterGui.ScreenGui.Notify2.CloseButton.InnerFade.OuterFade
G2L["92"] = Instance.new("Frame", G2L["8f"]);
G2L["92"]["BorderSizePixel"] = 0;
G2L["92"]["BackgroundColor3"] = Color3.fromRGB(155, 144, 124);
G2L["92"]["Size"] = UDim2.new(0, 112, 0, 48);
G2L["92"]["Position"] = UDim2.new(-0.08769, 0, -0.10284, 0);
G2L["92"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["92"]["Name"] = [[OuterFade]];
G2L["92"]["BackgroundTransparency"] = 0.7;


-- StarterGui.ScreenGui.Notify2.CloseButton.InnerFade.OuterFade.UICorner
G2L["93"] = Instance.new("UICorner", G2L["92"]);



-- StarterGui.ScreenGui.Notify2.CloseButton.CloseScript
G2L["94"] = Instance.new("LocalScript", G2L["8d"]);
G2L["94"]["Name"] = [[CloseScript]];


-- StarterGui.ScreenGui.Notify2.ImageLabel
G2L["95"] = Instance.new("ImageLabel", G2L["7a"]);
G2L["95"]["BorderSizePixel"] = 0;
G2L["95"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["95"]["Image"] = [[rbxassetid://72489327397224]];
G2L["95"]["Size"] = UDim2.new(0, 26, 0, 27);
G2L["95"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["95"]["BackgroundTransparency"] = 0.4;
G2L["95"]["Position"] = UDim2.new(0.02263, 0, 0.05241, 0);


-- StarterGui.ScreenGui.Notify2.ImageLabel.UICorner
G2L["96"] = Instance.new("UICorner", G2L["95"]);



-- StarterGui.ScreenGui.Notify2.ImageLabel.TextLabel
G2L["97"] = Instance.new("TextLabel", G2L["95"]);
G2L["97"]["BorderSizePixel"] = 0;
G2L["97"]["TextSize"] = 14;
G2L["97"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["97"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["97"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["97"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["97"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["97"]["BackgroundTransparency"] = 1;
G2L["97"]["Size"] = UDim2.new(0, 167, 0, 16);
G2L["97"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["97"]["Text"] = [[TROJAN WARE]];
G2L["97"]["Position"] = UDim2.new(1.225, 0, 0, 0);


-- StarterGui.ScreenGui.Notify2.ImageLabel.TextLabel
G2L["98"] = Instance.new("TextLabel", G2L["95"]);
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["TextSize"] = 11;
G2L["98"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["98"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["98"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["98"]["BackgroundTransparency"] = 1;
G2L["98"]["Size"] = UDim2.new(0, 167, 0, 16);
G2L["98"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["Text"] = [[SINCE 2025]];
G2L["98"]["Position"] = UDim2.new(1.225, 0, 0.28947, 0);


-- StarterGui.ScreenGui.Notify2.dragscript
G2L["99"] = Instance.new("LocalScript", G2L["7a"]);
G2L["99"]["Name"] = [[dragscript]];


-- StarterGui.ScreenGui.LoadingUi
G2L["9a"] = Instance.new("Frame", G2L["1"]);
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(244, 231, 209);
G2L["9a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["9a"]["Size"] = UDim2.new(0, 338, 0, 198);
G2L["9a"]["Position"] = UDim2.new(0.50877, 1, 0.40438, 45);
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["Name"] = [[LoadingUi]];
G2L["9a"]["BackgroundTransparency"] = 0.1;


-- StarterGui.ScreenGui.LoadingUi.ImageLabel
G2L["9b"] = Instance.new("ImageLabel", G2L["9a"]);
G2L["9b"]["BorderSizePixel"] = 0;
G2L["9b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["9b"]["Image"] = [[rbxassetid://92138690758194]];
G2L["9b"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["9b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9b"]["BackgroundTransparency"] = 0.4;
G2L["9b"]["Position"] = UDim2.new(0.02204, 0, 0.0209, 0);


-- StarterGui.ScreenGui.LoadingUi.ImageLabel.UICorner
G2L["9c"] = Instance.new("UICorner", G2L["9b"]);



-- StarterGui.ScreenGui.LoadingUi.ImageLabel.TextLabel
G2L["9d"] = Instance.new("TextLabel", G2L["9b"]);
G2L["9d"]["BorderSizePixel"] = 0;
G2L["9d"]["TextSize"] = 14;
G2L["9d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9d"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["9d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9d"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["9d"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["9d"]["BackgroundTransparency"] = 1;
G2L["9d"]["Size"] = UDim2.new(0, 167, 0, 16);
G2L["9d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9d"]["Text"] = [[TROJAN WARE]];
G2L["9d"]["Position"] = UDim2.new(1.225, 0, 0, 0);


-- StarterGui.ScreenGui.LoadingUi.ImageLabel.TextLabel
G2L["9e"] = Instance.new("TextLabel", G2L["9b"]);
G2L["9e"]["BorderSizePixel"] = 0;
G2L["9e"]["TextSize"] = 11;
G2L["9e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9e"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["9e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9e"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["9e"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["9e"]["BackgroundTransparency"] = 1;
G2L["9e"]["Size"] = UDim2.new(0, 167, 0, 16);
G2L["9e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9e"]["Text"] = [[SINCE 2025]];
G2L["9e"]["Position"] = UDim2.new(1.225, 0, 0.28947, 0);


-- StarterGui.ScreenGui.LoadingUi.InnerFade
G2L["9f"] = Instance.new("Frame", G2L["9a"]);
G2L["9f"]["BorderSizePixel"] = 0;
G2L["9f"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["9f"]["Size"] = UDim2.new(0, 353, 0, 0);
G2L["9f"]["Position"] = UDim2.new(-0.02109, 0, 1.03717, 0);
G2L["9f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9f"]["Name"] = [[InnerFade]];
G2L["9f"]["BackgroundTransparency"] = 0.5;


-- StarterGui.ScreenGui.LoadingUi.InnerFade.UICorner
G2L["a0"] = Instance.new("UICorner", G2L["9f"]);



-- StarterGui.ScreenGui.LoadingUi.InnerFade.UIGradient
G2L["a1"] = Instance.new("UIGradient", G2L["9f"]);



-- StarterGui.ScreenGui.LoadingUi.InnerFade
G2L["a2"] = Instance.new("Frame", G2L["9a"]);
G2L["a2"]["BorderSizePixel"] = 0;
G2L["a2"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["a2"]["Size"] = UDim2.new(0, 353, 0, 211);
G2L["a2"]["Position"] = UDim2.new(-0.02109, 0, -0.03354, 0);
G2L["a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a2"]["Name"] = [[InnerFade]];
G2L["a2"]["BackgroundTransparency"] = 0.5;


-- StarterGui.ScreenGui.LoadingUi.InnerFade.UICorner
G2L["a3"] = Instance.new("UICorner", G2L["a2"]);



-- StarterGui.ScreenGui.LoadingUi.InnerFade.UIGradient
G2L["a4"] = Instance.new("UIGradient", G2L["a2"]);



-- StarterGui.ScreenGui.LoadingUi.InnerFade.OuterFade
G2L["a5"] = Instance.new("Frame", G2L["a2"]);
G2L["a5"]["BorderSizePixel"] = 0;
G2L["a5"]["BackgroundColor3"] = Color3.fromRGB(155, 144, 124);
G2L["a5"]["Size"] = UDim2.new(0, 366, 0, 224);
G2L["a5"]["Position"] = UDim2.new(-0.01381, 0, -0.02712, 0);
G2L["a5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a5"]["Name"] = [[OuterFade]];
G2L["a5"]["BackgroundTransparency"] = 0.7;


-- StarterGui.ScreenGui.LoadingUi.InnerFade.OuterFade.UICorner
G2L["a6"] = Instance.new("UICorner", G2L["a5"]);



-- StarterGui.ScreenGui.LoadingUi.Progress
G2L["a7"] = Instance.new("Frame", G2L["9a"]);
G2L["a7"]["SizeConstraint"] = Enum.SizeConstraint.RelativeYY;
G2L["a7"]["BorderSizePixel"] = 0;
G2L["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a7"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["a7"]["Size"] = UDim2.new(0.2, 0, 0.2, 0);
G2L["a7"]["Position"] = UDim2.new(0.43769, 0, 0.59898, 0);
G2L["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a7"]["Name"] = [[Progress]];
G2L["a7"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.LoadingUi.Progress.Frame1
G2L["a8"] = Instance.new("Frame", G2L["a7"]);
G2L["a8"]["BorderSizePixel"] = 0;
G2L["a8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a8"]["ClipsDescendants"] = true;
G2L["a8"]["Size"] = UDim2.new(0.52525, 0, 1, 0);
G2L["a8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a8"]["Name"] = [[Frame1]];
G2L["a8"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.LoadingUi.Progress.Frame1.ImageLabel
G2L["a9"] = Instance.new("ImageLabel", G2L["a8"]);
G2L["a9"]["BorderSizePixel"] = 0;
G2L["a9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a9"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["a9"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["a9"]["Size"] = UDim2.new(2, 0, 1, 0);
G2L["a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a9"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.LoadingUi.Progress.Frame1.ImageLabel.UIGradient
G2L["aa"] = Instance.new("UIGradient", G2L["a9"]);
G2L["aa"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 0),NumberSequenceKeypoint.new(0.501, 1),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.ScreenGui.LoadingUi.Progress.Frame2
G2L["ab"] = Instance.new("Frame", G2L["a7"]);
G2L["ab"]["BorderSizePixel"] = 0;
G2L["ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["ab"]["ClipsDescendants"] = true;
G2L["ab"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["ab"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ab"]["Name"] = [[Frame2]];
G2L["ab"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.LoadingUi.Progress.Frame2.ImageLabel
G2L["ac"] = Instance.new("ImageLabel", G2L["ab"]);
G2L["ac"]["BorderSizePixel"] = 0;
G2L["ac"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ac"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["ac"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["ac"]["Size"] = UDim2.new(2, 0, 1, 0);
G2L["ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ac"]["BackgroundTransparency"] = 1;
G2L["ac"]["Position"] = UDim2.new(-0.94949, 0, 0, 0);


-- StarterGui.ScreenGui.LoadingUi.Progress.Frame2.ImageLabel.UIGradient
G2L["ad"] = Instance.new("UIGradient", G2L["ac"]);
G2L["ad"]["Rotation"] = 180;
G2L["ad"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 0),NumberSequenceKeypoint.new(0.501, 1),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.ScreenGui.LoadingUi.Progress.Percentage
G2L["ae"] = Instance.new("NumberValue", G2L["a7"]);
G2L["ae"]["Name"] = [[Percentage]];


-- StarterGui.ScreenGui.LoadingUi.Progress.Percentage.ProgressScript
G2L["af"] = Instance.new("LocalScript", G2L["ae"]);
G2L["af"]["Name"] = [[ProgressScript]];


-- StarterGui.ScreenGui.LoadingUi.Progress.Percentage.ProgressScript.MissingPartType
G2L["b0"] = Instance.new("StringValue", G2L["af"]);
G2L["b0"]["Name"] = [[MissingPartType]];
G2L["b0"]["Value"] = [[TransAndColor]];


-- StarterGui.ScreenGui.LoadingUi.Progress.Percentage.ProgressScript.FlipProgress
G2L["b1"] = Instance.new("BoolValue", G2L["af"]);
G2L["b1"]["Name"] = [[FlipProgress]];


-- StarterGui.ScreenGui.LoadingUi.Progress.Percentage.ProgressScript.TransOfMissingPart
G2L["b2"] = Instance.new("NumberValue", G2L["af"]);
G2L["b2"]["Name"] = [[TransOfMissingPart]];
G2L["b2"]["Value"] = 0.25;


-- StarterGui.ScreenGui.LoadingUi.Progress.Percentage.ProgressScript.ColorOfMissingPart
G2L["b3"] = Instance.new("Color3Value", G2L["af"]);
G2L["b3"]["Name"] = [[ColorOfMissingPart]];
G2L["b3"]["Value"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.ScreenGui.LoadingUi.Progress.Percentage.ProgressScript.TransOfPercentPart
G2L["b4"] = Instance.new("NumberValue", G2L["af"]);
G2L["b4"]["Name"] = [[TransOfPercentPart]];


-- StarterGui.ScreenGui.LoadingUi.Progress.Percentage.ProgressScript.ColorOfPercentPart
G2L["b5"] = Instance.new("Color3Value", G2L["af"]);
G2L["b5"]["Name"] = [[ColorOfPercentPart]];
G2L["b5"]["Value"] = Color3.fromRGB(155, 144, 124);


-- StarterGui.ScreenGui.LoadingUi.Progress.Percentage.ProgressScript.ImageColor
G2L["b6"] = Instance.new("Color3Value", G2L["af"]);
G2L["b6"]["Name"] = [[ImageColor]];
G2L["b6"]["Value"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.ScreenGui.LoadingUi.Progress.Percentage.ProgressScript.ImageTrans
G2L["b7"] = Instance.new("NumberValue", G2L["af"]);
G2L["b7"]["Name"] = [[ImageTrans]];


-- StarterGui.ScreenGui.LoadingUi.Progress.Percentage.ProgressScript.ImageId
G2L["b8"] = Instance.new("StringValue", G2L["af"]);
G2L["b8"]["Name"] = [[ImageId]];
G2L["b8"]["Value"] = [[3587367081]];


-- StarterGui.ScreenGui.LoadingUi.UICorner
G2L["b9"] = Instance.new("UICorner", G2L["9a"]);



-- StarterGui.ScreenGui.LoadsScript
G2L["ba"] = Instance.new("LocalScript", G2L["1"]);
G2L["ba"]["Name"] = [[LoadsScript]];


-- StarterGui.ScreenGui.MainUi.auto name script
local function C_22()
local script = G2L["22"];
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	
	-- Updated path: MainUI > HOME > NAME > TextLabel
	local nameFrame = script.Parent:WaitForChild("HOME"):WaitForChild("NAME")
	local textLabel = nameFrame:FindFirstChildOfClass("TextLabel")
	
	if textLabel then
		textLabel.Text = player.Name -- or use player.DisplayName if preferred
	else
		warn("TextLabel not found inside HOME > NAME.")
	end
	
end;
task.spawn(C_22);
-- StarterGui.ScreenGui.MainUi.auto head pic script
local function C_23()
local script = G2L["23"];
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	
	-- Updated path: MainUI > HOME > picture > ImageLabel
	local imageLabel = script.Parent:WaitForChild("HOME"):WaitForChild("picture"):WaitForChild("ImageLabel")
	
	local userId = player.UserId
	local thumbType = Enum.ThumbnailType.HeadShot
	local thumbSize = Enum.ThumbnailSize.Size420x420
	
	local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
	imageLabel.Image = content
	
end;
task.spawn(C_23);
-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton1.OvalFrame.Circle.ClickDetector.LocalScript
local function C_4a()
local script = G2L["4a"];
	-- Toggle GUI with Speed Boost and Flying Feature (No RemoteEvent needed)
	
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
	
	-- Speed Config
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local player = Players.LocalPlayer
	local defaultSpeed = 16
	local speedBoost = 100
	local isBoosted = false
	
	-- Fly variables
	local velocity, bodyGyro
	
	-- Fly start
	local function startFlying(character)
		local root = character:WaitForChild("HumanoidRootPart")
	
		velocity = Instance.new("BodyVelocity")
		velocity.MaxForce = Vector3.new(1,1,1) * 1e6
		velocity.P = 1250
		velocity.Velocity = Vector3.zero
		velocity.Parent = root
	
		bodyGyro = Instance.new("BodyGyro")
		bodyGyro.MaxTorque = Vector3.new(1,1,1) * 1e6
		bodyGyro.P = 3000
		bodyGyro.CFrame = root.CFrame
		bodyGyro.Parent = root
	
		RunService:BindToRenderStep("Flying", Enum.RenderPriority.Input.Value, function()
			local cam = workspace.CurrentCamera
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			local moveDir = humanoid and humanoid.MoveDirection or Vector3.zero
	
			if moveDir.Magnitude > 0 then
				local worldDir = cam.CFrame:VectorToWorldSpace(Vector3.new(moveDir.X, 0, moveDir.Z)).Unit
				velocity.Velocity = worldDir * (defaultSpeed + speedBoost)
			else
				velocity.Velocity = Vector3.zero
			end
	
			bodyGyro.CFrame = cam.CFrame
		end)
	end
	
	-- Fly stop
	local function stopFlying()
		RunService:UnbindFromRenderStep("Flying")
		if velocity then velocity:Destroy() velocity = nil end
		if bodyGyro then bodyGyro:Destroy() bodyGyro = nil end
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
	
			local character = player.Character or player.CharacterAdded:Wait()
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if not humanoid then return end
	
			if Button.Parent.Position.X.Scale == 0 then
				-- Toggle ON
			local player = game.Players.LocalPlayer
                        local playerGui = player:WaitForChild("PlayerGui")
                        local seedShopGui = playerGui:WaitForChild("Seed_Shop")

                                
                                seedShopGui.Enabled = true
				-- Toggle OFF
				isBoosted = false
				humanoid.WalkSpeed = defaultSpeed
				stopFlying()
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
			startFlying(character)
		else
			if OnPosition == "Left" then
				CircleFrame.Position = UDim2.new(0,0,0,0)
			else
				CircleFrame.Position = UDim2.new(0.5,0,0,0)
			end
			humanoid.WalkSpeed = defaultSpeed
			isBoosted = false
			stopFlying()
		end
	end)
	
end;
task.spawn(C_4a);
-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton2.OvalFrame.Circle.ClickDetector.LocalScript
local function C_57()
local script = G2L["57"];
		local Button = script.Parent
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
		end)
end;
task.spawn(C_57);
-- StarterGui.ScreenGui.MainUi.MAIN.ToggleButton3.OvalFrame.Circle.ClickDetector.LocalScript
local function C_64()
local script = G2L["64"];
	-- Toggle GUI for Seed Sniper (No Speed Boost or Flying)
	
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
	
end;
task.spawn(C_64);
-- StarterGui.ScreenGui.MainUi.animation
local function C_67()
local script = G2L["67"];
	local TweenService = game:GetService("TweenService")
	
	local mainUI = script.Parent
	local fadeOverlay = mainUI:WaitForChild("FadeOverlay")
	local list = mainUI:WaitForChild("list")
	
	-- Tab Frames
	local tabs = {
		HOME = mainUI:WaitForChild("HOME"),
		MAIN = mainUI:WaitForChild("MAIN"),
		MISC = mainUI:WaitForChild("MISC"),
		CONFIG = mainUI:WaitForChild("CONFIG"),
		IDK = mainUI:WaitForChild("IDK"),
	}
	
	-- Tab Buttons (map button names to frame names)
	local buttons = {
		HomeButton = "HOME",
		MainButton = "MAIN",
		MiscButton = "MISC",
		ConfigButton = "CONFIG",
		IdkButton = "IDK",
	}
	
	local fadeTime = 0.8
	local fadeInfo = TweenInfo.new(fadeTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
	local currentTab = tabs["HOME"] -- Default visible tab
	
	-- Universal tab switch with fade
	local function switchTabs(targetTabName)
		local targetTab = tabs[targetTabName]
		if not targetTab or targetTab == currentTab then return end
	
		local fadeIn = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 0})
		local fadeOut = TweenService:Create(fadeOverlay, fadeInfo, {BackgroundTransparency = 1})
	
		fadeIn:Play()
		fadeIn.Completed:Wait()
	
		-- Hide all tabs first
		for _, tab in pairs(tabs) do
			tab.Visible = false
		end
	
		-- Show the selected tab
		targetTab.Visible = true
		currentTab = targetTab
	
		fadeOut:Play()
	end
	
	-- Connect all buttons
	for buttonName, tabName in pairs(buttons) do
		local button = list:FindFirstChild(buttonName)
		if button then
			button.MouseButton1Click:Connect(function()
				switchTabs(tabName)
			end)
		end
	end
	
end;
task.spawn(C_67);
-- StarterGui.ScreenGui.MainUi.dragscript
local function C_68()
local script = G2L["68"];
	local UserInputService = game:GetService("UserInputService")
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
	
end;
task.spawn(C_68);
-- StarterGui.ScreenGui.Notify2.CopyButton.CopyScript
local function C_8c()
local script = G2L["8c"];
	local GuiService = game:GetService("GuiService")
	local button = script.Parent
	
	local discordLink = "https://discord.gg/yourgroup"  -- your link here
	
	button.MouseButton1Click:Connect(function()
		GuiService:OpenBrowserWindow(discordLink)
	end)
	
end;
task.spawn(C_8c);
-- StarterGui.ScreenGui.Notify2.CloseButton.CloseScript
local function C_94()
local script = G2L["94"];
	local closeButton = script.Parent-- The button this script is inside
	local notifyFrame = closeButton.Parent  -- Adjust path if needed
	
	closeButton.MouseButton1Click:Connect(function()
		notifyFrame.Visible = false  -- Hide the Notify2 frame
	end)
	
end;
task.spawn(C_94);
-- StarterGui.ScreenGui.Notify2.dragscript
local function C_99()
local script = G2L["99"];
	local UserInputService = game:GetService("UserInputService")
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
	
end;
task.spawn(C_99);
-- StarterGui.ScreenGui.LoadingUi.Progress.Percentage.ProgressScript
local function C_af()
local script = G2L["af"];
	-- MissingPartType: "Trans", "Color", "TransAndColor".
	
	
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
	end)
end;
task.spawn(C_af);
-- StarterGui.ScreenGui.LoadsScript
local function C_ba()
local script = G2L["ba"];
	local TweenService = game:GetService("TweenService")
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
	blur.Size = 70
	
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
	
end;
task.spawn(C_ba);

return G2L["1"], require;
