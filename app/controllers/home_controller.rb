class HomeController < ApplicationController
  def top
    if current_user
      redirect_to topics_path
    end
  end
end
