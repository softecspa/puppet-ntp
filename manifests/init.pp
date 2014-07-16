# NTP, ntpdate

class ntp (
  $timeserver1,
  $timeserver2,
){

  $zoneinfofile = '/usr/share/zoneinfo/Europe/Rome'

  package {
  'ntp':
    ensure  => present;
  'ntpdate':
    ensure  => present,
  }

  file { '/etc/ntp.conf':
    owner   => root,
    group   => admin,
    content => template('ntp/ntp.conf.erb'),
    require => Package['ntp'],
    notify  => Service['ntp'],
  }

  service { 'ntp':
    ensure  => running,
    enable  => true,
    require => File['/etc/ntp.conf'],
  }

}
