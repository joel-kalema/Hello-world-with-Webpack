# StaticController
class StaticController < ApplicationController
  def index
    return unless Greeting.all.empty?

    messages = %w[Recruiter Designer Developer CEO World]
    5.times do |i|
      Greeting.create(message: messages[i])
    end
  end
end
