# frozen_string_literal: true

module HexletCode
  class Text
    attr_reader :tag, :tag_type, :attrs, :value

    def initialize(value, attrs = {})
      text_attrs = { cols: 20, name: '', rows: 40 }
      @tag = :textarea
      @value = value
      @tag_type = :paired
      @attrs = text_attrs.merge attrs
    end
  end
end
