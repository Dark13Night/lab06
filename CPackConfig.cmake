include(InstallRequiredSystemLibraries)

set(CPACK_PACKAGE_CONTACT kitty7.dec.2004@gmail.com)
set(CPACK_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_PACKAGE_NAME "solverapp")
set(CPACK_PACKAGE_DESCRIPTION_FILE ${CMAKE_CURRENT_SOURCE_DIR}/DESCRIPTION)
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "static C++ library for solver")
set(CPACK_PACKAGE_VENDOR "Dark13Night")
set(CPACK_PACKAGE_PACK_NAME "solver-${PRINT_VERSION}")

set(CPACK_SOURCE_INSTALLED_DIRECTORIES 
	"${CMAKE_SOURCE_DIR}/solver_application; solver_application"
	"${CMAKE_SOURCE_DIR}/solver_lib; solver_lib"
	"${CMAKE_SOURCE_DIR}/formatter_ex_lib; formatter_ex_lib"
	"${CMAKE_SOURCE_DIR}/formatter_lib; formatter_lib")

set(CPACK_RESOURCE_FILE_LICENSE ${CMAKE_CURRENT_SOURCE_DIR}/LICENSE)
set(CPACK_RESOURCE_FILE_README ${CMAKE_CURRENT_SOURCE_DIR}/README.md)

set(CPACK_SOURCE_GENERATOR "TGZ;ZIP;DEB;RPM;MSI;DMG")

#set(CPACK_DEBIAN_PACKAGE_NAME "solverapp-dev")
#set(CPACK_DEBIAN_FILE_NAME "solver-${PRINT_VERSION}.deb")
set(CPACK_DEBIAN_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "all")
#set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Dark13Night")
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "Solves quadratic equations, yo")

set(CPACK_GENERATOR "DEB;RPM")

#set(CPACK_RPM_PACKAGE_NAME "solverapp-dev")
set(CPACK_RPM_PACKAGE_SUMMARY "Solves quadratic equations, yo")
#set(CPACK_RPM_FILE_NAME "solver-${PRINT_VERSION}.rpm")
#set(CPACK_RPM_PACKAGE_VERSION ${PRINT_VERSION})


include(CPack)
