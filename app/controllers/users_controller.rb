class UsersController < ApplicationController
  # before_action :set_user
  def index
    @user =User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def delete
  end

  def edit
  end

  def register
    @user = User.new
  end

  def login
    @user = User.new
  end

  def comments
  end



  # Delete /users/1 or /tasks/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html {redirect_to users_url, notice: "User successfully destroyed." }
      format.json { head :no_content}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:firstname, :lastname, :email_id, :password, :confirm_password)
    end


end
