# CMakeLists.txt (thư mục chính)
project(app)

cmake_minimum_required(VERSION 3.16)

# Thêm dự án phụ MathLib
add_subdirectory(src)
include_directories(src)

add_executable(App src/main.cpp)
target_link_libraries(App MathLib)

if(ENABLE_TEST)
  set(CMAKE_CXX_FLAGS "--coverage")
  set(CMAKE_EXE_LINKER_FLAGS "--coverage")

  add_executable(utest test/utest.cpp)
  target_link_libraries(utest MathLib gtest gmock pthread)
endif()