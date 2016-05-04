class CalendarsController < ApplicationController
  def show
    @events = Event.all
    
    unless params[:month] and params[:year]
    @calendar = Calendar.new(month: Date.today.month, year: Date.today.year)
    else 
      @calendar =  Calendar.new(month: params[:month], year: params[:year])
    end
    
  end
end
