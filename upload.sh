#!/bin/bash

git status >NewPic.log
grep -E "gif|png|jpg" NewPic.log >name.s

#name_list=$(cat ./name.s)

#cat ./name.s |awk  -F ' '  '{print $1}' 


git add .
echo -e "Enter your commit Message:"
read commit

echo "your commit is：${commit}"
echo "git commiting..."
git commit -m"${commit}"
echo "git pushing..."
git push origin master
echo "git push successful"


baseURL=https://github.com/codegitz/upload/blob/master/
echo "图片URL为:${URL}"
#输出图片URL
LINE=" "
cat ./name.s | while read LINE; do
    echo "picUrl: ${baseURL}"\+"${LINE}"
done;
echo "upload successful...."



