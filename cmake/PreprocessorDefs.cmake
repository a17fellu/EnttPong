set(PREPROCESSOR_FLAGS
    "UNICODE"
    "_UNICODE"
    "_SILENCE_ALL_CXX17_DEPRECATION_WARNINGS"
)

set(PREPROCESSOR_FLAGS_DEBUG_GENERAL
    "${PREPROCESSOR_FLAGS}"
    "_DEBUG"
)

set(PREPROCESSOR_FLAGS_RELEASE_GENERAL
    "${PREPROCESSOR_FLAGS}"
    "NDEBUG"
)

if (MSVC)
    set (WINDOWS_FLAGS
        "_WIN64"
        "_CRT_SECURE_NO_WARNINGS"
        "_CRT_SECURE_NO_DEPRECATE"
        "_CRT_NONSTDC_NO_DEPRECATE"
        "_CONSOLE"
    )

    set(PREPROCESSOR_FLAGS_DEBUG 
        "${PREPROCESSOR_FLAGS_DEBUG_GENERAL}"
        "${WINDOWS_FLAGS}"
    )

    set(PREPROCESSOR_FLAGS_RELEASE
        "${PREPROCESSOR_FLAGS_RELEASE_GENERAL}"
        "${WINDOWS_FLAGS}"
    )
else()
    set(UNIX_FLAGS
        "_GLIBCXX_HAS_GTHREADS"
        "_GLIBCXX_USE_NANOSLEEP"
        "_LIBCPP_ENABLE_NODISCARD"
        "_LIBCPP_DISABLE_DEPRECATION_WARNINGS"
    )

    set(PREPROCESSOR_FLAGS_DEBUG 
        "${PREPROCESSOR_FLAGS_DEBUG_GENERAL}"
        "${UNIX_FLAGS}"
        "_LIBCPP_DEBUG"
        "_LIBCPP_ENABLE_THREAD_SAFETY_ANNOTATIONS"
    )

    set(PREPROCESSOR_FLAGS_RELEASE
        "${PREPROCESSOR_FLAGS_RELEASE_GENERAL}"
        "${UNIX_FLAGS}"
    )
endif()