class Views::Erector::Articles::Index < Erector::RailsWidget

  needs :articles

  class ArticlesTable < Erector::Widgets::Table
    column :title
    column :created_at, "Date Created" do |article| 
      text article.created_at.to_s(:long)
    end
    row_classes :dark, :light
  end

  def content
    h2 "Articles"

    widget ArticlesTable, :row_objects => articles
  end

end