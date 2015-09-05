json.array!(@foto_artigos) do |foto_artigo|
  json.extract! foto_artigo, :id, :nome, :binariofoto, :data, :Id_artigo
  json.url foto_artigo_url(foto_artigo, format: :json)
end
