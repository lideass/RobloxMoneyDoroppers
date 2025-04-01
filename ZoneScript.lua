
local open = game:GetService("ReplicatedStorage").OpenRemote
local brock = game:GetService("ReplicatedStorage").OpenBrockRemote
local waits = game:GetService("ReplicatedStorage").OpenWaitRemote
local off = false
local on = false
local players = game:GetService("Players")

local function FirePlayer(hit)
	local h = hit.Parent
	if h:FindFirstChildWhichIsA("Humanoid") and off == false and on == false then
		local pla = players:GetPlayerFromCharacter(h)
		open:FireClient(pla)
		off = true
	end
end

script.Parent.Touched:Connect(FirePlayer)
waits.OnServerEvent:Connect(function()
	wait(2)
	off = false
end)

brock.OnServerEvent:Connect(function()
	if on == false then
	    on = true
	end
end)