module SnippetGirl
  module Components
    class Markdown < Component
      BASE_OPTIONS = {
        filter_html: true,
        hard_wrap: true,
        link_attributes: { rel: 'nofollow', target: '_blank' },
        space_after_headers: true,
        fenced_code_blocks: true
      }.freeze

      BASE_EXTENSIONS = {
        autolink: true,
        superscript: true,
        disable_indented_code_blocks: true
      }.freeze

      def initialize(body, order)
        @content = body
        @order = order
      end

      def render(options = nil, extensions = nil)
        opts = options || BASE_OPTIONS
        exts = extensions || BASE_EXTENSIONS

        renderer = Redcarpet::Render::HTML.new(opts)
        markdown = Redcarpet::Markdown.new(renderer, exts)

        markdown.render(@content)
      end
    end
  end
end
