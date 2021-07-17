local date = require "date"

function timestamp_to_field(tag, timestamp, record)
	new_record = record
	ts = date(timestamp)
	record["timestamp"] = ts:fmt("${iso}Z")
	return 2, timestamp, new_record
end
