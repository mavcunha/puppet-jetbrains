require 'spec_helper'
describe 'jetbrains::appcode' do
  let(:params) {{ :version => '2016.1.1' }}
  it do
    should contain_package('AppCode').with({
      :source   => 'http://download.jetbrains.com/objc/AppCode-2016.1.1.dmg',
      :provider => 'appdmg',
    })
  end
end
