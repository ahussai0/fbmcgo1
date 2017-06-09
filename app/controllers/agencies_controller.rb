class AgenciesController < ApplicationController
  def index
    @agencies = Agency.all

    render("agencies/index.html.erb")
  end

  def show
    @agency = Agency.find(params[:id])

    render("agencies/show.html.erb")
  end

  def new
    @agency = Agency.new

    render("agencies/new.html.erb")
  end

  def create
    @agency = Agency.new

    @agency.code = params[:code]
    @agency.logo = params[:logo]
    @agency.name = params[:name]
    @agency.address = params[:address]
    @agency.phone = params[:phone]
    @agency.city = params[:city]
    @agency.state = params[:state]
    @agency.zip = params[:zip]

    save_status = @agency.save

    if save_status == true
      redirect_to("/agencies/#{@agency.id}", :notice => "Agency created successfully.")
    else
      render("agencies/new.html.erb")
    end
  end

  def edit
    @agency = Agency.find(params[:id])

    render("agencies/edit.html.erb")
  end

  def update
    @agency = Agency.find(params[:id])

    @agency.code = params[:code]
    @agency.logo = params[:logo]
    @agency.name = params[:name]
    @agency.address = params[:address]
    @agency.phone = params[:phone]
    @agency.city = params[:city]
    @agency.state = params[:state]
    @agency.zip = params[:zip]

    save_status = @agency.save

    if save_status == true
      redirect_to("/agencies/#{@agency.id}", :notice => "Agency updated successfully.")
    else
      render("agencies/edit.html.erb")
    end
  end

  def destroy
    @agency = Agency.find(params[:id])

    @agency.destroy

    if URI(request.referer).path == "/agencies/#{@agency.id}"
      redirect_to("/", :notice => "Agency deleted.")
    else
      redirect_to(:back, :notice => "Agency deleted.")
    end
  end
end
