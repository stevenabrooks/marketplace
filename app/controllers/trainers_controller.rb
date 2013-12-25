class TrainersController < ApplicationController
  def new
    @trainer = Trainer.new
  end

  def create
    @trainer = Trainer.new(params[:trainer])
    if @trainer.save
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

end
