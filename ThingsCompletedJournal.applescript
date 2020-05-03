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
				---set thedate to completion date of thecurrenttodo as string
				set ar to area of thecurrenttodo
				set proj to project of thecurrenttodo
				set taglist to tag names of thecurrenttodo
				if taglist is not "" then
					set old_delimts to AppleScript's text item delimiters
					set AppleScript's text item delimiters to ", "
					set taglist to text items of taglist
					set AppleScript's text item delimiters to old_delimts
					if taglist contains "cust" then
						repeat with thetag in taglist
							if thetag as string is not "cust" then
								tell application "Evernote"
									set notebook1 to notebook "Campaign Notes"
									set notelist to (every note of notebook1 whose title is thetag)
									if length of notelist is 0 then
										create note with html shortdatefinished & " - " & thename & "<br>" title thetag notebook notebook1 tags thetag
									else
										set note1 to first item of notelist
										tell note1 to append html shortdatefinished & " - " & thename & "<br>"
									end if
								end tell
							end if
						end repeat
					end if
				end if
				if ar is not equal to missing value then
					set thearea to name of ar as string
					set dialogtext to "Completed in the #" & thearea & " area: " & thename
				else if proj is not equal to missing value then
					set theproject to name of proj as string
					set ar to area of proj
					set thearea to name of ar as string
					set dialogtext to "Completed in the #" & thearea & " area for the " & theproject & " project: " & thename
				else
					set dialogtext to "Completed with no area or project: " & thename
				end if
				set output to output & "¥ " & dialogtext & linefeed
			end if
			
		end repeat
		set shellTxt to "echo \"" & output & "\" | /usr/local/bin/dayone2 -j Completions new &> /dev/null"
		do shell script shellTxt
	end timeout
end tell