# Public: Installs WebStorm from Jetbrains
#
class jetbrains::webstorm(
  $version = '2016.1.2') {
  jetbrains::package { 'WebStorm':
    appversion => $version,
    path       => 'webstorm',
  }
}
