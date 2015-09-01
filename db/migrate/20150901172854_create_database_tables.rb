class CreateDatabaseTables < ActiveRecord::Migration
  def change
    create_table(:stops) do |t|
      t.column(:bar_id, :integer)
      t.column(:cafe_id, :integer)
      t.timestamps
    end

    create_table(:bars) do |t|
      t.column(:name, :string)
      t.timestamps
    end

    create_table(:cafes) do |t|
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

    create_table(:randoms) do |t|
      t.column(:change_happiness, :integer)
      t.column(:change_energy, :integer)
      t.column(:change_money, :float)
      t.column(:description, :string)

      t.timestamps
    end

  end
end
