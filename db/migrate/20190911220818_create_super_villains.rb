class CreateSuperVillains < ActiveRecord::Migration[6.0]
  def change
    create_table :super_villains do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
