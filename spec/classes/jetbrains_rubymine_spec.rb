require 'spec_helper'
describe 'jetbrains::rubymine' do
  it do
    should contain_package('RubyMine').with({
      :source   => 'http://download.jetbrains.com/ruby/RubyMine-6.3.1.dmg',
      :provider => 'appdmg',
    })
  end
end
