class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email_address
      t.string :mailing_address
      t.string :mobile_number
      t.string :notes

      t.timestamps null: false
    end
  end
end
