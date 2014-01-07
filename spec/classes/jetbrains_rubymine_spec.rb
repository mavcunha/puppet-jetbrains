require 'spec_helper'
describe 'jetbrains::rubymine' do
  it do
    should contain_package('RubyMine').with({
      :source   => 'http://download.jetbrains.com/ruby/RubyMine-6.0.2.dmg',
      :provider => 'appdmg',
    })
  end
end
