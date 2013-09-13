class UsersController < ApplicationController
  before_action :signed_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user, only: :destroy
  before_action :has_account, only: [:new, :create]

  def index
    @users = User.order('name ASC').paginate(page: params[:page])
  end

  def new
  	@user = User.new
    redirect_to root_url if signed_in?
  end

  def show
  	@user = User.find(params[:id])
    @wines = @user.wines.paginate(page: params[:page])
  end

  def create
  	@user = User.new(user_params)
    if @user.save
      sign_in @user
			flash[:success] = "Whoa!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated successfully!"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end

  private

  def user_params
  	params.require(:user).permit(:name, :email, :password,
  													:password_confirmation)
  end

  # Before filters

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  def admin_user
      redirect_to(users_url) unless current_user.admin?
      redirect_to(users_url) if User.find(params[:id]) == current_user
  end

  def has_account
    if signed_in?
      redirect_to(root_url)
      flash[:warning] = "You already have an account and are signed in!"
    end
  end
end