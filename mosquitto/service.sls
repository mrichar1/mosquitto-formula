# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "mosquitto/map.jinja" import mosquitto with context %}
{{ mosquitto.service }}:
{% if mosquitto.enabled %}
  service.running:
    - enable: True
    - watch:
      - file: {{ mosquitto.conf_file }}
{% else %}
  service.dead:
    - enable: False
{% endif %}
