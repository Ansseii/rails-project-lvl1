# frozen_string_literal: true

require_relative 'hexlet_code/version'

module HexletCode
  autoload :FormBuilder, 'hexlet_code/form_builder'
  autoload :HtmlRenderer, 'hexlet_code/html_renderer'

  def self.form_for(obj, url: '#', **attrs)
    builder = FormBuilder.new obj, url, **attrs
    yield builder if block_given?

    HtmlRenderer.render builder.form
  end
end
