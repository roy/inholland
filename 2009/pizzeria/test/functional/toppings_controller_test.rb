require 'test_helper'

class ToppingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toppings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topping" do
    assert_difference('Topping.count') do
      post :create, :topping => { }
    end

    assert_redirected_to topping_path(assigns(:topping))
  end

  test "should show topping" do
    get :show, :id => toppings(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => toppings(:one).to_param
    assert_response :success
  end

  test "should update topping" do
    put :update, :id => toppings(:one).to_param, :topping => { }
    assert_redirected_to topping_path(assigns(:topping))
  end

  test "should destroy topping" do
    assert_difference('Topping.count', -1) do
      delete :destroy, :id => toppings(:one).to_param
    end

    assert_redirected_to toppings_path
  end
end
