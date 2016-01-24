mkdir -p /var/lib/docker
touch /var/lib/docker/hosts
chmod 644 /var/lib/docker/hosts
chown nobody:nobody /var/lib/docker/hosts

docker run \
    -d \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /var/lib/docker/hosts:/srv/hosts \
    iverasp/hosts --domain-name=dev.docker /srv/hosts
