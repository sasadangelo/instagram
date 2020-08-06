source credentials.sh
AUTH_URL="https://api.instagram.com/oauth/authorize?client_id=$APP_ID&redirect_uri=$REDIRECT_URI&scope=user_profile,user_media&response_type=code"

open $AUTH_URL
