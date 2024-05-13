#!/bin/sh
 
ovsdb-tool create /host/var/lib/openvswitch/conf.db 2> /dev/null
ovsdb-server \
   --unixctl=/host/var/run/openvswitch/ovsdb-server.0.ctl \
   --pidfile=/host/var/run/openvswitch/ovsdb-server.pid \
   --remote=punix:/host/var/run/openvswitch/db.sock \
   --overwrite-pidfile \
   --detach \
   /host/var/lib/openvswitch/conf.db
 
ovs-vswitchd \
   --unixctl=/host/var/run/openvswitch/ovs-vswitchd.0.ctl \
   --pidfile=/host/var/run/openvswitch/ovs-vswitchd.pid \
   --overwrite-pidfile \
    unix:/host/var/run/openvswitch/db.sock