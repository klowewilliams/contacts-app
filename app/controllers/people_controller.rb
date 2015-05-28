class PeopleController < ApplicationController

  def contacts
    @name = Person.first
  end
end
