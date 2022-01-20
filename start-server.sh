#curl https://raw.githubusercontent.com/3427076214/file-server/main/init.sh -o init.sh && bash init.sh

git clone https://github.com/3427076214/file-server.git
cd file-server
git pull

read -t 300 -p "Please input authtoken: " myauthtoken
echo -e "\n"
echo "authtoken is $myauthtoken"

cd bin
chmod a+x natapp
chmod a+x file-server
cp file-server /root/kubernetes-lab/examples/kubernetes-simple/file-server.exe

#nohup command > myout.file 2>&1 &
nohup ./natapp -authtoken=$myauthtoken &

cd /root/kubernetes-lab/examples/kubernetes-simple
./file-server.exe