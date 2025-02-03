mkdir -p ~/.ssh
echo "$SSH_PRIVATE_KEY" > ../private.key
sudo chmod 600 ../private.key
ssh -i $SSH_KEY_PATH root@104.156.239.224 -p 2216 -o StrictHostKeyChecking=accept-new << EOF
    cd /var/www/katrina.sh/web
    git pull
    exit
EOF
rm -f ../private.key
