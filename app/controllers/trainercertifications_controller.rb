class TrainerCertificationsController < ApplicationController

  def new
    @trainercertification = Trainercertification.new
  end

  def create
    @trainercertification = Trainercertification.new(params[:trainercertification])
    if @trainercertification.save
      redirect_to request.referer, notice: "Thanks for the trainercertification!"
    else
      redirect_to request.referer, alert: "The trainercertification didn't work"
    end
  end

  def index
    @trainercertifications = Trainercertification.all
  end

  def show
    @trainercertification = Trainercertification.find(params[:id])
  end

  def edit
    @trainercertification = Trainercertification.find(params[:id])
  end

  def update
    rtrainercertification = Trainercertification.find(params[:id])

    respond_to do |format|
      if @trainercertification.update_attributes(params[:trainercertification])
        format.html { redirect_to @trainercertification, notice: 'trainercertification was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trainercertification.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @trainercertification = Trainercertification.find(params[:id])
    @trainercertification.destroy

    respond_to do |format|
      format.html { redirect_to exercises_url }
      format.json { head :no_content }
    end
  end

end