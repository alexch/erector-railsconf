class Views::Layouts::Application < Erector::RailsWidget

  def content
    html do
      head do
        title "Advanced Views with Erector : Railsconf 2009"
      end

      body do
        div :class => "right" do
          text "Hi, "
          text current_user.name
        end
        
        div :class => "head" do
          h1 "Advanced Views with Erector"
        end

        div :class => "content" do
          main_content
        end
      end
    end
  end
  
  def main_content
    ""
  end

end


class Views::Article::Show < View::Application
  needs :article
  def main_content
    h1 "Article"
    widget Article, :article => @article
  end
end

get "/article/:id" do
  artcile = Article.find(params[:id])
  Views::Article::View.new(article => article).to_s
end

