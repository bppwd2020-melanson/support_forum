class Auth::ResponsesController < ApplicationController
  before_action :authenticate_user!
  def index
    @responses = Response.all
  end

  def new
    @response = Response.new
    @question = Question.find(params[:qid])
  end

  def create
    @response = Response.new(response_params)
    if @response.save
      redirect_to auth_responses_index_path
    else
      render auth_responses_new_path
    end
  end
  def show
     @response = Response.find(params[:id])
  end
  def edit
    @response = Response.find_by(params[:qid])
  end
  def update
    @response = Response.find(params[:qid])
    @response.update(response_params)
    if @response.save
      redirect_to auth_responses_index_path
    else
      render auth_responses_edit_path
    end
  end
  def destroy
    @response = Response.find(params[:qid])
    @response.destroy
    redirect_to auth_responses_index_path
  end
  def delete
    @response = Response.find_by(params[:qid])
  end
  private
  def response_params
    params.require(:response).permit(:body, :user_id, :question_id)
  end
end
