function confirm_email_format(){
  read -p "Please input email: " email
  if [ `echo $email | grep "^[A-Za-z0-9_-]*[+-9]*@[A-Za-z_-]*\.[A-Za-z_-]*.[A-Za-z_-]*"` ];then
    echo $email >> result.txt
  else
    confirm_email_format
  fi
}

function enter_login() {
  read -p "Please input login: " login
}

function check_continue() {
  echo "\n do you want to delete user on $1? \n"
  read -r -p "Are You Sure? [Y/n] " input

  case $input in
    [yY][eE][sS]|[yY])
    echo "\n ==== start delete user ==== \n"
    ;;*)
    echo "\n ==== stop ==== \n"
    exit;;
  esac
}

function delete_user(){
  echo "\n ==== delete $2 user ==== \n"
  ssh $1 "cd $2/current && RAILS_ENV=$3 /usr/local/rbenv/shims/bundle exec rake 'user:destroy_user_account[$email, $login]'"
}
