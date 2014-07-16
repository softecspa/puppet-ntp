puppet-ntp
==========

Manage configuration of ntp servers in a hierarchical nodes structure, with possibilities to override values

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with [Modulename]](#setup)
4. [Usage - Configuration options and additional functionality](#usage)
 * [Default config options](#default-config-options)
5. [Limitations - OS compatibility, etc.](#limitations)

##Overview
This module manage ntp configuration in an environment where nodes are managed in a hierarchical structure. 

##Module Description
Module uses a define ntp::timeserver to include the ntp class by passing it the correct parameters. The parameter of declared resource can be overriden in a more specialized node.
This behavior can be done also by Hiera. If you use hiera this module is useless for you.

##Setup
    ntp::timeserver{'foo':}

##Usage
timeserver override:

    node generic_node {
      ntp::timeserver{'foo':}
    }

    node specialized inherits generic_node {
      Ntp::Timeserver['foo']{
        timeserver1 => 'xxx.yyy'
      }
    }

### Default config options

 * timeserver1 => ie.pool.ntp.org
 * timeserver2 => 0.europe.pool.ntp.org
