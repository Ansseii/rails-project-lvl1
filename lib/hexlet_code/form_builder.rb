# frozen_string_literal: true

require 'active_support/all'

module HexletCode
  class FormBuilder
    attr_reader :form

    def initialize(obj, **attrs)
      @obj = obj
      action = attrs.fetch :url, '#'
      method = attrs.fetch :method, :post

      @form = {
        inputs: [],
        submit: { options: nil },
        form_options: { action:, method: }.merge(attrs.except(:url, :method))
      }
    end

    def submit(value = :Save)
      @form[:submit][:options] = { type: :submit, value: }
    end

    def input(field_name, as: :string, **attrs)
      value = @obj.public_send field_name
      input_class = "HexletCode::Inputs::#{as.capitalize}Input".constantize

      @form[:inputs] << input_class.new({ field_name:, value: }.merge(attrs))
    end
  end
end
