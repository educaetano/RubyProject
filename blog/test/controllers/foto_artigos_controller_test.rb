require 'test_helper'

class FotoArtigosControllerTest < ActionController::TestCase
  setup do
    @foto_artigo = foto_artigos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foto_artigos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foto_artigo" do
    assert_difference('FotoArtigo.count') do
      post :create, foto_artigo: { Id_artigo: @foto_artigo.Id_artigo, binariofoto: @foto_artigo.binariofoto, data: @foto_artigo.data, nome: @foto_artigo.nome }
    end

    assert_redirected_to foto_artigo_path(assigns(:foto_artigo))
  end

  test "should show foto_artigo" do
    get :show, id: @foto_artigo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foto_artigo
    assert_response :success
  end

  test "should update foto_artigo" do
    patch :update, id: @foto_artigo, foto_artigo: { Id_artigo: @foto_artigo.Id_artigo, binariofoto: @foto_artigo.binariofoto, data: @foto_artigo.data, nome: @foto_artigo.nome }
    assert_redirected_to foto_artigo_path(assigns(:foto_artigo))
  end

  test "should destroy foto_artigo" do
    assert_difference('FotoArtigo.count', -1) do
      delete :destroy, id: @foto_artigo
    end

    assert_redirected_to foto_artigos_path
  end
end
