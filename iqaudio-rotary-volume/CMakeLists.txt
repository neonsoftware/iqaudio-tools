cmake_minimum_required(VERSION 3.12.2)

project (iqaudio-tools)

INSTALL(PROGRAMS ${CMAKE_CURRENT_SOURCE_DIR}/scripts/iqaudio-rotary-volume.service
        DESTINATION /lib/systemd/system/)

SET(CPACK_GENERATOR "DEB")
SET(CPACK_DEBIAN_PACKAGE_MAINTAINER "neonsoftware")
SET(CPACK_DEBIAN_PACKAGE_DEPENDS curl)
SET(CPACK_DEBIAN_PACKAGE_ARCHITECTURE armhf)

#Set the script file preinst to execute before installation
set( CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA "${CMAKE_CURRENT_SOURCE_DIR}/scripts/preinst;${CMAKE_CURRENT_SOURCE_DIR}/scripts/postinst;${CMAKE_CURRENT_SOURCE_DIR}/scripts/prerm;" )
INCLUDE(CPack)
