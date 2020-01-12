FROM rclone/rclone
RUN \
  apk --no-cache add git g++ make python python3 linux-headers; \
  git clone --depth=1 https://github.com/trapexit/mergerfs.git; \
  git clone --depth=1 https://github.com/trapexit/mergerfs-tools.git; \
  cd mergerfs; make && make install; cd ..; \
  cd mergerfs-tools; make && make install; cd ..; \
  apk del git make;
