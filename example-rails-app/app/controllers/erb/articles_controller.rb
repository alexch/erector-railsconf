class Erb::ArticlesController < ApplicationController

  def index
    @articles = Article.paginate(:page => params[:page])
  end
  
end