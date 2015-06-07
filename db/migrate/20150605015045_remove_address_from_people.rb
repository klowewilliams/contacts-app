class RemoveAddressFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :mailing_address, :string
  end
end
