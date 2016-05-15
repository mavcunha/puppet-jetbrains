# Public: Installs RubyMine from Jetbrains
#
class jetbrains::rubymine(
  $version = '2016.1.1') {
  jetbrains::package { 'RubyMine':
    appversion => $version,
    path       => 'ruby',
  }
}
