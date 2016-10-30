module SnippetGirl
  class ComponentList
    def initialize(json)
      parsed_data = JSON.parse(json)
      raise SnippetGirl::FormatError unless parsed_data.is_a? Array

      @data = []
      parsed_data.each do |component|
        klass = component[:type].camelize.constantize
        @data << klass.new(component[:body], component[:order])
      end
    rescue JSON::ParserError

    end
  end
end