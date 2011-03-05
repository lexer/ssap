class PasswordsController < ApplicationController
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
end