FROM traefik:2.10.4
RUN mkdir -p /etc/traefik/acme \
  && touch /etc/traefik/acme/acme.json \
  && chmod 600 /etc/traefik/acme/acme.json
COPY ./config/traefik/traefik.yml /etc/traefik
