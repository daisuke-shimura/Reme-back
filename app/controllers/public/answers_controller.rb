class Public::AnswersController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    user = current_user
    answer   = Answer.new(answer_params)

    answer.question_id = question.id
    #answer.result_id = 
    answer.user_id = user.id

    answer.save
  end


  private
  def answer_params
    params.require(:answer).permit(:score)
  end
end
