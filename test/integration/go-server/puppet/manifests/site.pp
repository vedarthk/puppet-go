$java_packages = $::osfamily ? {
  redhat  => 'java-1.7.0-openjdk',
  debian  => ['openjdk-7-jdk', 'openjdk-7-jre']
}
package { $java_packages: ensure => installed } ->
class { '::go::server':
  ensure              => present,
  manage_package_repo => true,
}
