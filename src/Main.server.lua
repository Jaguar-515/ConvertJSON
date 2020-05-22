local Roact = require(script.Parent.Parent.Libraries.Roact)

local App = require(script.Parent.Components.App)
local Input = require(script.Parent.Components.Input)
local Title = require(script.Parent.Components.Title)
local ConvertButton = require(script.Parent.Components.ConvertButton)
local Message = require(script.Parent.Components.Message)

local Toolbar = plugin:CreateToolbar("ConvertJSON")
local Button = Toolbar:CreateButton("Convert to Lua Table", "Convert JSON to a Lua table in a ModuleScript", "rbxassetid://5067611619")

local WidgetInfo = DockWidgetPluginGuiInfo.new(
	Enum.InitialDockState.Right,
	true,
	false,
	600,
	300,
	200,
	150
)

local Widget = plugin:CreateDockWidgetPluginGui("ConvertJSON", WidgetInfo)
Widget.Title = "ConvertJSON"

local AppElement = Roact.createElement(App, {}, {
	Input = Roact.createElement(Input, {}),
	Title = Roact.createElement(Title, {}),
	ConvertButton = Roact.createElement(ConvertButton, {}),
	Message = Roact.createElement(Message, {})
})

Widget.Enabled = false

Button.Click:Connect(function()
	Widget.Enabled = not Widget.Enabled
	Roact.mount(AppElement, Widget)
end)