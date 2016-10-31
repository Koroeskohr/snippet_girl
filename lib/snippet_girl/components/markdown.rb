module SnippetGirl
  module Components
    class Markdown < Component
      def initialize(body, order)
        @content = body
        @order = order
      end

      def render
        options = {
          filter_html: true,
          hard_wrap: true, 
          link_attributes: { rel: 'nofollow', target: "_blank" },
          space_after_headers: true, 
          fenced_code_blocks: true
        }

        extensions = {
          autolink: true,
          superscript: true,
          disable_indented_code_blocks: true
        }

        renderer = Redcarpet::Render::HTML.new(options)
        markdown = Redcarpet::Markdown.new(renderer, extensions)

        markdown.render(@content).html_safe
      end
    end
  end
end