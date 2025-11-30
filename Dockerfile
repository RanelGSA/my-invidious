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
  "hmac_key": "твой_секретный_ключ_минимум_64_символа_здесь_придумай_сам_например_openssl_rand_hex_32",
  "force_resolve": "ipv4",
  "captcha_enabled": false,
  "registration_enabled": false,
  "login_enabled": false,
  "channel_threads": 5,
  "feed_threads": 5
}'
