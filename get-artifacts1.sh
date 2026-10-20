#!/bin/bash
tok=$(cat ~/token.gh)
echo "tok=$tok"
curl -L \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $tok" \
	-H "X-GitHub-Api-Version: 2026-03-10" \
	https://api.github.com/repos/TanjonaNirina/tp-graphes/actions/artifacts > gh-artifacts.json

jq '.artifacts[]' gh-artifacts.json> fich

jq '.artifacts[].id' gh-artifacts.json>fich2


for a in $(cat fich2)
do
	echo "id=$a"
	# curl...
done
ARTIFACTS=$(jq '.artifacts[].id' gh-artifacts.json)

echo "arti="$ARTIFACTS"
exit


for id in $ARTIFACTS; do
	echo "$id" > liste-id.txt
done

curl -L --output artifact.zip \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $tok" \
	-H "X-GitHub-Api-Version: 2026-03-10" \
	https://api.github.com/repos/TanjonaNirina/tp-graphes/actions/artifacts/12250751530/zip
unzip artifact.zip

