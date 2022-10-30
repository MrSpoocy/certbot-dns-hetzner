FROM certbot/certbot:latest

# Install git
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

# Get the plugin
RUN git clone https://github.com/MrSpoocy/certbot-dns-hetzner.git certbot/certbot-dns-hetzner/

# Install plugin
RUN pip install -e certbot/certbot-dns-hetzner
