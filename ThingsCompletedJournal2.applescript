set today to current date
set currentShortDate to short date string of today
set output to ""
set output to output & "# Things done on " & date string of (current date) & linefeed

tell application "Things3"
	with timeout of 600 seconds
		repeat with thecurrenttodo in to dos of list "Logbook"
			set datefinished to completion date of thecurrenttodo
			set shortdatefinished to short date string of datefinished
			if shortdatefinished = currentShortDate then
				set thename to name of thecurrenttodo as string
				set proj to project of thecurrenttodo
				if proj is equal to missing value then
					--- Put logic in here to pull the area and set that as the project variable
					set ar to area of thecurrenttodo
					set thearea to name of ar as string
					set theproj to thearea & " Area"
				else
					set theproj to name of proj as string
				end if
				tell application "Evernote"
					set notebook1 to notebook "Campaign Notes"
					set notelist to (every note of notebook1 whose title is theproj)
					if length of notelist is 0 then
						create note with html shortdatefinished & " - " & thename & "<br>" title theproj notebook notebook1 tags theproj
					else
						set note1 to first item of notelist
						tell note1 to append html shortdatefinished & " - " & thename & "<br>"
					end if
				end tell
				--- Add bits here to build and push a DayOne entry if desired
			end if
		end repeat
	end timeout
end tell
