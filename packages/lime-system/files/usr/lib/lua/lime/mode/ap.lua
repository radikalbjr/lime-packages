#!/usr/bin/lua

local ap = {}

ap.wifi_mode="ap"

function ap.setup_radio(radio, args)
--!	checks("table", "?table")

	args["network"] = "lan"
	return wireless.createBaseWirelessIface(radio, ap.wifi_mode, nil, args)
end

return ap
