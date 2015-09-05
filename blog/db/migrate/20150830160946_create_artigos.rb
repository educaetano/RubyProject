class CreateArtigos < ActiveRecord::Migration
  def change
    create_table :artigos do |t|
      t.string :nome
      t.decimal :preco
      t.integer :desconto
      t.integer :id_promo

      t.timestamps
    end
  end
end
