# frozen_string_literal: true

module HexletCode
  module Inputs
    class StringInput < BaseInput
      TAG_NAME = :input

      def initialize(attrs)
        string_attrs = { name: attrs[:field_name], type: :text, tag_name: TAG_NAME, tag_type: :single }
        super string_attrs.merge(attrs)
      end
    end
  end
end
