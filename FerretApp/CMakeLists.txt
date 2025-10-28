set(SRCS
    "src/FerretApp.cpp"
    "src/FerretLayer.cpp"
    "src/FerretLayer.h"
)
add_executable(FerretApp ${SRCS})
set_property(TARGET FerretApp PROPERTY CXX_STANDARD 20)

target_include_directories(FerretApp PRIVATE
    "src"
    "$(WORKSPACEDIR)/Ferret/Ferret/src"
    "$(WORKSPACEDIR)/Ferret/vendor/glfw/include"
    "$(WORKSPACEDIR)/Ferret/vendor/glad/include"
    "$(WORKSPACEDIR)/Ferret/vendor/spdlog/include"
    "$(WORKSPACEDIR)/Ferret/vendor/glm"
    "$(WORKSPACEDIR)/Ferret/vendor/imgui"
)

target_link_libraries(FerretApp
    Ferret
)

