-- Trick to be able to require modules in the same dir as this script
mydir = debug.getinfo(1, "S").source:sub(2):match("(.*/)")
package.path = package.path .. ";" .. mydir .. "?.lua"


local date = require "date"

function timestamp_to_field(tag, timestamp, record)
	new_record = record
	ts = date(timestamp)
	record["timestamp"] = ts:fmt("${iso}Z")
	return 2, timestamp, new_record
end
