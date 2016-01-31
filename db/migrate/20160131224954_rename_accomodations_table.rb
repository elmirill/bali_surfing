class RenameAccomodationsTable < ActiveRecord::Migration
  def change
    rename_table :accomodations, :accommodations
  end
end
