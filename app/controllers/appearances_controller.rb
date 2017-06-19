class AppearancesController < ApplicationController
  def new
  end

  def create
    @appearance = Appearance.create(appearance_params)
    redirect_to guest_path(@appearance.guests.first)
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest, :episode)
  end
end
