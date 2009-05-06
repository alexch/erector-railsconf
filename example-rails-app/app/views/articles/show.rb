class Views::Erector::Articles::Show < Erector::RailsWidget  
  def content    
    text do
      truncate @article.title, :length => 10
    end
  end
end


class Views::Erector::Articles::Show < Erector::RailsWidget
  def content    
    display_name
  end

  private

  def display_name
    text truncate(@article.title, :length => 10)
  end
end

class Views::Erector::Articles::Show < Erector::RailsWidget
  def content    
    display_name
  end

  private

  def display_name
    span truncate(@article.title, :length => 10)
  end
end

class Views::Erector::Articles::Show < Erector::RailsWidget
  def content    
    display_name
  end

  private

  def display_name
    span truncate(@article.title, :length => 10), :title => @article.title
  end
end

# Inheritance
class Views::Erector::Articles::Base < Erector::RailsWidget
  protected

  def display_name
    span truncate(@article.title, :length => 10), :title => @article.title
  end
end

class Views::Erector::Articles::Show < Views::Erector::Articles::Base
  def content    
    display_name
  end
end

# Delegation
class Views::Erector::Articles::ArticleTitle < Erector::RailsWidget
  needs :title
  
  def content
    span truncate(@title, :length => 10), :title => @title
  end
end

class Views::Erector::Articles::Show < Erector::RailsWidget
  def content    
    widget ArticleTitle, :title => @article.title
  end
end

