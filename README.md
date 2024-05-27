# Digiseg API client for TypeScript

This module provides a SDK for interacting with the Digiseg API.

Documentation for the API can be found on https://developer.digiseg.net/

## Installing and using the SDK

Install the package:

```sh
npm i digiseg-api-client
```

Import the package and start using it:

```typescript
import { AudiencesApi, Configuration } from "digiseg-api-client"

# instantiate the API (for example AudiencesAPI) with your API key
const api = new AudiencesApi(new Configuration({
    apiKey: apiKey,
}))

# look up audiences
api.resolveAudiencesOfSingle("152.115.123.174", "core,category").then(resp => {
    console.log("Status: " + resp.data.status)
    for (const audience of resp.data.audiences) {
        console.log("Audience code: " + audience.code)
    }
})
```

## Environment and dependencies

This library is created for TypeScript/JavaScript and utilizes [axios](https://github.com/axios/axios). The Node module can be used in the following environments:

Environment
* Node.js
* Webpack
* Browserify

Language level
* ES5 - you must have a Promises/A+ library installed
* ES6

Module system
* CommonJS
* ES6 module system

It can be used in both TypeScript and JavaScript. In TypeScript, the definition will be automatically resolved via `package.json`. ([Reference](https://www.typescriptlang.org/docs/handbook/declaration-files/consumption.html))
