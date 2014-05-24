json.array!(@personnes) do |personne|
  json.extract! personne, :id, :name
  json.url personne_url(personne, format: :json)
end
