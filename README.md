# spotify_alarm
Using Spotify as a daily alarm on MacOS using Applescript

A chosen playlist will played with the volume slowly rising up. A greeting with the Day and Time will be announced in English and Cantonese a few seconds in.

Adapted from **[Nikhil Gopal's](https://nikhilgopal.com/applescript/utility/2011/08/03/show-and-tell-applescript-a-spotify-alarm-clock-on-mac.html)** code.

Prerequisites:
  1. Applescript has to be run through Terminal `crontab`.
  2. Mac has to be switched on before the timing set using `crontab`.
  3. Spotify account needed.
  
Instructions:
  1. Replace `[[SpotifyID]]` with your Spotify username.
  2. Replace `[[SpotifyURI]]` with the playlist's URI.
