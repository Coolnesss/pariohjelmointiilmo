require 'test_helper'

class OpiskelijasControllerTest < ActionController::TestCase
  setup do
    @opiskelija = opiskelijas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opiskelijas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opiskelija" do
    assert_difference('Opiskelija.count') do
      post :create, opiskelija: { aika_id: @opiskelija.aika_id, numero: @opiskelija.numero }
    end

    assert_redirected_to opiskelija_path(assigns(:opiskelija))
  end

  test "should show opiskelija" do
    get :show, id: @opiskelija
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opiskelija
    assert_response :success
  end

  test "should update opiskelija" do
    patch :update, id: @opiskelija, opiskelija: { aika_id: @opiskelija.aika_id, numero: @opiskelija.numero }
    assert_redirected_to opiskelija_path(assigns(:opiskelija))
  end

  test "should destroy opiskelija" do
    assert_difference('Opiskelija.count', -1) do
      delete :destroy, id: @opiskelija
    end

    assert_redirected_to opiskelijas_path
  end
end
