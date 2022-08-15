class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_input = params[:question]
    @question = coach_answer(params[:question])
  end

  def coach_answer(question)
    if question.include?('?')
      'Silly question, get dressed and go to work!'
    elsif question == 'I am going to work'
      'Great!'
    else
      'I don`t care, get dressed and go to work!'
    end
  end
end
