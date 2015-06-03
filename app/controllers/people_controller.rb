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
    Person.create(name: params[:name], email_address: params[:email_address], mailing_address: params[:mailing_address], mobile_number: params[:mobile_number], notes: params[:notes])
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
    @name.update(name: params[:name], email_address: params[:email_address], mailing_address: params[:mailing_address], mobile_number: params[:mobile_number], notes: params[:notes])
    redirect_to "/contacts/#{contact_id}"
  end

  def destroy
    contact_id = params[:id]
    @name = Person.find_by(id: contact_id)
    @name.destroy
  end

end
