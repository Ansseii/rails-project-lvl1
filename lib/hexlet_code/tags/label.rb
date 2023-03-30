# frozen_string_literal: true

module HexletCode
  class Label
    attr_reader :tag, :tag_type, :attrs, :value

    def initialize(value, attrs = {})
      label_attrs = { for: '' }
      @tag = :label
      @value = value
      @tag_type = :paired
      @attrs = label_attrs.merge attrs
    end
  end
end
