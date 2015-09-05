require 'test_helper'

class FotoLojasControllerTest < ActionController::TestCase
  setup do
    @foto_loja = foto_lojas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foto_lojas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foto_loja" do
    assert_difference('FotoLoja.count') do
      post :create, foto_loja: { Id_Local: @foto_loja.Id_Local, binariofoto: @foto_loja.binariofoto, data: @foto_loja.data, nome: @foto_loja.nome }
    end

    assert_redirected_to foto_loja_path(assigns(:foto_loja))
  end

  test "should show foto_loja" do
    get :show, id: @foto_loja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foto_loja
    assert_response :success
  end

  test "should update foto_loja" do
    patch :update, id: @foto_loja, foto_loja: { Id_Local: @foto_loja.Id_Local, binariofoto: @foto_loja.binariofoto, data: @foto_loja.data, nome: @foto_loja.nome }
    assert_redirected_to foto_loja_path(assigns(:foto_loja))
  end

  test "should destroy foto_loja" do
    assert_difference('FotoLoja.count', -1) do
      delete :destroy, id: @foto_loja
    end

    assert_redirected_to foto_lojas_path
  end
end
