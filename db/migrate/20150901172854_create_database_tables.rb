class CreateDatabaseTables < ActiveRecord::Migration
  def change
    create_table(:stops) do |t|
      t.column(:bar_id, :integer)
      t.column(:coffee_shop_id, :integer)
      t.timestamps
    end

    create_table(:bars) do |t|
      t.column(:name, :string)
      t.timestamps
    end

    create_table(:coffee_shops) do |t|
      t.column(:name, :string)
      t.timestamps
    end

    create_table(:games) do |t|
      t.column(:stop_id, :integer)
      t.column(:random_id, :integer)
      t.column(:happiness, :integer)
      t.column(:energy, :integer)
      t.column(:money, :float)
      t.column(:name, :string)

      t.timestamps
    end
  end
end
