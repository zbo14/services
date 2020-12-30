# cloud-server

This service runs a [Nextcloud](https://nextcloud.com/) server backed by a [PostgreSQL](https://www.postgresql.org/) database.

The cloud server runs behind HAProxy, which performs TLS termination so your login credentials aren't sent as plaintext.

## Usage

### Init

`$ sh scripts/init.sh`

Set usernames and passwords for Nextcloud and PostgreSQL and generate a self-signed certificate for HAProxy.

**Note:** you must enter the Nexcloud credentials when you login as admin.

### Start

`$ sh scripts/start.sh`

Start containers for the database, cloud server, and proxy.

### Stop

`$ sh scripts/stop.sh`

Stop the containers and remove their associatd volumes.

## Config

### HAProxy

The default config is `./etc/haproxy/haproxy.cfg`.

Please refer to the [HAProxy docs](https://cbonte.github.io/haproxy-dconv/2.3/configuration.html) if you'd like to add or modify config.

### Nextcloud

The `app.env` file contains environment variables for the database hostname and app-specific Docker secrets.

You shouldn't have to modify this file.

### PostgreSQL

The `db.env`file contains environment variables for Docker secrets relevant to PostgreSQL config.

You shouldn't have to modify this file.
