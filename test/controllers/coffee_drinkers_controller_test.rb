require 'test_helper'

class CoffeeDrinkersControllerTest < ActionController::TestCase
  setup do
    @coffee_drinker = coffee_drinkers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coffee_drinkers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coffee_drinker" do
    assert_difference('CoffeeDrinker.count') do
      post :create, coffee_drinker: { current_score: @coffee_drinker.current_score, phone_number: @coffee_drinker.phone_number }
    end

    assert_redirected_to coffee_drinker_path(assigns(:coffee_drinker))
  end

  test "should show coffee_drinker" do
    get :show, id: @coffee_drinker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coffee_drinker
    assert_response :success
  end

  test "should update coffee_drinker" do
    patch :update, id: @coffee_drinker, coffee_drinker: { current_score: @coffee_drinker.current_score, phone_number: @coffee_drinker.phone_number }
    assert_redirected_to coffee_drinker_path(assigns(:coffee_drinker))
  end

  test "should destroy coffee_drinker" do
    assert_difference('CoffeeDrinker.count', -1) do
      delete :destroy, id: @coffee_drinker
    end

    assert_redirected_to coffee_drinkers_path
  end
end
