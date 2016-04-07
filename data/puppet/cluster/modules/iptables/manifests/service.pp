class iptables::service {
  service { 'iptables':
    ensure => stopped,
    enable => false,
  }
}
