json.array!(@artigos) do |artigo|
  json.extract! artigo, :id, :nome, :preco, :desconto, :id_promo
  json.url artigo_url(artigo, format: :json)
end
