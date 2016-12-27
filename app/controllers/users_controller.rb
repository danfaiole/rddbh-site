class UsersController < ApplicationController
  def create
    @user = User.new(users_params)

    if @user.valid?
      @user.save
    else
      redirect_to :root
    end
  end

  private

  def users_params
    params.require(:user).permit(
      :name, :last_name, :birthday, :email, :leader, :city,
      :state, :leader_phone
    )
  end

end
