activate application "Microsoft Excel"

tell application "System Events" to tell process "Microsoft Excel"
	keystroke "name"
	keystroke tab
	keystroke "url"
	keystroke tab
	keystroke "username"
	keystroke tab
	keystroke "password"
	keystroke tab
	keystroke return
end tell

repeat 2 times # number of passwords
	
	activate application "Yandex"
	
	tell application "System Events" to tell process "Yandex"
		keystroke tab using shift down
		key code 125
		keystroke return
		delay 0.2
		keystroke "a" using command down
		delay 0.2
		keystroke "c" using command down
		delay 0.2
	end tell
	
	delay 0.1
	set link to the clipboard
	set dom to do shell script "echo '" & link & "' | awk -F/ '{print $3}'"
	
	activate application "Microsoft Excel"
	
	tell application "System Events" to tell process "Microsoft Excel"
		keystroke dom
		delay 0.1
		keystroke tab
		delay 0.1
		keystroke "v" using command down
		delay 0.1
		keystroke tab
		delay 0.1
	end tell
	
	activate application "Yandex"
	
	tell application "System Events" to tell process "Yandex"
		repeat 3 times
			keystroke tab
		end repeat
		keystroke return
		delay 0.1
	end tell
	
	activate application "Microsoft Excel"
	
	tell application "System Events" to tell process "Microsoft Excel"
		keystroke "v" using command down
		delay 0.1
		keystroke tab
		delay 0.1
	end tell
	
	activate application "Yandex"
	
	tell application "System Events" to tell process "Yandex"
		repeat 3 times
			keystroke tab
		end repeat
		keystroke return
		delay 0.1
		repeat 4 times
			keystroke tab
		end repeat
		keystroke return
		delay 0.1
	end tell
	
	activate application "Microsoft Excel"
	
	tell application "System Events" to tell process "Microsoft Excel"
		keystroke "v" using command down
		delay 0.1
		keystroke return
		delay 0.1
	end tell
	
end repeat
