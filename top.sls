base:
  '*':
    - zabbix
  'NatsaltMinion':
    - postgresql
    - apache
    - bashrc
  'NatDBNode*':
    - mariadb
