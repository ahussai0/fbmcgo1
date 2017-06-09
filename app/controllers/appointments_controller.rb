class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all

    render("appointments/index.html.erb")
  end

  def show
    @appointment = Appointment.find(params[:id])

    render("appointments/show.html.erb")
  end

  def new
    @appointment = Appointment.new

    render("appointments/new.html.erb")
  end

  def create
    @appointment = Appointment.new

    @appointment.appt_time = params[:appt_time]
    @appointment.appt_date = params[:appt_date]
    @appointment.lead_id = params[:lead_id]
    @appointment.agent_id = params[:agent_id]
    @appointment.outcome = params[:outcome]
    @appointment.notes = params[:notes]
    @appointment.agency_id = params[:agency_id]

    save_status = @appointment.save

    if save_status == true
      redirect_to("/appointments/#{@appointment.id}", :notice => "Appointment created successfully.")
    else
      render("appointments/new.html.erb")
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])

    render("appointments/edit.html.erb")
  end

  def update
    @appointment = Appointment.find(params[:id])

    @appointment.appt_time = params[:appt_time]
    @appointment.appt_date = params[:appt_date]
    @appointment.lead_id = params[:lead_id]
    @appointment.agent_id = params[:agent_id]
    @appointment.outcome = params[:outcome]
    @appointment.notes = params[:notes]
    @appointment.agency_id = params[:agency_id]

    save_status = @appointment.save

    if save_status == true
      redirect_to("/appointments/#{@appointment.id}", :notice => "Appointment updated successfully.")
    else
      render("appointments/edit.html.erb")
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])

    @appointment.destroy

    if URI(request.referer).path == "/appointments/#{@appointment.id}"
      redirect_to("/", :notice => "Appointment deleted.")
    else
      redirect_to(:back, :notice => "Appointment deleted.")
    end
  end
end
