
local players = game:GetService("Players")

local function CoinValues(hit)
	local h = hit.Parent
	if h:FindFirstChildWhichIsA("Humanoid") then
		local players = players:GetPlayerFromCharacter(h)
		players.leaderstats["カネ"].Value += 1
		if players.leaderstats["カネ"].Value >= 100 then
			players:Kick("あなたはカネを捕りすぎです。欲張りはやめましょう。")
		end
		script.Parent:Destroy()
	end
end

script.Parent.Touched:Connect(CoinValues)