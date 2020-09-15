class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = [""]

    if params[:answer] == "I am going to work"
      @answers = "Great!"
    elsif params[:answer].split(//).last == "?"
      @answers = "Silly question, get dressed and go to work!"
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end
end
