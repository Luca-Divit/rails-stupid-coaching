class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if (@question.delete(' ')).downcase == "iamgoingtoworkrightnow!"
      @answer = "Great!"
    elsif (@question.delete(' ')).end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
