require 'test_helper'

class ConstractionsControllerTest < ActionController::TestCase
  setup do
    @constraction = constractions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:constractions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create constraction" do
    assert_difference('Constraction.count') do
      post :create, constraction: { abbreviation: @constraction.abbreviation, code: @constraction.code, end_date: @constraction.end_date, kana: @constraction.kana, name: @constraction.name, orderer_id: @constraction.orderer_id, start_date: @constraction.start_date }
    end

    assert_redirected_to constraction_path(assigns(:constraction))
  end

  test "should show constraction" do
    get :show, id: @constraction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @constraction
    assert_response :success
  end

  test "should update constraction" do
    patch :update, id: @constraction, constraction: { abbreviation: @constraction.abbreviation, code: @constraction.code, end_date: @constraction.end_date, kana: @constraction.kana, name: @constraction.name, orderer_id: @constraction.orderer_id, start_date: @constraction.start_date }
    assert_redirected_to constraction_path(assigns(:constraction))
  end

  test "should destroy constraction" do
    assert_difference('Constraction.count', -1) do
      delete :destroy, id: @constraction
    end

    assert_redirected_to constractions_path
  end
end
