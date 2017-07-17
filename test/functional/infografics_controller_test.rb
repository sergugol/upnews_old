require 'test_helper'

class InfograficsControllerTest < ActionController::TestCase
  setup do
    @infografic = infografics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:infografics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create infografic" do
    assert_difference('Infografic.count') do
      post :create, infografic: { comment: @infografic.comment, history_date: @infografic.history_date, image_content_type: @infografic.image_content_type, image_file_name: @infografic.image_file_name, image_file_size: @infografic.image_file_size, image_updated_at: @infografic.image_updated_at, rubric: @infografic.rubric }
    end

    assert_redirected_to infografic_path(assigns(:infografic))
  end

  test "should show infografic" do
    get :show, id: @infografic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @infografic
    assert_response :success
  end

  test "should update infografic" do
    put :update, id: @infografic, infografic: { comment: @infografic.comment, history_date: @infografic.history_date, image_content_type: @infografic.image_content_type, image_file_name: @infografic.image_file_name, image_file_size: @infografic.image_file_size, image_updated_at: @infografic.image_updated_at, rubric: @infografic.rubric }
    assert_redirected_to infografic_path(assigns(:infografic))
  end

  test "should destroy infografic" do
    assert_difference('Infografic.count', -1) do
      delete :destroy, id: @infografic
    end

    assert_redirected_to infografics_path
  end
end
