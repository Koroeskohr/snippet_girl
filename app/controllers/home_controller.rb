class HomeController < ApplicationController
  def index
    if user_logged_in?
      render_dashboard
    end
  end


  private

  def render_dashboard
    @snippets = current_user.snippets
    render 'home/dashboard'
  end
end
