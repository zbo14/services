# mitmproxy

This service runs [mitmproxy](https://mitmproxy.org/) on port 8080.

Please refer to the mitmproxy [docs](https://docs.mitmproxy.org/stable/) for more information on usage.

## Usage

### Start

`$ sh scripts/start.sh`

Start a container running the interactive HTTPS proxy.

This will pull the Docker image if it hasn't been pulled.

### Stop

`$ sh scripts/stop.sh`

Stop/remove the Docker container running mitmproxy.

You can quit *from* the container by typing "q" and then "y" (this will remove the container as well).

## Config

### Browser

Modify the network settings in your browser so it forwards traffic to an HTTPS proxy listening on port 8080.

Then navigate to "mitm.it", select your OS, and check "Trust this CA for verifying websites".

### mitmproxy

Credentials and other configuration parameters are stored in the `./.mitmproxy` directory.
