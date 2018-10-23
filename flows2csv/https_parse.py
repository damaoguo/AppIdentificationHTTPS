#!/usr/bin/env python
#coding=utf-8
import sys
import hashlib
from hashlib import md5
from scapy.all import *
from scapy.all import IP,TCP
from scapy_ssl_tls.ssl_tls import *
from tcp_stream import TCPStream
import argparse

# 五元组确定一条流
def create_forward_flow_key(pkt):
    return "%s:%s->%s:%s:%s"%(pkt.src,pkt.sport,pkt.dst,pkt.dport,pkt.proto)
def create_reverse_flow_key(pkt):
    return "%s:%s->%s:%s:%s"%(pkt.dst,pkt.dport,pkt.src,pkt.sport,pkt.proto)
def create_flow_keys(pkt):
    return create_forward_flow_key(pkt),create_reverse_flow_key(pkt)

flows = {}

attrs = ['protocol_name',
         'src',
         'sport',
         'dst',
         'dport',
         'proto',
         'extension_servername_indication',
         'push_flag_ratio',
         'average_len',
         'average_payload_len',
         'pkt_count',
         'flow_average_inter_arrival_time',
         'kolmogorov',
         'shannon',
         'max_len',
         'min_len',
         'std_len',
         #'len_extension_signature_algorithms',
         'len_cipher_suites',
         'avrg_tcp_window',
         'max_tcp_window',
         'min_tcp_window',
         'var_tcp_window',
         'session_id_length',
         'avrg_ip_ttl',
         'max_ip_ttl',
         'min_ip_ttl'
         ]

def lookup_stream(key,reverse_key):

    if key in flows.keys():
        return key,flows[key]
    elif reverse_key in flows.keys():
        return reverse_key,flows[reverse_key]
    else:
        return key,None

#HINT: appid https://code.google.com/p/appid/
def proto_name(sport,dport,use_dpi=False,payload=None):
    if dport == 80 or sport == 80:
        return "http"
    if dport == 3306 or sport == 3306:
        return "mysql"
    if dport == 22 or sport == 22:
        return "ssh"
    if dport == 443 or sport == 443:
        return "https"
    return "unknown"

def main(pcap_file):
    packets=rdpcap("../../data/data1/"+pcap_file)
    packets = [ pkt for pkt in packets if IP in pkt for p in pkt if TCP in p ]
    #here we are sure ALL PACKETS ARE TCP
    for pkt in packets:
        flow_tuple = reverse_flow_tuple = key_to_search = None
        flow_tuple,reverse_flow_tuple = create_flow_keys(pkt[IP])
        flow_key,tcp_stream = lookup_stream(flow_tuple,reverse_flow_tuple)
        if tcp_stream is None:
            tcp_stream = TCPStream(pkt[IP])
        else:
            tcp_stream.add(pkt[IP])

        flows[flow_key] = tcp_stream

    with open('../../data/output/'+pcap_file[8:-16]+'.csv','a')as f:
        # f.write('id,'+','.join(attrs)+'\n')
        for (flow,i) in zip(flows.values(),range(len(flows))):
            # 只有长度大于20的流才会保留
            if flow.pkt_count>=20:
                tmp=("%s,%s,%s,%s,%s,%s,%s,%.3f,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"
                     %(proto_name(flow.sport,flow.dport),
                       flow.src,
                       flow.sport,
                       flow.dst,
                       flow.dport,
                       flow.proto,
                       str(set(flow.extension_servername_indication)).strip("set([])").replace('.','').replace(',','').replace("'",""),
                       flow.push_flag_ratio(),
                       flow.avrg_len(),
                       flow.avrg_payload_len(),
                       flow.pkt_count,
                       flow.avrg_inter_arrival_time(),
                       flow.kolmogorov(),
                       flow.shannon(),
                       flow.max_len(),
                       flow.min_len(),
                       flow.std_len(),
                       #len(flow.extension_signature_algorithms),
                       len(flow.cipher_suites),
                       flow.avrg_window(),
                       flow.max_window(),
                       flow.min_window(),
                       flow.var_window(),
                       max(flow.session_id_length),
                       flow.avrg_ip_ttl(),
                       flow.max_ip_ttl(),
                       flow.min_ip_ttl()
                       ))
                f.write(pcap_file[8:-5]+"_"+str(i)+","+tmp+"\n")
                print ("packet number:%d"%i)
        print ("finish pcap_file[8:-5]")
if __name__ == '__main__':
    pcap_files=os.listdir('../../data/data1/')

    softwares=set([pcap_file[8:-16] for pcap_file in pcap_files])
    for software in softwares:
        with open('../../data/output/'+software+'.csv','w+')as f:
            f.write('id,'+','.join(attrs)+'\n')
    for pcap_file in pcap_files:
        main(pcap_file)