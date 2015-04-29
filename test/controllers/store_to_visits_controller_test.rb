require 'test_helper'

class StoreToVisitsControllerTest < ActionController::TestCase
  setup do
    @store_to_visit = store_to_visits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_to_visits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_to_visit" do
    assert_difference('StoreToVisit.count') do
      post :create, store_to_visit: { store_id: @store_to_visit.store_id, user_id: @store_to_visit.user_id }
    end

    assert_redirected_to store_to_visit_path(assigns(:store_to_visit))
  end

  test "should show store_to_visit" do
    get :show, id: @store_to_visit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_to_visit
    assert_response :success
  end

  test "should update store_to_visit" do
    patch :update, id: @store_to_visit, store_to_visit: { store_id: @store_to_visit.store_id, user_id: @store_to_visit.user_id }
    assert_redirected_to store_to_visit_path(assigns(:store_to_visit))
  end

  test "should destroy store_to_visit" do
    assert_difference('StoreToVisit.count', -1) do
      delete :destroy, id: @store_to_visit
    end

    assert_redirected_to store_to_visits_path
  end
end
