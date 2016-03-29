require 'test_helper'

class StudentLevelsControllerTest < ActionController::TestCase
  setup do
    @student_level = student_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_level" do
    assert_difference('StudentLevel.count') do
      post :create, student_level: { level: @student_level.level }
    end

    assert_redirected_to student_level_path(assigns(:student_level))
  end

  test "should show student_level" do
    get :show, id: @student_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_level
    assert_response :success
  end

  test "should update student_level" do
    patch :update, id: @student_level, student_level: { level: @student_level.level }
    assert_redirected_to student_level_path(assigns(:student_level))
  end

  test "should destroy student_level" do
    assert_difference('StudentLevel.count', -1) do
      delete :destroy, id: @student_level
    end

    assert_redirected_to student_levels_path
  end
end
