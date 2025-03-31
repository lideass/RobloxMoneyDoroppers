
local dp = {}
function dp:Droppers()
	local itemnum = 1
	local getservice = game:GetService("ServerStorage")
	local debris = game:GetService("Debris")
	local items = {getservice.Coin,getservice.Money,getservice.GoldBar,}
	while true do
		local c = items[itemnum]:Clone()
		local x = math.random(-100,100)
		local y = 200
		local z = math.random(-100,100)
		c.Parent = game.Workspace.ValueFolder
		c.Position = Vector3.new(x,y,z)
		wait(0.1)
		debris:AddItem(c, 15)
		if itemnum == #items then
			itemnum = 1
		else
			itemnum += 1
		end
	end
end

return dp 