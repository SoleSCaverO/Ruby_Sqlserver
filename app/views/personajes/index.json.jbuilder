json.array!(@personajes) do |personaje|
  json.extract! personaje, :id, :nombre, :sexo, :seiyu
  json.url personaje_url(personaje, format: :json)
end
