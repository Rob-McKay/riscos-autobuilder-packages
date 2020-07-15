--- include/portable-endian.h.orig	2020-07-14 21:28:06.042313100 +0100
+++ include/portable-endian.h	2020-07-15 10:37:14.704552000 +0100
@@ -26,6 +26,23 @@
 
 #	include <endian.h>
 
+#elif defined(__riscos__)
+
+#   define htobe16(x) __builtin_bswap16(x)
+#   define htole16(x) (x)
+#   define be16toh(x) __builtin_bswap16(x)
+#   define le16toh(x) (x)
+
+#   define htobe32(x) __builtin_bswap32(x)
+#   define htole32(x) (x)
+#   define be32toh(x) __builtin_bswap32(x)
+#   define le32toh(x) (x)
+
+#   define htobe64(x) __builtin_bswap64(x)
+#   define htole64(x) (x)
+#   define be64toh(x) __builtin_bswap64(x)
+#   define le64toh(x) (x)
+
 #elif defined(__APPLE__)
 
 #	include <libkern/OSByteOrder.h>
