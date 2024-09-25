---
sidebar_position: 30
---

# Deploy Box Opener Node
To create your box opener node you'll need...
* Completed onboarding Solana Wallet & Discord Authorization
* A device capable of running a Docker container

## Fetch Your API Key
Login to the Box Opener Dashboard
* Mainnet - https://erwin.lol/box-opener
* Devnet - https://devnet.erwin.lol/box-opener

Click the "Copy API Key" button to copy your API key to your clipboard. You should keep your API Key a secret and not
share it with anybody. Sharing your API Key could allow somebody else to control your EWN Box Opener Account.

![Fetch API Key](https://docs.erwin.lol/img/get_api_key.png "Fetch API Key")

## Run Box Opener Node
To EWN box opener node ships as a container image which can be run on popular containerization software including Docker.
The easiest way to run a box opener node is via Docker Desktop which is free for personal non commercial use, however if you
are a pro you may wish to deploy your box opener using a different containerization stack and orchestration tools.

### Install Docker Desktop
If you are new to Docker and want the easiest way to get started download and install Docker Desktop from https://www.docker.com/products/docker-desktop/

### Run Box Opener Node
Once Docker is installed open a command prompt (Windows) or terminal (OSX / Linux) window and run the following command replacing
\<API_KEY\> with the API key you previously copied from the Box Opener Dashboard.

#### Mainnet
```commandline
docker run -it -e API_KEY=<API_KEY> robputt796/box-opener:latest
```

#### Devnet
```commandline
docker run -it -e API_KEY=<API_KEY> -e API_URL=https://devnet-api.erwin.lol/ robputt796/box-opener:latest
```

#### Logging
You should then see a log in your terminal describing the actions that your box opener node is performing. Please note it is 
normal to receive "❌ Guesses rejected (429): Guess Rate Limit Hit" error messages when you first start your box opener node,
this should settle down over time and lead to a majority of "✅ Guesses accepted" messages instead.

Your box opener node will continue to submit guesses to open the current EWN box providing you keep the terminal window open
and the device powered on.

If you are familiar with Docker or whichever container orchestration you are using to execute your box opener node then you
may wish to daemonize the container to run it in the background.