class PasswordsController < ApplicationController
  before_filter :authenticate_user!

  # To change this template use File | Settings | File Templates.
  def index
    @passwords = Password.all;
  end

  def new
    @password = Password.new
  end

  def create
    @password = Password.new(params[:password])

    if @password.save
      redirect_to :action=>:index, :notice => "Password succefully added"
    else
      render :action => :new
    end
  end

  def edit
    @password = Password.find params[:id]
  end

  def update
    @password = Password.find params[:id]

    if @password.update_attributes(params[:password])
      redirect_to :action=>:index, :notice => "Password succefully updated"
    else
      render :action => :new
    end
  end

  def destroy
    @password = Password.find params[:id]
    @password.destroy

    redirect_to :action => :index
  end
end