module SnippetGirl
  class ComponentList

    def initialize(snippet_components)
      @data = []
      snippet_components.each do |component|
        klass_name = component['type'].camelize
        klass_with_namespace = "SnippetGirl::Components::#{klass_name}".constantize
        @data << klass_with_namespace.new(component['body'], component['order'])
      end
    end
  end
end