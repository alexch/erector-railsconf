class Views::Articles::Index < Views::Layouts::Application

  def main_content
    h2 "Articles"
    table do
      tr do
        th "Title"
        th
      end
      articles.each do |article|
        tr do
          td do
            text Views::Widgets::Title.new(:title => article.title)
          end
          td do
            link_to "Show", article
          end
        end
      end
    end
  end
end