sudo apt-get -y install tesseract-ocr  
sudo cp ./chi_sim.traineddata /usr/share/tesseract-ocr/4.00/tessdata
cd ./cmake-build-debug
cmake ..
make
./main
