class Views::Pages::Example001 < Erector::RailsWidget
  
  def content
    html do
      head do
        title "Erector Rocks!"
      end
      body do
        div do
          h1 "Hello World!"
        end
      end
    end
  end
  
end