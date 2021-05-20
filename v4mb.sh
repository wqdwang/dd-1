tar -zxvf v4mb.tar
rm -f v4mb.tar
mv panel/diy.sh config/diy.sh
mv panel/auth.json config/auth.json
cd panel
npm i
pm2 start server.js
echo -e "端口5678，默认用户名admin，密码adminadmin"
