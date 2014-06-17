class AnswersController < ApplicationController
  # def new
  #   @answer = Answer.new
  # end

  # def create
  #   @answer = Answer.new(answer_params)
  #   if @answer.save
  #   else
  #     render :new
  #   end
  # end

  def create
  @answer = Answer.new(answer_params)
  @answer.question_id = params[:question_id]
  @question=Question.find(params[:question_id])
    if @answer.save
      redirect_to @question
    else
      render "questions/show"
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:description, :question_id)
  end
end

