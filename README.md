# Deluge-Torrent-Announce-Refresher
Deluge Torrent Announce Refresher - Force refreshes all deluge torrents so you can get seeders faster and get better results racing.

Literally made because I had an ULTRA.CC seedbox but Delgue on it wouldn't refresh the trackers fast enough, so it just meant that during torrent racing it would be like 5 minutes behind everyone else.

# INSTRUCTION FOR USAGE

1. Dead simple, download the file from the github.
2. Edit the 4 areas inside of it:

ip="your ip for seedbox"

port="dameon port"

username="your username for deluge"

password="your password for deluge"


4. Adjust the parameters to your liking, I suggest the following:

TRIES=50

SLEEP_TIME=10

6. Make sure not to go too fast or your ratelimit yourself :(
7. Save it and place it anywhere you want in your seedbox/nas/anything
8. Give it an appropiate file name (I did delugetracker.sh)
9. Open your deluge webui (or just deluge)
10. Goto prefrences, then execute
11. Place it in as follows (Obvisouly change the file name etc, but keep the execute event the same)

<img width="473" height="491" alt="image" src="https://github.com/user-attachments/assets/da137ab2-6078-4903-888d-50d86ae0ef43" />

12. Click save, and then restart deluge.

[NOTE: you may need to make it executable with: chmod +x file]

IMPORTANT: Do not go to fast or it will ratelimit you, also it will continue going even after the torrent is downloading, just let it run its course.

It also outputs any errors into a .log file if theres any issues.


ENJOY!
