#!/bin/sh
if [ ! -f UUID ]; then
  UUID="491885c9-7be3-4e17-8b7f-0d52100f4d38"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

