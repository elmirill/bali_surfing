require 'test_helper'

class AccommodationsControllerTest < ActionController::TestCase
  setup do
    @accommodation = accommodations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accommodations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accommodation" do
    assert_difference('Accommodation.count') do
      post :create, accommodation: { content: @accommodation.content, position: @accommodation.position, price_1: @accommodation.price_1, price_2: @accommodation.price_2, price_3: @accommodation.price_3, subtitle: @accommodation.subtitle, title: @accommodation.title }
    end

    assert_redirected_to accommodation_path(assigns(:accommodation))
  end

  test "should show accommodation" do
    get :show, id: @accommodation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accommodation
    assert_response :success
  end

  test "should update accommodation" do
    patch :update, id: @accommodation, accommodation: { content: @accommodation.content, position: @accommodation.position, price_1: @accommodation.price_1, price_2: @accommodation.price_2, price_3: @accommodation.price_3, subtitle: @accommodation.subtitle, title: @accommodation.title }
    assert_redirected_to accommodation_path(assigns(:accommodation))
  end

  test "should destroy accommodation" do
    assert_difference('Accommodation.count', -1) do
      delete :destroy, id: @accommodation
    end

    assert_redirected_to accommodations_path
  end
end
