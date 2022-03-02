FROM centos:7 as installer

WORKDIR /
RUN curl -O https://nodejs.org/dist/v16.9.1/node-v16.9.1-linux-x64.tar.gz
RUN tar zxf node-v16.9.1-linux-x64.tar.gz
RUN mv node-v16.9.1-linux-x64 node

FROM scratch
WORKDIR /
COPY --from=installer /node/bin/node /node/bin/node

COPY --from=installer /lib64/libc.so.6 /lib64/libc.so.6
COPY --from=installer /lib64/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2
# COPY --from=installer /lib64/libtinfo.so.5 /lib64/libtinfo.so.5
COPY --from=installer /lib64/libdl.so.2 /lib64/libdl.so.2

# COPY --from=installer /bin/echo /bin/echo
# COPY --from=installer /bin/ldd /bin/ldd
# COPY --from=installer /bin/sh /bin/sh
# COPY --from=installer /bin/cat /bin/cat
# COPY --from=installer /bin/bash /usr/bin/bash

# node
COPY --from=installer /lib64/libstdc++.so.6 /lib64/libstdc++.so.6
COPY --from=installer /lib64/libm.so.6 /lib64/libm.so.6
COPY --from=installer /lib64/libgcc_s.so.1 /lib64/libgcc_s.so.1
COPY --from=installer /lib64/libpthread.so.0 /lib64/libpthread.so.0

COPY index.js .
ENV PATH=/node/bin:/bin:/usr/bin
CMD [ "node", "index.js" ]

