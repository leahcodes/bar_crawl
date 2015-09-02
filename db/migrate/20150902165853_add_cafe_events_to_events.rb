class AddCafeEventsToEvents < ActiveRecord::Migration
  def change
    remove_column(:random_events, :description, :string)
    add_column(:random_events, :bar, :string)
    add_column(:random_events, :cafe, :string)
  end
end
