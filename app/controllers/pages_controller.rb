class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def about
  end

  def tutorials
  end

  def history
  end

  def profile
    # "show" view for user
    @user = current_user
  end

end
