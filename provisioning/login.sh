#!/bin/bash
if [[ -z "${GATEWAY}" ]]; then
        echo "You must have the envvar GATEWAY set prior to executing this. Note, you can simply do 'GATEWAY=gp.company.com ./login.sh'."
        exit 1
fi
eval $( gp-saml-gui --gateway $GATEWAY --clientos=Windows )
echo "$COOKIE" | sudo openconnect --protocol=gp -u "$USER" --os="$OS" --passwd-on-stdin "$HOST"
