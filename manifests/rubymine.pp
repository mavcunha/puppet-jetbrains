# Public: Installs RubyMine from Jetbrains
#
class jetbrains::rubymine {
  jetbrains::package { 'RubyMine':
    appversion => '6.0.2',
    path       => 'ruby',
  }
}
