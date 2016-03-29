require 'test_helper'

class AgeOfStudentsControllerTest < ActionController::TestCase
  setup do
    @age_of_student = age_of_students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:age_of_students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create age_of_student" do
    assert_difference('AgeOfStudent.count') do
      post :create, age_of_student: { age: @age_of_student.age }
    end

    assert_redirected_to age_of_student_path(assigns(:age_of_student))
  end

  test "should show age_of_student" do
    get :show, id: @age_of_student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @age_of_student
    assert_response :success
  end

  test "should update age_of_student" do
    patch :update, id: @age_of_student, age_of_student: { age: @age_of_student.age }
    assert_redirected_to age_of_student_path(assigns(:age_of_student))
  end

  test "should destroy age_of_student" do
    assert_difference('AgeOfStudent.count', -1) do
      delete :destroy, id: @age_of_student
    end

    assert_redirected_to age_of_students_path
  end
end
