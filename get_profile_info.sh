source credentials.sh

USER=$1

JSON=$(curl -X GET "https://graph.instagram.com/me?fields=id,account_type,username&access_token=$ACCESS_TOKEN" 2>/dev/null)

ID=$(echo $JSON | jq -r '.id')
TYPE=$(echo $JSON | jq -r '.account_type')
USERNAME=$(echo $JSON | jq -r '.username')

if [ "$USER" == "" ]
then
    USER=$USERNAME
fi

JSON_PROFILE=$(curl -X GET "https://www.instagram.com/${USER}/?__a=1" 2>/dev/null)
echo "$JSON_PROFILE" > profile.txt

BIO=$(echo "$JSON_PROFILE" | jq '.graphql.user.biography')
echo "Instagram Profile"
echo "-----------------"
echo "Username: $USER"
if [ "$TYPE" == "MEDIA_CREATOR" ]
then
    echo "Profile type: Creator"
elif [ "$TYPE" == "BUSINESS" ]
then
    echo "Profile type: Business"
else
    echo "Profile type: Personal"
fi
BIO=$(echo "$BIO" | sed 's/\\n/ /g')
echo "Bio: $BIO"
