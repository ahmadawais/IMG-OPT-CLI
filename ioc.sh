#!/usr/bin/env bash
#
# Image Optimization CLI for NGINX or Easy Engine based self hosted WordPress websites.
#
# Version: 1.0.0
# Author: Ahmad Awais.
# Author URI: http://AhmadAwais.com/
# Props: jpegoptim, OptiPNG

# Colors.
#
# colors from tput
# http://stackoverflow.com/a/20983251/950111
# Usage:
# echo "${redb}red text ${gb}green text${r}"
bb=`tput setab 0` #set background black
bf=`tput setaf 0` #set foreground black
gb=`tput setab 2` # set background green
gf=`tput setab 2` # set background green
blb=`tput setab 4` # set background blue
blf=`tput setaf 4` # set foreground blue
rb=`tput setab 1` # set background red
rf=`tput setaf 1` # set foreground red
wb=`tput setab 7` # set background white
wf=`tput setaf 7` # set foreground white
r=`tput sgr0`     # r to defaults

clear
cd ~

# Backup file name that gets downloaded.
BACKUP_FILE=b.tar.gz

echo "—"
echo "${gb}${bf} IMG OPT CLI ⚡️  ${r}"
echo "${wb}${bf} Version 1.1.0 ${r}"
echo "${wb}${bf} Image Optimization CLI.${r}"
echo "—"

echo "${gb}${bf}  ℹ️  Pre IMG OPT CLI Checklist: ${r}"
echo "${wb}${bf}  ␥  1. Have you installed jpegoptim? Install it first${r} (sudo apt-get install jpegoptim)?"
echo "${wb}${bf}  ␥  2. Have you installed OptiPNG? Install it first${r} (sudo apt-get install optipng)?"
echo "${blb}${bf}  INFO: All the above steps above are required for IMG OPT CLI to work. ${r}"

# Optimize JPG Images.
# Usage: imgopt site.ext size
# Usage: imgopt domain.com 60
function imgoptcli() {
  echo "——————————————————————————————————"
  echo "👉  SITE — Enter the site url to optimize its images! [E.g. domain.ext]:"
  echo "——————————————————————————————————"
  echo "NOTES:"
  echo " ␥  1. This site should already be installed on your server."
  echo " ␥  2. Only the images inside upload folders are optimized"
  echo "——————————————————————————————————"
  read -r SITE

  echo "——————————————————————————————————"
  echo "👉  Do you want to optimize JPG images? [ y | n ]"
  echo "——————————————————————————————————"
  read -r IS_OPT_JPG
  if [[ "Y" == "$IS_OPT_JPG" || "y" == "$IS_OPT_JPG" ]]; then
  	echo "——————————————————————————————————"
  	echo "👉  QUALITY — Enter the quality of JPG images [E.g. 60 or 90]:"
  	echo "——————————————————————————————————"
  	echo "NOTES:"
  	echo " ␥  1. Valid values for quality parameter are: 0 - 100."
  	echo "——————————————————————————————————"
  	read -r QUALITY

  	# Find and optimize.
  	find /var/www/"$SITE"/htdocs/wp-content/uploads/ -name '*.jpg' -type f -print0 | xargs -0 jpegoptim -o --strip-all --max="$QUALITY" --strip-com --strip-exif --strip-iptc --strip-xmp -t -P
  fi

  echo "——————————————————————————————————"
  echo "👉  Do you want to optimize PNG images? [ y | n ]"
  echo "——————————————————————————————————"
  read -r IS_OPT_PNG
  if [[ "Y" == "$IS_OPT_PNG" || "y" == "$IS_OPT_PNG" ]]; then
  	echo "——————————————————————————————————"
  	echo "👉  LEVEL — Select the optimization level [E.g. 3 or 5]:"
  	echo "——————————————————————————————————"
  	echo "NOTES:"
  	echo " ␥  1. Valid values for level parameter are: 1 - 7."
  	echo "——————————————————————————————————"
  	read -r LEVEL
	find /var/www/"$SITE"/htdocs/wp-content/uploads/ -type f -iname "*.png" -print0 | xargs -I {} -0 optipng -o"$LEVEL" -out -preserve -clobber "{}"
fi

echo "——————————————————————————————————"
echo "✔︎✔︎✔︎ DONE! ✔︎✔︎✔︎"
echo "——————————————————————————————————"
}
# Run imgoptcli.
imgoptcli
