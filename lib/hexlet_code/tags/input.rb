# frozen_string_literal: true

module HexletCode
  class Input
    attr_reader :tag, :tag_type, :attrs

    def initialize(attrs = {})
      type_attrs = {
        text: { name: '', type: :text, value: '' },
        submit: { type: :submit, value: '' }
      }

      @tag = :input
      @tag_type = :single
      input_attrs = type_attrs[attrs.fetch(:type, :text)]
      @attrs = input_attrs.merge attrs
    end
  end
end
