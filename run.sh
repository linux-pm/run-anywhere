#!/bin/bash

username=USER_USERNAME
password=USER_PASSWORD

list=`cat servers.list`
pack=script.sh

for server in $list; do
        echo ""
        echo $server

        scp_command="sshpass -p "$password" scp -o StrictHostKeyChecking=no -o NumberOfPasswordPrompts=1 -o ConnectTimeout=10 -q $pack $username@$server:/tmp"
        $scp_command

        ssh_command="sshpass -p "$password" ssh -o StrictHostKeyChecking=no -o NumberOfPasswordPrompts=1 -o ConnectTimeout=10 -q $username@$server"

        # running without sudo
        $ssh_command chmod +x /tmp/script.sh
        $ssh_command /bin/sh /tmp/script.sh
        $ssh_command rm -fr /tmp/script.sh

        # running with sudo
        #$ssh_command chmod +x /tmp/script.sh
        #$ssh_command sudo /bin/sh /tmp/script.sh
        #$ssh_command sudo rm -fr /tmp/script.sh

done
