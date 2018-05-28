source ./function.sh

echo "\n ==== Will start deleting staging user ==== \n"

confirm_email_format
enter_login
check_continue "staging"

delete_user web12 "autozone" "staging"
delete_user web12 "manfashion" "staging"
delete_user web12 "digiphoto" "staging"
delete_user web12 "forum" "staging"
delete_user web12 "techbang" "staging"
delete_user web13 "techbang-profile" "staging"

echo "\n ==== End of deleting staging user ==== \n"
