require 'spec_helper'

describe 'jetbrains::intellij_community' do
  it do
    should contain_package('ideaIC').with({
      :source => 'http://download.jetbrains.com/idea/ideaIC-13.0.1.dmg',
      :provider => 'appdmg',
    })
  end
end
