local HttpService = game:GetService("HttpService")

local Roact = require(script.Parent.Parent.Parent.Libraries.Roact)
local PrettyPrint = require(script.Parent.Parent.Parent.Modules.PrettyPrint)
local GetCurrentDate = require(script.Parent.Parent.Parent.Modules.GetCurrentDate)

local function ConvertButton(props)
	return Roact.createElement("TextButton", {
		Size = UDim2.fromScale(0.75, 0.15),
		Position = UDim2.fromScale(0.5, 0.825),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromRGB(76, 77, 76),
		BorderColor3 = Color3.fromRGB(76, 77, 76),
		TextColor3 = Color3.fromRGB(184, 182, 182),
		Font = Enum.Font.Gotham,
		FontSize = Enum.FontSize.Size14,
		Text = "Convert!",

		[Roact.Event.MouseButton1Click] = function(element)
			local Input = element.Parent.Input.Text
			local Output

			local success, message = pcall(function()
				Output = HttpService:JSONDecode(Input)
			end)	
			
			if not success then
				warn(message)
				element.Parent.Message = message
				return
			end		

			local OutputScript = Instance.new("ModuleScript")
			OutputScript.Parent = game.ReplicatedStorage
			OutputScript.Name = "Output"
			OutputScript.Source = "-- generated by ConvertJSON at "..GetCurrentDate().."\nreturn "..tostring(PrettyPrint(Output))
			
			print('generated output script in '..OutputScript.Parent.Name)
			element.Parent.Message.Text = "generated output script in "..OutputScript.Parent.Name
		end
	})
end

return ConvertButton