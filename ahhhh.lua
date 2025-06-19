--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 207 | Scripts: 12 | Modules: 0 | Tags: 0
local G2L = {};

-- LocalScript (place in StarterPlayerScripts or StarterGui)
local Lighting = game:GetService("Lighting")

-- Create the blur effect
local blur = Instance.new("BlurEffect")
blur.Name = "LoadingBlur"
blur.Enabled = false -- Initially disabled
blur.Size = 24 -- Default size (can be adjusted later)
blur.Parent = Lighting

-- StarterGui.TestTrojan
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[TestTrojan]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.TestTrojan.MainUi
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["Visible"] = false;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(244, 231, 209);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 525, 0, 338);
G2L["2"]["Position"] = UDim2.new(0.54093, 1, 0.34667, 45);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[MainUi]];
G2L["2"]["BackgroundTransparency"] = 0.1;


-- StarterGui.TestTrojan.MainUi.InnerFade
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["3"]["Size"] = UDim2.new(0, 548, 0, 362);
G2L["3"]["Position"] = UDim2.new(-0.02109, 0, -0.03985, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[InnerFade]];
G2L["3"]["BackgroundTransparency"] = 0.5;


-- StarterGui.TestTrojan.MainUi.InnerFade.UICorner
G2L["4"] = Instance.new("UICorner", G2L["3"]);



-- StarterGui.TestTrojan.MainUi.InnerFade.UIGradient
G2L["5"] = Instance.new("UIGradient", G2L["3"]);



-- StarterGui.TestTrojan.MainUi.InnerFade.OuterFade
G2L["6"] = Instance.new("Frame", G2L["3"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(155, 144, 124);
G2L["6"]["Size"] = UDim2.new(0, 556, 0, 380);
G2L["6"]["Position"] = UDim2.new(-0.00197, 0, -0.02712, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Name"] = [[OuterFade]];
G2L["6"]["BackgroundTransparency"] = 0.7;


-- StarterGui.TestTrojan.MainUi.InnerFade.OuterFade.UICorner
G2L["7"] = Instance.new("UICorner", G2L["6"]);



-- StarterGui.TestTrojan.MainUi.UICorner
G2L["8"] = Instance.new("UICorner", G2L["2"]);



-- StarterGui.TestTrojan.MainUi.InnerFade
G2L["9"] = Instance.new("Frame", G2L["2"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["9"]["Size"] = UDim2.new(0, 548, 0, 0);
G2L["9"]["Position"] = UDim2.new(-0.02109, 0, 1.03753, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Name"] = [[InnerFade]];
G2L["9"]["BackgroundTransparency"] = 0.5;


-- StarterGui.TestTrojan.MainUi.InnerFade.UICorner
G2L["a"] = Instance.new("UICorner", G2L["9"]);



-- StarterGui.TestTrojan.MainUi.InnerFade.UIGradient
G2L["b"] = Instance.new("UIGradient", G2L["9"]);



-- StarterGui.TestTrojan.MainUi.auto name script
G2L["c"] = Instance.new("LocalScript", G2L["2"]);
G2L["c"]["Name"] = [[auto name script]];


-- StarterGui.TestTrojan.MainUi.auto head pic script
G2L["d"] = Instance.new("LocalScript", G2L["2"]);
G2L["d"]["Name"] = [[auto head pic script]];


-- StarterGui.TestTrojan.MainUi.HOME
G2L["e"] = Instance.new("Frame", G2L["2"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["Size"] = UDim2.new(0, 525, 0, 338);
G2L["e"]["Position"] = UDim2.new(-0.00045, 0, -0.00698, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Name"] = [[HOME]];
G2L["e"]["BackgroundTransparency"] = 1;


-- StarterGui.TestTrojan.MainUi.HOME.WELCOME
G2L["f"] = Instance.new("Frame", G2L["e"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["f"]["Size"] = UDim2.new(0, 350, 0, 132);
G2L["f"]["Position"] = UDim2.new(0.27998, 0, 0.52625, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Name"] = [[WELCOME]];
G2L["f"]["BackgroundTransparency"] = 0.4;


-- StarterGui.TestTrojan.MainUi.HOME.WELCOME.UICorner
G2L["10"] = Instance.new("UICorner", G2L["f"]);



-- StarterGui.TestTrojan.MainUi.HOME.WELCOME.UIGradient
G2L["11"] = Instance.new("UIGradient", G2L["f"]);



-- StarterGui.TestTrojan.MainUi.HOME.WELCOME.TextLabel
G2L["12"] = Instance.new("TextLabel", G2L["f"]);
G2L["12"]["TextWrapped"] = true;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["TextSize"] = 100;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["12"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Text"] = [[W]];
G2L["12"]["Position"] = UDim2.new(-0.03179, 0, 0.09091, 0);


-- StarterGui.TestTrojan.MainUi.HOME.WELCOME.TextLabel
G2L["13"] = Instance.new("TextLabel", G2L["f"]);
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["TextSize"] = 50;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["13"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Text"] = [[E]];
G2L["13"]["Position"] = UDim2.new(0.1185, 0, 0.18182, 0);


-- StarterGui.TestTrojan.MainUi.HOME.WELCOME.TextLabel
G2L["14"] = Instance.new("TextLabel", G2L["f"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextSize"] = 50;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["14"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["14"]["BackgroundTransparency"] = 1;
G2L["14"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[L]];
G2L["14"]["Position"] = UDim2.new(0.20809, 0, 0.18182, 0);


-- StarterGui.TestTrojan.MainUi.HOME.WELCOME.TextLabel
G2L["15"] = Instance.new("TextLabel", G2L["f"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["TextSize"] = 50;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["15"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["15"]["BackgroundTransparency"] = 1;
G2L["15"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Text"] = [[C]];
G2L["15"]["Position"] = UDim2.new(0.29769, 0, 0.18182, 0);


-- StarterGui.TestTrojan.MainUi.HOME.WELCOME.TextLabel
G2L["16"] = Instance.new("TextLabel", G2L["f"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["TextSize"] = 50;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["16"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Text"] = [[O]];
G2L["16"]["Position"] = UDim2.new(0.39306, 0, 0.18182, 0);


-- StarterGui.TestTrojan.MainUi.HOME.WELCOME.TextLabel
G2L["17"] = Instance.new("TextLabel", G2L["f"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["TextSize"] = 50;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["17"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Text"] = [[M]];
G2L["17"]["Position"] = UDim2.new(0.49422, 0, 0.18182, 0);


-- StarterGui.TestTrojan.MainUi.HOME.WELCOME.TextLabel
G2L["18"] = Instance.new("TextLabel", G2L["f"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextSize"] = 50;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["18"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[E]];
G2L["18"]["Position"] = UDim2.new(0.58912, 0, 0.18182, 0);


-- StarterGui.TestTrojan.MainUi.HOME.WELCOME.TextLabel
G2L["19"] = Instance.new("TextLabel", G2L["f"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["TextSize"] = 50;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["19"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Text"] = [[.]];
G2L["19"]["Position"] = UDim2.new(0.67787, 0, 0.18182, 0);


-- StarterGui.TestTrojan.MainUi.HOME.WELCOME.TextLabel
G2L["1a"] = Instance.new("TextLabel", G2L["f"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["TextSize"] = 50;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["1a"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[.]];
G2L["1a"]["Position"] = UDim2.new(0.73113, 0, 0.18182, 0);


-- StarterGui.TestTrojan.MainUi.HOME.WELCOME.TextLabel
G2L["1b"] = Instance.new("TextLabel", G2L["f"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["TextSize"] = 50;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(244, 231, 209);
G2L["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["1b"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["1b"]["BackgroundTransparency"] = 1;
G2L["1b"]["Size"] = UDim2.new(0, 89, 0, 90);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Text"] = [[.]];
G2L["1b"]["Position"] = UDim2.new(0.7903, 0, 0.18182, 0);


-- StarterGui.TestTrojan.MainUi.HOME.picture
G2L["1c"] = Instance.new("Frame", G2L["e"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["1c"]["Size"] = UDim2.new(0, 144, 0, 137);
G2L["1c"]["Position"] = UDim2.new(0.71154, 0, 0.05797, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Name"] = [[picture]];
G2L["1c"]["BackgroundTransparency"] = 0.5;


-- StarterGui.TestTrojan.MainUi.HOME.picture.UICorner
G2L["1d"] = Instance.new("UICorner", G2L["1c"]);



-- StarterGui.TestTrojan.MainUi.HOME.picture.UIGradient
G2L["1e"] = Instance.new("UIGradient", G2L["1c"]);



-- StarterGui.TestTrojan.MainUi.HOME.picture.ImageLabel
G2L["1f"] = Instance.new("ImageLabel", G2L["1c"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["1f"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["1f"]["Size"] = UDim2.new(0, 133, 0, 126);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["Position"] = UDim2.new(0.04167, 0, 0.03729, 0);


-- StarterGui.TestTrojan.MainUi.HOME.picture.ImageLabel.UICorner
G2L["20"] = Instance.new("UICorner", G2L["1f"]);



-- StarterGui.TestTrojan.MainUi.HOME.NAME
G2L["21"] = Instance.new("Frame", G2L["e"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["21"]["Size"] = UDim2.new(0, 229, 0, 74);
G2L["21"]["Position"] = UDim2.new(0.25331, 2, 0.17983, 0);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Name"] = [[NAME]];
G2L["21"]["BackgroundTransparency"] = 0.4;


-- StarterGui.TestTrojan.MainUi.HOME.NAME.UICorner
G2L["22"] = Instance.new("UICorner", G2L["21"]);



-- StarterGui.TestTrojan.MainUi.HOME.NAME.UIGradient
G2L["23"] = Instance.new("UIGradient", G2L["21"]);



-- StarterGui.TestTrojan.MainUi.HOME.NAME.username
G2L["24"] = Instance.new("TextLabel", G2L["21"]);
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextSize"] = 30;
G2L["24"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["24"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["24"]["TextColor3"] = Color3.fromRGB(227, 227, 227);
G2L["24"]["BackgroundTransparency"] = 1;
G2L["24"]["Size"] = UDim2.new(0, 218, 0, 63);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[NAME]];
G2L["24"]["Name"] = [[username]];
G2L["24"]["Position"] = UDim2.new(0.04803, 0, 0.26077, 0);


-- StarterGui.TestTrojan.MainUi.HOME.NAME.username.UICorner
G2L["25"] = Instance.new("UICorner", G2L["24"]);



-- StarterGui.TestTrojan.MainUi.HOME.NAMEEXEC
G2L["26"] = Instance.new("Frame", G2L["e"]);
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["26"]["Size"] = UDim2.new(0, 90, 0, 253);
G2L["26"]["Position"] = UDim2.new(0.03292, 2, 0.1703, 0);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Name"] = [[NAMEEXEC]];
G2L["26"]["BackgroundTransparency"] = 0.4;


-- StarterGui.TestTrojan.MainUi.HOME.NAMEEXEC.UICorner
G2L["27"] = Instance.new("UICorner", G2L["26"]);



-- StarterGui.TestTrojan.MainUi.HOME.NAMEEXEC.UIGradient
G2L["28"] = Instance.new("UIGradient", G2L["26"]);



-- StarterGui.TestTrojan.MainUi.HOME.TextLabel
G2L["29"] = Instance.new("TextLabel", G2L["e"]);
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["TextSize"] = 35;
G2L["29"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["29"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["29"]["Size"] = UDim2.new(0, 169, 0, 79);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Text"] = [[executorname]];
G2L["29"]["Rotation"] = -90;
G2L["29"]["Position"] = UDim2.new(0.11568, 0, 0.69898, 0);


-- StarterGui.TestTrojan.MainUi.HOME.TextLabel.UICorner
G2L["2a"] = Instance.new("UICorner", G2L["29"]);



-- StarterGui.TestTrojan.MainUi.HOME.TextLabel.LocalScript
G2L["2b"] = Instance.new("LocalScript", G2L["29"]);



-- StarterGui.TestTrojan.MainUi.HOME.NAMEHUB25
G2L["2c"] = Instance.new("TextLabel", G2L["e"]);
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["TextSize"] = 14;
G2L["2c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2c"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["2c"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["2c"]["BackgroundTransparency"] = 1;
G2L["2c"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Text"] = [[GAMENAME]];
G2L["2c"]["Name"] = [[NAMEHUB25]];
G2L["2c"]["Position"] = UDim2.new(0.22727, 0, 0.00398, 0);


-- StarterGui.TestTrojan.MainUi.HOME.NAMEHUB25
G2L["2d"] = Instance.new("TextLabel", G2L["e"]);
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["TextSize"] = 11;
G2L["2d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2d"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["2d"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["2d"]["BackgroundTransparency"] = 1;
G2L["2d"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Text"] = [[SINCE 2025]];
G2L["2d"]["Name"] = [[NAMEHUB25]];
G2L["2d"]["Position"] = UDim2.new(0.02917, 0, 0.04742, 0);


-- StarterGui.TestTrojan.MainUi.HOME.NAMEHUB25
G2L["2e"] = Instance.new("TextLabel", G2L["e"]);
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["TextSize"] = 14;
G2L["2e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2e"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["2e"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["2e"]["BackgroundTransparency"] = 1;
G2L["2e"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Text"] = [[TROJAN WARE]];
G2L["2e"]["Name"] = [[NAMEHUB25]];
G2L["2e"]["Position"] = UDim2.new(0.02917, 0, 0.00398, 0);


-- StarterGui.TestTrojan.MainUi.MAIN
G2L["2f"] = Instance.new("Frame", G2L["2"]);
G2L["2f"]["Visible"] = false;
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["Size"] = UDim2.new(0, 525, 0, 338);
G2L["2f"]["Position"] = UDim2.new(-0.00045, 0, -0.00698, 0);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["Name"] = [[MAIN]];
G2L["2f"]["BackgroundTransparency"] = 1;


-- StarterGui.TestTrojan.MainUi.MAIN.maintabframe
G2L["30"] = Instance.new("Frame", G2L["2f"]);
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["30"]["Size"] = UDim2.new(0, 492, 0, 287);
G2L["30"]["Position"] = UDim2.new(0.02917, 0, 0.11594, 0);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Name"] = [[maintabframe]];
G2L["30"]["BackgroundTransparency"] = 0.4;


-- StarterGui.TestTrojan.MainUi.MAIN.maintabframe.UICorner
G2L["31"] = Instance.new("UICorner", G2L["30"]);



-- StarterGui.TestTrojan.MainUi.MAIN.maintabframe.UIGradient
G2L["32"] = Instance.new("UIGradient", G2L["30"]);



-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton2
G2L["33"] = Instance.new("CanvasGroup", G2L["2f"]);
G2L["33"]["Size"] = UDim2.new(0.06379, 0, 0.12045, 0);
G2L["33"]["Position"] = UDim2.new(0.39918, 0, 0.22464, 0);
G2L["33"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["33"]["Name"] = [[ToggleButton2]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton2.UICorner
G2L["34"] = Instance.new("UICorner", G2L["33"]);
G2L["34"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton2.UIAspectRatioConstraint
G2L["35"] = Instance.new("UIAspectRatioConstraint", G2L["33"]);
G2L["35"]["AspectRatio"] = 2;


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton2.OvalFrame
G2L["36"] = Instance.new("Frame", G2L["33"]);
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["36"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["36"]["Name"] = [[OvalFrame]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton2.OvalFrame.Circle
G2L["37"] = Instance.new("Frame", G2L["36"]);
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["37"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["37"]["Name"] = [[Circle]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton2.OvalFrame.Circle.UICorner
G2L["38"] = Instance.new("UICorner", G2L["37"]);
G2L["38"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton2.OvalFrame.Circle.OffDisplay
G2L["39"] = Instance.new("Frame", G2L["37"]);
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(163, 166, 171);
G2L["39"]["Size"] = UDim2.new(2, 0, 1, 0);
G2L["39"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["39"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["39"]["Name"] = [[OffDisplay]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton2.OvalFrame.Circle.OnDisplay
G2L["3a"] = Instance.new("Frame", G2L["37"]);
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(244, 231, 209);
G2L["3a"]["AnchorPoint"] = Vector2.new(0.75, 0);
G2L["3a"]["Size"] = UDim2.new(2, 0, 1, 0);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["3a"]["Name"] = [[OnDisplay]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton2.OvalFrame.Circle.ClickDetector
G2L["3b"] = Instance.new("TextButton", G2L["37"]);
G2L["3b"]["TextSize"] = 14;
G2L["3b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["3b"]["Text"] = [[]];
G2L["3b"]["Name"] = [[ClickDetector]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton2.OvalFrame.Circle.ClickDetector.UICorner
G2L["3c"] = Instance.new("UICorner", G2L["3b"]);
G2L["3c"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton2.OvalFrame.Circle.ClickDetector.LocalScript
G2L["3d"] = Instance.new("LocalScript", G2L["3b"]);



-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton2.ToggleEvent
G2L["3e"] = Instance.new("BindableEvent", G2L["33"]);
G2L["3e"]["Name"] = [[ToggleEvent]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton2.LoadDefaultValue
G2L["3f"] = Instance.new("BindableEvent", G2L["33"]);
G2L["3f"]["Name"] = [[LoadDefaultValue]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton3
G2L["40"] = Instance.new("CanvasGroup", G2L["2f"]);
G2L["40"]["Size"] = UDim2.new(0.06379, 0, 0.12045, 0);
G2L["40"]["Position"] = UDim2.new(0.39918, 0, 0.35507, 0);
G2L["40"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["40"]["Name"] = [[ToggleButton3]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton3.UICorner
G2L["41"] = Instance.new("UICorner", G2L["40"]);
G2L["41"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton3.UIAspectRatioConstraint
G2L["42"] = Instance.new("UIAspectRatioConstraint", G2L["40"]);
G2L["42"]["AspectRatio"] = 2;


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton3.OvalFrame
G2L["43"] = Instance.new("Frame", G2L["40"]);
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["43"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["43"]["Name"] = [[OvalFrame]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton3.OvalFrame.Circle
G2L["44"] = Instance.new("Frame", G2L["43"]);
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["44"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["44"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["44"]["Name"] = [[Circle]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton3.OvalFrame.Circle.UICorner
G2L["45"] = Instance.new("UICorner", G2L["44"]);
G2L["45"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton3.OvalFrame.Circle.OffDisplay
G2L["46"] = Instance.new("Frame", G2L["44"]);
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(163, 166, 171);
G2L["46"]["Size"] = UDim2.new(2, 0, 1, 0);
G2L["46"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["46"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["46"]["Name"] = [[OffDisplay]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton3.OvalFrame.Circle.OnDisplay
G2L["47"] = Instance.new("Frame", G2L["44"]);
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(0, 171, 0);
G2L["47"]["AnchorPoint"] = Vector2.new(0.75, 0);
G2L["47"]["Size"] = UDim2.new(2, 0, 1, 0);
G2L["47"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["47"]["Name"] = [[OnDisplay]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton3.OvalFrame.Circle.ClickDetector
G2L["48"] = Instance.new("TextButton", G2L["44"]);
G2L["48"]["TextSize"] = 14;
G2L["48"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["48"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["48"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["48"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["48"]["Text"] = [[]];
G2L["48"]["Name"] = [[ClickDetector]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton3.OvalFrame.Circle.ClickDetector.UICorner
G2L["49"] = Instance.new("UICorner", G2L["48"]);
G2L["49"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton3.OvalFrame.Circle.ClickDetector.LocalScript
G2L["4a"] = Instance.new("LocalScript", G2L["48"]);



-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton3.ToggleEvent
G2L["4b"] = Instance.new("BindableEvent", G2L["40"]);
G2L["4b"]["Name"] = [[ToggleEvent]];


-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton3.LoadDefaultValue
G2L["4c"] = Instance.new("BindableEvent", G2L["40"]);
G2L["4c"]["Name"] = [[LoadDefaultValue]];


-- StarterGui.TestTrojan.MainUi.MAIN.NAMEHUB25
G2L["4d"] = Instance.new("TextLabel", G2L["2f"]);
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["TextSize"] = 14;
G2L["4d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4d"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["4d"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["4d"]["BackgroundTransparency"] = 1;
G2L["4d"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["Text"] = [[GAMENAME]];
G2L["4d"]["Name"] = [[NAMEHUB25]];
G2L["4d"]["Position"] = UDim2.new(0.22727, 0, 0.00398, 0);


-- StarterGui.TestTrojan.MainUi.MAIN.NAMEHUB25
G2L["4e"] = Instance.new("TextLabel", G2L["2f"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["TextSize"] = 11;
G2L["4e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4e"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4e"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["4e"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["4e"]["BackgroundTransparency"] = 1;
G2L["4e"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["Text"] = [[SINCE 2025]];
G2L["4e"]["Name"] = [[NAMEHUB25]];
G2L["4e"]["Position"] = UDim2.new(0.02917, 0, 0.04742, 0);


-- StarterGui.TestTrojan.MainUi.MAIN.NAMEHUB25
G2L["4f"] = Instance.new("TextLabel", G2L["2f"]);
G2L["4f"]["BorderSizePixel"] = 0;
G2L["4f"]["TextSize"] = 14;
G2L["4f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4f"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4f"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["4f"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["4f"]["BackgroundTransparency"] = 1;
G2L["4f"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["4f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4f"]["Text"] = [[TROJAN WARE]];
G2L["4f"]["Name"] = [[NAMEHUB25]];
G2L["4f"]["Position"] = UDim2.new(0.02917, 0, 0.00398, 0);


-- StarterGui.TestTrojan.MainUi.MAIN.Section
G2L["50"] = Instance.new("Frame", G2L["2f"]);
G2L["50"]["Visible"] = false;
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(244, 231, 209);
G2L["50"]["Size"] = UDim2.new(0, 532, 0, 47);
G2L["50"]["Position"] = UDim2.new(-0.01296, 5, -0.09446, -36);
G2L["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["Name"] = [[Section]];


-- StarterGui.TestTrojan.MainUi.MAIN.Section.UICorner
G2L["51"] = Instance.new("UICorner", G2L["50"]);



-- StarterGui.TestTrojan.MainUi.MAIN.Section.InnerFade
G2L["52"] = Instance.new("Frame", G2L["50"]);
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["52"]["Size"] = UDim2.new(0, 552, 0, 59);
G2L["52"]["Position"] = UDim2.new(-0.02068, 0, -0.11627, 0);
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Name"] = [[InnerFade]];
G2L["52"]["BackgroundTransparency"] = 0.5;


-- StarterGui.TestTrojan.MainUi.MAIN.Section.InnerFade.UICorner
G2L["53"] = Instance.new("UICorner", G2L["52"]);



-- StarterGui.TestTrojan.MainUi.MAIN.Section.InnerFade.UIGradient
G2L["54"] = Instance.new("UIGradient", G2L["52"]);



-- StarterGui.TestTrojan.MainUi.animation
G2L["55"] = Instance.new("LocalScript", G2L["2"]);
G2L["55"]["Name"] = [[animation]];


-- StarterGui.TestTrojan.MainUi.dragscript
G2L["56"] = Instance.new("LocalScript", G2L["2"]);
G2L["56"]["Name"] = [[dragscript]];


-- StarterGui.TestTrojan.MainUi.MISC
G2L["57"] = Instance.new("Frame", G2L["2"]);
G2L["57"]["Visible"] = false;
G2L["57"]["BorderSizePixel"] = 0;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["Size"] = UDim2.new(0, 525, 0, 338);
G2L["57"]["Position"] = UDim2.new(-0.00045, 0, -0.00698, 0);
G2L["57"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["57"]["Name"] = [[MISC]];
G2L["57"]["BackgroundTransparency"] = 1;


-- StarterGui.TestTrojan.MainUi.MISC.UICorner
G2L["58"] = Instance.new("UICorner", G2L["57"]);



-- StarterGui.TestTrojan.MainUi.MISC.NAMEHUB25
G2L["59"] = Instance.new("TextLabel", G2L["57"]);
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["TextSize"] = 14;
G2L["59"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["59"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["59"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["59"]["BackgroundTransparency"] = 1;
G2L["59"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["Text"] = [[TROJAN WARE]];
G2L["59"]["Name"] = [[NAMEHUB25]];
G2L["59"]["Position"] = UDim2.new(0.02917, 0, 0.00398, 0);


-- StarterGui.TestTrojan.MainUi.MISC.NAMEHUB25
G2L["5a"] = Instance.new("TextLabel", G2L["57"]);
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["TextSize"] = 14;
G2L["5a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5a"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5a"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["5a"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["5a"]["BackgroundTransparency"] = 1;
G2L["5a"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["5a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5a"]["Text"] = [[GAMENAME]];
G2L["5a"]["Name"] = [[NAMEHUB25]];
G2L["5a"]["Position"] = UDim2.new(0.22727, 0, 0.00398, 0);


-- StarterGui.TestTrojan.MainUi.MISC.NAMEHUB25
G2L["5b"] = Instance.new("TextLabel", G2L["57"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["TextSize"] = 11;
G2L["5b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5b"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["5b"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["5b"]["BackgroundTransparency"] = 1;
G2L["5b"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Text"] = [[SINCE 2025]];
G2L["5b"]["Name"] = [[NAMEHUB25]];
G2L["5b"]["Position"] = UDim2.new(0.02917, 0, 0.04742, 0);


-- StarterGui.TestTrojan.MainUi.MISC.TextLabel
G2L["5c"] = Instance.new("TextLabel", G2L["57"]);
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["TextSize"] = 14;
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["BackgroundTransparency"] = 1;
G2L["5c"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["Text"] = [[MISC TAB PROGGRESS    :     1%]];
G2L["5c"]["Position"] = UDim2.new(0.3786, 0, 0.42754, 0);


-- StarterGui.TestTrojan.MainUi.CONFIG
G2L["5d"] = Instance.new("Frame", G2L["2"]);
G2L["5d"]["Visible"] = false;
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["Size"] = UDim2.new(0, 525, 0, 328);
G2L["5d"]["Position"] = UDim2.new(-0.00045, 0, -0.00698, 0);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Name"] = [[CONFIG]];
G2L["5d"]["BackgroundTransparency"] = 1;


-- StarterGui.TestTrojan.MainUi.CONFIG.TextLabel
G2L["5e"] = Instance.new("TextLabel", G2L["5d"]);
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["TextSize"] = 14;
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["BackgroundTransparency"] = 1;
G2L["5e"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["Text"] = [[CONFIG TAB PROGGRESS    :     1%]];
G2L["5e"]["Position"] = UDim2.new(0.40741, 0, 0.42007, 0);


-- StarterGui.TestTrojan.MainUi.CONFIG.UICorner
G2L["5f"] = Instance.new("UICorner", G2L["5d"]);



-- StarterGui.TestTrojan.MainUi.CONFIG.TextLabel
G2L["60"] = Instance.new("TextLabel", G2L["5d"]);
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["TextSize"] = 11;
G2L["60"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["60"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["60"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["60"]["BackgroundTransparency"] = 1;
G2L["60"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Text"] = [[SINCE 2025]];
G2L["60"]["Position"] = UDim2.new(0.02917, 0, 0.04742, 0);


-- StarterGui.TestTrojan.MainUi.CONFIG.TextLabel
G2L["61"] = Instance.new("TextLabel", G2L["5d"]);
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["TextSize"] = 14;
G2L["61"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["61"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["61"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["61"]["BackgroundTransparency"] = 1;
G2L["61"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Text"] = [[GAMENAME]];
G2L["61"]["Position"] = UDim2.new(0.22727, 0, 0.00398, 0);


-- StarterGui.TestTrojan.MainUi.CONFIG.TextLabel
G2L["62"] = Instance.new("TextLabel", G2L["5d"]);
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["TextSize"] = 14;
G2L["62"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["62"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["62"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["62"]["BackgroundTransparency"] = 1;
G2L["62"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Text"] = [[TROJAN WARE]];
G2L["62"]["Position"] = UDim2.new(0.02917, 0, 0.00398, 0);


-- StarterGui.TestTrojan.MainUi.IDK
G2L["63"] = Instance.new("Frame", G2L["2"]);
G2L["63"]["Visible"] = false;
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["Size"] = UDim2.new(0, 525, 0, 338);
G2L["63"]["Position"] = UDim2.new(-0.00045, 0, -0.00698, 0);
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["Name"] = [[IDK]];
G2L["63"]["BackgroundTransparency"] = 1;


-- StarterGui.TestTrojan.MainUi.IDK.UICorner
G2L["64"] = Instance.new("UICorner", G2L["63"]);



-- StarterGui.TestTrojan.MainUi.IDK.TextLabel
G2L["65"] = Instance.new("TextLabel", G2L["63"]);
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["TextSize"] = 14;
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["65"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["65"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["BackgroundTransparency"] = 1;
G2L["65"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["Text"] = [[.... TAB PROGGRESS    :     1%]];
G2L["65"]["Position"] = UDim2.new(0.40741, 0, 0.42007, 0);


-- StarterGui.TestTrojan.MainUi.IDK.NAMEHUB25
G2L["66"] = Instance.new("TextLabel", G2L["63"]);
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["TextSize"] = 11;
G2L["66"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["66"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["66"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["66"]["BackgroundTransparency"] = 1;
G2L["66"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["66"]["Text"] = [[SINCE 2025]];
G2L["66"]["Name"] = [[NAMEHUB25]];
G2L["66"]["Position"] = UDim2.new(0.02917, 0, 0.04742, 0);


-- StarterGui.TestTrojan.MainUi.IDK.NAMEHUB25
G2L["67"] = Instance.new("TextLabel", G2L["63"]);
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["TextSize"] = 14;
G2L["67"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["67"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["67"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["67"]["BackgroundTransparency"] = 1;
G2L["67"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["Text"] = [[GAMENAME]];
G2L["67"]["Name"] = [[NAMEHUB25]];
G2L["67"]["Position"] = UDim2.new(0.22727, 0, 0.00398, 0);


-- StarterGui.TestTrojan.MainUi.IDK.NAMEHUB25
G2L["68"] = Instance.new("TextLabel", G2L["63"]);
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["TextSize"] = 14;
G2L["68"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["68"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["68"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["68"]["BackgroundTransparency"] = 1;
G2L["68"]["Size"] = UDim2.new(0, 180, 0, 19);
G2L["68"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["68"]["Text"] = [[TROJAN WARE]];
G2L["68"]["Name"] = [[NAMEHUB25]];
G2L["68"]["Position"] = UDim2.new(0.02917, 0, 0.00398, 0);


-- StarterGui.TestTrojan.MainUi.FadeOverlay
G2L["69"] = Instance.new("Frame", G2L["2"]);
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(47, 47, 47);
G2L["69"]["Size"] = UDim2.new(0, 525, 0, 338);
G2L["69"]["Position"] = UDim2.new(-0.00045, 0, -0.00698, 0);
G2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["Name"] = [[FadeOverlay]];
G2L["69"]["BackgroundTransparency"] = 1;


-- StarterGui.TestTrojan.MainUi.FadeOverlay.UICorner
G2L["6a"] = Instance.new("UICorner", G2L["69"]);



-- StarterGui.TestTrojan.MainUi.circledecoration
G2L["6b"] = Instance.new("Frame", G2L["2"]);
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6b"]["Size"] = UDim2.new(0, 10, 0, 12);
G2L["6b"]["Position"] = UDim2.new(0.96756, 0, 0.0129, -3);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Name"] = [[circledecoration]];
G2L["6b"]["BackgroundTransparency"] = 0.5;


-- StarterGui.TestTrojan.MainUi.circledecoration.UICorner
G2L["6c"] = Instance.new("UICorner", G2L["6b"]);



-- StarterGui.TestTrojan.MainUi.circledecoration
G2L["6d"] = Instance.new("Frame", G2L["2"]);
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["Size"] = UDim2.new(0, 10, 0, 12);
G2L["6d"]["Position"] = UDim2.new(0.96523, -15, 0.0129, -3);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["Name"] = [[circledecoration]];
G2L["6d"]["BackgroundTransparency"] = 0.5;


-- StarterGui.TestTrojan.MainUi.circledecoration.UICorner
G2L["6e"] = Instance.new("UICorner", G2L["6d"]);



-- StarterGui.TestTrojan.MainUi.circledecoration
G2L["6f"] = Instance.new("Frame", G2L["2"]);
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6f"]["Size"] = UDim2.new(0, 10, 0, 12);
G2L["6f"]["Position"] = UDim2.new(0.96289, -30, 0.0129, -3);
G2L["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Name"] = [[circledecoration]];
G2L["6f"]["BackgroundTransparency"] = 0.5;


-- StarterGui.TestTrojan.MainUi.circledecoration.UICorner
G2L["70"] = Instance.new("UICorner", G2L["6f"]);



-- StarterGui.TestTrojan.MainUi.list
G2L["71"] = Instance.new("Frame", G2L["2"]);
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(244, 231, 209);
G2L["71"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["71"]["Size"] = UDim2.new(0, 94, 0, 339);
G2L["71"]["Position"] = UDim2.new(-0.1315, -3, 0.36868, 44);
G2L["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["Name"] = [[list]];
G2L["71"]["BackgroundTransparency"] = 0.1;


-- StarterGui.TestTrojan.MainUi.list.InnerFade
G2L["72"] = Instance.new("Frame", G2L["71"]);
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["72"]["Size"] = UDim2.new(0, 316, 0, 0);
G2L["72"]["Position"] = UDim2.new(-0.02171, 0, 1.03875, 0);
G2L["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["Name"] = [[InnerFade]];
G2L["72"]["BackgroundTransparency"] = 0.5;


-- StarterGui.TestTrojan.MainUi.list.InnerFade.UICorner
G2L["73"] = Instance.new("UICorner", G2L["72"]);



-- StarterGui.TestTrojan.MainUi.list.InnerFade.UIGradient
G2L["74"] = Instance.new("UIGradient", G2L["72"]);



-- StarterGui.TestTrojan.MainUi.list.UICorner
G2L["75"] = Instance.new("UICorner", G2L["71"]);



-- StarterGui.TestTrojan.MainUi.list.list2
G2L["76"] = Instance.new("Frame", G2L["71"]);
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["76"]["Size"] = UDim2.new(0, 92, 0, 339);
G2L["76"]["Position"] = UDim2.new(0.43471, -40, -0.00147, 0);
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["Name"] = [[list2]];
G2L["76"]["BackgroundTransparency"] = 0.4;


-- StarterGui.TestTrojan.MainUi.list.list2.UICorner
G2L["77"] = Instance.new("UICorner", G2L["76"]);



-- StarterGui.TestTrojan.MainUi.list.list2.UIGradient
G2L["78"] = Instance.new("UIGradient", G2L["76"]);



-- StarterGui.TestTrojan.MainUi.list.list2.MiscButton
G2L["79"] = Instance.new("ImageButton", G2L["76"]);
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["79"]["Image"] = [[rbxassetid://112896592265413]];
G2L["79"]["Size"] = UDim2.new(0, 23, 0, 24);
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Name"] = [[MiscButton]];
G2L["79"]["Position"] = UDim2.new(0.08878, 0, 0.44398, -11);


-- StarterGui.TestTrojan.MainUi.list.list2.MiscButton.UICorner
G2L["7a"] = Instance.new("UICorner", G2L["79"]);



-- StarterGui.TestTrojan.MainUi.list.list2.MiscButton.TextLabel
G2L["7b"] = Instance.new("TextLabel", G2L["79"]);
G2L["7b"]["BorderSizePixel"] = 0;
G2L["7b"]["TextSize"] = 11;
G2L["7b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7b"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["7b"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["7b"]["BackgroundTransparency"] = 1;
G2L["7b"]["Size"] = UDim2.new(0, 54, 0, 17);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["Text"] = [[MISC]];
G2L["7b"]["Position"] = UDim2.new(1.225, 0, 0.12281, 0);


-- StarterGui.TestTrojan.MainUi.list.list2.IdkButton
G2L["7c"] = Instance.new("ImageButton", G2L["76"]);
G2L["7c"]["BorderSizePixel"] = 0;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7c"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["7c"]["Size"] = UDim2.new(0, 23, 0, 24);
G2L["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7c"]["Name"] = [[IdkButton]];
G2L["7c"]["Position"] = UDim2.new(0.08878, 0, 0.64022, -22);


-- StarterGui.TestTrojan.MainUi.list.list2.IdkButton.UICorner
G2L["7d"] = Instance.new("UICorner", G2L["7c"]);



-- StarterGui.TestTrojan.MainUi.list.list2.IdkButton.TextLabel
G2L["7e"] = Instance.new("TextLabel", G2L["7c"]);
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["TextSize"] = 11;
G2L["7e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7e"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["7e"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["7e"]["BackgroundTransparency"] = 1;
G2L["7e"]["Size"] = UDim2.new(0, 54, 0, 17);
G2L["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["Text"] = [[IDK]];
G2L["7e"]["Position"] = UDim2.new(1.225, 0, 0.12281, 0);


-- StarterGui.TestTrojan.MainUi.list.list2.MainButton
G2L["7f"] = Instance.new("ImageButton", G2L["76"]);
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["Image"] = [[rbxassetid://71021086762099]];
G2L["7f"]["Size"] = UDim2.new(0, 23, 0, 24);
G2L["7f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7f"]["Name"] = [[MainButton]];
G2L["7f"]["Position"] = UDim2.new(0.08878, 0, 0.23528, 8);


-- StarterGui.TestTrojan.MainUi.list.list2.MainButton.UICorner
G2L["80"] = Instance.new("UICorner", G2L["7f"]);



-- StarterGui.TestTrojan.MainUi.list.list2.MainButton.TextLabel
G2L["81"] = Instance.new("TextLabel", G2L["7f"]);
G2L["81"]["BorderSizePixel"] = 0;
G2L["81"]["TextSize"] = 11;
G2L["81"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["81"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["81"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["81"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["81"]["BackgroundTransparency"] = 1;
G2L["81"]["Size"] = UDim2.new(0, 54, 0, 17);
G2L["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["Text"] = [[MAIN]];
G2L["81"]["Position"] = UDim2.new(1.225, 0, 0.12281, 0);


-- StarterGui.TestTrojan.MainUi.list.list2.ConfigButton
G2L["82"] = Instance.new("ImageButton", G2L["76"]);
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["82"]["Image"] = [[rbxassetid://126496417047546]];
G2L["82"]["Size"] = UDim2.new(0, 23, 0, 24);
G2L["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["Name"] = [[ConfigButton]];
G2L["82"]["Position"] = UDim2.new(0.08878, 0, 0.81937, -29);


-- StarterGui.TestTrojan.MainUi.list.list2.ConfigButton.UICorner
G2L["83"] = Instance.new("UICorner", G2L["82"]);



-- StarterGui.TestTrojan.MainUi.list.list2.ConfigButton.TextLabel
G2L["84"] = Instance.new("TextLabel", G2L["82"]);
G2L["84"]["BorderSizePixel"] = 0;
G2L["84"]["TextSize"] = 11;
G2L["84"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["84"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["84"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["84"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["84"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["84"]["BackgroundTransparency"] = 1;
G2L["84"]["Size"] = UDim2.new(0, 54, 0, 17);
G2L["84"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["84"]["Text"] = [[CONFIG]];
G2L["84"]["Position"] = UDim2.new(1.225, 0, 0.12281, 0);


-- StarterGui.TestTrojan.MainUi.list.list2.HomeButton
G2L["85"] = Instance.new("ImageButton", G2L["76"]);
G2L["85"]["BorderSizePixel"] = 0;
G2L["85"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["Image"] = [[rbxassetid://138376539454145]];
G2L["85"]["Size"] = UDim2.new(0, 23, 0, 24);
G2L["85"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["85"]["Name"] = [[HomeButton]];
G2L["85"]["Position"] = UDim2.new(0.11108, 0, 0.02976, 28);


-- StarterGui.TestTrojan.MainUi.list.list2.HomeButton.UICorner
G2L["86"] = Instance.new("UICorner", G2L["85"]);



-- StarterGui.TestTrojan.MainUi.list.list2.HomeButton.TextLabel
G2L["87"] = Instance.new("TextLabel", G2L["85"]);
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["TextSize"] = 11;
G2L["87"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["87"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["87"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["87"]["BackgroundTransparency"] = 1;
G2L["87"]["Size"] = UDim2.new(0, 54, 0, 17);
G2L["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Text"] = [[HOME]];
G2L["87"]["Position"] = UDim2.new(1.225, 0, 0.12281, 11);


-- StarterGui.TestTrojan.MainUi.list.list2.ImageLabel
G2L["88"] = Instance.new("ImageLabel", G2L["76"]);
G2L["88"]["BorderSizePixel"] = 0;
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["88"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["88"]["Image"] = [[rbxassetid://92138690758194]];
G2L["88"]["Size"] = UDim2.new(0, 29, 0, 27);
G2L["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["BackgroundTransparency"] = 1;
G2L["88"]["Position"] = UDim2.new(0.02211, 0, 0.00963, 0);


-- StarterGui.TestTrojan.MainUi.list.list2.ImageLabel.UICorner
G2L["89"] = Instance.new("UICorner", G2L["88"]);



-- StarterGui.TestTrojan.MainUi.list.list2.InnerFade
G2L["8a"] = Instance.new("Frame", G2L["76"]);
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["8a"]["Size"] = UDim2.new(0, 112, 0, 362);
G2L["8a"]["Position"] = UDim2.new(-0.10724, 0, -0.03557, 0);
G2L["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["Name"] = [[InnerFade]];
G2L["8a"]["BackgroundTransparency"] = 0.5;


-- StarterGui.TestTrojan.MainUi.list.list2.InnerFade.UICorner
G2L["8b"] = Instance.new("UICorner", G2L["8a"]);



-- StarterGui.TestTrojan.MainUi.list.list2.InnerFade.UIGradient
G2L["8c"] = Instance.new("UIGradient", G2L["8a"]);



-- StarterGui.TestTrojan.MainUi.list.list2.InnerFade.OuterFade
G2L["8d"] = Instance.new("Frame", G2L["8a"]);
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(155, 144, 124);
G2L["8d"]["Size"] = UDim2.new(0, 128, 0, 379);
G2L["8d"]["Position"] = UDim2.new(-0.06865, 0, -0.02463, 0);
G2L["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["Name"] = [[OuterFade]];
G2L["8d"]["BackgroundTransparency"] = 0.7;


-- StarterGui.TestTrojan.MainUi.list.list2.InnerFade.OuterFade.UICorner
G2L["8e"] = Instance.new("UICorner", G2L["8d"]);



-- StarterGui.TestTrojan.Notify2
G2L["8f"] = Instance.new("Frame", G2L["1"]);
G2L["8f"]["Visible"] = false;
G2L["8f"]["BorderSizePixel"] = 0;
G2L["8f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8f"]["Size"] = UDim2.new(0, 246, 0, 163);
G2L["8f"]["Position"] = UDim2.new(0.62727, 0, 0.70082, 0);
G2L["8f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8f"]["Name"] = [[Notify2]];


-- StarterGui.TestTrojan.Notify2.UICorner
G2L["90"] = Instance.new("UICorner", G2L["8f"]);



-- StarterGui.TestTrojan.Notify2.InnerFade
G2L["91"] = Instance.new("Frame", G2L["8f"]);
G2L["91"]["BorderSizePixel"] = 0;
G2L["91"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["91"]["Size"] = UDim2.new(0, 267, 0, 181);
G2L["91"]["Position"] = UDim2.new(-0.04271, 0, -0.04378, 0);
G2L["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["91"]["Name"] = [[InnerFade]];
G2L["91"]["BackgroundTransparency"] = 0.5;


-- StarterGui.TestTrojan.Notify2.InnerFade.UICorner
G2L["92"] = Instance.new("UICorner", G2L["91"]);



-- StarterGui.TestTrojan.Notify2.InnerFade.UIGradient
G2L["93"] = Instance.new("UIGradient", G2L["91"]);



-- StarterGui.TestTrojan.Notify2.InnerFade.OuterFade
G2L["94"] = Instance.new("Frame", G2L["91"]);
G2L["94"]["BorderSizePixel"] = 0;
G2L["94"]["BackgroundColor3"] = Color3.fromRGB(155, 144, 124);
G2L["94"]["Size"] = UDim2.new(0, 286, 0, 196);
G2L["94"]["Position"] = UDim2.new(-0.03866, 0, -0.04431, 0);
G2L["94"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["94"]["Name"] = [[OuterFade]];
G2L["94"]["BackgroundTransparency"] = 0.7;


-- StarterGui.TestTrojan.Notify2.InnerFade.OuterFade.UICorner
G2L["95"] = Instance.new("UICorner", G2L["94"]);



-- StarterGui.TestTrojan.Notify2.FadeOverlay
G2L["96"] = Instance.new("Frame", G2L["8f"]);
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(47, 47, 47);
G2L["96"]["Size"] = UDim2.new(0, 246, 0, 156);
G2L["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["Name"] = [[FadeOverlay]];
G2L["96"]["BackgroundTransparency"] = 1;


-- StarterGui.TestTrojan.Notify2.FadeOverlay.UICorner
G2L["97"] = Instance.new("UICorner", G2L["96"]);



-- StarterGui.TestTrojan.Notify2.TextLabel
G2L["98"] = Instance.new("TextLabel", G2L["8f"]);
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["TextSize"] = 14;
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(155, 144, 124);
G2L["98"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["98"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["BackgroundTransparency"] = 1;
G2L["98"]["Size"] = UDim2.new(0, 246, 0, 122);
G2L["98"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["Text"] = [[PLEASE SUPPORT US ON DISCORD]];
G2L["98"]["Position"] = UDim2.new(0.00407, 0, 0.09816, 0);


-- StarterGui.TestTrojan.Notify2.TextLabel.UICorner
G2L["99"] = Instance.new("UICorner", G2L["98"]);



-- StarterGui.TestTrojan.Notify2.CopyButton
G2L["9a"] = Instance.new("TextButton", G2L["8f"]);
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["TextSize"] = 14;
G2L["9a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["9a"]["Size"] = UDim2.new(0, 92, 0, 37);
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["Text"] = [[COPY]];
G2L["9a"]["Name"] = [[CopyButton]];
G2L["9a"]["Position"] = UDim2.new(0.03926, 0, 0.69487, 0);


-- StarterGui.TestTrojan.Notify2.CopyButton.UICorner
G2L["9b"] = Instance.new("UICorner", G2L["9a"]);



-- StarterGui.TestTrojan.Notify2.CopyButton.InnerFade
G2L["9c"] = Instance.new("Frame", G2L["9a"]);
G2L["9c"]["BorderSizePixel"] = 0;
G2L["9c"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["9c"]["Size"] = UDim2.new(0, 103, 0, 45);
G2L["9c"]["Position"] = UDim2.new(-0.04272, 0, -0.04308, 0);
G2L["9c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9c"]["Name"] = [[InnerFade]];
G2L["9c"]["BackgroundTransparency"] = 0.5;


-- StarterGui.TestTrojan.Notify2.CopyButton.InnerFade.UICorner
G2L["9d"] = Instance.new("UICorner", G2L["9c"]);



-- StarterGui.TestTrojan.Notify2.CopyButton.InnerFade.UIGradient
G2L["9e"] = Instance.new("UIGradient", G2L["9c"]);



-- StarterGui.TestTrojan.Notify2.CopyButton.InnerFade.OuterFade
G2L["9f"] = Instance.new("Frame", G2L["9c"]);
G2L["9f"]["BorderSizePixel"] = 0;
G2L["9f"]["BackgroundColor3"] = Color3.fromRGB(155, 144, 124);
G2L["9f"]["Size"] = UDim2.new(0, 112, 0, 48);
G2L["9f"]["Position"] = UDim2.new(-0.03914, 0, -0.08062, 0);
G2L["9f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9f"]["Name"] = [[OuterFade]];
G2L["9f"]["BackgroundTransparency"] = 0.7;


-- StarterGui.TestTrojan.Notify2.CopyButton.InnerFade.OuterFade.UICorner
G2L["a0"] = Instance.new("UICorner", G2L["9f"]);



-- StarterGui.TestTrojan.Notify2.CopyButton.CopyScript
G2L["a1"] = Instance.new("LocalScript", G2L["9a"]);
G2L["a1"]["Name"] = [[CopyScript]];


-- StarterGui.TestTrojan.Notify2.CloseButton
G2L["a2"] = Instance.new("TextButton", G2L["8f"]);
G2L["a2"]["BorderSizePixel"] = 0;
G2L["a2"]["TextSize"] = 14;
G2L["a2"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["a2"]["Size"] = UDim2.new(0, 94, 0, 37);
G2L["a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a2"]["Text"] = [[CLOSE]];
G2L["a2"]["Name"] = [[CloseButton]];
G2L["a2"]["Position"] = UDim2.new(0.53884, 0, 0.69487, 0);


-- StarterGui.TestTrojan.Notify2.CloseButton.UICorner
G2L["a3"] = Instance.new("UICorner", G2L["a2"]);



-- StarterGui.TestTrojan.Notify2.CloseButton.InnerFade
G2L["a4"] = Instance.new("Frame", G2L["a2"]);
G2L["a4"]["BorderSizePixel"] = 0;
G2L["a4"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["a4"]["Size"] = UDim2.new(0, 106, 0, 45);
G2L["a4"]["Position"] = UDim2.new(-0.00953, 0, -0.04308, 0);
G2L["a4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a4"]["Name"] = [[InnerFade]];
G2L["a4"]["BackgroundTransparency"] = 0.5;


-- StarterGui.TestTrojan.Notify2.CloseButton.InnerFade.UICorner
G2L["a5"] = Instance.new("UICorner", G2L["a4"]);



-- StarterGui.TestTrojan.Notify2.CloseButton.InnerFade.UIGradient
G2L["a6"] = Instance.new("UIGradient", G2L["a4"]);



-- StarterGui.TestTrojan.Notify2.CloseButton.InnerFade.OuterFade
G2L["a7"] = Instance.new("Frame", G2L["a4"]);
G2L["a7"]["BorderSizePixel"] = 0;
G2L["a7"]["BackgroundColor3"] = Color3.fromRGB(155, 144, 124);
G2L["a7"]["Size"] = UDim2.new(0, 112, 0, 48);
G2L["a7"]["Position"] = UDim2.new(-0.08769, 0, -0.10284, 0);
G2L["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a7"]["Name"] = [[OuterFade]];
G2L["a7"]["BackgroundTransparency"] = 0.7;


-- StarterGui.TestTrojan.Notify2.CloseButton.InnerFade.OuterFade.UICorner
G2L["a8"] = Instance.new("UICorner", G2L["a7"]);



-- StarterGui.TestTrojan.Notify2.CloseButton.CloseScript
G2L["a9"] = Instance.new("LocalScript", G2L["a2"]);
G2L["a9"]["Name"] = [[CloseScript]];


-- StarterGui.TestTrojan.Notify2.ImageLabel
G2L["aa"] = Instance.new("ImageLabel", G2L["8f"]);
G2L["aa"]["BorderSizePixel"] = 0;
G2L["aa"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["aa"]["ImageTransparency"] = 0.01;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["aa"]["Image"] = [[rbxassetid://127398033419250]];
G2L["aa"]["Size"] = UDim2.new(0, 26, 0, 27);
G2L["aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["aa"]["Position"] = UDim2.new(0.02263, 0, 0.05241, 0);


-- StarterGui.TestTrojan.Notify2.ImageLabel.UICorner
G2L["ab"] = Instance.new("UICorner", G2L["aa"]);



-- StarterGui.TestTrojan.Notify2.ImageLabel.TextLabel
G2L["ac"] = Instance.new("TextLabel", G2L["aa"]);
G2L["ac"]["BorderSizePixel"] = 0;
G2L["ac"]["TextSize"] = 14;
G2L["ac"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ac"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["ac"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ac"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["ac"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["ac"]["BackgroundTransparency"] = 1;
G2L["ac"]["Size"] = UDim2.new(0, 167, 0, 16);
G2L["ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ac"]["Text"] = [[TROJAN WARE]];
G2L["ac"]["Position"] = UDim2.new(1.225, 0, 0, 0);


-- StarterGui.TestTrojan.Notify2.ImageLabel.TextLabel
G2L["ad"] = Instance.new("TextLabel", G2L["aa"]);
G2L["ad"]["BorderSizePixel"] = 0;
G2L["ad"]["TextSize"] = 11;
G2L["ad"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ad"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ad"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["ad"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["ad"]["BackgroundTransparency"] = 1;
G2L["ad"]["Size"] = UDim2.new(0, 167, 0, 16);
G2L["ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ad"]["Text"] = [[SINCE 2025]];
G2L["ad"]["Position"] = UDim2.new(1.225, 0, 0.28947, 0);


-- StarterGui.TestTrojan.Notify2.dragscript
G2L["ae"] = Instance.new("LocalScript", G2L["8f"]);
G2L["ae"]["Name"] = [[dragscript]];


-- StarterGui.TestTrojan.LoadingUi
G2L["af"] = Instance.new("Frame", G2L["1"]);
G2L["af"]["BorderSizePixel"] = 0;
G2L["af"]["BackgroundColor3"] = Color3.fromRGB(244, 231, 209);
G2L["af"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["af"]["Size"] = UDim2.new(0, 338, 0, 198);
G2L["af"]["Position"] = UDim2.new(0.50877, 1, 0.40438, 45);
G2L["af"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["af"]["Name"] = [[LoadingUi]];
G2L["af"]["BackgroundTransparency"] = 0.1;


-- StarterGui.TestTrojan.LoadingUi.ImageLabel
G2L["b0"] = Instance.new("ImageLabel", G2L["af"]);
G2L["b0"]["BorderSizePixel"] = 0;
G2L["b0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["b0"]["Image"] = [[rbxassetid://92138690758194]];
G2L["b0"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b0"]["BackgroundTransparency"] = 0.4;
G2L["b0"]["Position"] = UDim2.new(0.02204, 0, 0.0209, 0);


-- StarterGui.TestTrojan.LoadingUi.ImageLabel.UICorner
G2L["b1"] = Instance.new("UICorner", G2L["b0"]);



-- StarterGui.TestTrojan.LoadingUi.ImageLabel.TextLabel
G2L["b2"] = Instance.new("TextLabel", G2L["b0"]);
G2L["b2"]["BorderSizePixel"] = 0;
G2L["b2"]["TextSize"] = 14;
G2L["b2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b2"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["b2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b2"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["b2"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["b2"]["BackgroundTransparency"] = 1;
G2L["b2"]["Size"] = UDim2.new(0, 167, 0, 16);
G2L["b2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b2"]["Text"] = [[TROJAN WARE]];
G2L["b2"]["Position"] = UDim2.new(1.225, 0, 0, 0);


-- StarterGui.TestTrojan.LoadingUi.ImageLabel.TextLabel
G2L["b3"] = Instance.new("TextLabel", G2L["b0"]);
G2L["b3"]["BorderSizePixel"] = 0;
G2L["b3"]["TextSize"] = 11;
G2L["b3"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b3"]["TextStrokeColor3"] = Color3.fromRGB(125, 73, 44);
G2L["b3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b3"]["FontFace"] = Font.new([[rbxasset://fonts/families/RomanAntique.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["b3"]["TextColor3"] = Color3.fromRGB(125, 73, 44);
G2L["b3"]["BackgroundTransparency"] = 1;
G2L["b3"]["Size"] = UDim2.new(0, 167, 0, 16);
G2L["b3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b3"]["Text"] = [[SINCE 2025]];
G2L["b3"]["Position"] = UDim2.new(1.225, 0, 0.28947, 0);


-- StarterGui.TestTrojan.LoadingUi.InnerFade
G2L["b4"] = Instance.new("Frame", G2L["af"]);
G2L["b4"]["BorderSizePixel"] = 0;
G2L["b4"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["b4"]["Size"] = UDim2.new(0, 353, 0, 0);
G2L["b4"]["Position"] = UDim2.new(-0.02109, 0, 1.03717, 0);
G2L["b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b4"]["Name"] = [[InnerFade]];
G2L["b4"]["BackgroundTransparency"] = 0.5;


-- StarterGui.TestTrojan.LoadingUi.InnerFade.UICorner
G2L["b5"] = Instance.new("UICorner", G2L["b4"]);



-- StarterGui.TestTrojan.LoadingUi.InnerFade.UIGradient
G2L["b6"] = Instance.new("UIGradient", G2L["b4"]);



-- StarterGui.TestTrojan.LoadingUi.InnerFade
G2L["b7"] = Instance.new("Frame", G2L["af"]);
G2L["b7"]["BorderSizePixel"] = 0;
G2L["b7"]["BackgroundColor3"] = Color3.fromRGB(195, 170, 141);
G2L["b7"]["Size"] = UDim2.new(0, 353, 0, 211);
G2L["b7"]["Position"] = UDim2.new(-0.02109, 0, -0.03354, 0);
G2L["b7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b7"]["Name"] = [[InnerFade]];
G2L["b7"]["BackgroundTransparency"] = 0.5;


-- StarterGui.TestTrojan.LoadingUi.InnerFade.UICorner
G2L["b8"] = Instance.new("UICorner", G2L["b7"]);



-- StarterGui.TestTrojan.LoadingUi.InnerFade.UIGradient
G2L["b9"] = Instance.new("UIGradient", G2L["b7"]);



-- StarterGui.TestTrojan.LoadingUi.InnerFade.OuterFade
G2L["ba"] = Instance.new("Frame", G2L["b7"]);
G2L["ba"]["BorderSizePixel"] = 0;
G2L["ba"]["BackgroundColor3"] = Color3.fromRGB(155, 144, 124);
G2L["ba"]["Size"] = UDim2.new(0, 366, 0, 224);
G2L["ba"]["Position"] = UDim2.new(-0.01381, 0, -0.02712, 0);
G2L["ba"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ba"]["Name"] = [[OuterFade]];
G2L["ba"]["BackgroundTransparency"] = 0.7;


-- StarterGui.TestTrojan.LoadingUi.InnerFade.OuterFade.UICorner
G2L["bb"] = Instance.new("UICorner", G2L["ba"]);



-- StarterGui.TestTrojan.LoadingUi.Progress
G2L["bc"] = Instance.new("Frame", G2L["af"]);
G2L["bc"]["SizeConstraint"] = Enum.SizeConstraint.RelativeYY;
G2L["bc"]["BorderSizePixel"] = 0;
G2L["bc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bc"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["bc"]["Size"] = UDim2.new(0.2, 0, 0.2, 0);
G2L["bc"]["Position"] = UDim2.new(0.43769, 0, 0.59898, 0);
G2L["bc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bc"]["Name"] = [[Progress]];
G2L["bc"]["BackgroundTransparency"] = 1;


-- StarterGui.TestTrojan.LoadingUi.Progress.Frame1
G2L["bd"] = Instance.new("Frame", G2L["bc"]);
G2L["bd"]["BorderSizePixel"] = 0;
G2L["bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bd"]["ClipsDescendants"] = true;
G2L["bd"]["Size"] = UDim2.new(0.52525, 0, 1, 0);
G2L["bd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bd"]["Name"] = [[Frame1]];
G2L["bd"]["BackgroundTransparency"] = 1;


-- StarterGui.TestTrojan.LoadingUi.Progress.Frame1.ImageLabel
G2L["be"] = Instance.new("ImageLabel", G2L["bd"]);
G2L["be"]["BorderSizePixel"] = 0;
G2L["be"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["be"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["be"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["be"]["Size"] = UDim2.new(2, 0, 1, 0);
G2L["be"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["be"]["BackgroundTransparency"] = 1;


-- StarterGui.TestTrojan.LoadingUi.Progress.Frame1.ImageLabel.UIGradient
G2L["bf"] = Instance.new("UIGradient", G2L["be"]);
G2L["bf"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 0),NumberSequenceKeypoint.new(0.501, 1),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.TestTrojan.LoadingUi.Progress.Frame2
G2L["c0"] = Instance.new("Frame", G2L["bc"]);
G2L["c0"]["BorderSizePixel"] = 0;
G2L["c0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c0"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["c0"]["ClipsDescendants"] = true;
G2L["c0"]["Size"] = UDim2.new(0.55051, 0, 1, 0);
G2L["c0"]["Position"] = UDim2.new(1.05051, 0, 0, 0);
G2L["c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c0"]["Name"] = [[Frame2]];
G2L["c0"]["BackgroundTransparency"] = 1;


-- StarterGui.TestTrojan.LoadingUi.Progress.Frame2.ImageLabel
G2L["c1"] = Instance.new("ImageLabel", G2L["c0"]);
G2L["c1"]["BorderSizePixel"] = 0;
G2L["c1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c1"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["c1"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["c1"]["Size"] = UDim2.new(2.05051, 0, 1, 0);
G2L["c1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c1"]["BackgroundTransparency"] = 1;
G2L["c1"]["Position"] = UDim2.new(-0.9495, 0, 0, 0);


-- StarterGui.TestTrojan.LoadingUi.Progress.Frame2.ImageLabel.UIGradient
G2L["c2"] = Instance.new("UIGradient", G2L["c1"]);
G2L["c2"]["Rotation"] = 180;
G2L["c2"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 0),NumberSequenceKeypoint.new(0.501, 1),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.TestTrojan.LoadingUi.Progress.Percentage
G2L["c3"] = Instance.new("NumberValue", G2L["bc"]);
G2L["c3"]["Name"] = [[Percentage]];


-- StarterGui.TestTrojan.LoadingUi.Progress.Percentage.ProgressScript
G2L["c4"] = Instance.new("LocalScript", G2L["c3"]);
G2L["c4"]["Name"] = [[ProgressScript]];


-- StarterGui.TestTrojan.LoadingUi.Progress.Percentage.ProgressScript.MissingPartType
G2L["c5"] = Instance.new("StringValue", G2L["c4"]);
G2L["c5"]["Name"] = [[MissingPartType]];
G2L["c5"]["Value"] = [[TransAndColor]];


-- StarterGui.TestTrojan.LoadingUi.Progress.Percentage.ProgressScript.FlipProgress
G2L["c6"] = Instance.new("BoolValue", G2L["c4"]);
G2L["c6"]["Name"] = [[FlipProgress]];


-- StarterGui.TestTrojan.LoadingUi.Progress.Percentage.ProgressScript.TransOfMissingPart
G2L["c7"] = Instance.new("NumberValue", G2L["c4"]);
G2L["c7"]["Name"] = [[TransOfMissingPart]];
G2L["c7"]["Value"] = 0.25;


-- StarterGui.TestTrojan.LoadingUi.Progress.Percentage.ProgressScript.ColorOfMissingPart
G2L["c8"] = Instance.new("Color3Value", G2L["c4"]);
G2L["c8"]["Name"] = [[ColorOfMissingPart]];
G2L["c8"]["Value"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.TestTrojan.LoadingUi.Progress.Percentage.ProgressScript.TransOfPercentPart
G2L["c9"] = Instance.new("NumberValue", G2L["c4"]);
G2L["c9"]["Name"] = [[TransOfPercentPart]];


-- StarterGui.TestTrojan.LoadingUi.Progress.Percentage.ProgressScript.ColorOfPercentPart
G2L["ca"] = Instance.new("Color3Value", G2L["c4"]);
G2L["ca"]["Name"] = [[ColorOfPercentPart]];
G2L["ca"]["Value"] = Color3.fromRGB(155, 144, 124);


-- StarterGui.TestTrojan.LoadingUi.Progress.Percentage.ProgressScript.ImageColor
G2L["cb"] = Instance.new("Color3Value", G2L["c4"]);
G2L["cb"]["Name"] = [[ImageColor]];
G2L["cb"]["Value"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.TestTrojan.LoadingUi.Progress.Percentage.ProgressScript.ImageTrans
G2L["cc"] = Instance.new("NumberValue", G2L["c4"]);
G2L["cc"]["Name"] = [[ImageTrans]];


-- StarterGui.TestTrojan.LoadingUi.Progress.Percentage.ProgressScript.ImageId
G2L["cd"] = Instance.new("StringValue", G2L["c4"]);
G2L["cd"]["Name"] = [[ImageId]];
G2L["cd"]["Value"] = [[3587367081]];


-- StarterGui.TestTrojan.LoadingUi.UICorner
G2L["ce"] = Instance.new("UICorner", G2L["af"]);



-- StarterGui.TestTrojan.LoadsScript
G2L["cf"] = Instance.new("LocalScript", G2L["1"]);
G2L["cf"]["Name"] = [[LoadsScript]];


-- StarterGui.TestTrojan.MainUi.auto name script
local function C_c()
local script = G2L["c"];
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
task.spawn(C_c);
-- StarterGui.TestTrojan.MainUi.auto head pic script
local function C_d()
local script = G2L["d"];
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
task.spawn(C_d);
-- StarterGui.TestTrojan.MainUi.HOME.TextLabel.LocalScript
local function C_2b()
local script = G2L["2b"];
	-- Place in a LocalScript inside a TextLabel
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
	
end;
task.spawn(C_2b);
-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton2.OvalFrame.Circle.ClickDetector.LocalScript
local function C_3d()
local script = G2L["3d"];
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
task.spawn(C_3d);
-- StarterGui.TestTrojan.MainUi.MAIN.ToggleButton3.OvalFrame.Circle.ClickDetector.LocalScript
local function C_4a()
local script = G2L["4a"];
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
task.spawn(C_4a);
-- StarterGui.TestTrojan.MainUi.animation
local function C_55()
local script = G2L["55"];
	local TweenService = game:GetService("TweenService")
	
	local mainUI = script.Parent
	local fadeOverlay = mainUI:WaitForChild("FadeOverlay")
	local listFrame = mainUI:WaitForChild("list")
	local list2 = listFrame:WaitForChild("list2") -- Contains tab buttons
	
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
	
end;
task.spawn(C_55);
-- StarterGui.TestTrojan.MainUi.dragscript
local function C_56()
local script = G2L["56"];
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
task.spawn(C_56);
-- StarterGui.TestTrojan.Notify2.CopyButton.CopyScript
local function C_a1()
local script = G2L["a1"];
	local GuiService = game:GetService("GuiService")
	local button = script.Parent
	
	local copy = 'this is the text to copy' 
	button.MouseButton1Click:Connect(function(plr) setclipboard(tostring(copy)) end)
end;
task.spawn(C_a1);
-- StarterGui.TestTrojan.Notify2.CloseButton.CloseScript
local function C_a9()
local script = G2L["a9"];
	local closeButton = script.Parent-- The button this script is inside
	local notifyFrame = closeButton.Parent  -- Adjust path if needed
	
	closeButton.MouseButton1Click:Connect(function()
		notifyFrame.Visible = false  -- Hide the Notify2 frame
	end)
	
end;
task.spawn(C_a9);
-- StarterGui.TestTrojan.Notify2.dragscript
local function C_ae()
local script = G2L["ae"];
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
task.spawn(C_ae);
-- StarterGui.TestTrojan.LoadingUi.Progress.Percentage.ProgressScript
local function C_c4()
local script = G2L["c4"];
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
task.spawn(C_c4);
-- StarterGui.TestTrojan.LoadsScript
local function C_cf()
local script = G2L["cf"];
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
task.spawn(C_cf);

return G2L["1"], require;
