# Public: Installs RubyMine from Jetbrains
#
class jetbrains::rubymine {
  jetbrains::package { 'RubyMine':
    appversion => '6.3',
    path       => 'ruby',
  }
}
