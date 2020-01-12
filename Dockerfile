FROM rclone/rclone
RUN \
  apk --no-cache add git g++ make python linux-headers; \
  git clone --depth=1 https://github.com/trapexit/mergerfs.git; \
  git clone --depth=1 https://github.com/trapexit/mergerfs-tools.git; \
  pushd mergerfs; make && make install; popd; \
  pushd mergerfs-tools; make && make install; popd; \
  apk del git make;
