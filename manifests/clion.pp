# Public: Installs CLion from Jetbrains
#
class jetbrains::clion(
  $version = '2016.1.2') {
  jetbrains::package { 'CLion':
    appversion => $version,
    path       => 'cpp',
  }
}
