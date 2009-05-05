require File.dirname(__FILE__) + '/../../../spec_helper'

describe Views::Erector::Articles::Index do

  it "should show a table" do
    articles = [
      mock_model(Article, :title => "foo", :created_at => Time.now)
    ]

    widget = Views::Erector::Articles::Index.new( :articles => articles )
    html = widget.to_s( :helpers => @controller )

    html.should have_tag("table")
  end
  
end
