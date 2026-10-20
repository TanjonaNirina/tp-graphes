tok=$(cat token.gh)
echo "tok=$tok"
curl -L \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $tok" \
	-H "X-GitHub-Api-Version: 2026-03-10" \
	https://api.github.com/repos/TanjonaNirina/tp-graphes/actions/artifacts > gh-artifacts.json

curl -L 
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $tok" \
	-H "X-GitHub-Api-Version: 2026-03-10" \
	https://api.github.com/repos/TanjonaNirina/tp-graphes/actions/artifacts/39392547156/zip
	--output artifact.zip\
	unzip artifact.zip

