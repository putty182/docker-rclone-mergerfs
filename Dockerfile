FROM rclone/rclone
RUN \
  apk --no-cache add apk add git g++ make python; \
  git clone --depth=1 https://github.com/trapexit/mergerfs.git; \
  cd mergerfs; \
  make && make install
