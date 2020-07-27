source credentials.sh

JSON=$(curl -X GET "https://api.instagram.com/v1/users/$USER_ID/follows?access_token=$ACCESS_TOKEN")
echo $JSON
#ID=$(echo $JSON | jq '.id')
#TYPE=$(echo $JSON | jq '.account_type')
#USERNAME=$(echo $JSON | jq '.username')

#echo "ID: $ID"
#echo "TYPE: $TYPE"
#echo "USERNAME: $USERNAME"
