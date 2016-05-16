require 'spec_helper'
describe 'jetbrains::phpstorm' do
  let(:params) {{ :version => '2016.1.1' }}
  it do
    should contain_package('PhpStorm').with({
      :source   => 'http://download.jetbrains.com/webide/PhpStorm-2016.1.1.dmg',
      :provider => 'appdmg',
    })
  end
end
