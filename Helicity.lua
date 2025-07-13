-- Import necessary libraries
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Function to give player money
local function giveMoney(amount)
    player.leaderstats.Coins.Value = amount
end

-- Function to give all items
local function giveAllItems()
    local items = {"Item1", "Item2", "Item3"} -- Replace with actual item names
    for _, item in ipairs(items) do
        player.Backpack:FindFirstChild(item):Clone().Parent = player.Backpack
    end
end

-- Function to show tornado menu
local function showTornadoMenu()
    print("Tornado Menu: Options available here.")
    -- Add options for the tornado menu
end

-- Function to enable god mode
local function enableGodMode()
    character.Humanoid.MaxHealth = math.huge
    character.Humanoid.Health = math.huge
end

-- Main execution
giveMoney(999999999)
giveAllItems()
showTornadoMenu()
enableGodMode()
