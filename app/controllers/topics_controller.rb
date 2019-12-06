class TopicsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @topics = Topic.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @topic = Topic.new
  end

  def create
    Topic.create(title: topic_params[:title], text: topic_params[:text], user_id: current_user.id)
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
    params.permit(:title, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def id_params
    params.permit(:id)
  end
end
