local yourUsername = "elias123_robo"
local increasedSpeed = 50
local normalSpeed = 16

local function adjustSpeed(player)
    player.CharacterAdded:Connect(function(character)
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.WalkSpeed = (player.Name == yourUsername) and increasedSpeed or normalSpeed
    end)
end

local Players = game:GetService("Players")
Players.PlayerAdded:Connect(adjustSpeed)

for , player in ipairs(Players:GetPlayers()) do
    adjustSpeed(player)
end
