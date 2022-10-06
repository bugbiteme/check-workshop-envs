#/bin/bash

DOMAIN="example.opentlc.com"

if [ "$#" -ne 1 ]; then
	echo "Usage: check-workshop-envs.sh <env>"
	echo ""
	echo "Example:"
	echo "    check-workshop-envs.sh rhf630"
	exit 1
fi

ENV=$1

for i in {1..49}
do
  fqdn="student${i}.${ENV}.${DOMAIN}"
  ip=$(dig ${fqdn} +short A)
  echo "${fqdn}: ${ip}"
done
