# Public: Installs IntelliJ Community or Ultimate
define jetbrains::intellij {
  $current_version = '13.1.1'
  case $title {
    'community': {
      jetbrains::package { 'ideaIC':
        path       => 'idea',
        appversion => $current_version,
      }
    }
    'ultimate': {
      jetbrains::package { 'ideaIU':
        path       => 'idea',
        appversion => $current_version,
      }
    }
    default: {
      fail("invalid name (${title}), jetbrains::intellij { 'community'|'ultimate': }")
    }
  }
}
