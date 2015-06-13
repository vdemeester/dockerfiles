# MPD in Docker

This docker files create a container with MPD in it. It features :

* Volume : /var/lib/mpd/music
* Ports :
  * 6600 : default mpd port
  * 8000 : http output plugin

To run you could do ``docker run -d -p 6000:6000 -p 8000:8000 -v $HOME/Musique:/var/lib/mpd/music vdemeester/mpd``