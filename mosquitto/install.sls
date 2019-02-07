# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "mosquitto/map.jinja" import mosquitto with context %}

mosquitto-pkg:
  pkg.installed:
    - name: {{ mosquitto.pkg }}
