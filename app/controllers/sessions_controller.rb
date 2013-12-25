class SessionsController < ApplicationController
  def new
  end

  def create
    trainer = Trainer.find_by_email(params[:email])
    if trainer && trainer.authenticate(params[:password])
      session[:trainer_id] = trainer.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid."
      render "new"
    end
  end

  def destroy
    session[:trainer_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end

end
