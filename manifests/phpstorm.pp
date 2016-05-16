# Public: Installs PhpStorm from Jetbrains
#
class jetbrains::phpstorm(
  $version = '2016.1.1') {
  jetbrains::package { 'PhpStorm':
    appversion => $version,
    path       => 'webide',
  }
}
