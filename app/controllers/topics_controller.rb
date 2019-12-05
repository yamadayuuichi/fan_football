class TopicsController < ApplicationController
  def index
    @topics = Topic.order("created_at DESC")
  end

  def new

  end

  def create
    Topic.create(title: topic_params[:title], text: topic_params[:text], user_id: current_user.id)
  end

  def show

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

  def id_params
    params.permit(:id)
  end
end
