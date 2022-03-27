# frozen_string_literal: true

module HexletCode
  # tag builder
  class Tag
    class << self
      def build(tag, attrs = {})
        body = yield if block_given?

        body.nil? ? build_single_tag(tag, attrs) : build_paired_tag(tag, attrs, body)
      end

      private

      def build_single_tag(tag, attrs)
        "<#{tag}#{build_attrs(attrs)}>"
      end

      def build_paired_tag(tag, attrs, body = '')
        opened_tag = build_single_tag(tag, attrs)
        closed_tag = "</#{tag}>"

        "#{opened_tag}#{body}#{closed_tag}"
      end

      def build_attrs(attrs)
        attrs
          .map { |attr, value| " #{attr}=\"#{value}\"" }
          .join
      end
    end
  end
end
