project "FerretApp"
    language "C++"
    dialect "17"
    kind "ConsoleApp"

    files
    {
        "src/*.cpp",
        "src/*.h",
    }

    includedirs
    {
        "$(WORKSPACEDIR)/Ferret/Ferret/src",
        "$(WORKSPACEDIR)/Ferret/vendor/glfw/include",
        "$(WORKSPACEDIR)/Ferret/vendor/glad/include",
        "$(WORKSPACEDIR)/Ferret/vendor/spdlog/include",
        "$(WORKSPACEDIR)/Ferret/vendor/glm",
        "$(WORKSPACEDIR)/Ferret/vendor/imgui",
    }

    links
    {
        "Ferret",
    }

    filter "configurations:Debug"
        defines "FE_DEBUG"

    filter "configurations:Release"
        defines "FE_RELEASE"

