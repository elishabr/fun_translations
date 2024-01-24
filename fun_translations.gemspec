# frozen_string_literal: true

require File.expand_path('lib/fun_translations/version', __dir__)

Gem::Specification.new do |spec|
  spec.name = 'fun_translations'
  spec.version = FunTranslations::VERSION
  spec.authors = ['Nikita Kirgizov']
  spec.email = ['kirgizovn@gmail.com']
  spec.summary = ''
  spec.description = ''
  spec.homepage = 'https://github.com/elishabr/ruby_project_one.git'
  spec.license = 'MIT'
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.7.0' # rubocop:disable Gemspec/RequiredRubyVersion

  spec.files = Dir[ 'lib/**/*.rb',
                    'fun_translations.gemspec',
                    'Rakefile']
  # spec.extra_rdoc_files = ['README.md']
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 2.6'
  spec.add_dependency 'zeitwerk', '~> 2.4'

  spec.metadata = {
    'rubygems_mfa_reguired' => 'true'
  }
end

# для сборки
# gem build fun_translations.gemspec

# для удаления
# gem uninstall fun_translations

# для локальной установки
# gem install fun_translations-0.0.1.gem
