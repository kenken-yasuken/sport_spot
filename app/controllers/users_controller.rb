class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      redirect_to user_path(@user), notice: I18n.t("activerecord.flash.user.actions.create.success")
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to users_path, notice: I18n.t("activerecord.flash.user.actions.udpate.success")
    end
  end

  private

  def user_params
    params.require(:user).permit(
      %i(family_name first_name family_name_kana first_name_kana nickname gender
         age birthday user_type_id encrypted_password user_name email)
    )
  end
end