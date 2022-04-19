class UserController < ApplicationController
    protect_from_forgery with: :null_session

    def all
        if(session[:user_id])
            render json: User.all
        else
            render json: "Needs to be login"
        end
    end

    def new
        @user = User.new(user_params)
        if @user.save
            render json: "User save"
        else
            render json: "Save falied"
        end
    end
    def login
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            render json: "Logado com sucesso"
        else 
            render json: "Falha ao logar"    
        end
    end

    def logout
        session.delete(:user_id)
    end

    private

    def user_params
        params.require(:user).permit(:username, :password,:password_confirmation) 
    end
end
