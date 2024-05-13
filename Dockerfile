FROM alpine
 
RUN apk --update add openvswitch && mkdir -p /host/var/run/openvswitch && mkdir -p /host/var/lib/openvswitch
COPY cmd.sh /cmd.sh
RUN chmod +x /cmd.sh
CMD ["./cmd.sh"]