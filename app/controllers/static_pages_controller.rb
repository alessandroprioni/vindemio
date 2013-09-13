class StaticPagesController < ApplicationController
  def home
  	@wine = current_user.wines.build if signed_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end