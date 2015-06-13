require 'spec_helper'
require 'home'

describe Home do
  it 'splits an array' do
    string = "asdf\r\nasdf\r\nasdf"
    Home.splitByLine(string).should == ['asdf','asdf','asdf']
  end

end
