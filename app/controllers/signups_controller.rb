class SignupsController < ApplicationController
  def new
    @signup = Signup.new
    @campers = Camper.all
    @activities = Activity.all
  end

  def create
    @signup = Signup.create(signup_params)
    redirect_to camper_path(@signup.camper)
  end

  def show
    @signup = Signup.find(params[:id])
  end

  private

  def signup_params
    params.require(:signup).permit(:camper_id, :activity_id, :time)
  end
end
