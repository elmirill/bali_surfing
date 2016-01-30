require 'test_helper'

class SurfCoursesControllerTest < ActionController::TestCase
  setup do
    @surf_course = surf_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surf_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surf_course" do
    assert_difference('SurfCourse.count') do
      post :create, surf_course: { content: @surf_course.content, price_1: @surf_course.price_1, price_2: @surf_course.price_2, price_3: @surf_course.price_3, title: @surf_course.title }
    end

    assert_redirected_to surf_course_path(assigns(:surf_course))
  end

  test "should show surf_course" do
    get :show, id: @surf_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surf_course
    assert_response :success
  end

  test "should update surf_course" do
    patch :update, id: @surf_course, surf_course: { content: @surf_course.content, price_1: @surf_course.price_1, price_2: @surf_course.price_2, price_3: @surf_course.price_3, title: @surf_course.title }
    assert_redirected_to surf_course_path(assigns(:surf_course))
  end

  test "should destroy surf_course" do
    assert_difference('SurfCourse.count', -1) do
      delete :destroy, id: @surf_course
    end

    assert_redirected_to surf_courses_path
  end
end
