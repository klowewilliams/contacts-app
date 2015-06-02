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
  end

end
