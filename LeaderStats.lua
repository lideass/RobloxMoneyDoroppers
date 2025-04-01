
local pl = game:GetService("Players")
local function PlJoin(p)
	local board = Instance.new("Folder")
	board.Name = "leaderstats"
	board.Parent = p

	local point = Instance.new("IntValue")
	point.Name = "まねぃ"
	point.Value = 0
	point.Parent = board
end
pl.PlayerAdded:Connect(PlJoin)
