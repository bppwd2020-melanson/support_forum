class Auth::TopicsController < ApplicationController
  before_action :set_auth_topic, only: [:show, :edit, :update, :destroy]

  # GET /auth/topics
  # GET /auth/topics.json
  def index
    @auth_topics = Auth::Topic.all
  end

  # GET /auth/topics/1
  # GET /auth/topics/1.json
  def show
    @topic = Auth::Topic.find(params[:id])
    @auth_topics = Auth::Topic.all
  end

  # GET /auth/topics/new
  def new
    @auth_topic = Auth::Topic.new
  end

  # GET /auth/topics/1/edit
  def edit
  end

  # POST /auth/topics
  # POST /auth/topics.json
  def create
    @auth_topic = Auth::Topic.new(auth_topic_params)

    respond_to do |format|
      if @auth_topic.save
        format.html { redirect_to @auth_topic, notice: 'Topic was successfully created.' }
        format.json { render :show, status: :created, location: @auth_topic }
      else
        format.html { render :new }
        format.json { render json: @auth_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auth/topics/1
  # PATCH/PUT /auth/topics/1.json
  def update
    respond_to do |format|
      if @auth_topic.update(auth_topic_params)
        format.html { redirect_to @auth_topic, notice: 'Topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @auth_topic }
      else
        format.html { render :edit }
        format.json { render json: @auth_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auth/topics/1
  # DELETE /auth/topics/1.json
  def destroy
    @auth_topic.destroy
    respond_to do |format|
      format.html { redirect_to auth_topics_url, notice: 'Topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auth_topic
      @auth_topic = Auth::Topic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auth_topic_params
      params.require(:auth_topic).permit(:title)
    end
end
