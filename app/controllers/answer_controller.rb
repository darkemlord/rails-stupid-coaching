class AnswerController < ApplicationController
  def answer
    @hello = params[:question]
    if @hello.downcase == 'i am going to work right now!'
      @reply = 'Great!'
      @reply
    elsif @hello.end_with?('?')
      @reply = 'Silly question, get dressed and go to work!'
    else
      @reply = "I don't care, get dressed and go to work!"
    end
  end
end
