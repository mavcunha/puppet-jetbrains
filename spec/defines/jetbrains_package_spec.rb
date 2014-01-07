require 'spec_helper'

describe 'jetbrains::package' do
  context 'missing path' do
    let(:params) {{:appversion => '1.0'}}
    let(:title) { 'JetBrainsApp' }
    it { expect { should contain_package('JetBrainsApp') }.to raise_error Puppet::Error }
  end
  context 'missing appversion' do
    let(:params) {{:path => 'somepath' }}
    let(:title) { 'JetBrainsApp' }
    it { expect { should contain_package('JetBrainsApp') }.to raise_error Puppet::Error }
  end
  context 'with path and appversion' do
    let(:params) {{:path => 'somepath', :appversion => '1.0' }}
    let(:title) { 'JetBrainsApp' }
    it do
      should contain_package('JetBrainsApp').with({
        :source   => 'http://download.jetbrains.com/somepath/JetBrainsApp-1.0.dmg',
        :provider => 'appdmg',
      })
    end
  end
end
