require 'test_helper'

class AikasControllerTest < ActionController::TestCase
  setup do
    @aika = aikas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aikas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aika" do
    assert_difference('Aika.count') do
      post :create, aika: { aika: @aika.aika }
    end

    assert_redirected_to aika_path(assigns(:aika))
  end

  test "should show aika" do
    get :show, id: @aika
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aika
    assert_response :success
  end

  test "should update aika" do
    patch :update, id: @aika, aika: { aika: @aika.aika }
    assert_redirected_to aika_path(assigns(:aika))
  end

  test "should destroy aika" do
    assert_difference('Aika.count', -1) do
      delete :destroy, id: @aika
    end

    assert_redirected_to aikas_path
  end
end
