#!/bin/sh

echo "=================================================="
echo "Checking ENV"

[[ -z "$SECREAT" ]] && echo "ENV SECREAT is EMPTY"

[[ -z "$ADMIN_PASSWORD" ]] && echo "ENV ADMIN_PASSWORD  is EMPTY"

[[ -z "$ADMIN_SECREAT" ]] && echo "ENV ADMIN_SECREAT is EMPTY"

[[ -z "$API_KEY" ]] && echo "ENV API_KEY is EMPTY"

[[ -z "$SECREAT" ]] || [[ -z "$ADMIN_PASSWORD" ]] || [[ -z "$ADMIN_SECREAT" ]] || [[ -z "$API_KEY" ]] || [[ -z "$SECREAT" ]] && exit


echo "Setting Config"
sed -e  's@SECREAT@'"$SECREAT"'@g' \
-e 's@ADMIN_PASSWORD@'"$ADMIN_PASSWORD"'@g' \
-e 's@ADMIN_SECREAT@'"$ADMIN_SECREAT"'@g' \
-e 's@API_KEY@'"$API_KEY"'@g' \
/centrifugo/config.json.example > /centrifugo/config.json;


echo "=================================================="
echo "Starting Centrifugo at: $(date +%Y.%m.%d-%T)"
/usr/bin/centrifugo &
wait ${!}
echo "Centrifugo crashed at: $(date +%Y.%m.%d-%T)"
exit $?

