[![Build Status](https://snap-ci.com/i3YkY9o3EsatHWyNfSGber-7uRbxbZmrHJzCW_J28cQ/build_image)](https://snap-ci.com/projects/mavcunha/puppet-jetbrains/build_history)

# JetBrains

[JetBrains](http://www.jetbrains.com/) makes developer tools specially IDEs
for different languages and platforms.

## Usage

Choose what applications you want installed, you can override the default
versions by using `version => 'X.X.X'`.

```puppet
# to install RubyMine
class { 'jetbrains::rubymine':
  version => '6.3.1',
}

# to install IntelliJ (Community or Ultimate editions)
class { 'jetbrains::intellij':
  edition => 'community',
  version => '13.1.1',
}

or

class { 'jetbrains::intellij':
  edition => 'ultimate',
  version => '13.1.1',
}
```

## Required Puppet Modules

* `boxen`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
