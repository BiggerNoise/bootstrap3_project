require 'test_helper'

class TurdsControllerTest < ActionController::TestCase
  setup do
    @turd = turds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:turds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create turd" do
    assert_difference('Turd.count') do
      post :create, turd: {  }
    end

    assert_redirected_to turd_path(assigns(:turd))
  end

  test "should show turd" do
    get :show, id: @turd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @turd
    assert_response :success
  end

  test "should update turd" do
    patch :update, id: @turd, turd: {  }
    assert_redirected_to turd_path(assigns(:turd))
  end

  test "should destroy turd" do
    assert_difference('Turd.count', -1) do
      delete :destroy, id: @turd
    end

    assert_redirected_to turds_path
  end
end
