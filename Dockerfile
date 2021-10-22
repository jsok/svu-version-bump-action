FROM ghcr.io/caarlos0/svu:v1.8.0
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
