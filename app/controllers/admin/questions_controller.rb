class Admin::QuestionsController < ApplicationController
  def index
    questions = Question.all
    render json: questions
  end

  def create
    question = Question.new(question_params)
    question.save!
    render json: question, status: :created
  end

  def show
    question = Question.find(params[:id])
    render json: question
  end

  def update
    question = Question.find(params[:id])
    question.update(question_params)
    render json: question
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    head :no_content
  end


  private
  def question_params
    params.require(:question).permit(:content)
  end
end
