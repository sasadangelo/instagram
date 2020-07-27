source credentials.sh

JSON=$(curl -X GET "https://graph.instagram.com/me/media?fields=id,media_type,caption,media_url,permalink,thumbnail_url,timestamp,username&access_token=$ACCESS_TOKEN")
for row in $(echo "${JSON}" | jq -r '.data[] | @base64'); do
    _jq() {
        echo ${row} | base64 --decode | jq -r ${1}
    }

   echo "MEDIA_ID: $(_jq '.id')"
   echo "MEDIA_TYPE: $(_jq '.media_type')"
   echo "MEDIA_CAPTION: $(_jq '.caption')"
   echo "MEDIA_URL: $(_jq '.media_url')"
   echo "PERMALINK: $(_jq '.permalink')"
   echo "THUMB_URL: $(_jq '.thumbnail_url')"
   echo "TIMESTAMP: $(_jq '.timestamp')"
   echo "USERNAME: $(_jq '.username')"
   echo
   echo
done
