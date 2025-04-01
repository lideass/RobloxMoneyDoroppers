
local ssservice = game:GetService("ServerScriptService")
local req = require(ssservice.ValueChangeModule)

script.Parent.Touched:Connect(function(hitpart)
	if req:ItemValuesChange(hitpart,2) == true then
		script.Parent:Destroy()
	end
end)
