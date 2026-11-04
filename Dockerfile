# Dolibarr with one extra Apache setting, so it answers under the address
# Gavety gives it (/appproxy/<device>/<app>/) and builds its login form
# correctly. Everything else is the official image.
FROM dolibarr/dolibarr:latest
COPY gavety-prefix.conf /etc/apache2/conf-enabled/gavety-prefix.conf
