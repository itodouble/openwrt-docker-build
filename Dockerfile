FROM scratch
ARG version=22.03.0-rc3
ARG base=https://downloads.openwrt.org/releases/
ARG file=openwrt-${version}-x86-64-rootfs.tar.gz
ARG downloadUrl=https://archive.openwrt.org/releases/${version}/targets/x86/64/${file}
ADD ${downloadUrl} /
CMD ["/sbin/init"]
