set(SRCS
    src/FerretLayer.cpp
    src/FerretApp.cpp
    src/FerretLayer.h
)
add_executable(FerretAppExample ${SRCS})
set_property(TARGET FerretAppExample PROPERTY CXX_STANDARD 20)

target_include_directories(FerretAppExample PRIVATE
    src
    ${CMAKE_SOURCE_DIR}/Ferret/Ferret/src
    ${CMAKE_SOURCE_DIR}/Ferret/vendor/glfw/include
    ${CMAKE_SOURCE_DIR}/Ferret/vendor/glad/include
    ${CMAKE_SOURCE_DIR}/Ferret/vendor/spdlog/include
    ${CMAKE_SOURCE_DIR}/Ferret/vendor/glm
    ${CMAKE_SOURCE_DIR}/Ferret/vendor/imgui
)

target_link_libraries(FerretAppExample
    Ferret
)

