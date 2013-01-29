class UsersController < ApplicationController
  before_filter :authorize
  
  def authorize
    unless current_user.admin?
      flash[:error] = "You aren't authorized to view that resource!"
      redirect_to root_url
      false
    end
  end
  
   def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      
    end
  end
  
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      
    end
  end
  

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Student was successfully created.' }
        
      else
        format.html { render action: "new" }
        
      end
    end
  end


  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
       
      else
        format.html { render action: "edit" }
        
      end
    end
  end

  
end
