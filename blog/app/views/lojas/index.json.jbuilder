json.array!(@lojas) do |loja|
  json.extract! loja, :id,  :nome, :morada, :latitude, :longitude, :activo
  json.url loja_url(loja, format: :json)
end
