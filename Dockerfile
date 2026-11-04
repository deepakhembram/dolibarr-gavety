# Dolibarr with one extra Apache setting, so it answers under the address
# Gavety gives it (/appproxy/<device>/<app>/) and builds its login form
# correctly. Everything else is the official image.
FROM dolibarr/dolibarr:latest
# The image does not load Apache's alias module; the setting below needs it.
RUN a2enmod alias
COPY gavety-prefix.conf /etc/apache2/conf-enabled/gavety-prefix.conf
