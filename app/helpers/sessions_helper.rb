module SessionsHelper
  def signed_in?
    !current_user.nil?
  end
  
  def deny_access
    redirect_to signin_path, :notice => "Please sign in to access this page."
  end
end