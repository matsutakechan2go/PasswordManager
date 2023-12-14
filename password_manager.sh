#!/bin/bash

echo  "パスワードマネージャーへようこそ！"
echo  "次の選択肢から入力してください(Add Password/Get Password/Exit)："
read  select

case $select in
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

  echo "$service:$user:$pass"  >> index
  ;;
"Get Password" )
  echo  "サービス名を入力してください:"
  read svcName |
  grep '$svcName' service.txt 
  ;;
"Exit" )
  echo  "Thank you!"
  ;;
  '*' )
  echo  "入力が間違えています。Add Password/Get Password/Exit から入力してください。" ;;
  