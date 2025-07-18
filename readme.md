#### Blocked IP Addresses: 390701
#### Blocked IP Ranges: 1803

# IP Blocklists

This repository contains curated IP blocklists designed to help block known malicious actors while minimizing disruption to normal internet use.

The goal is to block harmful traffic without interfering with privacy tools such as VPNs and Tor. The blocklists also incorporate IPs detected by a local IPS and honeypot setup.

Lists are regularly updated, aiming to be simple, reliable, and avoid overblocking.

The IP addresses are split into [lists](https://github.com/gazpitchy92/ip-blocklist/tree/main/list) and [ranges](https://github.com/gazpitchy92/ip-blocklist/tree/main/range) for easy use.

A list formatted for Adguard/UBlock is also available [here](https://github.com/gazpitchy92/ip-blocklist/blob/main/list/ublock_adguard_blacklist.txt). 

# Blocklist Sources

| Source Name                        | URL |
|-----------------------------------|-----|
| DShield                           | https://raw.githubusercontent.com/firehol/blocklist-ipsets/refs/heads/master/dshield.netset |
| Emerging Threats - Known          | https://opendbl.net/lists/etknown.list |
| Emerging Threats - Brute Force    | https://opendbl.net/lists/bruteforce.list |
| Ipsum Threat List                 | https://opendbl.net/lists/ipsum.list |
| CI Army                           | https://raw.githubusercontent.com/firehol/blocklist-ipsets/refs/heads/master/ciarmy.ipset |
| Malc0de                           | https://raw.githubusercontent.com/firehol/blocklist-ipsets/refs/heads/master/iblocklist_malc0de.netset |
| FireHOL Level 2                   | https://raw.githubusercontent.com/firehol/blocklist-ipsets/refs/heads/master/firehol_level2.netset |
| FireHOL Level 3                   | https://raw.githubusercontent.com/firehol/blocklist-ipsets/refs/heads/master/firehol_level3.netset |
| BotScout                          | https://raw.githubusercontent.com/firehol/blocklist-ipsets/refs/heads/master/botscout.ipset |
| CINS Bad Guys                     | https://cinsscore.com/list/ci-badguys.txt |
| Romain Marcoux 40k                | https://raw.githubusercontent.com/romainmarcoux/malicious-outgoing-ip/refs/heads/main/full-outgoing-ip-40k.txt |
| AlienVault Reputation             | http://reputation.alienvault.com/reputation.data |
| BBcan177 Gist                     | https://gist.githubusercontent.com/BBcan177/bf29d47ea04391cb3eb0/raw/ |
| Hancitor IPs                      | https://raw.githubusercontent.com/LinuxTracker/Blocklists/master/HancitorIPs.txt |
| ShadowWhisperer - Scanners       | https://raw.githubusercontent.com/ShadowWhisperer/IPs/refs/heads/master/Other/Scanners |
| ShadowWhisperer - BruteForce High| https://raw.githubusercontent.com/ShadowWhisperer/IPs/refs/heads/master/BruteForce/High |
| ShadowWhisperer - BruteForce Extreme | https://raw.githubusercontent.com/ShadowWhisperer/IPs/refs/heads/master/BruteForce/Extreme |
| ShadowWhisperer - Hackers        | https://raw.githubusercontent.com/ShadowWhisperer/IPs/refs/heads/master/Malware/Hackers |
| ShadowWhisperer - Malware Hosting| https://raw.githubusercontent.com/ShadowWhisperer/IPs/refs/heads/master/Malware/Hosting |
| Binary Defense                    | https://www.binarydefense.com/banlist.txt |
| BDS Atif                          | https://raw.githubusercontent.com/firehol/blocklist-ipsets/refs/heads/master/bds_atif.ipset |
| BruteforceBlocker                | https://raw.githubusercontent.com/firehol/blocklist-ipsets/refs/heads/master/bruteforceblocker.ipset |
| Cruzit Web Attacks                | https://raw.githubusercontent.com/firehol/blocklist-ipsets/refs/heads/master/iblocklist_cruzit_web_attacks.netset |
| Rulez Bruteforce                  | https://danger.rulez.sk/projects/bruteforceblocker/blist.php |
| Emerging Threats - Compromised IPs| https://rules.emergingthreats.net/blockrules/compromised-ips.txt |
| GreenSnow                         | https://blocklist.greensnow.co/greensnow.txt |
| FireHOL Cybercrime                | https://iplists.firehol.org/files/cybercrime.ipset |
| Feodo Tracker                     | https://feodotracker.abuse.ch/downloads/ipblocklist_aggressive.txt |
| Botvrij                           | http://www.botvrij.eu/data/ioclist.ip-dst.raw |
| Naunter BT Blocklist              | https://raw.githubusercontent.com/Naunter/BT_BlockLists/refs/heads/master/list_1.txt |
| Sequoia Honeypot Blocklist        | https://raw.githubusercontent.com/SequoiaIT-Devs/honeypot-blocklist/refs/heads/main/Unauthorized%20Access%20Blocklist |
| Spamhaus DROP                     | https://www.spamhaus.org/drop/drop.txt |
| Interserver                       | https://sigs.interserver.net/ip.txt |
| Emerging Threats - FW Rules       | https://rules.emergingthreats.net/fwrules/emerging-Block-IPs.txt |
| VXVault                           | https://iplists.firehol.org/files/vxvault.ipset |
| FireHOL Webclient                 | https://iplists.firehol.org/files/firehol_webclient.netset |
| CleanTalk (7d)                    | https://iplists.firehol.org/files/cleantalk_7d.ipset |
| FireHOL MyIP                      | https://iplists.firehol.org/files/myip.ipset |
| CrowdSec SSH Brute Force          | https://raw.githubusercontent.com/Y3ll0w/CrowdSec-CAPI-Decisions/refs/heads/main/ssh-bf.json.txt |
| TRCERT Malware                    | https://raw.githubusercontent.com/cenk/trcert-malware/refs/heads/main/trcert-ips.txt |
| Avidan Sternberg Abusive IPs      | https://raw.githubusercontent.com/avidansternberg/project-blocklist/refs/heads/master/ip_lists/abusive-ips.v4.csv |
| Project Honeypot                  | http://www.projecthoneypot.org/list_of_ips.php?rss=1 |
| Async 3CX                         | https://raw.githubusercontent.com/async-it/3cx_ip_blacklist/refs/heads/main/async_ip_blacklist.json |
| Pallebone StrictBlock             | https://raw.githubusercontent.com/pallebone/StrictBlockPAllebone/master/BlockIP.txt |
| Neblink Known Scanners            | https://www.neblink.net/blocklist/KnownScanners.txt |
| Blocklist.de - Last 12 Hours      | https://api.blocklist.de/getlast.php?time=43200 |
| SANS ISC Blocklist                | https://isc.sans.edu/block.txt |
| MattyRoberts.io Threatlist        | https://www.mattyroberts.io/api/threatlist/latest |
