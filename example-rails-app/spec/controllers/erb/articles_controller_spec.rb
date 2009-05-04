require File.dirname(__FILE__) + '/../../spec_helper'

describe Erb::ArticlesController do
  
  describe "GET #index" do
    def do_get
      get :index
    end
    
    it "should be a success" do
      do_get
      response.should be_success
    end

    it "should render the index template" do
      do_get
      response.should render_template(:index)
    end

    it "should set articles" do
      do_get
      assigns(:articles).should be
    end
  end
  
end
