require 'test_helper'

class TypeOfClassesControllerTest < ActionController::TestCase
  setup do
    @type_of_class = type_of_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_of_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_of_class" do
    assert_difference('TypeOfClass.count') do
      post :create, type_of_class: { name: @type_of_class.name }
    end

    assert_redirected_to type_of_class_path(assigns(:type_of_class))
  end

  test "should show type_of_class" do
    get :show, id: @type_of_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_of_class
    assert_response :success
  end

  test "should update type_of_class" do
    patch :update, id: @type_of_class, type_of_class: { name: @type_of_class.name }
    assert_redirected_to type_of_class_path(assigns(:type_of_class))
  end

  test "should destroy type_of_class" do
    assert_difference('TypeOfClass.count', -1) do
      delete :destroy, id: @type_of_class
    end

    assert_redirected_to type_of_classes_path
  end
end
