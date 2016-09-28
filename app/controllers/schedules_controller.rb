class SchedulesController < ApplicationController
  def index
    if params[:address]
      @schedules = Schedule.where('"CORRIDOR" LIKE ?', "%#{params[:address].split(" ")[1]}%").all
    else
      @schedules = []
    end
    render :index
  end

private
  def schedule_params
    params.require(:schedule).permit(:WEEKDAY, :CORRIDOR, :FROMHOUR, :TOHOUR, :WEEK1OFMON, :WEEK2OFMON, :WEEK3OFMON, :WEEK4OFMON, :WEEK5OFMON, :ZIP_CODE, :NHOOD)
  end
end
