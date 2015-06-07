class PeopleController < ApplicationController

  def contact
    @name = Person.first
  end

  def index
    @names = Person.all
  end

  def new
  end

  def create
    coordinates = Geocoder.coordinates(params[:address])
    Person.create(name: params[:name], middle_name: params[:middle_name], email_address: params[:email_address],   mobile_number: params[:mobile_number], bio: params[:bio], latitude: coordinates[0], longtitude: coordinates[1])
  end

  def show
    @name = Person.find_by(id: params[:id])
  end

  def edit
    contact_id = params[:id]
    @name = Person.find_by(id: contact_id)
  end

  def update
    contact_id = params[:id]
    @name = Person.find_by(id: contact_id)
    @name.update(name: params[:name], middle_name: params[:middle_name],email_address: params[:email_address], mailing_address: params[:mailing_address], mobile_number: params[:mobile_number], bio: params[:bio])
    redirect_to "/contacts/#{contact_id}"
  end

  def destroy
    contact_id = params[:id]
    @name = Person.find_by(id: contact_id)
    @name.destroy
  end

  def search
    search_term = params[:search]
    @names = Person.where("name LIKE ?", "%#{search_term}%")
    render :index
    #Don't look for a view to match this action
  end

end
