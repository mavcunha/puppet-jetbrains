# Public: Installs AppCode from Jetbrains
#
class jetbrains::appcode(
  $version = '2016.1.2') {
  jetbrains::package { 'AppCode':
    appversion => $version,
    path       => 'objc',
  }
}
