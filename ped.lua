local deinBenutzername = "elias123robo"

local normaleGeschwindigkeit = 16 -- Standardgeschwindigkeit
local erhöhteGeschwindigkeit = 50 -- Geschwindigkeit nur für dich

local Players = game:GetService("Players")

local function setzeGeschwindigkeit(player)
    if player.Name == deinBenutzername then
        player.CharacterAdded:Connect(function(character)
            local humanoid = character:WaitForChild("Humanoid")
            humanoid.WalkSpeed = erhöhteGeschwindigkeit
        end)
        if player.Character then
            local humanoid = player.Character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = erhöhteGeschwindigkeit
            end
        end
    else
        player.CharacterAdded:Connect(function(character)
            local humanoid = character:WaitForChild("Humanoid")
            humanoid.WalkSpeed = normaleGeschwindigkeit
        end)
        if player.Character then
            local humanoid = player.Character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = normaleGeschwindigkeit
            end
        end
    end
end

for , player in ipairs(Players:GetPlayers()) do
    setzeGeschwindigkeit(player)
end

Players.PlayerAdded:Connect(function(player)
    setzeGeschwindigkeit(player)
end)
