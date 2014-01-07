# Public: Installs IntelliJ Community or Ultimate
define jetbrains::intellij {
  case $title {
    'community': {
      jetbrains::package { 'ideaIC':
        path       => 'idea',
        appversion => '13.0.1',
      }
    }
    'ultimate': {
      jetbrains::package { 'ideaIU':
        path       => 'idea',
        appversion => '13.0.1',
      }
    }
    default: {
      fail("invalid name (${title}), jetbrains::intellij { 'community'|'ultimate': }")
    }
  }
}
