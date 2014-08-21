require 'test_helper'

class DailyCodesControllerTest < ActionController::TestCase
  setup do
    @daily_code = daily_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_code" do
    assert_difference('DailyCode.count') do
      post :create, daily_code: { code_for_mug: @daily_code.code_for_mug, code_for_non_mug: @daily_code.code_for_non_mug }
    end

    assert_redirected_to daily_code_path(assigns(:daily_code))
  end

  test "should show daily_code" do
    get :show, id: @daily_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_code
    assert_response :success
  end

  test "should update daily_code" do
    patch :update, id: @daily_code, daily_code: { code_for_mug: @daily_code.code_for_mug, code_for_non_mug: @daily_code.code_for_non_mug }
    assert_redirected_to daily_code_path(assigns(:daily_code))
  end

  test "should destroy daily_code" do
    assert_difference('DailyCode.count', -1) do
      delete :destroy, id: @daily_code
    end

    assert_redirected_to daily_codes_path
  end
end
