-- Create a 'user' record
CREATE user SET
	age = <int> 34,
	enabled = true,
	-- Store the current time
	created_at = time::now(),
	-- Specify embedded fields
	name.first = "Tobie",
	name.last = "Morgan Hitchcock",
	-- Add a field which is computed from other fields
	name.full = <string> string::join(' ', name.first, name.last),
	-- Add an array whose values point to other remote records
	friends = [user:gna732gnajan74hj, user:gna732gnajan74hj],
;
