name             'workflow'
maintainer       'daniel washko'
maintainer_email 'dwashko@gannett.com'
license          'Apache 2.0'
description      'workflow role cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.8.0'

depends 'gdp-base-linux', '>= 0.3.0'
depends 'workflow_apache_support'
depends 'apache2'
depends 'selinux'
