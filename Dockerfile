FROM scratch
ARG version=21.02.3
ARG base=https://archive.openwrt.org/releases/
ARG file=openwrt-${version}-x86-64-rootfs.tar.gz
ARG downloadUrl=${base}${version}/targets/x86/64/${file}
ADD ${downloadUrl} /
EXPOSE 22 443 80
USER root
CMD ["/sbin/init"]
