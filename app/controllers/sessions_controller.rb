class SessionsController < ApplicationController

  def new
  end

  def create

    if user = User.authenticate_with_credentials(params[:email], params[:password])
      # success logic, log them in
        session[:user_id] = user.id
        redirect_to root_path, notice: "Logged in!"
    else
      # failure, render login form
        flash.now.alert = "Email or password is invalid"
        render "new"
    end

    # user = User.find_by_email(params[:email])
    #
    # if user && user.authenticate(params[:password])
    #   session[:user_id] = user.id
    #   redirect_to root_path, notice: "Logged in!"
    # else
    #   flash.now.alert = "Email or password is invalid"
    #   render "new"
    # end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out!"
  end

end
