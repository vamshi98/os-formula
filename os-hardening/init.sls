hardening:
  include:
    - os-hardening.network
    - os-hardening.system

  file.managed:
    - name: /etc/security/limits.d/10.disable_coredumps.conf
    - source: salt://os-hardening/templates/limits.conf.tmpl
    - template: jinja

    - user: root
    - group: root
    - mode: 444

  file.managed:
    - name: /etc/profile.d/disable_coredumps.sh
    - source: salt://os-hardening/templates/profile.conf.tmpl
    - template: jinja

    - user: root
    - group: root
    - mode: 755
