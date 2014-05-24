json.array!(@anecdotes) do |anecdote|
  json.extract! anecdote, :id, :texte, :sujet, :theme
  json.url anecdote_url(anecdote, format: :json)
end
