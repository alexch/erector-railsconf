class ArticlesController < ApplicationController
  
  layout nil
  
  def index
    @articles = Article.paginate(:page => params[:page], :per_page => 5)

    respond_to do |format|
      format.html { render :action => "foo_mobile" }
    end
  end

  def show
    @article = Article.find(params[:id])
  end
  
end