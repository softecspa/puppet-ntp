# == Define: ntp::timeserver
#
# Use of the class through a define
# to make possibile to override parameters in 
# Puppet 2.7, not more needed in Puppet >= 3
# and to be removed.
#
define ntp::timeserver (
  $timeserver1 = 'ie.pool.ntp.org',
  $timeserver2 = '0.europe.pool.ntp.org',
) {

  class { 'ntp':
    timeserver1 => $timeserver1,
    timeserver2 => $timeserver2
  }

}
