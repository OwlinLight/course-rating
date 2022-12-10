class SessionsController < ApplicationController

    def signup
        @user = User.new
    end

    def new

    end
  
    def create
      flash.delete(:danger)
      # Find the user by their email address
      user = User.find_by(email: params[:email])
  
      # If the user exists and their password matches the submitted password
      if user && user.authenticate(params[:password])
        # Save the user's id in the session
        session[:user_id] = user.id
  
        redirect_to main_path

      else
        # Display an error message
        flash.now[:danger] = 'Invalid email/password combination'
        render 'login'

      end
    end
  
    def destroy
      # Clear the user's id from the session
      session.delete(:user_id)
  
      # Redirect the user to the login page
      redirect_to login_path
    end

    def logout
      # Clear the user's id from the session
      session.delete(:user_id)
  
      # Redirect the user to the login page
      redirect_to login_path
    end
  end