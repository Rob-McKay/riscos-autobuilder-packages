--- lib/errors.c.orig	2019-06-09 22:38:20.000000000 +0100
+++ lib/errors.c	2020-07-14 21:19:32.305660300 +0100
@@ -20,6 +20,10 @@
 #include <stdint.h>
 #include <sys/socket.h>
 
+#ifndef ENODATA
+#define ENODATA 61
+#endif
+
 #include "smb2.h"
 
 const char *nterror_to_str(uint32_t status) {
