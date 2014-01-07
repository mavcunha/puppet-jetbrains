# Public: Installs applications from Jetbrains
#
define jetbrains::package($path, $appversion) {
  package { $title:
    ensure   => present,
    source   => "http://download.jetbrains.com/${path}/${title}-${appversion}.dmg",
    provider => 'appdmg',
  }
}
