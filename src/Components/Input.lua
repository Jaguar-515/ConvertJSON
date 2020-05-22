local Roact = require(script.Parent.Parent.Parent.Libraries.Roact)

local function Input(props)
	return Roact.createElement("TextBox", {
		Size = UDim2.fromScale(0.75, 0.5),
		Position = UDim2.fromScale(0.5, 0.4),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromRGB(76, 77, 76),
		BorderColor3 = Color3.fromRGB(76, 77, 76),
		PlaceholderColor3 = Color3.fromRGB(184, 182, 182),
		PlaceholderText = "Enter the JSON contents here...",
		TextColor3 = Color3.fromRGB(184, 182, 182),
		Text = "",
		Font = Enum.Font.Gotham,
		FontSize = Enum.FontSize.Size14,
		TextWrapped = true
	})
end

return Input