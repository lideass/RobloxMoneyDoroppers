
local replicated = game:GetService("ReplicatedStorage")
local open = replicated.OpenRemote
local dp = replicated.DpRemote
local brock = replicated.OpenBrockRemote
local waits = replicated.OpenWaitRemote

open.OnClientEvent:Connect(function()
	script.Parent.Frame.Visible = true
end)

script.Parent.Frame.XButton.MouseButton1Click:Connect(function()
	script.Parent.Frame.Visible = false
	waits:FireServer()
end)

script.Parent.Frame.MoneyDpButton.MouseButton1Click:Connect(function()
	script.Parent.Frame.Visible = false
	dp:FireServer()
	brock:FireServer()
end)
