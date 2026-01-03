if game.PlaceId == 140290079878213 then
    local Library = loadstring(game:HttpGet(
        "https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"
    ))()

    local Window = Library.CreateLib("Wq", "DarkTheme")

    -- Farm
    local Farm = Window:NewTab("Farm")
    local FarmSection = Farm:NewSection("Farm")

    local AutoBuy = false

    FarmSection:NewToggle("Auto Buy", "Achetez auto", function(state)
        AutoBuy = state

        if AutoBuy then
            task.spawn(function()
                local RollMachineController =
                    require(game:GetService("ReplicatedFirst")
                        .Controllers.MainControllers.RollMachineController)

                while AutoBuy do
                    RollMachineController:BuyAsync(1)
                    task.wait(0.05)
                end
            end)
        else
            print("Auto Buy désactivé")
        end
    end)

    -- Main
    local Main = Window:NewTab("Main")
    local PlayerSection = Main:NewSection("Player")

    PlayerSection:NewSlider("Walkspeed", "SliderInfo", 150, 25, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    PlayerSection:NewSlider("JumpPower", "SliderInfo", 150, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
end
