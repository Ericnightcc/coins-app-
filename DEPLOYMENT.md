# Coin Conductor deployment

This repository deploys the Coin Conductor server and website on Render. The source archive contains plain JavaScript, HTML, CSS, the supplied logo, and automated tests. Docker expands it into /app and runs the tests during the build.

Set PUBLIC_ORIGIN to the exact HTTPS service origin. For inventory persistence, attach a paid persistent disk at /app/data. Default billing mode is a free pilot; production subscriptions, email delivery and off-service backups require their own configuration and validation.

The archive excludes signing keys, credentials, private databases, Android build caches and local test data. This is a pilot, not a completed paid Google Play release.
