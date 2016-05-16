# Public: Installs PyCharm Community or Professional
class jetbrains::pycharm(
  $edition = 'community',
  $version = '2016.1.3') {

  case $edition {
    'community': {
      jetbrains::package { 'pycharm-community':
        path       => 'python',
        appversion => $version,
      }
    }
    'professional': {
      jetbrains::package { 'pycharm-professional':
        path       => 'python',
        appversion => $version,
      }
    }
    default: {
      fail("invalid edition (${edition}) use: class { 'jetbrains::pycharm': edition => 'community'|'professional', version => 'XX.X.X' }")
    }
  }
}
