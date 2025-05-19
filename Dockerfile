FROM registry.gitlab.com/rwkgyg/shadowsocks-libev:latest
ENV PASSWORD=changeme
ENV METHOD=aes-256-gcm
ENV PORT=443
EXPOSE ${PORT}
CMD ss-server -s 0.0.0.0 -p ${PORT} -k ${PASSWORD} -m ${METHOD} --fast-open
