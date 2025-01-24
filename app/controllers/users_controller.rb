class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if user.save
      render json: { message: "Registration succesful. Please Log in." }
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def add_admin
    email = params[:email]
    @user = User.find_by(email: email)

    if email.blank?
      render json: { errors: "Email cannot be blank." }
    end

    if user.nil?
      render json: { errors: "Cannot find a user with the email #{email}" }
    else
      @user.update_column(:role, 1)
      render json: { message: "User #{@user.name} is now an admin." }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
