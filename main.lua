while wait(0.1) do
local orbs = game:GetService("Workspace").GameAssets.GlobalAssets.OrbSpawns
for i, v in pairs(orbs:GetChildren()) do
if v:IsA("MeshPart") then
local user = game.Players.LocalPlayer.Character.Head
firetouchinterest(user, v, 0)
elseif v:IsA("Model") then
local summerOrb = v["Orb.1"]
firetouchinterest(game.Players.LocalPlayer.Character.Head, summerOrb, 0)
end
end
game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
