#!/bin/bash
curl "https://www.google.com/maps/d/kml?forcekml=1&mid=1BQW2L9hn454ky5jYWdMswSCpwMk&lid=FXac77ltWUg" -o nordschwarzwald.kml
gpsbabel -w -i kml -f nordschwarzwald.kml -o cup -F nordschwarzwald.cup
gpsbabel -w -i kml -f nordschwarzwald.kml -o ozi -F nordschwarzwald_ozi.wpt
gpsbabel -w -i kml -f nordschwarzwald.kml -o compegps -F nordschwarzwald_compe.wpt
gpsbabel -w -i kml -f nordschwarzwald.kml -o gpx -F nordschwarzwald.gps




