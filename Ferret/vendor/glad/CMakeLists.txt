set(SRCS
    include/glad/glad.h
    include/KHR/khrplatform.h
    src/glad.c
)
add_library(Glad STATIC ${SRCS})
set_property(TARGET Glad PROPERTY C_STANDARD )

target_include_directories(Glad PRIVATE
    include
)

