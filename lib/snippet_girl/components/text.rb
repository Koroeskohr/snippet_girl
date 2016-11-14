module SnippetGirl
  module Components
    class Text < Component
      def initialize(body, order)
        @content = body
        @order = order
      end

      def value
        @content
      end
      
      def render
        value.html_safe
      end
    end
  end
end