module SnippetGirl
  class NotImplementedError < StandardError
    def message(message)
      message || 'Method must be implemented'
    end 
  end

  class FormatError < StandardError
    def message(message)
      message || 'JSON was not a valid list'
    end
  end
end