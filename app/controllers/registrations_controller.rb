class RegistrationsController < Devise::RegistrationsController
    def after_sign_up_path_for(resource)
      users_path
    end

    def after_sign_in_path_for(resource)
      users_path
    end
  private
  def sign_up_params
    params.require(:user).permit(:user_name, :description, :days_left, :email, :password, :password_confirmation, :avatar)
  end
end
