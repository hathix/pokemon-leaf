# Usage: /path/to/this-file.sh squirtle
# Converts "in.png" to Pokemon-size grayscale files that represent the
# front and back sprites, then waits for you to do some manual work
# and pushes the sprites around the codebase.

convert in.png -colorspace Gray -background white -alpha remove -resize 56x56 $1.png
convert in.png -colorspace Gray -background white -alpha remove -resize 32x32 $1b.png
echo "Created $1.png and $1.png!"

echo "Use GIMP to make these indexed with a 4-color pallette."
open -a GIMP $1.png
open -a GIMP $1b.png
read -p "Hit enter once you've indexed $1.png and $1b.png!"
# Wait for user to hit enter...

# Push big image to the various mon folders
cp $1.png ../pic/bmon/
cp $1.png ../pic/rgmon/
cp $1.png ../pic/ymon/
echo "Copied $1.png to front sprites!"

# Push small image to the back sprite folder
cp $1b.png ../pic/monback/
echo "Copied $1b.png to back sprites!"

# Clean up by removing the generated files
rm $1.png $1b.png

echo "Done!"
