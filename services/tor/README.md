# tor

This service runs several [Tor](https://www.torproject.org/) instances behind an HAProxy load balancer.

The instances function as HTTP proxies and SOCKS proxies that forward traffic over the Tor network.

Since DNS can be proxied using SOCKSv5, the SOCKS proxies forward client queries to [dnsmasq](http://www.thekelleys.org.uk/dnsmasq/doc.html), which functions as a local caching server. Ultimately, client queries are resolved via TorDNS.

## Usage

### Build

`$ sh scripts/build.sh`

Build the images for the DNS server and Tor proxies.

### Start

`$ sh scripts/start.sh`

Deploy the DNS server, Tor proxies, and HAProxy load balancer.

### Stop

`$ sh scripts/stop.sh`

Stop the HAProxy load balancer, Tor instances, and DNS server, then remove the containers and volumes.

## Config

### HAProxy

The default config is `./etc/haproxy/haproxy.cfg`.

Please refer to the [HAProxy docs](https://cbonte.github.io/haproxy-dconv/2.1/configuration.html) if you'd like to add or modify config.

**Note:** To change the number of Tor instances, modify the backend definitions in the HAProxy config *and* specify the appropriate `--scale`s in `./scripts/start.sh`.

### Tor proxies

The configs for the HTTP and SOCKS proxies are `./etc/tor/http/torrc` and `./etc/tor/socks/torrc`, respectively.

Please refer to the [Tor manual](https://2019.www.torproject.org/docs/tor-manual.html.en) if you'd like to add or modify config.

### DNS

The dnsmasq config is `./etc/dnsmasq/dnsmasq.conf`.

Please refer to the [dnsmasq docs](http://www.thekelleys.org.uk/dnsmasq/docs/dnsmasq-man.html) for a comprehensive list of configuration options.

The directory `./etc/tor/dns` contains configuration for the Tor instance that runs behind dnsmasq and resolves client queries via TorDNS.
