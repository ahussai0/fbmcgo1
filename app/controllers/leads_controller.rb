require 'open-uri'

class LeadsController < ApplicationController
  def index
    @leads = current_agent.leads.all

    render("leads/index.html.erb")
  end

  def show
    @lead = Lead.find(params[:id])
    @appointments = @lead.appointments.all

    url = "http://maps.googleapis.com/maps/api/geocode/json?address=" + @lead.address.gsub(" ", "+") + "+" + @lead.city.gsub(" ", "+") + "+" + @lead.state + "+" + @lead.zip

    parsed_data = JSON.parse(open(url).read)
    if (parsed_data["results"] != [])
      @lat = parsed_data["results"][0]["geometry"]["location"]["lat"]
      @long = parsed_data["results"][0]["geometry"]["location"]["lng"]
    end
    render("leads/show.html.erb")
  end

  def new
    @lead = Lead.new

    render("leads/new.html.erb")
  end

  def create
    @lead = Lead.new

    @lead.firstname = params[:firstname]
    @lead.lastname = params[:lastname]
    @lead.address = params[:address]
    @lead.city = params[:city]
    @lead.state = params[:state]
    @lead.zip = params[:zip]
    @lead.status = params[:status]
    @lead.premium = params[:premium]
    @lead.pdf = params[:pdf]
    @lead.agent_id = params[:agent_id]
    @lead.hphone = params[:hphone]
    @lead.wphone = params[:wphone]
    @lead.cphone = params[:cphone]
    @lead.dob = params[:dob]
    @lead.sdob = params[:sdob]
    @lead.smoker = params[:smoker]
    @lead.spousesmoke = params[:spousesmoke]
    @lead.email = params[:email]
    @lead.notes = params[:notes]
    @lead.occupation = params[:occupation]
    @lead.policy = params[:policy]
    @lead.agency_id = params[:agency_id]
    @lead.bullet1 = params[:bullet1]
    @lead.bullet2 = params[:bullet2]
    @lead.bullet3 = params[:bullet3]
    @lead.bullet4 = params[:bullet4]
    @lead.bullet5 = params[:bullet5]
    @lead.bullet6 = params[:bullet6]
    @lead.bullet7 = params[:bullet7]
    @lead.mortamt = params[:mortamt]
    @lead.batchno = params[:batchno]
    @lead.recno = params[:recno]
    @lead.dw_agn = params[:dw_agn]

    save_status = @lead.save

    if save_status == true
      redirect_to("/leads/#{@lead.id}", :notice => "Lead created successfully.")
    else
      render("leads/new.html.erb")
    end
  end

  def edit
    @lead = Lead.find(params[:id])

    url = "http://maps.googleapis.com/maps/api/geocode/json?address=" + @lead.address.gsub(" ", "+") + "+" + @lead.city.gsub(" ", "+") + "+" + @lead.state + "+" + @lead.zip

    parsed_data = JSON.parse(open(url).read)
    if (parsed_data["results"] != [])
      @lat = parsed_data["results"][0]["geometry"]["location"]["lat"]
      @long = parsed_data["results"][0]["geometry"]["location"]["lng"]
    end

    render("leads/edit.html.erb")
  end

  def update
    @lead = Lead.find(params[:id])

    @lead.firstname = params[:firstname]
    @lead.lastname = params[:lastname]
    @lead.address = params[:address]
    @lead.city = params[:city]
    @lead.state = params[:state]
    @lead.zip = params[:zip]
    @lead.status = params[:status]
    @lead.premium = params[:premium]
    @lead.pdf = params[:pdf]
    @lead.agent_id = params[:agent_id]
    @lead.hphone = params[:hphone]
    @lead.wphone = params[:wphone]
    @lead.cphone = params[:cphone]
    @lead.dob = params[:dob]
    @lead.sdob = params[:sdob]
    @lead.smoker = params[:smoker]
    @lead.spousesmoke = params[:spousesmoke]
    @lead.email = params[:email]
    @lead.notes = params[:notes]
    @lead.occupation = params[:occupation]
    @lead.policy = params[:policy]
    @lead.agency_id = params[:agency_id]
    @lead.bullet1 = params[:bullet1]
    @lead.bullet2 = params[:bullet2]
    @lead.bullet3 = params[:bullet3]
    @lead.bullet4 = params[:bullet4]
    @lead.bullet5 = params[:bullet5]
    @lead.bullet6 = params[:bullet6]
    @lead.bullet7 = params[:bullet7]
    @lead.mortamt = params[:mortamt]
    @lead.batchno = params[:batchno]
    @lead.recno = params[:recno]
    @lead.dw_agn = params[:dw_agn]

    save_status = @lead.save

    if save_status == true
      redirect_to("/leads/#{@lead.id}", :notice => "Lead updated successfully.")
    else
      render("leads/edit.html.erb")
    end
  end

  def destroy
    @lead = Lead.find(params[:id])

    @lead.destroy

    if URI(request.referer).path == "/leads/#{@lead.id}"
      redirect_to("/", :notice => "Lead deleted.")
    else
      redirect_to(:back, :notice => "Lead deleted.")
    end
  end
end
