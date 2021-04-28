# frozen_string_literal: true

require "utils/shell"

module Homebrew
  module_function

  def security_available_tools_args
    Homebrew::CLI::Parser.new do
      description <<~EOS
        `security-available-tools`
        
        Prints list of available tools for m9/security tap
      EOS
    end
  end

  def security_available_tools
    security_available_tools_args.parse

    puts 'security_available_tools'
  end
end