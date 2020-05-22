local Roact = require(script.Parent.Parent.Parent.Libraries.Roact)

local function App(props)
	return Roact.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.fromRGB(71, 71, 69)
	}, props[Roact.Children])
end

return App