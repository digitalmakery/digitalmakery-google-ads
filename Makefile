gen-credentials:
	sops exec-file --no-fifo ./credentials/credentials.json \
		'../mcp-google-ads/scripts/generate_token.sh {}'
	mv ~/.mcp-google-ads/token.json ./credentials/token.json
	sops encrypt --in-place ./credentials/token.json
	rm -rf ~/.mcp-google-ads

start:
	docker build -t mcp-google-ads .
	mkdir -p ./tmp/.mcp-google-ads/
	sops decrypt --output ./tmp/.mcp-google-ads/token.json ./credentials/token.json
	sops decrypt --output ./tmp/.mcp-google-ads/credentials.json ./credentials/credentials.json
	sops exec-env .enc.env \
		'docker run -i --rm \
			-v "./tmp/.mcp-google-ads:/root/.mcp-google-ads:ro" \
			-e GOOGLE_ADS_DEVELOPER_TOKEN \
			-e GOOGLE_ADS_CUSTOMER_ID \
			-e GOOGLE_ADS_CREDENTIALS_PATH \
			-e GOOGLE_ADS_TOKEN_PATH \
			mcp-google-ads'
	rm -rf ./tmp
	
