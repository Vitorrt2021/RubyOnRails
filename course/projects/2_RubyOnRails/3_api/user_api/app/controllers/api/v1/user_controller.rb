require 'csv'

class Api::V1::UserController < ApplicationController
  def index
    content = CSV.parse(File.read(file), headers: false,  skip_lines: /\n/)
    render json: content
  end

  def show
    id = params[:id]
    content = CSV.parse(File.read(file), headers: true)
    content.each do |user|
      if user['id'] == id  
        render json: user
        return true
      end
    end
    
    render json: "User don't exist"
  end

  def create
    user = user_params
    new_user = [ new_id ,user[:first_name], user[:last_name], user[:email], user[:password]]
    CSV.open(file, "a+") do |csv|
      csv << new_user
    end

    render json: new_user
  end

  private

  def file
    file =  File.join(Rails.root,'csv', 'users.csv')
  end
  
  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:password) 
  end

  def new_id
    new_id = 0;
    content = CSV.parse(File.read(file), headers: true)
    content.each do |user|
      if user['id'].to_i >= new_id  
        new_id = user['id'].to_i
      end
    end
    return new_id + 1
  end    
end
