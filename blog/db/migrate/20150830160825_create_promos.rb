class CreatePromos < ActiveRecord::Migration
  def change
    create_table :promos do |t|
      t.string :nome
      t.datetime :dataInicio
      t.datetime :dataFim
      t.boolean :activo
      t.integer :tipoPromo
      t.string :descricao
      t.integer :Id_Loja

      t.timestamps
    end
  end
end
