#!/bin/bash
FILENAME="nordschwarzwald"
MAPSID="1BQW2L9hn454ky5jYWdMswSCpwMk&lid=FXac77ltWUg"
curl -H 'Cache-Control: no-cache' "https://www.google.com/maps/d/kml?forcekml=1&mid=${MAPSID}" -o ${FILENAME}.kml
gpsbabel -w -i kml -f ${FILENAME}.kml -o cup -F ${FILENAME}.cup
gpsbabel -w -i kml -f ${FILENAME}.kml -o ozi -F ${FILENAME}_ozi.wpt
gpsbabel -w -i kml -f ${FILENAME}.kml -o compegps -F ${FILENAME}_compe.wpt
gpsbabel -w -i kml -f ${FILENAME}.kml -o gpx -F ${FILENAME}.gpx
# Remove optional <time> element from .gpx to avoid git clutter
sed -i '/.*<time>.*<\/time>.*/d' ${FILENAME}.gpx



