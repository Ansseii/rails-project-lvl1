# frozen_string_literal: true

require 'test_helper'

class HexletCodeTest < Minitest::Test
  def test_version_number_existence
    refute_nil ::HexletCode::VERSION
  end
end
