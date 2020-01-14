class Auth::QuestionsController < ApplicationController
  before_action :authenticate_user!
  def index
    @questions = Question.all
    authorize @questions
    @topic = Auth::Topic.all
  end

  def new
    @question = Question.new
    @auth_topics = Auth::Topic.all
  end
  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    @question.topic_id = params[:question][:topic]
    if @question.save
      redirect_to auth_questions_index_path
    else
      render auth_questions_new_path
    end
  end
  def show
    @question = Question.find(params[:qid])
  end
  def edit
    @question = Question.find_by(params[:qid])
  end
  def update
    @question = Question.find_by(params[:qid])
    @question.update(question_params)
    if @question.save
      redirect_to auth_questions_index_path
    else
      render auth_questions_new_path
    end
  end
  def destroy
    @question = Question.find(params[:qid])
    @question.responses.each do |r|
      r.destroy
    end
    @question.destroy

    redirect_to auth_questions_index_path
  end
  def delete
    @question = Question.find(params[:qid])
  end
  private
  def question_params
    params.require(:question).permit(:title, :body, :whyt, :user_id, :project_files)
  end
end
