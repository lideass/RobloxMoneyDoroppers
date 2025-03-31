
local getservice = game:GetService("ReplicatedStorage").OpenRemote
local replicatedstorage = game:GetService("ReplicatedStorage").DpRemote
local off = false
local on = false
local players = game:GetService("Players")
local ssservice = game:GetService("ServerScriptService")
local q = require(ssservice.DpModule)

local function FirePlayer(hit)
	local h = hit.Parent
	if h:FindFirstChildWhichIsA("Humanoid") and off == false and on == false then
		local pla = players:GetPlayerFromCharacter(h)
		getservice:FireClient(pla)
		off = true
		wait(2)
		off = false
	end
end

script.Parent.Touched:Connect(FirePlayer)
replicatedstorage.OnServerEvent:Connect(function()
	if on == false then
		on = true
		q:Droppers()
	end
end)