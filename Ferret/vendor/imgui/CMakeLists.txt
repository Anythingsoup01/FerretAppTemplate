set(SRCS
    imconfig.h
    imgui.h
    imgui.cpp
    imgui_draw.cpp
    imgui_internal.h
    imgui_tables.cpp
    imgui_widgets.cpp
    imstb_rectpack.h
    imstb_textedit.h
    imstb_truetype.h
    imgui_demo.cpp
)
add_library(ImGui STATIC ${SRCS})
set_property(TARGET ImGui PROPERTY CXX_STANDARD 17)

target_include_directories(ImGui PRIVATE
    $(ROOTDIR)/vendor/glad/include
)

