# frozen_string_literal: true

module HexletCode
  autoload :Tag, 'hexlet_code/tag'

  class HtmlRenderer
    RENDER_TAG = {
      single: proc { |tag| Tag.build(tag.tag, tag.attrs) },
      paired: proc { |tag| Tag.build(tag.tag, tag.attrs) { tag.value } }
    }.freeze

    class << self
      def render(form)
        Tag.build(form.tag, form.attrs) do
          form.children.each_with_object([]) do |tag, lines|
            lines << RENDER_TAG[tag.tag_type].call(tag)
          end.join
        end
      end
    end
  end
end
