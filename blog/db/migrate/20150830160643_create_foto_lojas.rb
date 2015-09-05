class CreateFotoLojas < ActiveRecord::Migration
  def change
    create_table :foto_lojas do |t|
      t.string :nome
      t.binary :binariofoto
      t.datetime :data
      t.integer :Id_Local

      t.timestamps
    end
  end
end
