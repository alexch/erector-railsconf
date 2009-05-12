class Views::Layouts::Application < Erector::RailsWidget

  def content
    html do
      head do
        title "Advanced Views with Erector : Railsconf 2009"
        stylesheet_link_tag "styles"
      end

      body do
        div :class => "wrapper" do
          div :class => "head" do
            h1 "Advanced Views with Erector"
          end

          div :class => "content" do
            main_content
          end

          div :class => "footer" do
            footer
          end
        end
      end
    end
  end

  protected

  def main() end

  def footer
    link_to "Articles", articles_path
  end

end
