#!/bin/bash
# shellcheck disable=SC1083
CLIENTID="$1"
CLIENTSECRET="$2"
BEARER=$(echo -e "$(curl -s -u "$CLIENTID":"$CLIENTSECRET" -d grant_type=client_credentials https://apigtwb2c.us.dell.com/auth/oauth/v2/token | grep -i access_token | awk {'print $1'} | sed 's/[",}{)]//g' | sed -r 's/access_token://')")

curl -s -H "Authorization: Bearer $BEARER" "https://apigtwb2c.us.dell.com/PROD/sbil/eapi/v5/asset-components?servicetag=$3"
