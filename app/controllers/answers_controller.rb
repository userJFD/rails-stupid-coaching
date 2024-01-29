class AnswersController < ApplicationController
  def answer
    question = params[:question]
    @answer_content = determine_answer_content(question)
  end

  def determine_answer_content(question)
    case question
    when "I am going to work!"
      "Great!"
    when question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I dont care, get dressed and go to work!"
    end
  end
end
