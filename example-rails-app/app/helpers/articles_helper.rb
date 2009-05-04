module ArticlesHelper

  # Erb: app/views/show.html.erb
  # <%=h article.title %>

  # Erb: app/views/show.html.erb
  # <%=h truncate(article.title, :length => 10) %>

  # Helper: app/helpers/articles.rb
  def display_name(article)
    truncate(article.title, :length => 10)
  end
  # <%=h display_name(article) %>

  # Helper with tag: app/helpers/articles.rb
  def display_name(article)
    content_tag :span, truncate(article.title, :length => 10), :title => article.title
  end
  # <%=h display_name(article) %>

  # Partial: app/views/_display_name.html.erb
  # <span title="<%= article.title %>">
  #   <%=h truncate(article.title, :length => 10) %>
  # </span>
  # <%=h render "articles/display_name", :article => article %>
  
end