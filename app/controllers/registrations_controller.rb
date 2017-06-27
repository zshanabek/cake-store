class  RegistrationsController < Devise::RegistrationsController
	private
	  def sign_up_params
	    params.require(:user).permit(:phone,:email,:password,:password_confirmation)
	  end

	  def account_update_params
	    params.require(:user).permit(:name,:lastname,:age,:gender,:current_password)
	  end
end