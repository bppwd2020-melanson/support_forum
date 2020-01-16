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
    puts "parameest"

    @response = Response.new(response_params)
    puts @response.question.id
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
  	@response = Response.find(params[:id])
  end

  def update
  	@response = Response.find(params[:id])
  	if @response.update(response_params)
	  	redirect_to auth_responses_index_path
	else
		render auth_responses_new_path
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
    params.require(:response).permit(:body, :user_id, :question_id, :project_files)
  end
end
