# frozen_string_literal: true

require 'test_helper'

class HexletCodeTest < Minitest::Test
  def test_version_number_existence
    refute_nil ::HexletCode::VERSION
  end

  def test_form_generator
    expected = '<form action="#" method="post"></form>'
    assert_equal expected, HexletCode.form_for
  end
end
