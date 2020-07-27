source credentials.sh

echo
echo "Put the following URL in your browser and select the CODE field in the redirected URL without #_"
echo "https://api.instagram.com/oauth/authorize?client_id=$APP_ID&redirect_uri=$REDIRECT_URI&scope=user_profile,user_media&response_type=code"
