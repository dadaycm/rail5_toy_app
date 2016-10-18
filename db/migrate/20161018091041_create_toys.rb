class CreateToys < ActiveRecord::Migration[5.0]
  def change
    create_table :toys do |t|
      t.string :name
      t.integer :weight
      t.boolean :favorite, default:false

      t.timestamps
    end
  end
end
