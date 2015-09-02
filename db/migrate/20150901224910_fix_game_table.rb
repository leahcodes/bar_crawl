class FixGameTable < ActiveRecord::Migration
  def change
    remove_column(:games, :random_id, :integer)
    add_column(:games, :random_event_id, :integer)
  end
end
