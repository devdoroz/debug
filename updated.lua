local debug = {}

local player = game:GetService("Players")
local coreGui = game:GetService("CoreGui")

local ui = game:GetObjects("rbxassetid://17728321239")[1]
local debugUI = ui.debug:Clone()

debugUI.Parent = coreGui

function debug:newValue(identifier, value)
	local textLabel = ui.TextLabel:Clone()
	textLabel.Parent = debugUI.Frame
	textLabel.Name = identifier
	textLabel.Text = identifier..": "..value
end

function debug:updateValue(identifier, value)
	debugUI.Frame[identifier].Text = identifier..": "..value
end

function debug:Destroy()
	ui:Destroy()
end

return debug
