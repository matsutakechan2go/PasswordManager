#!/bin/bash

echo  "パスワードマネージャーへようこそ！"
echo  "次の選択肢から入力してください(Add Password/Get Password/Exit)："
read  select

case $select in
"Add Password" )  
  echo  "サービス名を入力してください:"
  read  service | >> service.txt
  echo  "ユーザー名を入力してください:"
  read  user | >> user.txt
  echo  "パスワードを入力してください:"
  read  pass | >> pass.txt ;;
"Get Password" )
  echo  "サービス名を入力してください:"
echo  "Thank you!"