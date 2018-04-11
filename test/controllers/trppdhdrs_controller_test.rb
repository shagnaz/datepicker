require 'test_helper'

class TrppdhdrsControllerTest < ActionController::TestCase
  setup do
    @trppdhdr = trppdhdrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trppdhdrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trppdhdr" do
    assert_difference('Trppdhdr.count') do
      post :create, trppdhdr: { tgl_berlaku: @trppdhdr.tgl_berlaku }
    end

    assert_redirected_to trppdhdr_path(assigns(:trppdhdr))
  end

  test "should show trppdhdr" do
    get :show, id: @trppdhdr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trppdhdr
    assert_response :success
  end

  test "should update trppdhdr" do
    patch :update, id: @trppdhdr, trppdhdr: { tgl_berlaku: @trppdhdr.tgl_berlaku }
    assert_redirected_to trppdhdr_path(assigns(:trppdhdr))
  end

  test "should destroy trppdhdr" do
    assert_difference('Trppdhdr.count', -1) do
      delete :destroy, id: @trppdhdr
    end

    assert_redirected_to trppdhdrs_path
  end
end
