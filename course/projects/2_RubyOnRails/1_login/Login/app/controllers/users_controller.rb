class UsersController < ApplicationController
    protect_from_forgery with: :null_session

    def new
        debugger

        @user = User.new(user_params)
        
        @user.save
        render json: "Success"
        # else 
        #     render "Don't save"
        # end
    end

    def all
        render json: User.all
    end
    def create 
        @user = User.new
    end

    private
    
    def user_params
        params.require(:user).permit(:first_name,:last_name, :email, :password,:password_confirmation)
    end
end
