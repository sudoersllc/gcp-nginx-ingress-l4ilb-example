#!/bin/sh

socat -T 1 -d -d tcp-l:10081,reuseaddr,fork,crlf system:"echo -e \"\\\"HTTP/1.0 200 OK\\\nDocumentType: text/html\\\n\\\n<html>date: \$\(date\)<br>server:\$SOCAT_SOCKADDR:\$SOCAT_SOCKPORT<br>client: \$SOCAT_PEERADDR:\$SOCAT_PEERPORT\\\n<pre>\\\"\"; cat; echo -e \"\\\"\\\n</pre></html>\\\"\""
