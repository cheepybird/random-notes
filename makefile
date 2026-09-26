# Variables, need clang
CXX = g++
BREW_ROOT = /opt/homebrew/opt
OPENMP_ROOT = $(BREW_ROOT)/libomp
OPENCV_ROOT = $(BREW_ROOT)/opencv
EIGEN_PATH = -Iext/Eigen
MY_LIBRARY_PATH = -Iinclude
SRC_PATH = -Isrc

# need Xpreprocessor for clang
OPENMP_INC = -I$(OPENMP_ROOT)/include
OPENMP_LIB = -L$(OPENMP_ROOT)/lib
OPENCV_INC = -I$(OPENCV_ROOT)/include/opencv4
OPENCV_LIB = -L$(OPENCV_ROOT)/lib
CXXFLAGS = -Wall -O3 -Xpreprocessor -fopenmp $(OPENMP_INC) $(EIGEN_PATH) $(OPENCV_INC) $(MY_LIBRARY_PATH) $(SRC_PATH)
LDFLAGS = $(OPENCV_LIB) $(OPENMP_LIB) -lomp -Wl,-rpath,$(OPENCV_ROOT)/lib 
LIBS = -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_videoio -lopencv_imgcodecs

TARGET = eigenMapping
SRC = src/eigenMapping.cpp
# MY_CLASSES = <things in src that arent main>

# Builds the executable
all: $(TARGET)

$(TARGET): $(SRC) $(MY_CLASSES)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET) $(LDFLAGS) $(LIBS) 
# $(MY_CLASSES)

# Removes the build files
clean:
	rm -f $(TARGET)

