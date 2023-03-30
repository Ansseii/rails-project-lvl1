# frozen_string_literal: true

require 'test_helper'
require 'hexlet_code/tag'

class TagTest < Minitest::Test
  def test_build_single_tag
    assert_equal '<br>', HexletCode::Tag.build(:br)
    assert_equal '<img src="path/to/image">', HexletCode::Tag.build(:img, src: 'path/to/image')
    assert_equal '<input type="submit" value="Apply">', HexletCode::Tag.build(:input, type: 'submit', value: 'Apply')
  end

  def test_build_paired_tag
    assert_equal '<label for="email">Email</label>', HexletCode::Tag.build(:label, for: 'email') { 'Email' }
  end
end
