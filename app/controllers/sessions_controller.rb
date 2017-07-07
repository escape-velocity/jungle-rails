class SessionsController < ApplicationController
  def new
  end

  def create
    # take the params from the form (email/pass)

    if auth_was_success
      
    else
      render :new
    end
  end

  def destroy
  end
end
