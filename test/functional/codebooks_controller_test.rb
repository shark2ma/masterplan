require 'test_helper'

class CodebooksControllerTest < ActionController::TestCase
  setup do
    @codebook = codebooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:codebooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create codebook" do
    assert_difference('Codebook.count') do
      post :create, codebook: { code: @codebook.code, title: @codebook.title }
    end

    assert_redirected_to codebook_path(assigns(:codebook))
  end

  test "should show codebook" do
    get :show, id: @codebook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @codebook
    assert_response :success
  end

  test "should update codebook" do
    put :update, id: @codebook, codebook: { code: @codebook.code, title: @codebook.title }
    assert_redirected_to codebook_path(assigns(:codebook))
  end

  test "should destroy codebook" do
    assert_difference('Codebook.count', -1) do
      delete :destroy, id: @codebook
    end

    assert_redirected_to codebooks_path
  end
end
