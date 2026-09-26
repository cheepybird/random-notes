set -e
echo "Building..."
make clean
make
echo "Build Successful! Running."
echo "--------"
echo ""
./eigenMapping
echo ""
echo "--------"
echo "Finished"