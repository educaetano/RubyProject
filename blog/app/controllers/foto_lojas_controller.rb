class FotoLojasController < ApplicationController
  before_action :set_foto_loja, only: [:show, :edit, :update, :destroy]

  # GET /foto_lojas
  # GET /foto_lojas.json
  def index
    @foto_lojas = FotoLoja.all
  end

  # GET /foto_lojas/1
  # GET /foto_lojas/1.json
  def show
  end

  # GET /foto_lojas/new
  def new
    @foto_loja = FotoLoja.new
  end

  # GET /foto_lojas/1/edit
  def edit
  end

  # POST /foto_lojas
  # POST /foto_lojas.json
  def create
    @foto_loja = FotoLoja.new(foto_loja_params)

    respond_to do |format|
      if @foto_loja.save
        format.html { redirect_to @foto_loja, notice: 'Foto loja was successfully created.' }
        format.json { render :show, status: :created, location: @foto_loja }
      else
        format.html { render :new }
        format.json { render json: @foto_loja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foto_lojas/1
  # PATCH/PUT /foto_lojas/1.json
  def update
    respond_to do |format|
      if @foto_loja.update(foto_loja_params)
        format.html { redirect_to @foto_loja, notice: 'Foto loja was successfully updated.' }
        format.json { render :show, status: :ok, location: @foto_loja }
      else
        format.html { render :edit }
        format.json { render json: @foto_loja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foto_lojas/1
  # DELETE /foto_lojas/1.json
  def destroy
    @foto_loja.destroy
    respond_to do |format|
      format.html { redirect_to foto_lojas_url, notice: 'Foto loja was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foto_loja
      @foto_loja = FotoLoja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foto_loja_params
      params.require(:foto_loja).permit(:nome, :binariofoto, :data, :Id_Local)
    end
end
