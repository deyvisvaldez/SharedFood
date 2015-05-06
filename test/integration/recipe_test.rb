require 'test_helper'

class RecipeFlowsTest < ActionDispatch::IntegrationTest
  fixtures :recipes
  test "create recipes" do
    https!
    curry = recipes(:curry)
    get "/recipes/new"
    assert_response :success
    post_via_redirect "/recipes/new", title:
      recipes(:curry).title
    assert_equal '/recipes', path
    assert_equal 'Create Recipe', flash[:notice]
    https!(false)
    get "/recipes"
    assert_response :success
    assert assigns(:recipes)
  end
end

class RecipesControllerTest < ActionController::TestCase
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nill assigns(recipes)
  end
end