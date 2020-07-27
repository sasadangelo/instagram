source credentials.sh

curl -X POST \
  https://api.instagram.com/oauth/access_token \
  -F client_id=$APP_ID \
  -F client_secret=$APP_SECRET \
  -F grant_type=authorization_code \
  -F redirect_uri=$REDIRECT_URI \
  -F code=$CODE
