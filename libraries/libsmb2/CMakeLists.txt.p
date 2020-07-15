--- examples/CMakeLists.txt.orig	2020-07-15 10:40:17.174313100 +0100
+++ examples/CMakeLists.txt	2020-07-15 11:48:06.841389300 +0100
@@ -1,6 +1,8 @@
 find_library(POPT_LIBRARY popt)
 
-list(APPEND CORE_LIBRARIES ${POPT_LIBRARY})
+list(APPEND CORE_LIBRARIES ${POPT_LIBRARY} smb2)
+
+message(STATUS " Libraries used for examples: ${CORE_LIBRARIES}")
 
 set(SOURCES smb2-cat-async
             smb2-cat-sync
@@ -16,9 +18,9 @@
             smb2-truncate-sync)
 
 foreach(TARGET ${SOURCES})
-  add_executable(${TARGET} ${TARGET}.c)
-  target_link_libraries(${TARGET} ${CORE_LIBRARIES})
-  add_dependencies(${TARGET} smb2)
+  add_executable("${TARGET}" ${TARGET}.c)
+  target_link_libraries("${TARGET}" ${CORE_LIBRARIES})
+  add_dependencies("${TARGET}" smb2)
 endforeach()
 
 add_definitions(-Werror "-D_U_=__attribute__((unused))")
