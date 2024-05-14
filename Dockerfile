FROM alpine
 
RUN apk --update add openvswitch && mkdir -p /host/var/run/openvswitch && mkdir -p /host/var/lib/openvswitch
COPY cmd.sh /cmd.sh
COPY init.sh /init.sh
RUN chmod +x /cmd.sh && chmod +x /init.sh
CMD ["./cmd.sh"]