
read -t 30 -p "Please input authtoken: " myauthtoken
echo -e "\n"
echo "authtoken is $myauthtoken"

chmod a+x natapp
chmod a+x file-server

#nohup command > myout.file 2>&1 &
nohup ./natapp -authtoken=$myauthtoken &
./file-server