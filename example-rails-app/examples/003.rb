require "../vendor/plugins/erector/lib/erector"

class WidgetExample < Erector::Widget
  def content
    div :class => "content" do
      p "Hello <script> World!", :class => "sidebar"
    end
  end
end

puts WidgetExample.new.to_pretty
# <div class="content">
#   <p class="sidebar">Hello &lt;script&gt; World!</p>
# </div>
