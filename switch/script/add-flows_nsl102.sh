ovs-ofctl add-flow br16 table=0,priority=100,in_port=15,ip,actions=goto_table:76
ovs-ofctl add-flow br16 table=0,priority=100,in_port=16,ip,actions=goto_table:76
ovs-ofctl add-flow br16 table=0,priority=100,in_port=13,ip,actions=goto_table:76
ovs-ofctl add-flow br16 table=0,priority=100,in_port=14,ip,actions=goto_table:76
ovs-ofctl add-flow br16 priority=100,table=76,in_port=13,ip,nw_dst=10.4.0.0/16,actions=push_vlan:0x8100,set_field:2-\>vlan_vid,goto_table:77
ovs-ofctl add-flow br16 priority=100,table=76,in_port=14,ip,nw_dst=10.4.0.0/16,actions=push_vlan:0x8100,set_field:4-\>vlan_vid,goto_table:77
ovs-ofctl add-flow br16 priority=99,table=76,ip,actions=goto_table:77
ovs-ofctl add-flow br16 table=77,priority=100,ip,nw_dst=10.4.1.1/0.255.255.0,actions=output:13
ovs-ofctl add-flow br16 table=77,priority=100,ip,nw_dst=10.4.2.1/0.255.255.0,actions=output:14
ovs-ofctl add-flow br16 table=77,priority=99,ip,nw_dst=10.4.4.2/0.0.0.255,actions=output:15
ovs-ofctl add-flow br16 table=77,priority=99,ip,nw_dst=10.4.4.3/0.0.0.255,actions=output:16
ovs-ofctl add-flow br13 table=0,priority=100,in_port=3,ip,actions=goto_table:61
ovs-ofctl add-flow br13 table=0,priority=100,in_port=4,ip,actions=goto_table:61
ovs-ofctl add-flow br13 table=0,priority=100,in_port=1,ip,actions=goto_table:61
ovs-ofctl add-flow br13 table=0,priority=100,in_port=2,ip,actions=goto_table:61
ovs-ofctl add-flow br13 priority=100,table=61,in_port=1,ip,nw_dst=10.3.0.0/16,actions=push_vlan:0x8100,set_field:1-\>vlan_vid,goto_table:62
ovs-ofctl add-flow br13 priority=100,table=61,in_port=2,ip,nw_dst=10.3.0.0/16,actions=push_vlan:0x8100,set_field:3-\>vlan_vid,goto_table:62
ovs-ofctl add-flow br13 priority=99,table=61,ip,actions=goto_table:62
ovs-ofctl add-flow br13 table=62,priority=100,ip,nw_dst=10.3.1.1/0.255.255.0,actions=output:1
ovs-ofctl add-flow br13 table=62,priority=100,ip,nw_dst=10.3.2.1/0.255.255.0,actions=output:2
ovs-ofctl add-flow br13 table=62,priority=99,ip,nw_dst=10.3.3.2/0.0.0.255,actions=output:3
ovs-ofctl add-flow br13 table=62,priority=99,ip,nw_dst=10.3.3.3/0.0.0.255,actions=output:4
ovs-ofctl add-flow br14 table=0,priority=100,in_port=7,ip,actions=goto_table:66
ovs-ofctl add-flow br14 table=0,priority=100,in_port=8,ip,actions=goto_table:66
ovs-ofctl add-flow br14 table=0,priority=100,in_port=5,ip,actions=goto_table:66
ovs-ofctl add-flow br14 table=0,priority=100,in_port=6,ip,actions=goto_table:66
ovs-ofctl add-flow br14 priority=100,table=66,in_port=5,ip,nw_dst=10.3.0.0/16,actions=push_vlan:0x8100,set_field:2-\>vlan_vid,goto_table:67
ovs-ofctl add-flow br14 priority=100,table=66,in_port=6,ip,nw_dst=10.3.0.0/16,actions=push_vlan:0x8100,set_field:4-\>vlan_vid,goto_table:67
ovs-ofctl add-flow br14 priority=99,table=66,ip,actions=goto_table:67
ovs-ofctl add-flow br14 table=67,priority=100,ip,nw_dst=10.3.1.1/0.255.255.0,actions=output:5
ovs-ofctl add-flow br14 table=67,priority=100,ip,nw_dst=10.3.2.1/0.255.255.0,actions=output:6
ovs-ofctl add-flow br14 table=67,priority=99,ip,nw_dst=10.3.4.2/0.0.0.255,actions=output:7
ovs-ofctl add-flow br14 table=67,priority=99,ip,nw_dst=10.3.4.3/0.0.0.255,actions=output:8
ovs-ofctl add-flow br15 table=0,priority=100,in_port=11,ip,actions=goto_table:71
ovs-ofctl add-flow br15 table=0,priority=100,in_port=12,ip,actions=goto_table:71
ovs-ofctl add-flow br15 table=0,priority=100,in_port=9,ip,actions=goto_table:71
ovs-ofctl add-flow br15 table=0,priority=100,in_port=10,ip,actions=goto_table:71
ovs-ofctl add-flow br15 priority=100,table=71,in_port=9,ip,nw_dst=10.4.0.0/16,actions=push_vlan:0x8100,set_field:1-\>vlan_vid,goto_table:72
ovs-ofctl add-flow br15 priority=100,table=71,in_port=10,ip,nw_dst=10.4.0.0/16,actions=push_vlan:0x8100,set_field:3-\>vlan_vid,goto_table:72
ovs-ofctl add-flow br15 priority=99,table=71,ip,actions=goto_table:72
ovs-ofctl add-flow br15 table=72,priority=100,ip,nw_dst=10.4.1.1/0.255.255.0,actions=output:9
ovs-ofctl add-flow br15 table=72,priority=100,ip,nw_dst=10.4.2.1/0.255.255.0,actions=output:10
ovs-ofctl add-flow br15 table=72,priority=99,ip,nw_dst=10.4.3.2/0.0.0.255,actions=output:11
ovs-ofctl add-flow br15 table=72,priority=99,ip,nw_dst=10.4.3.3/0.0.0.255,actions=output:12