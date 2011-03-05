class PasswordsController < ApplicationController
  # To change this template use File | Settings | File Templates.
  def index
    @passwords = Password.all;
  end

end