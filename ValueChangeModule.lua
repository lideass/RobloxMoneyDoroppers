
local brock = {}
function brock:ItemValuesChange(hit,increase)
		local players = game:GetService("Players")
		local h = hit.Parent
		if h:FindFirstChildWhichIsA("Humanoid") then
			local players = players:GetPlayerFromCharacter(h)
			players.leaderstats["まねぃ"].Value += increase
			if players.leaderstats["まねぃ"].Value >= 100 then
				players:Kick("あなたはカネを捕りすぎです。欲張りはやめましょう。")
			end
			return true
		end
	end
return brock