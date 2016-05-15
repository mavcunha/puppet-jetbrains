require 'spec_helper'
describe 'jetbrains::webstorm' do
  let(:params) {{ :version => '6.3.1' }}
  it do
    should contain_package('WebStorm').with({
      :source   => 'http://download.jetbrains.com/webstorm/WebStorm-6.3.1.dmg',
      :provider => 'appdmg',
    })
  end
end
