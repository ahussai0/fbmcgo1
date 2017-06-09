class ZipcodesController < ApplicationController
  def index
    @zipcodes = Zipcode.all

    render("zipcodes/index.html.erb")
  end

  def show
    @zipcode = Zipcode.find(params[:id])

    render("zipcodes/show.html.erb")
  end

  def new
    @zipcode = Zipcode.new

    render("zipcodes/new.html.erb")
  end

  def create
    @zipcode = Zipcode.new

    @zipcode.zipcode = params[:zipcode]
    @zipcode.agency_id = params[:agency_id]
    @zipcode.county = params[:county]
    @zipcode.state = params[:state]
    @zipcode.agent_id = params[:agent_id]

    save_status = @zipcode.save

    if save_status == true
      redirect_to("/zipcodes/#{@zipcode.id}", :notice => "Zipcode created successfully.")
    else
      render("zipcodes/new.html.erb")
    end
  end

  def edit
    @zipcode = Zipcode.find(params[:id])

    render("zipcodes/edit.html.erb")
  end

  def update
    @zipcode = Zipcode.find(params[:id])

    @zipcode.zipcode = params[:zipcode]
    @zipcode.agency_id = params[:agency_id]
    @zipcode.county = params[:county]
    @zipcode.state = params[:state]
    @zipcode.agent_id = params[:agent_id]

    save_status = @zipcode.save

    if save_status == true
      redirect_to("/zipcodes/#{@zipcode.id}", :notice => "Zipcode updated successfully.")
    else
      render("zipcodes/edit.html.erb")
    end
  end

  def destroy
    @zipcode = Zipcode.find(params[:id])

    @zipcode.destroy

    if URI(request.referer).path == "/zipcodes/#{@zipcode.id}"
      redirect_to("/", :notice => "Zipcode deleted.")
    else
      redirect_to(:back, :notice => "Zipcode deleted.")
    end
  end
end
