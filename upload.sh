#!/bin/bash

git status >NewPic.log
grep -E "gif|png|jpg" NewPic.log >name.s

#name_list=$(cat ./name.s)

#cat ./name.s |awk  -F ' '  '{print $1}' 

:<<EOF
LINE=" "
cat ./name.s | while read LINE; do
    echo "son: ${LINE}"
done;
echo "father: ${LINE}"

EOF

git add .
echo -e "请输入你的commit:"
read commit

echo "你的commit是：${commit}"
echo "git commiting..."
git commit -m"${commit}"
echo "git pushing..."
git push origin master
echo "git push successful"
URL=https://github.com/codegitz/upload
echo "图片URL为:${URL}"

