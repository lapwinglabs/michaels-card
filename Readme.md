# Michael's Card

This repo should serve as boilerplate for single page apps.

## On Push to Dokku

Dokku runs the following actions inside the Docker container:

1. Installs node based on the "engines" field in the `package.json`.
2. Runs `npm install` which installs from the "dependencies" field in the `package.json`.
3. Runs `npm start`. This calls the "scripts.start" field in the `package.json`.
