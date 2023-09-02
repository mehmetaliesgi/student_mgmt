class ApplicationController < ActionController::Base
  before_action :print_display_message
  after_action :after_display_message

  def print_display_message
    puts "I am a inherited before action filter"
  end

  def after_display_message
    puts "I am a inherited after action filter"
  end
end
