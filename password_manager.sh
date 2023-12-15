#!/bin/bash

echo  "パスワードマネージャーへようこそ！"
echo  "次の選択肢から入力してください(Add Password/Get Password/Exit)："
read  choice

case $choice in
"Add Password" )  
  echo  "サービス名を入力してください:"
  read  service 
  echo "$service" >> service.txt
  echo  "ユーザー名を入力してください:"
  read  user 
  echo "$user" >> user.txt
  echo  "パスワードを入力してください:"
  read  pass 
  echo "$pass">> pass.txt 
  echo "$service:$user:$pass"  >> index.txt
  ;;
"Get Password" )
  echo  "サービス名を入力してください:"
  ;;
"Exit" )
  echo  "Thank you!"
  ;;
 * )
  echo  "入力が間違えています。Add Password/Get Password/Exit から入力してください。" ;;
  esac