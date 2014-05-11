require 'spec_helper'

describe 'jetbrains::intellij' do
  context 'community edition' do
    let(:params) {{ :edition => 'community', :version => '13.1.1' }}
    it do
      should contain_package('ideaIC').with({
        :source => 'http://download.jetbrains.com/idea/ideaIC-13.1.1.dmg',
        :provider => 'appdmg',
      })
    end
  end

  context 'ultimate edition' do
    let(:params) {{ :edition => 'ultimate', :version => '13.1.1' }}
    it do
      should contain_package('ideaIU').with({
        :source => 'http://download.jetbrains.com/idea/ideaIU-13.1.1.dmg',
        :provider => 'appdmg',
      })
    end
  end

  context 'boggus edition' do
    let(:params) {{ :edition => 'bogus_edition', :version => '13.1.1' }}
    it do
      expect { should contain_package('nonexistent') }.to raise_error
    end
  end

  context 'defaults' do
    it do
      should contain_package('ideaIC').with({
        :source => 'http://download.jetbrains.com/idea/ideaIC-13.1.1.dmg',
        :provider => 'appdmg',
      })
    end
  end
end

