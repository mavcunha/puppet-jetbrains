require 'spec_helper'

describe 'jetbrains::intellij' do
  context 'community edition' do
    let(:title) { 'community' }
    it do
      should contain_package('ideaIC').with({
        :source => 'http://download.jetbrains.com/idea/ideaIC-13.1.1.dmg',
        :provider => 'appdmg',
      })
    end
  end
  context 'ultimate edition' do
    let(:title) { 'ultimate' }
    it do
      should contain_package('ideaIU').with({
        :source => 'http://download.jetbrains.com/idea/ideaIU-13.1.1.dmg',
        :provider => 'appdmg',
      })
    end
  end
  context 'boggus edition' do
    let(:title) { 'nonexistent' }
    it do
      expect { should contain_package('nonexistent') }.to raise_error
    end
  end
end

