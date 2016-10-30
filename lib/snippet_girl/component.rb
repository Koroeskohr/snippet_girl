module SnippetGirl
  module Components
    #
    # Class Component provides methods to be implemented in subclasses
    #
    # @author Victor Viale <hello@victorviale.com>
    #
    class Component
      attr_accessor :order, :content
      def initialize(body, order)
        raise NotImplementedError
      end

      def body
        raise NotImplementedError
      end  
    end
  end
end