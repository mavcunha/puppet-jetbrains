# Public: Installs RubyMine from Jetbrains
#
class jetbrains::rubymine(
  $version = '6.3.1') {
  jetbrains::package { 'RubyMine':
    appversion => $version,
    path       => 'ruby',
  }
}
