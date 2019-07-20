#!/bin/bash
git add .
echo -e "请输入你的commit:"
read commit

echo "你的commit是：${commit}"
git commit -m"${commit}"
#git push origin master

URL=https://github.com/codegitz/upload
echo "图片URL为:${URL}"
