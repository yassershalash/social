class RegistrationsController < Devise::RegistrationsController

  def new
    super
  end

  def create
    super
    @user.uni = @user.email.scan(/\w+\.edu/).first[0..-5].upcase
    @user.save
    redirect_to events_path
  end

  def update
    super
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end

end
