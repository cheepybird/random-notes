# Git submodule
- things like eigen: `git submodule add https://gitlab.com/libeigen/eigen.git ext/eigen`
- adds eigen to ext directory
- adds ext/eigen to .gitmodules file

# makefile
can just type `make` instead of long g++ command
### Variables
- `CXX = g++`, etc.
### Building executable 
- `all: $(TARGET)`
- `$(TARGET): $(SRC) $(MY_CLASSES) $(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET) $(LDFLAGS) $(LIBS) $(MY_CLASSES)`
### make clean
- `clean: rm -f $(TARGET)`
