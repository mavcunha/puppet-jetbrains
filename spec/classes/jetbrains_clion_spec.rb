require 'spec_helper'
describe 'jetbrains::clion' do
  let(:params) {{ :version => '2016.1.1' }}
  it do
    should contain_package('CLion').with({
      :source   => 'http://download.jetbrains.com/cpp/CLion-2016.1.1.dmg',
      :provider => 'appdmg',
    })
  end
end
