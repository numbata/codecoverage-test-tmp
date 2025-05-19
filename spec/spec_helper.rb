# frozen_string_literal: true

require "bundler"

Bundler.require(:default, :test)

require "simplecov"
require "simplecov-lcov"

SimpleCov::Formatter::LcovFormatter.config.report_with_single_file = true

SimpleCov.start do
  enable_coverage :line
  enable_coverage :branch

  formatter SimpleCov::Formatter::MultiFormatter.new(
    [
      SimpleCov::Formatter::HTMLFormatter,
      SimpleCov::Formatter::LcovFormatter,
    ],
  )
  add_filter 'spec'
end

require_relative "../lib/example"

RSpec.configure do |config|
  config.disable_monkey_patching!
end
