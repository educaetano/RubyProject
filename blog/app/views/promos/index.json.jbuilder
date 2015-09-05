json.array!(@promos) do |promo|
  json.extract! promo, :id, :nome, :dataInicio, :dataFim, :activo, :tipoPromo, :descricao, :Id_Loja
  json.url promo_url(promo, format: :json)
end
