require 'test_helper'

class WorksControllerTest < ActionController::TestCase
  setup do
    @work = works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work" do
    assert_difference('Work.count') do
      post :create, work: { constraction_id: @work.constraction_id, end_time: @work.end_time, hiduke: @work.hiduke, night_time: @work.night_time, over_time: @work.over_time, staff_id: @work.staff_id, start_time: @work.start_time, work_time: @work.work_time }
    end

    assert_redirected_to work_path(assigns(:work))
  end

  test "should show work" do
    get :show, id: @work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work
    assert_response :success
  end

  test "should update work" do
    patch :update, id: @work, work: { constraction_id: @work.constraction_id, end_time: @work.end_time, hiduke: @work.hiduke, night_time: @work.night_time, over_time: @work.over_time, staff_id: @work.staff_id, start_time: @work.start_time, work_time: @work.work_time }
    assert_redirected_to work_path(assigns(:work))
  end

  test "should destroy work" do
    assert_difference('Work.count', -1) do
      delete :destroy, id: @work
    end

    assert_redirected_to works_path
  end
end
