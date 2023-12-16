#!/bin/bash

# Exitが入力されるまでループされる
while true 
do
  echo  "パスワードマネージャーへようこそ！"
  echo  "次の選択肢から入力してください(Add Password/Get Password/Exit)："
  read  choice

  # Add Password が入力された場合
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
    echo "パスワードの追加は成功しました"

  # Get Password が入力された場合（実装前）
  elif [ "$choice" = "Get Password" ]; then
    echo  "サービス名を入力してください:"
    read Getsvc
    
    grep "$Getsvc" index.txt

    # サービス名が登録されてた場合（実装前）
    if grep "$Getsvc" index.txt; then #ifの条件式としての作用を直接使用するから[]は用いない
      grep "$Getsvc" index.txt | 
      echo "サービス名: \nユーザー名: \nパスワード:"

    #されてなかった場合
    else
      echo "そのサービスは登録されていません"
    fi

  # Exit が入力された場合
  elif ["$choice" = "Exit" ]; then
    echo  "Thank you!"
    break

  # Add Password/Get Password/Exit 以外が入力された場合
  else
    echo  "入力が間違えています。Add Password/Get Password/Exit から入力してください。" 
  fi

done