cmake_minimum_required(VERSION 3.20)
project(leetcode_cpp LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Debug)
endif()

add_compile_options(-Wall -Wextra -Wpedantic -Werror)

include(FetchContent)
FetchContent_Declare(
  Catch2
  GIT_REPOSITORY https://github.com/catchorg/Catch2.git
  GIT_TAG v3.7.1
)
FetchContent_MakeAvailable(Catch2)

enable_testing()

# Every problem approach that ships both solution.cpp and test.cpp becomes its
# own test executable, named after its path under solutions/, e.g.
# solutions_0001-0100_0001-two-sum_optimized.
file(GLOB_RECURSE ALL_TEST_FILES CONFIGURE_DEPENDS "${CMAKE_SOURCE_DIR}/solutions/*/*/*/test.cpp")

foreach(test_file ${ALL_TEST_FILES})
  get_filename_component(approach_dir "${test_file}" DIRECTORY)
  set(solution_file "${approach_dir}/solution.cpp")

  if(EXISTS "${solution_file}")
    file(RELATIVE_PATH rel_path "${CMAKE_SOURCE_DIR}/solutions" "${approach_dir}")
    string(REPLACE "/" "_" target_name "solutions_${rel_path}")

    add_executable(${target_name} "${solution_file}" "${test_file}")
    target_include_directories(${target_name} PRIVATE "${approach_dir}")
    target_link_libraries(${target_name} PRIVATE Catch2::Catch2WithMain)

    add_test(NAME ${target_name} COMMAND ${target_name})
  endif()
endforeach()
