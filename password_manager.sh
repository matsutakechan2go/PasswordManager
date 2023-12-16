#!/bin/bash

while true 
do
  echo  "パスワードマネージャーへようこそ！"
  echo  "次の選択肢から入力してください(Add Password/Get Password/Exit)："
  read  choice

  if [ "$choice" = "Add Password" ]; then
    echo  "サービス名を入力してください:"
    read  service 
    echo "$service" >> service.txt
    echo  "ユーザー名を入力してください:"
    read  user 
    echo "$user" >> user.txt
    echo  "パスワードを入力してください:"
    read  pass 
    echo "$pass" >> pass.txt 
    echo "$service:$user:$pass" >> index.txt

    elif [ "$choice" = "Get Password" ]; then
      echo  "サービス名を入力してください:"
      read Getsvc
      grep "$Getsvc" 

      if [ #サービス名が登録されてた場合 ]; then
        echo "サービス名: \nユーザー名: \nパスワード:"
      else [ #されてなかった場合 ]; then
  
  if ["$choice" = "Exit" ]
  echo  "Thank you!"
  break
  ;;
 * )
  echo  "入力が間違えています。Add Password/Get Password/Exit から入力してください。" ;;
  fi

  done