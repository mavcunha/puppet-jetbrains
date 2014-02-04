# JetBrains

[JetBrains](http://www.jetbrains.com/) makes developer tools specially IDEs
for different languages and platforms.

[![Build Status](https://snap-ci.com/i3YkY9o3EsatHWyNfSGber-7uRbxbZmrHJzCW_J28cQ/build_image)](https://snap-ci.com/projects/mavcunha/puppet-jetbrains/build_history)
[![Build Status](https://travis-ci.org/mavcunha/puppet-jetbrains.png)](https://travis-ci.org/mavcunha/puppet-jetbrains)

## Usage

Choose what applications you want installed.

```puppet
include jetbrains::rubymine

include jetbrains::intellij_ultimate
  or
include jetbrains::intellij_community
```

## Required Puppet Modules

* `boxen`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
