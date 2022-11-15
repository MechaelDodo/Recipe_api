# frozen_string_literal: true

json.id @recipe.id
json.title @recipe.title
json.description @recipe.description
json.image_url @recipe.image_url
json.user_id @recipe.user_id
json.ingredients @recipe.ingredients, :id, :title
json.created_at @recipe.created_at
json.updated_at @recipe.updated_at
