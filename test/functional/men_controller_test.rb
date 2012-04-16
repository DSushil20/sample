require 'test_helper'

class MenControllerTest < ActionController::TestCase
  setup do
    @man = men(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:men)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create man" do
    assert_difference('Man.count') do
      post :create, :man => @man.attributes
    end

    assert_redirected_to man_path(assigns(:man))
  end

  test "should show man" do
    get :show, :id => @man.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @man.to_param
    assert_response :success
  end

  test "should update man" do
    put :update, :id => @man.to_param, :man => @man.attributes
    assert_redirected_to man_path(assigns(:man))
  end

  test "should destroy man" do
    assert_difference('Man.count', -1) do
      delete :destroy, :id => @man.to_param
    end

    assert_redirected_to men_path
  end
end
