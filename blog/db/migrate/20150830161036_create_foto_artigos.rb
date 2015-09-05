class CreateFotoArtigos < ActiveRecord::Migration
  def change
    create_table :foto_artigos do |t|
      t.string :nome
      t.binary :binariofoto
      t.datetime :data
      t.integer :Id_artigo

      t.timestamps
    end
  end
end
