
local get = game:GetService("ReplicatedStorage").OpenRemote
local dp = game:GetService("ReplicatedStorage").DpRemote

get.OnClientEvent:Connect(function()
	script.Parent.Frame.Visible = true
end)

script.Parent.Frame.XButton.MouseButton1Click:Connect(function()
	script.Parent.Frame.Visible = false
end)

script.Parent.Frame.MoneyDpButton.MouseButton1Click:Connect(function()
	script.Parent.Frame.Visible = false
	dp:FireServer()
end)
