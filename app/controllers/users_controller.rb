class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]


  def joinClass
    @student = current_user
    @klass = @student.klass
    redirect_to @klass
  end

  
  def signup
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # If the user was successfully saved, redirect to the login page
      flash[:success] = "Successfully created user account, login!"
      redirect_to login_path
    else
      # Initialize a new user object if the save fails
      @user = User.new
      # Set the error message to display to the user
      flash.now[:danger] = 'That email is already in use. Please choose a different email.'
      # Render the signup form again
      render 'sessions/signup'
    end
  end



  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show

  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit

  end

  # POST /users or /users.json
 

  # PATCH/PUT /users/1 or /users/1.json
  def update
    @user = User.find(params[:id])
    redirect_to main_path

  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :password, :name, :user_type)
    end
end
