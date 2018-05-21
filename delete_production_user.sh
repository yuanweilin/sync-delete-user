source ./function.sh

echo; echo "====Will start deleting production user===="; echo

confirm_email_format
enter_login
check_continue "production"

delete_user web03 "autozone" "production"
delete_user web07 "manfashion" "production"
delete_user web05 "digiphoto" "production"
delete_user web06 "forum" "production"
delete_user web08 "techbang" "production"
delete_user web01 "techbang-profile" "production"
