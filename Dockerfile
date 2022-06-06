FROM scratch
ARG version=21.02.3
ARG base=https://downloads.openwrt.org/releases/
ARG file=openwrt-${version}-x86-64-rootfs.tar.gz
ARG downloadUrl=${base}${version}/targets/x86/64/${file}
ADD ${downloadUrl} /
CMD ["/sbin/init"]
