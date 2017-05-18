# Paragliding turnpoints for northern black forest
Soaring turnpoints for northern black forest. Based on initial work by Sandor Nusser. So far, this mainly covers the area around Baden Baden and Loffenau. Expansion to anything within reach for a paraglider welcome.

See https://drive.google.com/open?id=1BQW2L9hn454ky5jYWdMswSCpwMk&amp;usp=sharing for a visual representation.

## Download (right-click, save as)
* [nordschwarzwald.cup (SeeYou, XcSoar, TopHat, ...)](https://github.com/schwarzwaldgeier/turnpoints/raw/master/nordschwarzwald.cup)
* [nordschwarzwald_ozi.wpt (Garmin et al.)](https://github.com/schwarzwaldgeier/turnpoints/raw/master/nordschwarzwald_ozi.wpt)
* [nordschwarzwald_compe.wpt (Skytraxx, Bräuniger, XC Track, ...](https://github.com/schwarzwaldgeier/turnpoints/raw/master/nordschwarzwald_compe.wpt)
* [nordschwarzwald.kml (Google Earth)](https://github.com/schwarzwaldgeier/turnpoints/raw/master/nordschwarzwald.kml)
* [nordschwarzwald.gpx](https://github.com/schwarzwaldgeier/turnpoints/raw/master/nordschwarzwald.gpx)

## How to contribute
Use http://pottyplace.com/waypts/ with the .cup file, add turnpoints, use the tool to save the rest of the formats and update the repo. Use gpsbabel for gpx and kml in case you care.

On debian/ubuntu:

````bash
# Install gpsbabel
sudo apt-get install gpsbabel

# get the repository
git clone https://github.com/schwarzwaldgeier/turnpoints.git

# Make your changes using http://pottyplace.com/waypts/ and use the tool to save all the formats it can do.

# To get the remaining ones, convert from ozi:
gpsbabel -w -i ozi -f nordschwarzwald.ozi -o kml -f norschwarzwald.kml
gpsbabel -w -i ozi -f nordschwarzwald.ozi -o gpx -f norschwarzwald.gpx

```
Or: Edit here: https://drive.google.com/open?id=1BQW2L9hn454ky5jYWdMswSCpwMk&usp=sharing and run convert.sh, then commit.
