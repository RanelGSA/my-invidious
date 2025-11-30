FROM quay.io/invidious/invidious:latest

ENV INVIDIOUS_CONFIG="\
  db:\n\
    dbname: invidious\n\
    user: kemal\n\
    password: kemal\n\
    host: postgres\n\
    port: 5432\n\
  check_tables: true\n\
  hmac_key: moyasecret2025rfbezvpn1234567890abcdefghijklmnopqrstuvwxyz1234567890\n\
  force_resolve: ipv4\n\
  captcha_enabled: false\n\
  registration_enabled: false\n\
  login_enabled: false\n\
  popular_enabled: false\n\
  statistics_enabled: false\n\
"

EXPOSE 3000
