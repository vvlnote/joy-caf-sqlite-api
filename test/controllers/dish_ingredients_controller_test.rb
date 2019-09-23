require 'test_helper'

class DishIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dish_ingredient = dish_ingredients(:one)
  end

  test "should get index" do
    get dish_ingredients_url, as: :json
    assert_response :success
  end

  test "should create dish_ingredient" do
    assert_difference('DishIngredient.count') do
      post dish_ingredients_url, params: { dish_ingredient: { dish_id: @dish_ingredient.dish_id, ingredient_id: @dish_ingredient.ingredient_id, used_amount: @dish_ingredient.used_amount } }, as: :json
    end

    assert_response 201
  end

  test "should show dish_ingredient" do
    get dish_ingredient_url(@dish_ingredient), as: :json
    assert_response :success
  end

  test "should update dish_ingredient" do
    patch dish_ingredient_url(@dish_ingredient), params: { dish_ingredient: { dish_id: @dish_ingredient.dish_id, ingredient_id: @dish_ingredient.ingredient_id, used_amount: @dish_ingredient.used_amount } }, as: :json
    assert_response 200
  end

  test "should destroy dish_ingredient" do
    assert_difference('DishIngredient.count', -1) do
      delete dish_ingredient_url(@dish_ingredient), as: :json
    end

    assert_response 204
  end
end
