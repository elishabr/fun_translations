# frozen_string_literal: true

module FunTranslations
  class Translation # rubocop:disable Style/Documentation
    attr_reader :original_text, :translated_text, :translation

    def initialize(raw_translation)
      @original_text = raw_translation['text']
      @translated_text = raw_translation['translated']
      @translation = raw_translation['translation']
    end
  end
end
