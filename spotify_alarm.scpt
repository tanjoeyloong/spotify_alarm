-- Spotify Alarm
-- Execute script: 'osascript alarm.scpt'

set volume 2.5
set en_weekday to (weekday of (current date))
set en_day to (day of (current date))
set en_month to (month of (current date))

set cn_weekday to (((weekday of (current date)) as number) - 1)
if cn_weekday = 0 then
	set cn_weekday to "日"
end if

set hour to (hours of (current date)) as string
set minute to (minutes of (current date)) as string

set minlength to (length of minute)
if minlength < 2 then
	set minute to "0" & minute
end if

open location "spotify:user:[[SpotifyID]]:playlist:[[SpotifyURI]]"
delay 10

tell application "Spotify"
	set the sound volume to 0
	set shuffling to false
	set shuffling to true
	set repeating to false
	set repeating to true
	delay 3
	play track "spotify:user:[[SpotifyID]]:playlist:[[SpotifyURI]]"
	repeat while sound volume is less than 50
		set sound volume to (sound volume + 2)
		delay 1
	end repeat
end tell

say "Good Morning" using "Daniel"
delay 1.5
say "Today is" & en_weekday & ":" & en_day & en_month using "Daniel"
delay 1
say "The time is" & hour & ":" & minute using "Daniel"
delay 2
say "早晨! " using "Sin-ji"
delay 1.5
say "今日係" & "::" & "星期" & cn_weekday using "Sin-ji"
delay 1
say "時間係: " & "::" & hour & "點" & "::" & minute & "分" using "Sin-ji"

tell application "Spotify"
	repeat while sound volume is less than 90
		set sound volume to (sound volume + 5)
		delay 3
	end repeat
end tell

