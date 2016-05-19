require 'test_helper'

class PersonajesControllerTest < ActionController::TestCase
  setup do
    @personaje = personajes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personajes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personaje" do
    assert_difference('Personaje.count') do
      post :create, personaje: { nombre: @personaje.nombre, seiyu: @personaje.seiyu, sexo: @personaje.sexo }
    end

    assert_redirected_to personaje_path(assigns(:personaje))
  end

  test "should show personaje" do
    get :show, id: @personaje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personaje
    assert_response :success
  end

  test "should update personaje" do
    patch :update, id: @personaje, personaje: { nombre: @personaje.nombre, seiyu: @personaje.seiyu, sexo: @personaje.sexo }
    assert_redirected_to personaje_path(assigns(:personaje))
  end

  test "should destroy personaje" do
    assert_difference('Personaje.count', -1) do
      delete :destroy, id: @personaje
    end

    assert_redirected_to personajes_path
  end
end
