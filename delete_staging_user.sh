echo; echo "====Will start deleting user===="; echo

echo; echo "please enter user email:"; echo
read -p "Please input email: " email

echo; echo "please enter user login:"; echo
read -p "Please input login: " login

echo; echo "do you want to delete user on staging?"; echo
read -r -p "Are You Sure? [Y/n] " input

case $input in
  [yY][eE][sS]|[yY])
  echo; echo "====continue to execute===="; echo
  ;;*)
  echo; echo "====stop===="; echo
  exit;;
esac

echo; echo '====start delete user===='; echo

echo; echo '====delete autozone user===='; echo
ssh web12 "cd autozone/current && RAILS_ENV=staging /usr/local/rbenv/shims/bundle exec rake 'user:destroy_user_account[$email, $login]'"

echo; echo '====delete manfashion user===='; echo
# ssh web12 "cd manfashion/current && RAILS_ENV=staging /usr/local/rbenv/shims/bundle exec rake 'user:destroy_user_account[$email, $login]'"

# echo; echo '====delete digiphoto user===='; echo
# ssh web12 "cd digiphoto/current && RAILS_ENV=staging /usr/local/rbenv/shims/bundle exec rake 'user:destroy_user_account[$email, $login]'"

# echo; echo '====delete t17 user===='; echo
# ssh web12 "cd forum/current && RAILS_ENV=staging /usr/local/rbenv/shims/bundle exec rake 'user:destroy_user_account[$email, $login]'"

# echo; echo '====delete techbang user===='; echo
# ssh web12 "cd techbang/current && RAILS_ENV=staging /usr/local/rbenv/shims/bundle exec rake 'user:destroy_user_account[$email, $login]'"

# echo; echo '====delete i user===='; echo
# ssh web13 "cd techbang-profile/current && RAILS_ENV=staging /usr/local/rbenv/shims/bundle exec rake 'user:destroy_user_account[$email, $login]'"
