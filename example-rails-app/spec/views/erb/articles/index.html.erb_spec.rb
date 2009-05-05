require File.dirname(__FILE__) + '/../../../spec_helper'

describe "erb/articles/index" do

  it "should show a table" do
    assigns[:articles] = [
    ]
  end
  
end
