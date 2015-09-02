class DropAddRandomTable < ActiveRecord::Migration
  def change
    # drop_table(:randoms)
    create_table(:random_events) do |t|
      t.column(:change_happiness, :integer)
      t.column(:change_energy, :integer)
      t.column(:change_money, :float)
      t.column(:description, :string)
    end

  end
end
