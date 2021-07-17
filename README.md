# Add timestamp to fluent-bit record

This is a simple Lua filter for [fluent-bit](https://fluentbit.io) that adds the event timestamp as an ISO8601-formatted string field in the record data.  This is useful when you're using outputs like the `plain` file outputter, that only log the record itself without logging the timestamp.

Depends on the https://github.com/Tieske/date module for date parsing, which is released under the [MIT licence](LICENSE.date).
