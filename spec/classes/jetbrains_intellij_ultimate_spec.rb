require 'spec_helper'

describe 'jetbrains::intellij_ultimate' do
  it do
    should contain_package('ideaIU').with({
      :source => 'http://download.jetbrains.com/idea/ideaIU-13.0.1.dmg',
      :provider => 'appdmg',
    })
  end
end
