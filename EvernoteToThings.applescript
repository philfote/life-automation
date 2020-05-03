(*
	Automatically Create Things tasks in the Inbox from ScanSnap scanned items
	
	
*)
--- Need code to check if Evernote is running when this runs. ---
if application "Evernote" is running then
	set isrunning to 1
else
	set isrunning to 0
end if

tell application "Evernote"
	set lstSelectedNotes to find notes "notebook:Scanned -tag:home"
	repeat with onote in lstSelectedNotes
		
		--- GET THE NOTE TITLE AND CLASSIC NOTE LINK ---
		set strNoteTitle to title of onote
		set strNoteTitle to "Process scanned evernote note " & strNoteTitle
		set strNoteLink to note link of onote
		--- Create the todo in things and link it to the scan ---
		tell application "Things3"
			set newToDo to make new to do with properties {name:strNoteTitle, notes:strNoteLink}
		end tell
		
	end repeat
	--- Now tag the notes with the home tag so we don't pick them up again the next time we run  ---
	--- ...but only if we scanned something! ---
	if length of lstSelectedNotes is greater than 0 then
		set tag1 to tag named "home"
		assign tag1 to lstSelectedNotes
	end if
end tell

--- If evernote was not running when we started then quit it now that we're done ---
if isrunning is 0 then
	tell application "Evernote"
		quit
	end tell
end if



