class SessionsController < ApplicationController
  def new
    @title = "Sign In"
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      #redirect_back_or account_url, :notice => "Logged in!" flash[:success] #FIXME: add this to ensure that user is routed to their right position
      redirect_back_or account_url
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end
