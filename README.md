## 同步刪除各站使用者

當中的webX是預先設定的ssh
可以到 ~/.ssh/config裡面設定快速進入server

```
設定方式:
Host (test_name)
HostName (ip) 
User deploy
ForwardAgent yes

之後就可以直接輸入ssh test_name 進入server
```

## Usage

Download and copy to dropbox:

```
  sh delete_production_user.sh
  # you will be sync delete user"
```

input email and login:

```
  Please input email: "輸入使用者email"
  Please input login: "輸入使用者login"
```

確認執行後就會同步刪除各站使用者
```
do you want to delete user on staging?

Are You Sure? [Y/n]
```
