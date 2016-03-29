require 'test_helper'

class SchedulesControllerTest < ActionController::TestCase
  setup do
    @schedule = schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule" do
    assert_difference('Schedule.count') do
      post :create, schedule: { age_of_student_id: @schedule.age_of_student_id, teacher_id: @schedule.teacher_id, time_in: @schedule.time_in, time_out: @schedule.time_out, type_of_class_id: @schedule.type_of_class_id }
    end

    assert_redirected_to schedule_path(assigns(:schedule))
  end

  test "should show schedule" do
    get :show, id: @schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schedule
    assert_response :success
  end

  test "should update schedule" do
    patch :update, id: @schedule, schedule: { age_of_student_id: @schedule.age_of_student_id, teacher_id: @schedule.teacher_id, time_in: @schedule.time_in, time_out: @schedule.time_out, type_of_class_id: @schedule.type_of_class_id }
    assert_redirected_to schedule_path(assigns(:schedule))
  end

  test "should destroy schedule" do
    assert_difference('Schedule.count', -1) do
      delete :destroy, id: @schedule
    end

    assert_redirected_to schedules_path
  end
end
