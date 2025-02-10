# frozen_string_literal: true

module HexletCode
  module Inputs
    class TextInput < BaseInput
      TAG_NAME = :textarea
      ROWS = 40
      COLS = 20

      def initialize(attrs)
        text_attrs = { cols: COLS, name: attrs[:field_name], rows: ROWS, tag_name: TAG_NAME, tag_type: :paired }
        super text_attrs.merge attrs
      end
    end
  end
end
