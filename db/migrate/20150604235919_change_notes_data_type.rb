class ChangebioDataType < ActiveRecord::Migration
  def change
    change_column :people, :bio, :text
  end
end
