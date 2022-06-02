FROM scratch
ARG version=21.02.3
ARG base=https://archive.openwrt.org/releases/
ARG file=openwrt-${version}-x86-64-rootfs.tar.gz
ARG downloadUrl=https://archive.openwrt.org/releases/${version}/targets/x86/64/${file}
ADD ${downloadUrl} /
CMD ["/sbin/init"]
