require 'test_helper'

class PdfpagesControllerTest < ActionController::TestCase
  setup do
    @pdfpage = pdfpages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pdfpages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pdfpage" do
    assert_difference('Pdfpage.count') do
      post :create, pdfpage: { edition: @pdfpage.edition, image_content_type: @pdfpage.image_content_type, image_file_name: @pdfpage.image_file_name, image_file_size: @pdfpage.image_file_size, image_updated_at: @pdfpage.image_updated_at, page_n: @pdfpage.page_n, pdf_date: @pdfpage.pdf_date, pdf_n: @pdfpage.pdf_n, pdf_nn: @pdfpage.pdf_nn }
    end

    assert_redirected_to pdfpage_path(assigns(:pdfpage))
  end

  test "should show pdfpage" do
    get :show, id: @pdfpage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pdfpage
    assert_response :success
  end

  test "should update pdfpage" do
    put :update, id: @pdfpage, pdfpage: { edition: @pdfpage.edition, image_content_type: @pdfpage.image_content_type, image_file_name: @pdfpage.image_file_name, image_file_size: @pdfpage.image_file_size, image_updated_at: @pdfpage.image_updated_at, page_n: @pdfpage.page_n, pdf_date: @pdfpage.pdf_date, pdf_n: @pdfpage.pdf_n, pdf_nn: @pdfpage.pdf_nn }
    assert_redirected_to pdfpage_path(assigns(:pdfpage))
  end

  test "should destroy pdfpage" do
    assert_difference('Pdfpage.count', -1) do
      delete :destroy, id: @pdfpage
    end

    assert_redirected_to pdfpages_path
  end
end
