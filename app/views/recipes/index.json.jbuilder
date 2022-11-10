json.array! @recipes.each do |recipe|
  json.id recipe.id
  json.title recipe.title
  json.description Description.find(BSON::ObjectId.from_string(recipe.description_id)).body
  json.image recipe.image
  json.user_id recipe.user_id
  json.ingredients recipe.ingredients, :id, :title
  json.created_at recipe.created_at
  json.updated_at recipe.updated_at
end