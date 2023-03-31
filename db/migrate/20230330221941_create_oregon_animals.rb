class CreateOregonAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :oregon_animals do |t|
      t.string :name
      t.string :binomial

      t.timestamps
    end
  end
end
