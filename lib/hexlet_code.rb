# frozen_string_literal: true

require_relative 'hexlet_code/version'

module HexletCode
  class Error < StandardError; end

  def self.form_for
    '<form action="#" method="post"></form>'
  end
end
