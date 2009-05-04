require "../vendor/plugins/erector/lib/erector"

class WidgetExample < Erector::Widget

  def content
    div "Hello World!"
  end
  
end

puts WidgetExample.new.to_s

# <div>Hello World!</div>