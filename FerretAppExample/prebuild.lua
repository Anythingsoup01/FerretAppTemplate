project "FerretAppExample"
    language "C++"
    dialect "20"
    kind "ConsoleApp"

    files
    {
        "src/*.cpp",
        "src/*.h",
    }

    includedirs 
    {
        "src",
        "$(WORKSPACEDIR)/Ferret/src",
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
