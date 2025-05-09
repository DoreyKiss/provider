# Provider Part of udemy Course "Epic Test Arch. - test everything, everywhere all at once"

[link to course](https://www.udemy.com/course/epic-test-arch-test-everything-everywhere-all-at-once)


## Setup

```bash
npm i
```

Use the sample `.env.example` file to create a `.env` file of your own. These values will also have to exist in your CI secrets.

```bash
SERVERPORT=3001
```

### Scripts

```bash
npm run lint
npm run typecheck
npm run fix:format
npm run validate # all the above in parallel

npm run test # unit tests
npm run test:watch # watch mode

npm run mock:server # starts the mock backend/provider server

npm run cy:open-local # open mode
npm run cy:run-local  # run mode
npm run cy:run-local-fast  # no video or screen shots

npm start # start server

npm run generate:openapi 
npm run optic:lint # lint atlassian optic  which is used for open api versioning
npm optic:diff # see diff of open api versions
```


### productivity tools:

- [return types](https://www.youtube.com/watch?v=pPaQo1Cgvd0),
- [rest client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)
- [spell checking](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker).

