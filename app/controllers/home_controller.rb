class HomeController < ApplicationController
  def index
    if user_signed_in?
      render_dashboard
    end
  end

  def test
    @snippet = Snippet.first
    @list = @snippet.components
  end

  private

  def render_dashboard
    @snippets = current_user.snippets
    render 'home/dashboard'
  end
end
