class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.int :length

      t.timestamps null: false
    end
  end
end