class QuestionsController < ApplicationController
  def ask
    @ask = ''
  end

  def answer
    @question = params[:question]

    @answer =
    if @question.include? '?'
      'Silly question, get dressed and go to work!'
    elsif @question.include? 'I am going to work'
      'Great!'
    else "I don't care, get dressed and go to work!"
    end
  end
end
