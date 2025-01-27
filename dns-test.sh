set -euo pipefail

function resolve () {
    dig $nameserver +short $@
}

nameserver=@$1

resolve ns.sri.ies
resolve ftp.sri.ies
resolve mirror.sri.ies

resolve -x 192.168.57.10
resolve -x 192.168.57.20
resolve -x 192.168.57.30