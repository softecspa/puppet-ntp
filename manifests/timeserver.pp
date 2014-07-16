define ntp::timeserver (
  $timeserver1 = 'ie.pool.ntp.org',
  $timeserver2 = '0.europe.pool.ntp.org',
) {

  class { 'ntp':
    timeserver1 => $timeserver1,
    timeserver2 => $timeserver2
  }

}
