require 'test_helper'

class CrustTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crust_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crust_type" do
    assert_difference('CrustType.count') do
      post :create, :crust_type => { }
    end

    assert_redirected_to crust_type_path(assigns(:crust_type))
  end

  test "should show crust_type" do
    get :show, :id => crust_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => crust_types(:one).to_param
    assert_response :success
  end

  test "should update crust_type" do
    put :update, :id => crust_types(:one).to_param, :crust_type => { }
    assert_redirected_to crust_type_path(assigns(:crust_type))
  end

  test "should destroy crust_type" do
    assert_difference('CrustType.count', -1) do
      delete :destroy, :id => crust_types(:one).to_param
    end

    assert_redirected_to crust_types_path
  end
end
