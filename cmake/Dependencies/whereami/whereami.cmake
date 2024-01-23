cmake_minimum_required(VERSION 3.11)
CPMAddPackage(
  NAME whereami
  GIT_TAG ba364cd54fd431c76c045393b6522b4bff547f50
  GITHUB_REPOSITORY "gpakosz/whereami"
)
add_library(whereami STATIC
    "${whereami_SOURCE_DIR}/src/whereami.c"
)
target_include_directories(whereami
    PUBLIC "${whereami_SOURCE_DIR}/src"
)
install(
TARGETS
    whereami
RUNTIME
DESTINATION
    bin
)
set_target_properties(whereami PROPERTIES LINKER_LANGUAGE C)
