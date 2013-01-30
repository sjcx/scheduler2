class AppointmentsController < ApplicationController
  before_filter :authorize, :except => [:index]
  
   def index
    @appointments = Appointment.all

    respond_to do |format|
      format.html # index.html.erb
      
    end
  end

  def show
    @appointment = Appointment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      
    end
  end
  
  def new
    @appointment = Appointment.new

    respond_to do |format|
      format.html # new.html.erb
      
    end
  end
  

  def create
    @appointment = Appointment.new(params[:appointment])

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
        
      else
        format.html { render action: "new" }
        
      end
    end
  end


  def update
    @appointment = Appointment.find(params[:id])

    respond_to do |format|
      if @appointment.update_attributes(params[:appointment])
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
       
      else
        format.html { render action: "edit" }
        
      end
    end
  end
  
  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy

    respond_to do |format|
      format.html { redirect_to appointments_url }
      format.json { head :no_content }
    end
  end

  
end
