local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local gui = Library:create{
    Theme = Library.Themes.Serika
}

local BLOXFFRUITTAB = gui:tab{
    Icon = "rbxassetid://6034996695",
    Name = "BLOXFRUIT-TABS"
}

BLOXFFRUITTAB:button({
    Name = "REDZ-HUB",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/ACOX6D6h/raw"))()
    end,
})
BLOXFFRUITTAB:button({
    Name = "WINNIX-HUB",
    Callback = function()
        getgenv().Team = "Pirates"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NxNDemon/Winnix-trash/refs/heads/main/humm.txt"))()
    end,
})
BLOXFFRUITTAB:button({
    Name = "TSUO-HUB",
    Callback = function()
        getgenv().Team = "Pirates"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/Tsuoscripts"))()
    end,
})
BLOXFFRUITTAB:button({
    Name = "ASTRAL-HUB",
    Callback = function()
        getgenv().Team = "Pirates"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
    end,
})

-- Additional button definitions follow...

local DEADRAILS = gui:tab{
    Icon = "rbxassetid://95777119333912",
    Name = "DEADRIALS-TABS"
}

DEADRAILS:button({
    Name = "MARKK-HUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TwoGunVolley/Dedrail/refs/heads/main/Protected_8860927939362090.txt"))()
    end,
})

local cdid = gui:tab{
    Icon = "rbxassetid://95777119333912",
    Name = "CDID-TABS"
}

cdid:button({
    Name = "ATOMICAL",
    Description = "clicked the below button, complete the key system first, and press this button then paste it to your executor!",
    Callback = function()
        setclipboard('loadstring(game:HttpGet("https://getsades.net/Module/FreeAtomic.lua"))()')        
    end,
})
cdid:button({
    Name = "ATOMICAL KEY LINK",
    Callback = function()
        setclipboard('https://ads.luarmor.net/get_key?for=Atomicals_Free-omqpOcYrZyJL')        
    end,
})

local EXTRAFUNTABS = gui:tab{
    Icon = "rbxassetid://95777119333912",
    Name = "EXTRAFUN-TABS"
}

EXTRAFUNTABS:button({
    Name = "infinity-yield",
    Description = "fun tool to use",
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'), true))()
    end,
})

EXTRAFUNTABS:button({
    Name = "chatbot",
    Description = "fun tool to use",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/ZbzbLztS"))()    
    end,
})

EXTRAFUNTABS:button({
    Name = "SUS",
    Description = "fun tool to use",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/blackheartedcurse/punkz-Scripts/main/SolaraVersionRagdoll.lua"))()    
    end,
})

EXTRAFUNTABS:button({
    Name = "SUSv2",
    Description = "fun tool to use",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/FWwdST5Y"))()    
    end,
})
