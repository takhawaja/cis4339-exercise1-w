class CreateMinions < ActiveRecord::Migration[6.0]
  def change
    create_table :minions do |t|
      t.string :name
      t.text :description
      t.references :super_villain, null: false, foreign_key: true

      t.timestamps
    end
  end
end
