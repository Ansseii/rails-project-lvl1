# frozen_string_literal: true

require 'minitest/autorun'
require 'hexlet_code/tag'

class TagTest < Minitest::Test
  def test_build_single_tag
    assert_equal '<br>', HexletCode::Tag.build('br')
    assert_equal '<img src="path/to/image">', HexletCode::Tag.build('img', src: 'path/to/image')
    assert_equal '<input type="submit" value="Apply">', HexletCode::Tag.build('input', type: 'submit', value: 'Apply')
  end
end
