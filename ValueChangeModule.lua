
local brock = {}
function brock:ItemValuesChange(hit,increase)
		local players = game:GetService("Players")
		local h = hit.Parent
		if h:FindFirstChildWhichIsA("Humanoid") then
			local players = players:GetPlayerFromCharacter(h)
			players.leaderstats["まねー"].Value += increase
			if players.leaderstats["まねー"].Value >= 100 then
				players:Kick("あなたはまねーを捕りすぎです。欲張りはやめましょう。")
			end
			return true
		end
	end
return brock