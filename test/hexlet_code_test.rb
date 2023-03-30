# frozen_string_literal: true

require 'test_helper'

class HexletCodeTest < Minitest::Test
  User = Struct.new(:name, :job, :gender, keyword_init: true)

  def setup
    @user = User.new name: 'Tom', job: 'project manager', gender: 'm'
  end

  def test_form_generator
    expected = read_fixture_from_file 'empty_form.html'
    actual = HexletCode.form_for @user

    assert_equal expected, actual
  end

  def test_form_with_url
    expected = read_fixture_from_file 'empty_form_with_url.html'
    actual = HexletCode.form_for @user, url: '/users'

    assert_equal expected, actual
  end

  def test_form_with_fields
    expected = read_fixture_from_file 'form_with_fields.html'
    actual = HexletCode.form_for @user do |f|
      f.input :name
      f.input :job, as: :text
    end

    assert_equal expected, actual
  end

  def test_with_overridden_fields
    expected = read_fixture_from_file 'form_with_overridden_attrs.html'
    actual = HexletCode.form_for @user, url: '/users' do |f|
      f.input :name, class: 'user-input'
      f.input :job, as: :text, rows: 50, cols: 50
    end

    assert_equal expected, actual
  end

  def test_with_invalid_field
    assert_raises NoMethodError do
      HexletCode.form_for @user, url: '/users' do |f|
        f.input :name, class: 'user-input'
        f.input :surname, as: :text, rows: 50, cols: 50
      end
    end
  end

  def test_with_default_submit
    expected = read_fixture_from_file 'form_with_default_submit.html'
    actual = HexletCode.form_for @user do |f|
      f.input :name
      f.input :job
      f.submit
    end

    assert_equal expected, actual
  end

  def test_with_custom_submit
    expected = read_fixture_from_file 'form_with_custom_submit.html'
    actual = HexletCode.form_for @user do |f|
      f.input :name
      f.input :job
      f.submit 'WoW'
    end

    assert_equal expected, actual
  end
end
