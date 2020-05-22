local Roact = require(script.Parent.Parent.Parent.Libraries.Roact)

local function Message(props)
	return Roact.createElement("TextLabel", {
		Text = "",
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.70),
		Size = UDim2.fromScale(0.75, 0.10),
		BackgroundTransparency = 1,
		TextColor3 = Color3.fromRGB(184, 182, 182),
		Font = Enum.Font.Gotham,
		FontSize = Enum.FontSize.Size12,
	})
end

return Message