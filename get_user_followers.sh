APP_ID="2587427978248545"
APP_SECRET="e7a4291298984626e949f6aa52019514"
REDIRECT_URI="https://disegnoepittura.it/"
CODE="AQD8b8bT5KBX1AMnmvgEKNaDi9K_rZ3a_A89NYTRCiDP-29HTSE0yG71jVralda8o1tfc844eydz2VrbIgBXKLd0B58yjj0tQbHm7ZXledgJdhQ-GNLFxPPyyQIeB7Rl0isfMk7EQdCUkP9UQxKNUNkr7CfW1IJ8jGvZ0YfReuHc9pruWNXqtB-ddNDTjQ-lBKrwqAb6TocU9u7NvX5HGJr047sNNI1Q1fDY6-2NLRqlAA"

ACCESS_TOKEN="IGQVJVci1ZATl9mQ1FBRDdockJjN1RGRkg5LWF4SVdXcjhLYzFLSl93U1dxMFJvS213QURaVFliVHh3QVF2cG1hd3RXRTlhRlc4Y1BSd29aN21oQTNPQVlqdzY1WHlwNWNsY1gzOC1rQklvejh0MGJncjdXQm5jNEp6OGNF"
USER_ID="17841405501526695"

JSON=$(curl -X GET "https://api.instagram.com/v1/users/$USER_ID/follows?access_token=$ACCESS_TOKEN")
echo $JSON
#ID=$(echo $JSON | jq '.id')
#TYPE=$(echo $JSON | jq '.account_type')
#USERNAME=$(echo $JSON | jq '.username')

#echo "ID: $ID"
#echo "TYPE: $TYPE"
#echo "USERNAME: $USERNAME"