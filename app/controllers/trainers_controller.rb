class TrainersController < ApplicationController
  def new
    @trainer = Trainer.new
  end

  def create
    @trainer = Trainer.new(params[:trainer])
    if @trainer.save
      session[:trainer_id] = @trainer.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def edit
    @trainer = Trainer.find(params[:id])
  end

  def update
    @trainer = Trainer.find(params[:id])

    respond_to do |format|
      if @trainer.update_attributes(params[:trainer])
        format.html { redirect_to @trainer, notice: 'trainer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @trainer = Trainer.find(params[:id])
    @trainer.destroy

    respond_to do |format|
      format.html { redirect_to exercises_url }
      format.json { head :no_content }
    end
  end

end
