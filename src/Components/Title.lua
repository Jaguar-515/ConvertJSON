local Roact = require(script.Parent.Parent.Parent.Libraries.Roact)

local function Title(props)
	return Roact.createElement("TextLabel", {
		Font = Enum.Font.Gotham,
		FontSize = Enum.FontSize.Size18,
		Size = UDim2.fromScale(1, 0.1),
		Position = UDim2.fromScale(0, 0),
		Text = "ConvertJSON",
		BackgroundTransparency = 1,
		TextColor3 = Color3.fromRGB(184, 182, 182)
	})
end

return Title