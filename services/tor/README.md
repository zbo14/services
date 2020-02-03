# tor

This service runs several [Tor](https://www.torproject.org/) instances behind an HAProxy load balancer.

The instances function as HTTP proxies and SOCKS proxies that forward traffic over the Tor network.

## Usage

### Build

`$ sh scripts/build.sh`

Build the images for the Tor instances.

### Start

`$ sh scripts/start.sh`

Deploy the Tor instances and HAProxy load balancer.

### Stop

`$ sh scripts/stop.sh`

Stop the HAProxy load balancer and Tor instances.

Then remove the containers and volumes.
