[![Build Status](https://snap-ci.com/mavcunha/puppet-jetbrains/branch/master/build_image)](https://snap-ci.com/mavcunha/puppet-jetbrains/branch/master)

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

# to install the latest DataGrip
include jetbrains::datagrip

# to install the latest PyCharm Community edition
include jetbrains::pycharm

# or install downrev PyCharm Professional
class { 'jetbrains::pycharm':
  edition => 'professional',
  version => '2016.1.1',
}
```

## Supported JetBrains IDEs

* IntelliJ
  * edition: community _(default)_
  * edition: ultimate
* RubyMine
* PhpStorm
* PyCharm
  * edition: community _(default)_ 
  * edition: professional
* WebStorm
* AppCode
* CLion
* DataGrip

## Required Puppet Modules

* `boxen`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
