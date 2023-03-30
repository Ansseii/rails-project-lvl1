# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'hexlet_code'

require 'minitest/autorun'

module Minitest
  class Test
    def read_fixture_from_file(file_name)
      File.read(File.dirname(__FILE__) + "/fixtures/#{file_name}").strip
    end
  end
end
