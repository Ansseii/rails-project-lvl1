# frozen_string_literal: true

require 'active_support/all'

module HexletCode
  autoload :Form, 'hexlet_code/tags/form'
  autoload :Input, 'hexlet_code/tags/input'
  autoload :Text, 'hexlet_code/tags/text'
  autoload :Label, 'hexlet_code/tags/label'

  class FormBuilder
    SINGLE_TAGS = [:input].freeze

    attr_accessor :form

    def initialize(obj, url, **attrs)
      @obj = obj
      @nested_tags = []
      @form = Form.new(@nested_tags, attrs.merge({ action: url }))
    end

    def submit(value = :Save)
      @nested_tags << Input.new({ type: :submit, value: })
    end

    def input(field_name, as: :input, **attrs)
      value = @obj.public_send field_name
      common_attrs = { name: field_name }
      merged_attrs = common_attrs.merge attrs

      @nested_tags << Label.new(field_name.to_s.classify, { for: field_name })
      input_class = "HexletCode::#{as.to_s.classify}".constantize
      @nested_tags << if SINGLE_TAGS.include? as
                        input_class.new merged_attrs.merge({ value: })
                      else
                        input_class.new value, merged_attrs
                      end
    end
  end
end
