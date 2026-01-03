if game.PlaceId == 140290079878213 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Wq Mutated Or Lose", "DarkTheme")

    --[[ Values
     __      __   _                 
     \ \    / /  | |                
      \ \  / /_ _| |_   _  ___  ___ 
       \ \/ / _` | | | | |/ _ \/ __|
        \  / (_| | | |_| |  __/\__ \
         \/ \__,_|_|\__,_|\___||___/
                                                                                                                                      
     --]]  

    -- Values
    _G.autoBuyEgg = false
    _G.autoSellSimpleEgg = false
    _G.autoSellBasicEgg = false
    _G.autoSellPirateEgg = false
    _G.autoSellSharkEgg = false
    _G.autoSellUrchinEgg = false
    _G.autoSellBalloonEgg = false
    _G.autoSellBarrelEgg = false
    _G.autoSellAllExceptPoseidon = false

    --[[ Functions
      ______                _   _                 
     |  ____|              | | (_)                
     | |__ _   _ _ __   ___| |_ _  ___  _ __  ___ 
     |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
     | |  | |_| | | | | (__| |_| | (_) | | | \__ \
     |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
                                                                                                                                                                 
     --]]  

    -- Auto Buy Egg Functions -------------------------------------------------------------------------------------------------------------------
    function autoBuyEgg()
        if _G.autoBuyEgg then
            task.spawn(function()
                local RollMachineController = require(game:GetService("ReplicatedFirst")
                    .Controllers.MainControllers.RollMachineController)

                while _G.autoBuyEgg do
                    RollMachineController:BuyAsync(1)
                    task.wait(0.1)
                end
            end)
        end
    end

    -- Debug Egg

    function debugEggNames()
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local backpack = player:FindFirstChild("Backpack")
    
        if not backpack then
            print("Inventaire non trouvé")
            return
        end
    
        print("=== LISTE DES ŒUFS DANS LE BACKPACK ===")
    
        for _, tool in ipairs(backpack:GetChildren()) do
            local eggName = tool:GetAttribute("Name")
            local eggId = tool:GetAttribute("Id")
        
            if eggName and eggId then
                print("Nom: " .. eggName .. " | ID: " .. eggId .. " | Type: " .. tool.ClassName)
            end
        end
    
        print("=== FIN DE LA LISTE ===")
    end

    -- Auto Sell Simple Egg Functions -------------------------------------------------------------------------------------------------------------
    function autoSellSimpleEgg()
        if _G.autoSellSimpleEgg then
            task.spawn(function()
                local Players = game:GetService("Players")
                local SellerController = require(game:GetService("ReplicatedFirst").Controllers.MainControllers.SellerController)
                
                while _G.autoSellSimpleEgg do
                    local player = Players.LocalPlayer
                    local backpack = player:FindFirstChild("Backpack")
                    
                    if backpack then
                        for _, tool in ipairs(backpack:GetChildren()) do
                            local eggName = tool:GetAttribute("Name")
                            local eggId = tool:GetAttribute("Id")
                            
                            if eggName == "SimpleEgg" and eggId and _G.autoSellSimpleEgg then
                                pcall(function()
                                    SellerController:SellEggAsync(eggId)
                                end)
                                task.wait(0.1)
                            end
                        end
                    end
                    task.wait(0.1)
                end
            end)
        end
    end

    -- Auto Sell Basic Egg Functions -------------------------------------------------------------------------------------------------------------
    function autoSellBasicEgg()
        if _G.autoSellBasicEgg then
            task.spawn(function()
                local Players = game:GetService("Players")
                local SellerController = require(game:GetService("ReplicatedFirst").Controllers.MainControllers.SellerController)
                
                while _G.autoSellBasicEgg do
                    local player = Players.LocalPlayer
                    local backpack = player:FindFirstChild("Backpack")
                    
                    if backpack then
                        for _, tool in ipairs(backpack:GetChildren()) do
                            local eggName = tool:GetAttribute("Name")
                            local eggId = tool:GetAttribute("Id")
                            
                            if eggName == "GoodEgg" and eggId and _G.autoSellBasicEgg then
                                pcall(function()
                                    SellerController:SellEggAsync(eggId)
                                end)
                                task.wait(0.1)
                            end
                        end
                    end
                    task.wait(0.1)
                end
            end)
        end
    end

    -- Auto Sell Pirate Egg Functions -------------------------------------------------------------------------------------------------------------
    function autoSellPirateEgg()
        if _G.autoSellPirateEgg then
            task.spawn(function()
                local Players = game:GetService("Players")
                local SellerController = require(game:GetService("ReplicatedFirst").Controllers.MainControllers.SellerController)
                
                while _G.autoSellPirateEgg do
                    local player = Players.LocalPlayer
                    local backpack = player:FindFirstChild("Backpack")
                    
                    if backpack then
                        for _, tool in ipairs(backpack:GetChildren()) do
                            local eggName = tool:GetAttribute("Name")
                            local eggId = tool:GetAttribute("Id")
                            
                            if eggName == "PirateEgg" and eggId and _G.autoSellPirateEgg then
                                pcall(function()
                                    SellerController:SellEggAsync(eggId)
                                end)
                                task.wait(0.1)
                            end
                        end
                    end
                    task.wait(0.1)
                end
            end)
        end
    end

    -- Auto Sell Shark Egg Functions -------------------------------------------------------------------------------------------------------------
    function autoSellSharkEgg()
        if _G.autoSellSharkEgg then
            task.spawn(function()
                local Players = game:GetService("Players")
                local SellerController = require(game:GetService("ReplicatedFirst").Controllers.MainControllers.SellerController)
                
                while _G.autoSellSharkEgg do
                    local player = Players.LocalPlayer
                    local backpack = player:FindFirstChild("Backpack")
                    
                    if backpack then
                        for _, tool in ipairs(backpack:GetChildren()) do
                            local eggName = tool:GetAttribute("Name")
                            local eggId = tool:GetAttribute("Id")
                            
                            if eggName == "SharkEgg" and eggId and _G.autoSellSharkEgg then
                                pcall(function()
                                    SellerController:SellEggAsync(eggId)
                                end)
                                task.wait(0.1)
                            end
                        end
                    end
                    task.wait(0.1)
                end
            end)
        end
    end

    -- Auto Sell Urchin Egg Functions -------------------------------------------------------------------------------------------------------------
    function autoSellUrchinEgg()
        if _G.autoSellUrchinEgg then
            task.spawn(function()
                local Players = game:GetService("Players")
                local SellerController = require(game:GetService("ReplicatedFirst").Controllers.MainControllers.SellerController)
                
                while _G.autoSellUrchinEgg do
                    local player = Players.LocalPlayer
                    local backpack = player:FindFirstChild("Backpack")
                    
                    if backpack then
                        for _, tool in ipairs(backpack:GetChildren()) do
                            local eggName = tool:GetAttribute("Name")
                            local eggId = tool:GetAttribute("Id")
                            
                            if eggName == "UrchinEgg" and eggId and _G.autoSellUrchinEgg then
                                pcall(function()
                                    SellerController:SellEggAsync(eggId)
                                end)
                                task.wait(0.1)
                            end
                        end
                    end
                    task.wait(0.1)
                end
            end)
        end
    end

    -- Auto Sell Balloon Egg Functions -------------------------------------------------------------------------------------------------------------
    function autoSellBalloonEgg()
        if _G.autoSellBalloonEgg then
            task.spawn(function()
                local Players = game:GetService("Players")
                local SellerController = require(game:GetService("ReplicatedFirst").Controllers.MainControllers.SellerController)
                
                while _G.autoSellBalloonEgg do
                    local player = Players.LocalPlayer
                    local backpack = player:FindFirstChild("Backpack")
                    
                    if backpack then
                        for _, tool in ipairs(backpack:GetChildren()) do
                            local eggName = tool:GetAttribute("Name")
                            local eggId = tool:GetAttribute("Id")
                            
                            if eggName == "BalloonEgg" and eggId and _G.autoSellBalloonEgg then
                                pcall(function()
                                    SellerController:SellEggAsync(eggId)
                                end)
                                task.wait(0.1)
                            end
                        end
                    end
                    task.wait(0.1)
                end
            end)
        end
    end

    -- Auto Sell Barrel Egg Functions -------------------------------------------------------------------------------------------------------------
    function autoSellBarrelEgg()
        if _G.autoSellBarrelEgg then
            task.spawn(function()
                local Players = game:GetService("Players")
                local SellerController = require(game:GetService("ReplicatedFirst").Controllers.MainControllers.SellerController)
                
                while _G.autoSellBarrelEgg do
                    local player = Players.LocalPlayer
                    local backpack = player:FindFirstChild("Backpack")
                    
                    if backpack then
                        for _, tool in ipairs(backpack:GetChildren()) do
                            local eggName = tool:GetAttribute("Name")
                            local eggId = tool:GetAttribute("Id")
                            
                            if eggName == "RareEgg" and eggId and _G.autoSellBarrelEgg then
                                pcall(function()
                                    SellerController:SellEggAsync(eggId)
                                end)
                                task.wait(0.1)
                            end
                        end
                    end
                    task.wait(0.1)
                end
            end)
        end
    end


    --[[ Tab
      _______    _     
     |__   __|  | |    
        | | __ _| |__  
        | |/ _` | '_ \ 
        | | (_| | |_) |
        |_|\__,_|_.__/ 
                                                                                                            
     --]]  

    local Farm = Window:NewTab("Farm")

    local Misc = Window:NewTab("Misc")


    --[[ Section
       _____           _   _             
      / ____|         | | (_)            
     | (___   ___  ___| |_ _  ___  _ __  
      \___ \ / _ \/ __| __| |/ _ \| '_ \ 
      ____) |  __/ (__| |_| | (_) | | | |
     |_____/ \___|\___|\__|_|\___/|_| |_|
                                                                        
     --]]                                    
     
    -- Auto Farm Section
    local FarmSection = Farm:NewSection("Auto Farm")
    -- Auto Sell Section
    local SellSection = Farm:NewSection("Auto Sell")
    -- Misc Section
    local MiscSection = Misc:NewSection("Section Name")

    --[[ Toggle
      _______                _      
     |__   __|              | |     
        | | ___   __ _  __ _| | ___ 
        | |/ _ \ / _` |/ _` | |/ _ \
        | | (_) | (_| | (_| | |  __/
        |_|\___/ \__, |\__, |_|\___|
                  __/ | __/ |       
                 |___/ |___/                                                                               
     --]]  

    -- Auto Buy EGG Toggle
    FarmSection:NewToggle("Auto Buy", "ToggleInfo", function(state)
        if state then
            _G.autoBuyEgg = state
            autoBuyEgg()
        else
            print("Toggle Off")
        end
    
    end)
    -- Auto Sell Simple Egg
    SellSection:NewToggle("Auto Sell Simple EGG", "ToggleInfo", function(state)
        if state then
            _G.autoSellSimpleEgg = state
            autoSellSimpleEgg()
        else
            print("Toggle Off")
        end
    end)

    -- Auto Sell Good EGG
    SellSection:NewToggle("Auto Sell Good EGG", "ToggleInfo", function(state)
        if state then
            _G.autoSellBasicEgg = state
            autoSellBasicEgg()
        else
            print("Toggle Off")
        end
    end)

    -- Auto Sell Pirate EGG
    SellSection:NewToggle("Auto Sell Pirate EGG", "ToggleInfo", function(state)
        if state then
            _G.autoSellPirateEgg = state
            autoSellPirateEgg()
        else
            print("Toggle Off")
        end
    end)

    -- Auto Sell Shark EGG
    SellSection:NewToggle("Auto Sell Shark EGG", "ToggleInfo", function(state)
        if state then
            _G.autoSellSharkEgg = state
            autoSellSharkEgg()
        else
            print("Toggle Off")
        end
    end)

    -- Auto Sell Urchin EGG
    SellSection:NewToggle("Auto Sell Urchin EGG", "ToggleInfo", function(state)
        if state then
            _G.autoSellUrchinEgg = state
            autoSellUrchinEgg()
        else
            print("Toggle Off")
        end
    end)

    -- Auto Sell Balloon EGG

    SellSection:NewToggle("Auto Sell Balloon EGG", "ToggleInfo", function(state)
        if state then
            _G.autoSellBalloonEgg = state
            autoSellBalloonEgg()
        else
            print("Toggle Off")
        end
    end)

    -- Auto Sell Barrel EGG

    SellSection:NewToggle("Auto Sell Barrel EGG", "ToggleInfo", function(state)
        if state then
            _G.autoSellBarrelEgg = state
            autoSellBarrelEgg()
        else
            print("Toggle Off")
        end
    end)

    --[[ Button
      ____        _   _              
     |  _ \      | | | |             
     | |_) |_   _| |_| |_ ___  _ __  
     |  _ <| | | | __| __/ _ \| '_ \ 
     | |_) | |_| | |_| || (_) | | | |
     |____/ \__,_|\__|\__\___/|_| |_|                                                                                                                                       
     --]]  

    Misc:NewButton("Debug Egg Names", "Debug", function()
        debugEggNames()
    end)

end
