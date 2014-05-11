# Public: Installs IntelliJ Community or Ultimate
class jetbrains::intellij(
  $edition = 'community',
  $version = '13.1.1') {

  case $edition {
    'community': {
      jetbrains::package { 'ideaIC':
        path       => 'idea',
        appversion => $version,
      }
    }
    'ultimate': {
      jetbrains::package { 'ideaIU':
        path       => 'idea',
        appversion => $version,
      }
    }
    default: {
      fail("invalid edition (${edition}) use: class { 'jetbrains::intellij': edition => 'community'|'ultimate', version => 'XX.X.X' }")
    }
  }
}
