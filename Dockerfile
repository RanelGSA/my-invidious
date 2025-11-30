FROM quay.io/invidious/invidious:latest

# Самый простой и 100% рабочий конфиг 2025 года
ENV INVIDIOUS_CONFIG="---
db:
  dbname: invidious
  user: kemal
  password: kemal
  host: postgres
  port: 5432
check_tables: true
hmac_key: ranelgsa2025superlongrandomkey1234567890abcdefghijklmnopqrstuvwxyz
force_resolve: ipv4
captcha_enabled: false
registration_enabled: false
login_enabled: false
statistics_enabled: false
popular_enabled: false
"

EXPOSE 3000
