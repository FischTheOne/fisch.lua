local Players = game:GetService("Players")

local function highlight(player)
    local highlight = Instance.new("Highlight")
    highlight.Parent = player.Character
end

for _, player in pairs(game.Players:GetPlayers()) do
    highlight(player)
end

local function speed()
    game.StarterPlayer.CharacterWalkSpeed = 100
end

wait(2)

speed()
