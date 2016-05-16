require 'spec_helper'
describe 'jetbrains::datagrip' do
  let(:params) {{ :version => '2016.1.1' }}
  it do
    should contain_package('datagrip').with({
      :source   => 'http://download.jetbrains.com/datagrip/datagrip-2016.1.1.dmg',
      :provider => 'appdmg',
    })
  end
end
