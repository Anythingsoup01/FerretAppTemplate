set(SRCS
    "src/FerretApp.cpp"
    "src/FerretLayer.cpp"
    "src/FerretLayer.h"
)
add_executable(FerretApp ${SRCS})
set_property(TARGET FerretApp PROPERTY CXX_STANDARD 20)

target_include_directories(FerretApp PRIVATE
    "src"
    "${CMAKE_SOURCE_DIR}/Ferret/Ferret/src"
    "${CMAKE_SOURCE_DIR}/Ferret/vendor/glfw/include"
    "${CMAKE_SOURCE_DIR}/Ferret/vendor/glad/include"
    "${CMAKE_SOURCE_DIR}/Ferret/vendor/spdlog/include"
    "${CMAKE_SOURCE_DIR}/Ferret/vendor/glm"
    "${CMAKE_SOURCE_DIR}/Ferret/vendor/imgui"
)

target_link_libraries(FerretApp
    Ferret
)

