class Views::Pages::Index < Erector::RailsWidget
  
  def content
    html do

      head do
        title "Advanced Views with Erector : Railsconf 2009"
      end

      body do
        div :class => "head" do
          h1 "Advanced Views with Erector"
        end

        div :class => "content" do
          ul do
            li do
              text "Erector Samples"
              ul do
                li { link_to "Articles", :controller => 'erector/articles' }
              end
            end
            li do
              text "ERB Samples"
              ul {
                li { link_to "Articles", :controller => 'erb/articles' }
              }
            end
          end
        end        
      end

    end
  end
  
end