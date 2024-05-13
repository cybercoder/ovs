#!/bin/sh
ovs-vsctl --db=unix:/host/var/run/openvswitch/db.sock add-br $OVS_BRIDGE
ovs-vsctl --db=unix:/host/var/run/openvswitch/db.sock add-port $OVS_BRIDGE $NODE_NIC