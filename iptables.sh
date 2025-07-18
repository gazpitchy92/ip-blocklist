#!/bin/bash

blacklist_ip(){
    wget -O /tmp/blacklist_list.txt https://raw.githubusercontent.com/gazpitchy92/ip-blocklist/refs/heads/main/list/blacklist.txt
    if [[ -f /tmp/blacklist_list.txt ]]; then
        total=$(wc -l < "/tmp/blacklist_list.txt")
        count=0
        batch=0
        echo "Processing blacklist $total IPs..."
        while read -r ip; do
            if (( count % 20000 == 0 )); then
                batch=$((batch + 1))
                echo "Creating ipset blacklist_ip_$batch"
                ipset flush blacklist_ip_$batch
                ipset destroy blacklist_ip_$batch
                ipset create "blacklist_ip_$batch" hash:ip || echo "Failed to create ipset blacklist_ip_$batch"
                iptables -I INPUT -m set --match-set "blacklist_ip_$batch" src -j DROP || echo "Failed to insert INPUT iptables rule for blacklist_ip_$batch"
                iptables -I OUTPUT -m set --match-set "blacklist_ip_$batch" dst -j DROP || echo "Failed to insert OUTPUT iptables rule for blacklist_ip_$batch"
                iptables -I FORWARD -m set --match-set "blacklist_ip_$batch" src -j DROP || echo "Failed to insert FORWARD src iptables rule for blacklist_ip_$batch"
                iptables -I FORWARD -m set --match-set "blacklist_ip_$batch" dst -j DROP || echo "Failed to insert FORWARD dst iptables rule for blacklist_ip_$batch"
            fi
            echo "Adding IP $ip to blacklist_ip_$batch"
            ipset add "blacklist_ip_$batch" "$ip" || echo "Failed to add IP $ip to blacklist_ip_$batch"
            ((count++))
            echo "Progress: $count/$total IPs"
        done < "/tmp/blacklist_list.txt"
        rm /tmp/blacklist_list.txt
        echo "Done. Added $count IPs to blacklist"
    fi
}

blacklist_range() {
    wget -O /tmp/blacklist_range.txt https://raw.githubusercontent.com/gazpitchy92/ip-blocklist/refs/heads/main/range/blacklist.txt
    if [[ -f /tmp/blacklist_range.txt ]]; then
        total=$(wc -l < "/tmp/blacklist_range.txt")
        count=0
        batch=0
        echo "Processing blacklist $total Ranges..."
        while read -r ip; do
            if (( count % 20000 == 0 )); then
                batch=$((batch + 1))
                echo "Creating ipset blacklist_range_$batch"
                ipset flush blacklist_range_$batch
                ipset destroy blacklist_range_$batch
                ipset create "blacklist_range_$batch" hash:net || echo "Failed to create ipset blacklist_range_$batch"
                iptables -I INPUT -m set --match-set "blacklist_range_$batch" src -j DROP || echo "Failed to insert INPUT iptables rule for blacklist_range_$batch"
                iptables -I OUTPUT -m set --match-set "blacklist_range_$batch" dst -j DROP || echo "Failed to insert OUTPUT iptables rule for blacklist_range_$batch"
                iptables -I FORWARD -m set --match-set "blacklist_range_$batch" src -j DROP || echo "Failed to insert FORWARD src iptables rule for blacklist_range_$batch"
                iptables -I FORWARD -m set --match-set "blacklist_range_$batch" dst -j DROP || echo "Failed to insert FORWARD dst iptables rule for blacklist_range_$batch"
            fi
            echo "Adding IP $ip to blacklist_range_$batch"
            ipset add "blacklist_range_$batch" "$ip" || echo "Failed to add IP $ip to blacklist_range_$batch"
            ((count++))
            echo "Progress: $count/$total IPs"
        done < "/tmp/blacklist_range.txt"
        rm /tmp/blacklist_range.txt
        echo "Done. Added $count Ranges to blacklist"
    fi
}

blacklist_ip
blacklist_range