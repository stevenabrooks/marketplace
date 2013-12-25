class CertificationsController < ApplicationController

  def show
    @certification = Certification.find(params[:id])
  end

end