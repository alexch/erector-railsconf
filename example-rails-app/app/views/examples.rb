# app/helpers/articles.rb

def display_name(article)
  truncate(article.title, :length => 10)
end

# app/helpers/articles.rb

def display_name(article)
  content_tag :span, 
    truncate(article.title, :length => 10), 
    :title => article.title
end

# app/views/articles/show.rb

class Views::Erector::Articles::Show < Erector::RailsWidget
  def content
    text do
      truncate @article.title, :length => 10
    end
  end
end

# app/views/articles/show.rb

class Views::Erector::Articles::Show < Erector::RailsWidget
  def content
    display_name
  end

  private

  def display_name
    text do
      truncate @article.title, :length => 10
    end
  end
end

# app/views/articles/show.rb

class Views::Erector::Articles::Show < Erector::RailsWidget
  def content
    display_name
  end

  private

  def display_name
    span :title => @article.title do
      truncate @article.title, :length => 10
    end
  end
end

# app/views/articles/base.rb

class Views::Erector::Articles::Base < Erector::RailsWidget
  protected

  def display_name
    span :title => @article.title do
      truncate @article.title, :length => 10
    end
  end
end

# app/views/articles/show.rb

class Views::Erector::Articles::Show < Views::Erector::Articles::Base
  def content
    display_name
  end
end

# Create a named widget
class Views::Erector::Articles::Title < Erector::RailsWidget
  needs :title

  def display_name
    span :title => @title do
      truncate @title, :length => 10
    end
  end
end

class Views::Erector::Articles::Show < Erector::RailsWidget
  def content
    widget Title, :title => @article.title
  end
end
