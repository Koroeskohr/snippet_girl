module SnippetGirl
  class NotImplementedError < StandardError
    def message(message = nil)
      message || 'Method must be implemented'
    end 
  end

  class FormatError < StandardError
    def message(message = nil)
      message || 'JSON was not a valid list'
    end
  end
end