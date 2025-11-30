FROM quay.io/invidious/invidious:latest

# Твой личный Invidious, оптимизированный под РФ 2025
ENV INVIDIOUS_CONFIG= \
'db: {\
  dbname: invidious,\
  user: kemal,\
  password: kemal,\
  host: postgres,\
  port: 5432\
},\
check_tables: true,\
external_port: 443,\
https_only: false,\
domain: null,\
hmac_key: supersecretlongrandomkey1234567890abcdef1234567890abcdef12345678,\
force_resolve: ipv4,\
captcha_enabled: false,\
registration_enabled: false,\
login_enabled: false,\
channel_threads: 10,\
feed_threads: 10,\
popular_enabled: false'

EXPOSE 3000
