# frozen_string_literal: true

require_relative 'hexlet_code/version'

module HexletCode
  autoload :Inputs, 'hexlet_code/inputs'
  autoload :FormBuilder, 'hexlet_code/form_builder'
  autoload :HtmlRenderer, 'hexlet_code/html_renderer'

  def self.form_for(obj, **attrs)
    builder = FormBuilder.new obj, **attrs
    yield builder if block_given?

    HtmlRenderer.new(builder.form).render_form
  end
end
