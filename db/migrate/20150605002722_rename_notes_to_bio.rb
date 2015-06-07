class RenamebioToBio < ActiveRecord::Migration
  def change
    rename_column :people, :bio, :bio

  end
end
