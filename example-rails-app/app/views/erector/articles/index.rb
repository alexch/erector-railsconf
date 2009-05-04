class Views::Erector::Articles::Index < Erector::RailsWidget

  class ArticlesTable < Erector::Widgets::Table
    column :title
    column :created_at, "Date Created" do |article| 
      text article.created_at.to_s(:long)
    end
    row_classes :even, :odd
  end

  def content
    h2 "Articles"

    widget ArticlesTable, :row_objects => @articles
  end

end