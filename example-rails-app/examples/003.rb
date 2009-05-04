require "../vendor/plugins/erector/lib/erector"

class WidgetExample < Erector::Widget

  def content
    div :class => "content" do
      p "Hello World!", :class => "sidebar"
    end

    br :class => "clear"
  end
  
end

puts WidgetExample.new.to_pretty
# <div class="content">
#   <p class="sidebar">Hello World!</p>
# </div>
# <br class="clear" />

