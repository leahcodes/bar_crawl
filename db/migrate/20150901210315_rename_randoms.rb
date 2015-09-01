class RenameRandoms < ActiveRecord::Migration
  def change
    rename_table :randoms, :random_events
  end
end
