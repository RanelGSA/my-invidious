FROM quay.io/invidious/invidious:latest

# Настройки для быстрого деплоя (2025-оптимизировано для РФ)
ENV INVIDIOUS_CONFIG='{
  "db": {
    "dbname": "invidious",
    "user": "kemal",
    "password": "kemal",
    "host": "postgres",
    "port": 5432
  },
  "check_tables": true,
  "external_port": 443,
  "https_only": false,
  "hmac_key": "mysecretkeyforinvidious2025superlongrandomstring1234567890abcdef",
  "force_resolve": "ipv4",
  "captcha_enabled": false,
  "registration_enabled": false,
  "login_enabled": false,
  "channel_threads": 5,
  "feed_threads": 5
}'
