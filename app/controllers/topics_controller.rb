class TopicsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @topics = Topic.order("created_at DESC").page(params[:page]).per(50)
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_path
    else
      redirect_to new_topic_path
    end
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destory

  end

  private
  def topic_params
    params.require(:topic).permit(:title, :text).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def id_params
    params.permit(:id)
  end
end
