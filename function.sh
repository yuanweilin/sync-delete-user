function confirm_email_format(){
  read -p "Please input email: " email
  if [ `echo $email |grep "^[a-zA-Z0-9_-]*[+-9]*@[A-Za-z_-]*\.[a-zA-Z_-]*.*$"` ];then
      echo $email >> result.txt
  else
    confirm_email_format
  fi
}

function enter_login() {
  read -p "Please input login: " login
}

function check_continue() {
  echo; echo "do you want to delete user on $1?"; echo
  read -r -p "Are You Sure? [Y/n] " input

  case $input in
    [yY][eE][sS]|[yY])
    echo; echo "====start delete user===="; echo
    ;;*)
    echo; echo "====stop===="; echo
    exit;;
  esac
}

function delete_user(){
  echo; echo "====delete $2 user===="; echo
  ssh $1 "cd $2/current && RAILS_ENV=$3 /usr/local/rbenv/shims/bundle exec rake 'user:destroy_user_account[$email, $login]'"
}
