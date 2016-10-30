module SnippetGirl
  module Components
    class Text < Component
      def initialize(body, order)
        @content = body
        @order = order
      end

      def data
        @content
      end

      def value
        @content
      end
    end
  end
end