include(CMakeFindDependencyMacro)

find_dependency(Eigen3)
find_dependency(OpenGL)

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)
set(G2O_INCLUDE_DIR  "${PACKAGE_PREFIX_DIR}/include")
set(G2O_INCLUDE_DIRS "${G2O_INCLUDE_DIR}")
set(G2O_LIBRARIE_DIR "${PACKAGE_PREFIX_DIR}/lib")
set(G2O_LIBRARIE_DIRS "${G2O_LIBRARIE_DIR}")
set(G2O_LIBS_RELEASE g2o_core g2o_stuff)
set(G2O_LIBS_DEBUG g2o_core_d g2o_stuff_d)

include("${CMAKE_CURRENT_LIST_DIR}/g2oTargets.cmake")

