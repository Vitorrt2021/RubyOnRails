require 'csv'

class Api::V1::UserController < ApplicationController
  def index
    content = CSV.read(file)
    render json: content
  end

  def show
    id = params[:id]
    content = CSV.read(file , headers: false)
    content.each do |user|
      debugger
      if user[:id] == id  
        render json: user
      end
    end
    
    render json: "User don't exist"
  end

  def create
    user = user_params

    CSV.open(file, "ab") do |csv|
      csv << [user[:first_name], user[:last_name], user[:email], user[:password]]
    end

    render json: "create user"
  end

  private

  def file
    file =  File.join(Rails.root,'csv', 'users.csv')
  end
  
  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:password) 
  end

end
