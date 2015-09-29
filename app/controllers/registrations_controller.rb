class RegistrationsController < Devise::RegistrationsController



  private
  def sign_up_params
    params.require(:user).permit(:user_name, :description, :days_left, :email, :password, :password_confirmation, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at)
  end
end
