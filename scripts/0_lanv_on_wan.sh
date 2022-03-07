#!/bin/sh
#
# 单线复用wan口, 通过vlan的方式延伸lan
#

#LAN延伸到外部的VLAN ID
LAN_VLAN_ID=10

vconfig add "eth0" "$LAN_VLAN_ID"
brctl addif "br0" "eth0.$LAN_VLAN_ID"
ifconfig "eth0.$LAN_VLAN_ID" up
logger "lan通过br0桥接eth0成功"
