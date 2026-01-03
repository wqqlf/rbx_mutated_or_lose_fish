if game.PlaceId == 140290079878213 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Mutate or Lose Fish By WQ", HidePremium = false, SaveConfig = true, ConfigFolder = "wq_mutated_or_lose_fish"})

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
                    task.wait(0.15)
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

    -- Auto Sell All Except Poseidon Egg Functions -------------------------------------------------------------------------------------------------------------
    function autoSellAllExceptPoseidon()
        if _G.autoSellAllExceptPoseidon then
            task.spawn(function()
                local Players = game:GetService("Players")
                local SellerController = require(game:GetService("ReplicatedFirst").Controllers.MainControllers.SellerController)
                
                while _G.autoSellAllExceptPoseidon do
                    local player = Players.LocalPlayer
                    local backpack = player:FindFirstChild("Backpack")
                    
                    if backpack then
                        for _, tool in ipairs(backpack:GetChildren()) do
                            local eggName = tool:GetAttribute("Name")
                            local eggId = tool:GetAttribute("Id")
                            
                            if eggName and eggId and eggName ~= "PoseidonEgg" and _G.autoSellAllExceptPoseidon then
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

    local Farm = Window:MakeTab({
        Name = "Farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local Misc = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    --[[ Section
       _____           _   _             
      / ____|         | | (_)            
     | (___   ___  ___| |_ _  ___  _ __  
      \___ \ / _ \/ __| __| |/ _ \| '_ \ 
      ____) |  __/ (__| |_| | (_) | | | |
     |_____/ \___|\___|\__|_|\___/|_| |_|
                                                                        
     --]]                                    
     
    -- Auto Farm Section
    local FarmSection = Farm:AddSection({
        Name = "Auto Farm"
    })
    -- Auto Sell Section
    local SellSection = Farm:AddSection({
        Name = "Auto Sell"
    })
    -- Misc Section
    local MiscSection = Misc:AddSection({
        Name = "Misc"
    })

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
    FarmSection:AddToggle({
        Name = "Auto Buy",
        Default = false,
        Callback = function(Value)
            _G.autoBuyEgg = Value
            autoBuyEgg()
        end
    })

    SellSection:AddToggle({
        Name = "Auto Sell Simple EGG",
        Default = false,
        Callback = function(Value)
            _G.autoSellSimpleEgg = Value
            autoSellSimpleEgg()
        end
    })

    SellSection:AddToggle({
        Name = "Auto Sell Good EGG",
        Default = false,
        Callback = function(Value)
            _G.autoSellBasicEgg = Value
            autoSellBasicEgg()
        end
    })

    SellSection:AddToggle({
        Name = "Auto Sell Pirate EGG",
        Default = false,
        Callback = function(Value)
            _G.autoSellPirateEgg = Value
            autoSellPirateEgg()
        end
    })

    SellSection:AddToggle({
        Name = "Auto Sell Shark EGG",
        Default = false,
        Callback = function(Value)
            _G.autoSellSharkEgg = Value
            autoSellSharkEgg()
        end
    })

    SellSection:AddToggle({
        Name = "Auto Sell Urchin EGG",
        Default = false,
        Callback = function(Value)
            _G.autoSellUrchinEgg = Value
            autoSellUrchinEgg()
        end
    })

    SellSection:AddToggle({
        Name = "Auto Sell Balloon EGG",
        Default = false,
        Callback = function(Value)
            _G.autoSellBalloonEgg = Value
            autoSellBalloonEgg()
        end
    })

    SellSection:AddToggle({
        Name = "Auto Sell Barrel EGG",
        Default = false,
        Callback = function(Value)
            _G.autoSellBarrelEgg = Value
            autoSellBarrelEgg()
        end
    })

    SellSection:AddToggle({
        Name = "Auto Sell All Except Poseidon",
        Default = false,
        Callback = function(Value)
            _G.autoSellAllExceptPoseidon = Value
            autoSellAllExceptPoseidon()
        end
    })

    --[[ Button
      ____        _   _              
     |  _ \      | | | |             
     | |_) |_   _| |_| |_ ___  _ __  
     |  _ <| | | | __| __/ _ \| '_ \ 
     | |_) | |_| | |_| || (_) | | | |
     |____/ \__,_|\__|\__\___/|_| |_|                                                                                                                                       
     --]]  

    Misc:AddButton({
        Name = "Close Script",
        Callback = function()
            OrionLib:Destroy()
        end    
    })

    Misc:AddButton({
        Name = "Debug Egg Names",
        Callback = function()
            debugEggNames()
        end    
    })


    OrionLib:Init()
end
