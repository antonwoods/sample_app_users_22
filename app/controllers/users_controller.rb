class UsersController < ApplicationController
  def new
    @title = "Sign up"
    @user = User.new
  end

  def create
   #the first thing we need to do
   
   #create a user
   @user = User.new(params[:user]) # create REST resource, it extends active record. 
   if @user.save
     redirect_to user_path(@user)
   else
     @title = "Sign up"
     render 'new'
   end
  end
  
  
  def show
    @user = User.find(params[:id])#get variable from the database
    @title = @user.name
  end
end
