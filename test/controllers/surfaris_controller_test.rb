require 'test_helper'

class SurfarisControllerTest < ActionController::TestCase
  setup do
    @surfari = surfaris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surfaris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surfari" do
    assert_difference('Surfari.count') do
      post :create, surfari: { content: @surfari.content, position: @surfari.position, price_1: @surfari.price_1, price_2: @surfari.price_2, price_3: @surfari.price_3, subtitle: @surfari.subtitle, title: @surfari.title }
    end

    assert_redirected_to surfari_path(assigns(:surfari))
  end

  test "should show surfari" do
    get :show, id: @surfari
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surfari
    assert_response :success
  end

  test "should update surfari" do
    patch :update, id: @surfari, surfari: { content: @surfari.content, position: @surfari.position, price_1: @surfari.price_1, price_2: @surfari.price_2, price_3: @surfari.price_3, subtitle: @surfari.subtitle, title: @surfari.title }
    assert_redirected_to surfari_path(assigns(:surfari))
  end

  test "should destroy surfari" do
    assert_difference('Surfari.count', -1) do
      delete :destroy, id: @surfari
    end

    assert_redirected_to surfaris_path
  end
end
