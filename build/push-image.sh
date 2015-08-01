# Pushes the given image of a pokemon to every location where it is kept.
# If you call "/path/to/this-script squirtle", the file "squirtle.png" in this
# directory (56x56, grayscale, 4 colors) will be pushed to:
# ./pic/bmon/squirtle.png
# ./pic/rgmon/squirtle.png
# ./pic/ymon/squirtle.png
# The file "squirtleb.png" in this directory (32x32) will be pushed to
# ./pic/monback/squirtleb.png

# Push big image to the various mon folders
cp $1.png ../pic/bmon/
cp $1.png ../pic/rgmon/
cp $1.png ../pic/ymon/
echo "Copied $1.png to bmon, rgmon, ymon"

# Push small image to the back sprite folder
cp $1b.png ../pic/monback/
echo "Copied $1b.png to monback"

echo "Done!"
