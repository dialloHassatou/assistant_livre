json.array!(@scenes) do |scene|
  json.extract! scene, :id, :recit, :lieu, :debut, :fin
  json.url scene_url(scene, format: :json)
end
