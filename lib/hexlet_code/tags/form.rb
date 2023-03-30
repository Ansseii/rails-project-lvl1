# frozen_string_literal: true

module HexletCode
  class Form
    attr_reader :tag, :attrs, :children

    def initialize(children = [], attrs = {})
      form_attrs = { action: '#', method: :post }
      @tag = :form
      @attrs = form_attrs.merge attrs
      @children = children
    end
  end
end
