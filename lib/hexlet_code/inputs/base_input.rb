# frozen_string_literal: true

module HexletCode
  module Inputs
    class BaseInput
      attr_reader :attrs

      def initialize(attrs)
        @attrs = attrs
      end
    end
  end
end
