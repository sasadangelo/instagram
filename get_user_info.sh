source credentials.sh

JSON=$(curl -X GET "https://graph.instagram.com/me?fields=id,account_type,username&access_token=$ACCESS_TOKEN")

echo $JSON

ID=$(echo $JSON | jq '.id')
TYPE=$(echo $JSON | jq '.account_type')
USERNAME=$(echo $JSON | jq '.username')

JSON_PROFILE=$(curl -X GET "https://www.instagram.com/$USERNAME/?__a=1")

BIO=$(echo $JSON_PROFILE | jq '.graphql.user.biography')
echo $JSON_PROFILE > profile.txt
echo "ID: $ID"
echo "TYPE: $TYPE"
echo "USERNAME: $USERNAME"
echo "BIO: $BIO"
