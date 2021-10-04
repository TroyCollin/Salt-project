zabbix-agent:
  pkg.installed: []
  service.running:
    - watch:
      - pkg: zabbix-agent
      - file: /etc/zabbix/zabbix_agentd.conf

/etc/zabbix/zabbix_agentd.conf:
  file.managed:
    - source: salt://zabbix/zabbix_agentd.conf
    - user: root
    - group: root
    - mode: 644
