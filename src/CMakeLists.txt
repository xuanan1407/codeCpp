# CMakeLists.txt (thư mục MathLib)
# project(MathLib)

# Định nghĩa thư viện MathLib
add_library(MathLib math.cpp english.cpp)
set(CMAKE_CXX_FLAGS "--coverage")
set(CMAKE_EXE_LINKER_FLAGS "--coverage")
