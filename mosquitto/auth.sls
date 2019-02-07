# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "mosquitto/map.jinja" import mosquitto with context %}

{% if mosquitto.auth.users %}
{{ mosquitto.config.password_file }}:
  file.managed:
    - contents_pillar: mosquitto:auth:users
    - mode: 0440
    - user: {{ mosquitto.user }}
    - group: {{ mosquitto.group }}
{% endif %}
