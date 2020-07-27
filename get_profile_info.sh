source credentials.sh

JSON=$(curl -X GET "https://graph.instagram.com/me?fields=id,account_type,username&access_token=$ACCESS_TOKEN" 2>/dev/null)

ID=$(echo $JSON | jq -r '.id')
TYPE=$(echo $JSON | jq -r '.account_type')
USERNAME=$(echo $JSON | jq -r '.username')

JSON_PROFILE=$(curl -X GET "https://www.instagram.com/${USERNAME}/?__a=1" 2>/dev/null)
echo "$JSON_PROFILE" > profile.txt

BIO=$(echo "$JSON_PROFILE" | jq '.graphql.user.biography')
echo "Instagram Profile"
echo "-----------------"
echo "Username: $USERNAME"
echo "Profile type: $TYPE"
echo "Bio: $BIO"
