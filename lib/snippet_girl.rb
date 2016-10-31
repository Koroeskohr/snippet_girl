require 'snippet_girl/errors'

module SnippetGirl  
  VERSION = '0.0.1'

  autoload :ComponentList, 'snippet_girl/component_list'
  autoload :Component, 'snippet_girl/component'
  autoload :Markdown, 'snippet_girl/components/markdown'
  autoload :Text, 'snippet_girl/components/text'
end