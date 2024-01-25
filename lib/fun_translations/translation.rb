# frozen_string_literal: true

module FunTranslations
  class Translation
    attr_reader :translated_text, :original_text, :translation, :audio, :speed, :tone

    def initialize(raw_translation)
      @translated_text = raw_translation['translated']
      @original_text = raw_translation['text']
      @translation = raw_translation['translation']
      @speed = raw_translation['speed']
      @tone = raw_translation['tone']
    end
  end
end
