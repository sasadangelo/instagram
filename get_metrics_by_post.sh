source credentials.sh

MEDIA_ID="18098080204118916"
JSON=$(curl -X GET "https://graph.facebook.com/$MEDIA_ID/insights?metric=engagement,impressions,reach,saved&access_token=$ACCESS_TOKEN")
echo $JSON
