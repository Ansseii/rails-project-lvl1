# frozen_string_literal: true

module HexletCode
  autoload :Tag, 'hexlet_code/tag'

  class HtmlRenderer
    RENDER_TAG = {
      single: proc { |tag_name, attrs| Tag.build(tag_name, attrs) },
      paired: proc { |tag_name, attrs| Tag.build(tag_name, attrs.except(:value)) { attrs[:value] } }
    }.freeze

    def initialize(form)
      @inputs, @submit, @form_options = form.values_at :inputs, :submit, :form_options
    end

    def render_form
      Tag.build(:form, @form_options) do
        "#{render_inputs}#{render_submit}"
      end
    end

    private

    def render_label_for(field_name)
      RENDER_TAG[:paired].call :label, { for: field_name, value: field_name.capitalize }
    end

    def render_inputs
      @inputs.each_with_object([]) do |input, lines|
        field_name, tag_name, tag_type = input.attrs.values_at :field_name, :tag_name, :tag_type
        lines << render_label_for(field_name)
        lines << RENDER_TAG[tag_type].call(tag_name, input.attrs.except(:tag_name, :tag_type, :field_name))
      end.join
    end

    def render_submit
      RENDER_TAG[:single].call :input, @submit[:options] unless @submit[:options].nil?
    end
  end
end
