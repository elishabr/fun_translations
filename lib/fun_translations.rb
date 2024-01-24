# frozen_string_literal: true

require 'faraday'
require 'json'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup

module FunTranslations # rubocop:disable Style/Documentation
  def self.client
    FunTranslations::Client.new
  end
end
