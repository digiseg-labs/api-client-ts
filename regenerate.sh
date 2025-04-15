#!/bin/sh
# find generator docs at https://openapi-generator.tech/docs/generators/typescript-fetch
openapi-generator generate \
  -i https://developer.digiseg.net/openapi.json\
  -g typescript-axios \
  --git-repo-id api-client-ts --git-user-id digiseg-labs \
  --additional-properties=npmName=digiseg-api-client,npmVersion=0.0.0-dev,supportsES6=true
npm update
