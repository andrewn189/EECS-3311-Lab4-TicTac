note
	description: "Summary description for {PLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PLAYER

create
	make

feature --initialization
	make (n : STRING; pn : INTEGER)
		require
			1 <= pn and pn <= 2
		do
			name := n
			score := 0
			player_number := pn
			if pn = 1 then
				symbol := "X"
			else
				symbol := "O"
			end
		end

feature {NONE} --attributes
	name : STRING
	score : INTEGER
	player_number : INTEGER
	symbol : STRING

feature --commands
	increase_score
		do
			score := score + 1
		ensure
			score = old score + 1
		end

	set_name (n: STRING)
		do
			name := n
		ensure
			name = n
		end

feature --queries
	get_name : STRING
		do
			Result := name
		ensure
			Result = name
		end

	get_score : INTEGER
		do
			Result := score
		ensure
			Result = score
		end

	get_symbol : STRING
		do
			Result := symbol
		ensure
			Result = symbol
		end

end
