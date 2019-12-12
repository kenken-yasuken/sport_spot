class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
    # if @user.save!
    #   redirect_to user_path(@user), notice: "ユーザー登録が完了しました"
    # end
  end

  private

  def user_params
    params.require(:user).permit(
      %i(family_name first_name family_name_kana first_name_kana nickname gender
         age birthday user_type_id encrypted_password)
    )
  end
end