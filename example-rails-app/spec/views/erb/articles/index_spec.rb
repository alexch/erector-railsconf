require File.dirname(__FILE__) + '/../../../spec_helper'

describe "erb/articles/index" do
  
  it "should show a table" do
    articles = [
      mock_model(Article, :title => "foo", :created_at => Time.now)
    ]

    assigns[:articles] = articles
    render

    response.should have_tag("table")
  end
  
end

