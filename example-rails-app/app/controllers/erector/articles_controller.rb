class Erector::ArticlesController < ApplicationController
  
  layout nil
  
  def index
    @articles = Article.paginate(:page => params[:page])
  end
  
end