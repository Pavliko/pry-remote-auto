tell application "iTerm"
	set term to (make new terminal)
	tell term to launch session "pry-remote"
end tell