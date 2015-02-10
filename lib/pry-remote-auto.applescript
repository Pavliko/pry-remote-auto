tell application "iTerm"
	tell the first terminal
		activate
		launch session "pry-remote"
		tell the last session
		write text "pry-remote"
		end tell
	end tell
end tell
