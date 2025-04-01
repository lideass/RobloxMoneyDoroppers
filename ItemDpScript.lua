

local ssservice = game:GetService("ServerScriptService")
local dp = game:GetService("ReplicatedStorage").DpRemote
local req = require(ssservice.DpModule)

dp.OnServerEvent:Connect(function()
	req:Droppers()
end)