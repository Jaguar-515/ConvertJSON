return function()
	local date = os.date("*t", os.time())
	return date.year.."-"..date.month.."-"..date.day.."T"..date.hour..":"..date.min..":"..date.sec.."Z"
end