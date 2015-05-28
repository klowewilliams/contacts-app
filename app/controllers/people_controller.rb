class PeopleController < ApplicationController

  def contacts
    @name = Person.first
  end

  def all
    @names = Person.all
  end

end
