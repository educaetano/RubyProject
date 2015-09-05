class FotoArtigosController < ApplicationController
  before_action :set_foto_artigo, only: [:show, :edit, :update, :destroy]

  # GET /foto_artigos
  # GET /foto_artigos.json
  def index
    @foto_artigos = FotoArtigo.all
  end

  # GET /foto_artigos/1
  # GET /foto_artigos/1.json
  def show
  end

  # GET /foto_artigos/new
  def new
    @foto_artigo = FotoArtigo.new
  end

  # GET /foto_artigos/1/edit
  def edit
  end

  # POST /foto_artigos
  # POST /foto_artigos.json
  def create
    @foto_artigo = FotoArtigo.new(foto_artigo_params)

    respond_to do |format|
      if @foto_artigo.save
        format.html { redirect_to @foto_artigo, notice: 'Foto artigo was successfully created.' }
        format.json { render :show, status: :created, location: @foto_artigo }
      else
        format.html { render :new }
        format.json { render json: @foto_artigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foto_artigos/1
  # PATCH/PUT /foto_artigos/1.json
  def update
    respond_to do |format|
      if @foto_artigo.update(foto_artigo_params)
        format.html { redirect_to @foto_artigo, notice: 'Foto artigo was successfully updated.' }
        format.json { render :show, status: :ok, location: @foto_artigo }
      else
        format.html { render :edit }
        format.json { render json: @foto_artigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foto_artigos/1
  # DELETE /foto_artigos/1.json
  def destroy
    @foto_artigo.destroy
    respond_to do |format|
      format.html { redirect_to foto_artigos_url, notice: 'Foto artigo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foto_artigo
      @foto_artigo = FotoArtigo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foto_artigo_params
      params.require(:foto_artigo).permit(:nome, :binariofoto, :data, :Id_artigo)
    end
end
