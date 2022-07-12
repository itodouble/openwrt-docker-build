FROM alpine as builder
ARG version=22.03.0-rc5
ARG base=https://downloads.openwrt.org/releases/
ARG file=openwrt-${version}-x86-64-rootfs.tar.gz
ARG downloadUrl=${base}${version}/targets/x86/64/${file}
RUN wget ${downloadUrl} -O openwrt-x86-64-rootfs.tar.gz
RUN mkdir openwrt
RUN tar -xzvf openwrt-x86-64-rootfs.tar.gz -C /openwrt

FROM scratch
COPY --from=builder /openwrt /
EXPOSE 22 443 80
CMD ["/sbin/init"]
