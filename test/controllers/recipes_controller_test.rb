test "should get new" do
  get :new
  assert_response :success
end

test "should create recipe" do
  assert_difference('Recipe.count') do
    post :create, recipe: { 
      cooking_time: @recipe.cooking_time,
      cuisine_id: @recipe.cuisine_id,
      food_preference_id: @recipe.food_preference_id,
      food_type: @recipe.food_type,
      ingredients: @recipe.ingredients,
      level_of_difficulty: @recipe.level_of_difficulty,
      procedure: @recipe.procedure,
      servings: @recipe.servings,
      title: @recipe.title
    }
  end

  assert_redirected_to recipe_path(assigns(:recipe))
end

test "should show recipe" do
  get :show, id: @recipe
  assert_response :success
end

test "should get edit" do
  get :edit, id: @recipe
  assert_response :success
end

test "should update recipe" do
  patch :update, id: @recipe, recipe: {
    cooking_time: @recipe.cooking_time,
    cuisine_id: @recipe.cuisine_id,
    food_preference_id: @recipe.food_preference_id,
    food_type: @recipe.food_type,
    ingredients: @recipe.ingredients,
    level_of_difficulty: @recipe.level_of_difficulty,
    procedure: @recipe.procedure,
    servings: @recipe.servings,
    title: @recipe.title
  }

  assert_redirected_to recipe_path(assigns(:recipe))
end

test "should destroy recipe" do
  assert_difference('Recipe.count', -1) do
    delete :destroy, id: @recipe
  end

  assert_redirected_to recipe_path
end
