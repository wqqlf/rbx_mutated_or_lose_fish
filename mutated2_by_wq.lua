```LUA
--// PLACE CHECK
if game.PlaceId ~= 140290079878213 then return end

--// UI (stable pour UNC bas)
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({
    Name = "Wq Mutated Or Lose",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "WQHub"
})

--// GLOBAL FLAGS
_G.AutoBuy = false
_G.AutoSell = false

--// TOKEN STORAGE
local BuyRemote, BuyArgs
local SellRemote, SellArgs

--// METATABLE HOOK (UNC BAS COMPATIBLE)
local mt = getrawmetatable(game)
setreadonly(mt, false)

local old = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()

    if method == "FireServer" then
        local name = tostring(self):lower()

        -- BUY EGG DETECTION
        if name:find("buy") or name:find("roll") then
            BuyRemote = self
            BuyArgs = args
            print("[WQ] Buy token captured")
        end

        -- SELL EGG DETECTION
        if name:find("sell") then
            SellRemote = self
            SellArgs = args
            print("[WQ] Sell token captured")
        end
    end

    return old(self, ...)
end)

setreadonly(mt, true)

--// AUTO BUY LOOP
task.spawn(function()
    while task.wait(0.15) do
        if _G.AutoBuy and BuyRemote and BuyArgs then
            pcall(function()
                BuyRemote:FireServer(unpack(BuyArgs))
            end)
        end
    end
end)

--// AUTO SELL LOOP
task.spawn(function()
    while task.wait(0.15) do
        if _G.AutoSell and SellRemote and SellArgs then
            pcall(function()
                SellRemote:FireServer(unpack(SellArgs))
            end)
        end
    end
end)

--// UI
local FarmTab = Window:MakeTab({
    Name = "Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

FarmTab:AddToggle({
    Name = "Auto Buy Egg",
    Default = false,
    Callback = function(v)
        _G.AutoBuy = v
    end
})

FarmTab:AddToggle({
    Name = "Auto Sell Egg",
    Default = false,
    Callback = function(v)
        _G.AutoSell = v
    end
})

FarmTab:AddButton({
    Name = "⚠️ Click this AFTER manual Buy/Sell",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "WQ Hub",
            Content = "Buy & Sell 1 egg manually to capture tokens",
            Time = 5
        })
    end
})

OrionLib:Init()

```
