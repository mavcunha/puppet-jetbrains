# Public: Installs DataGrip from Jetbrains
#
class jetbrains::datagrip(
  $version = '2016.1.1') {
  jetbrains::package { 'datagrip':
    appversion => $version,
    path       => 'datagrip',
  }
}
