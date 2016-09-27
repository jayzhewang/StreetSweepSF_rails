class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.where(CORRIDOR: params[:CORRIDOR])
    render :index
  end

private
  def schedule_params
    params.require(:schedule).permit(:WEEKDAY, :CORRIDOR, :FROMHOUR, :TOHOUR, :WEEK1OFMON, :WEEK2OFMON, :WEEK3OFMON, :WEEK4OFMON, :WEEK5OFMON, :ZIP_CODE, :NHOOD)
  end
end
