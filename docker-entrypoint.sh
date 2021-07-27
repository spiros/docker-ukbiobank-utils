#!/bin/bash
set -e
if [ $# -eq 0 ]; then
    echo “Please provide [ukbunpack ukbfetch ukblink ukbgene ukbconv ukbmd5 gfetch]”;
else
    $@
fi

