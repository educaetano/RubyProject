json.array!(@foto_lojas) do |foto_loja|
  json.extract! foto_loja, :id, :nome, :binariofoto, :data, :Id_Local
  json.url foto_loja_url(foto_loja, format: :json)
end
