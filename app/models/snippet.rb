class Snippet < ActiveRecord::Base
  belongs_to :user

  serialize :body, HashSerializer
  # [
  #   {
  #     order: 1,
  #     type: 'check_list',
  #     body: [
  #       {
  #         text: "Chop heads",
  #         checked: true
  #       },
  #       {
  #         text: 'Kill zombies',
  #         checked: false
  #       }
  #     ]
  #   },
  #   {
  #     order: 2,
  #     type: 'markdown',
  #     body: "Hi people ! I *love* snippets"
  #   },
  #   {
  #     order: 3,
  #     type: 'code',
  #     body: {
  #       language: 'ruby',
  #       text: 'def hi; puts "hi"; end'
  #     }
  #   }
  # ] 

  def components
    @components_cache ||= SnippetGirl::ComponentList.new(body)
  end

  
end
