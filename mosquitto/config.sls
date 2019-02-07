# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "mosquitto/map.jinja" import mosquitto with context %}

mosquitto-config:
  file.managed:
    - name: {{ mosquitto.conf_file }}
    - source: salt://mosquitto/files/mosquitto.conf
    - template: jinja
    - mode: 644
    - user: mosquitto
    - group: mosquitto
    - makedirs: True
    - require:
      - pkg: {{ mosquitto.pkg }}
