require 'test_helper'

class ArtigosControllerTest < ActionController::TestCase
  setup do
    @artigo = artigos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artigos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artigo" do
    assert_difference('Artigo.count') do
      post :create, artigo: { desconto: @artigo.desconto, id_promo: @artigo.id_promo, nome: @artigo.nome, preco: @artigo.preco }
    end

    assert_redirected_to artigo_path(assigns(:artigo))
  end

  test "should show artigo" do
    get :show, id: @artigo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artigo
    assert_response :success
  end

  test "should update artigo" do
    patch :update, id: @artigo, artigo: { desconto: @artigo.desconto, id_promo: @artigo.id_promo, nome: @artigo.nome, preco: @artigo.preco }
    assert_redirected_to artigo_path(assigns(:artigo))
  end

  test "should destroy artigo" do
    assert_difference('Artigo.count', -1) do
      delete :destroy, id: @artigo
    end

    assert_redirected_to artigos_path
  end
end