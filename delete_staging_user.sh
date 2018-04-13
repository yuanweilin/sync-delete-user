source ./function.sh

echo; echo "====Will start deleting staging user===="; echo

confirm_email_format
enter_login
check_continue "staging"

delete_user web12 "autozone" "staging"
delete_user web12 "manfashion" "staging"
delete_user web12 "digiphoto" "staging"
delete_user web12 "forum" "staging"
delete_user web12 "techbang" "staging"
delete_user web13 "techbang-profile" "staging"
