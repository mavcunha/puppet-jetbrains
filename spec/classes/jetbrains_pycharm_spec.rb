require 'spec_helper'

describe 'jetbrains::pycharm' do
  context 'community edition' do
    let(:params) {{ :edition => 'community', :version => '2016.1.3' }}
    it do
      should contain_package('pycharm-community').with({
        :source => 'http://download.jetbrains.com/python/pycharm-community-2016.1.3.dmg',
        :provider => 'appdmg',
      })
    end
  end
  context 'professional edition' do
    let(:params) {{ :edition => 'professional', :version => '2016.1.3' }}
    it do
      should contain_package('pycharm-professional').with({
        :source => 'http://download.jetbrains.com/python/pycharm-professional-2016.1.3.dmg',
        :provider => 'appdmg',
      })
    end
  end
  context 'bogus edition' do
    let(:params) {{ :edition => 'bogus_edition', :version => '13.1.1' }}
    it do
      expect { should contain_package('nonexistent') }.to raise_error
    end
  end
  context 'defaults' do
    it do
      should contain_package('pycharm-community').with({
        :source => 'http://download.jetbrains.com/python/pycharm-community-2016.1.3.dmg',
        :provider => 'appdmg',
      })
    end
  end
end

