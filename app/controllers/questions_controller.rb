class QuestionsController < ApplicationController
  def index
    @title = "A random question!"
    @tweets = Tweet.all
    @random_question = Question.random
    @question = Question.new(params[:question])
    if @question.save
      flash[:success] = "Questions added!"
      redirect_to root_path
    end
  end
  
  def new
    @question = Questions.new
  end
  
  def create
    @question = Question.new(params[:question])
    if @question.save
      flash[:success] = "Questions added!"
      redirect_to root_path
    end
  end
end
