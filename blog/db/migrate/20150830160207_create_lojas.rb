class CreateLojas < ActiveRecord::Migration
  def change
    create_table :lojas do |t|
     
      t.string :nome
      t.string :morada
      t.string :latitude
      t.string :longitude
      t.boolean :activo

      t.timestamps
    end
  end
end
