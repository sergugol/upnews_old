require 'test_helper'

class ReclamsControllerTest < ActionController::TestCase
  setup do
    @reclam = reclams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reclams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reclam" do
    assert_difference('Reclam.count') do
      post :create, reclam: { comment: @reclam.comment, contract: @reclam.contract, e_mail: @reclam.e_mail, firm: @reclam.firm, image_content_type: @reclam.image_content_type, image_file_name: @reclam.image_file_name, image_file_size: @reclam.image_file_size, image_updated_at: @reclam.image_updated_at, mode: @reclam.mode, start_date: @reclam.start_date, stop_date: @reclam.stop_date, timing: @reclam.timing, web_site: @reclam.web_site }
    end

    assert_redirected_to reclam_path(assigns(:reclam))
  end

  test "should show reclam" do
    get :show, id: @reclam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reclam
    assert_response :success
  end

  test "should update reclam" do
    put :update, id: @reclam, reclam: { comment: @reclam.comment, contract: @reclam.contract, e_mail: @reclam.e_mail, firm: @reclam.firm, image_content_type: @reclam.image_content_type, image_file_name: @reclam.image_file_name, image_file_size: @reclam.image_file_size, image_updated_at: @reclam.image_updated_at, mode: @reclam.mode, start_date: @reclam.start_date, stop_date: @reclam.stop_date, timing: @reclam.timing, web_site: @reclam.web_site }
    assert_redirected_to reclam_path(assigns(:reclam))
  end

  test "should destroy reclam" do
    assert_difference('Reclam.count', -1) do
      delete :destroy, id: @reclam
    end

    assert_redirected_to reclams_path
  end
end
