wget https://ghproxy.com/https://raw.githubusercontent.com/afwfv/dd/main/v4mb.tar.gz
tar -zxvf v4mb.tar.gz
rm -f v4mb.tar.gz
mkdir [-mp] config/panel
mv v4mb/config/panel/* config/panel
mv v4mb/config/diy.sh config/diy.sh
mv v4mb/config/auth.json config/auth.json
rm -rf v4mb
cd panel
npm i
pm2 start server.js
echo -e "端口5678，默认用户名admin，密码adminadmin"