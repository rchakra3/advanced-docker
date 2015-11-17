#!/bin/bash

if [ $# -lt 2 ]; then
    echo "USAGE: sh server_file_on_port.sh [filename] [port]"
else
    socat TCP-LISTEN:$2,fork OPEN:$1,rdonly
fi
